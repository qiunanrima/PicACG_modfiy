package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import android.os.Handler
import android.os.Looper
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken
import com.picacomic.fregata.b.d
import com.picacomic.fregata.objects.ChatMessageObject
import com.picacomic.fregata.objects.ChatroomToObject
import com.picacomic.fregata.objects.ChatroomListObject
import com.picacomic.fregata.objects.UserProfileObject
import com.picacomic.fregata.objects.chatroomObjects.ChangeTitleAction
import com.picacomic.fregata.objects.chatroomObjects.ChatroomSystemAction
import com.picacomic.fregata.objects.chatroomObjects.ImageAction
import com.picacomic.fregata.objects.chatroomObjects.MuteAction
import com.picacomic.fregata.objects.chatroomObjects.SetAvatarAction
import com.picacomic.fregata.objects.chatroomObjects.SetAvatarExtraAction
import com.picacomic.fregata.objects.chatroomObjects.TimeAction
import com.picacomic.fregata.objects.requests.UpdateUserTitleBody
import com.picacomic.fregata.objects.responses.ChatroomBlacklistObject
import com.picacomic.fregata.objects.responses.ChatroomListResponse
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.objects.responses.RegisterResponse
import com.picacomic.fregata.objects.responses.UserProfileResponse
import com.picacomic.fregata.utils.e
import io.socket.client.IO
import io.socket.client.Socket
import org.json.JSONArray
import org.json.JSONObject
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class ChatroomListViewModel(application: Application) : AndroidViewModel(application) {
    private val app = getApplication<Application>()
    private val gson = Gson()
    private var listCall: Call<GeneralResponse<ChatroomListResponse>>? = null

    var rooms by mutableStateOf<List<ChatroomListObject>>(emptyList())
        private set
    var isLoading by mutableStateOf(false)
        private set
    var errorEvent by mutableIntStateOf(0)
        private set
    var errorCode by mutableStateOf<Int?>(null)
        private set
    var errorBody by mutableStateOf<String?>(null)
        private set

    fun loadRooms(force: Boolean = false) {
        if (isLoading) return
        if (!force && rooms.isNotEmpty()) return
        loadCachedRooms()
        isLoading = true
        listCall?.cancel()
        listCall = d(app).dO().at(e.z(app))
        listCall?.enqueue(object : Callback<GeneralResponse<ChatroomListResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<ChatroomListResponse>>,
                response: Response<GeneralResponse<ChatroomListResponse>>,
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    val fetched = normalizeRooms(response.body()?.data?.chatList.orEmpty())
                    rooms = fetched
                    e.n(app, gson.toJson(fetched))
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                isLoading = false
            }

            override fun onFailure(call: Call<GeneralResponse<ChatroomListResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                isLoading = false
            }
        })
    }

    private fun loadCachedRooms() {
        val cached = e.G(app)
        if (cached.isNullOrBlank()) return
        try {
            val type = object : TypeToken<List<ChatroomListObject>>() {}.type
            val parsed: List<ChatroomListObject>? = gson.fromJson(cached, type)
            if (!parsed.isNullOrEmpty()) {
                rooms = normalizeRooms(parsed)
            }
        } catch (_: Exception) {
        }
    }

    private fun normalizeRooms(source: List<ChatroomListObject>): List<ChatroomListObject> {
        val output = source.toMutableList()
        if (output.none { it.url.equals("custompicaapp", ignoreCase = true) }) {
            output.add(ChatroomListObject(null, "自定小程式", "自定小程式", "custompicaapp"))
        }
        return output
    }

    private fun safeErrorBody(response: Response<*>): String? {
        return try {
            response.errorBody()?.string()
        } catch (_: Exception) {
            null
        }
    }

    private fun emitHttpError(code: Int, body: String?) {
        errorCode = code
        errorBody = body
        errorEvent++
    }

    private fun emitNetworkError() {
        errorCode = null
        errorBody = null
        errorEvent++
    }

    override fun onCleared() {
        listCall?.cancel()
        super.onCleared()
    }
}

class ChatroomViewModel(application: Application) : AndroidViewModel(application) {
    companion object {
        private const val DEFAULT_CHATROOM_URL = "https://chat.picacomic.com"
        private const val MAX_MESSAGES = 100
    }

    private val app = getApplication<Application>()
    private val gson = Gson()
    private val mainHandler = Handler(Looper.getMainLooper())
    private var profileCall: Call<GeneralResponse<UserProfileResponse>>? = null
    private var updateTitleCall: Call<RegisterResponse>? = null
    private var socket: Socket? = null
    private var initializedUrl: String? = null
    private var aiRunnable: Runnable? = null
    private var maxMessageSize = e.W(app).coerceAtLeast(1)

    val messages = mutableStateListOf<ChatMessageObject>()
    val blacklist = mutableStateListOf<ChatroomBlacklistObject>()
    var input by mutableStateOf("")
        private set
    var userProfile by mutableStateOf<UserProfileObject?>(null)
        private set
    var onlineCount by mutableStateOf("")
        private set
    var connectionNotice by mutableStateOf<String?>(null)
        private set
    var replyName by mutableStateOf("")
        private set
    var replyMessage by mutableStateOf("")
        private set
    var atText by mutableStateOf("")
        private set
    var blockUserId by mutableStateOf("")
        private set
    var privateTo by mutableStateOf<ChatroomToObject?>(null)
        private set
    var selectedTarget by mutableStateOf<ChatMessageObject?>(null)
        private set
    var isPublicChannel by mutableStateOf(true)
        private set
    var showTimestamp by mutableStateOf(e.U(app))
        private set
    var fixImageSize by mutableStateOf(e.V(app))
        private set
    var nightMode by mutableStateOf(e.T(app))
        private set
    var hideAvatar by mutableStateOf(e.ad(app))
        private set
    var speechEnabled by mutableStateOf(e.Y(app))
        private set
    var speechWithName by mutableStateOf(e.Z(app))
        private set
    var speechLanguage by mutableStateOf(e.aa(app).orEmpty().ifBlank { "chinese" })
        private set
    var messageColorReverse by mutableIntStateOf(e.af(app))
        private set
    var adsIntervalSeconds by mutableIntStateOf(e.X(app).coerceAtLeast(0))
        private set

    val adminMode: Boolean
        get() = userProfile?.email?.endsWith("@picacomic.com") == true
    var isLoading by mutableStateOf(false)
        private set
    var isConnected by mutableStateOf(false)
        private set
    var errorEvent by mutableIntStateOf(0)
        private set
    var errorCode by mutableStateOf<Int?>(null)
        private set
    var errorBody by mutableStateOf<String?>(null)
        private set
    var messageEvent by mutableIntStateOf(0)
        private set
    var messageText by mutableStateOf<String?>(null)
        private set

    fun start(roomUrl: String?) {
        val safeUrl = roomUrl?.takeIf { it.isNotBlank() } ?: DEFAULT_CHATROOM_URL
        if (initializedUrl == safeUrl) return
        initializedUrl = safeUrl
        loadCachedProfile()
        loadBlacklist()
        cd {
            connect(safeUrl)
        }
    }

    fun updateInput(value: String) {
        input = value
    }

    fun cr() {
        val text = input.trim()
        if (V(text)) {
            input = ""
            return
        }
        val profile = userProfile
        if (text.isBlank()) return
        if (profile == null || profile.name.isNullOrBlank()) {
            emitToast("你从来没有进入过聊天室！")
            return
        }
        input = ""
        val message = buildMessage(text = text, image = "", audio = "", type = 3) ?: return
        privateTo?.let { to ->
            message.to = to
            socket?.emit("send_private_message", gson.toJson(message, ChatMessageObject::class.java))
            addMessage(message)
            clearReplyAndAt()
            return
        }
        if (!isPublicChannel && atText.isBlank()) {
            emitToast("你还未＠人")
            return
        }
        socket?.emit("send_message", gson.toJson(message, ChatMessageObject::class.java))
        addMessage(message)
        clearReplyAndAt()
    }

    fun sendImage(base64Image: String) {
        val message = buildMessage(text = "", image = base64Image, audio = "", type = 4) ?: return
        socket?.emit("send_image", gson.toJson(message, ChatMessageObject::class.java))
        addMessage(message)
        clearReplyAndAt()
    }

    fun sendAudio(base64Audio: String) {
        val message = buildMessage(text = "", image = "", audio = base64Audio, type = 5) ?: return
        socket?.emit("send_audio", gson.toJson(message, ChatMessageObject::class.java))
        addMessage(message)
        clearReplyAndAt()
    }

    private fun buildMessage(text: String, image: String, audio: String, type: Int): ChatMessageObject? {
        val profile = userProfile ?: return null
        return ChatMessageObject(
            profile.userId.orEmpty(),
            "",
            profile.level,
            profile.email.orEmpty(),
            com.picacomic.fregata.utils.g.b(profile.avatar).orEmpty(),
            profile.name.orEmpty(),
            profile.title.orEmpty(),
            profile.gender.orEmpty(),
            "android",
            profile.activationDate.orEmpty(),
            atText,
            replyName,
            replyMessage,
            text,
            image,
            audio,
            blockUserId,
            type,
            profile.isVerified,
            profile.character.orEmpty(),
            profile.charactersStringArray,
            null,
            null,
        )
    }

    fun appendEmoji(codePoint: Int) {
        input += String(Character.toChars(codePoint))
    }

    fun setReplyTarget(message: ChatMessageObject) {
        selectedTarget = message
        replyName = message.name.orEmpty()
        replyMessage = message.message.orEmpty()
        atText = if (message.name.isNullOrBlank()) "" else "嗶咔_${message.name}"
        blockUserId = message.userId.orEmpty()
    }

    fun setPrivateTarget(message: ChatMessageObject) {
        selectedTarget = message
        privateTo = ChatroomToObject(message.name.orEmpty(), message.uniqueId.orEmpty(), message.userId.orEmpty())
        setReplyTarget(message)
        isPublicChannel = false
    }

    fun clearReplyAndAt() {
        replyName = ""
        replyMessage = ""
        atText = ""
        blockUserId = ""
        privateTo = null
        selectedTarget = null
    }

    fun updatePublicChannel(public: Boolean) {
        isPublicChannel = public
        if (public) privateTo = null
    }

    fun emitSystemAction(action: ChatroomSystemAction, type: Class<out ChatroomSystemAction>) {
        if (userProfile == null) {
            emitToast("你从来没有进入过聊天室！")
            return
        }
        socket?.emit("system_action", gson.toJson(action, type))
    }

    fun toggleTime(email: String, enabled: Boolean) {
        emitSystemAction(TimeAction("time", email, enabled, userProfile?.name.orEmpty()), TimeAction::class.java)
    }

    fun toggleImage(email: String, enabled: Boolean) {
        emitSystemAction(ImageAction("image", email, enabled, userProfile?.name.orEmpty()), ImageAction::class.java)
    }

    fun muteSelected(minutes: Int) {
        val target = selectedTarget ?: return emitToast("请选择目标消息")
        if (target.email.equals("ruff@picacomic.com", ignoreCase = true) || target.name.equals("ruff", ignoreCase = true)) {
            return
        }
        emitSystemAction(
            MuteAction(
                "mute",
                target.email.orEmpty(),
                minutes,
                target.name.orEmpty(),
                target.userId.orEmpty(),
                userProfile?.name.orEmpty(),
            ),
            MuteAction::class.java,
        )
    }

    fun setAvatarSelected(no: Int) {
        val target = selectedTarget ?: return emitToast("请选择目标消息")
        emitSystemAction(
            SetAvatarAction(
                "set_avatar",
                target.email.orEmpty(),
                target.name.orEmpty(),
                target.userId.orEmpty(),
                userProfile?.name.orEmpty(),
                no,
            ),
            SetAvatarAction::class.java,
        )
    }

    fun setAvatarExtraSelected(extra: Int) {
        val target = selectedTarget ?: return emitToast("请选择目标消息")
        if (extra <= 0) return
        emitSystemAction(
            SetAvatarExtraAction(
                "set_avatar",
                target.email.orEmpty(),
                target.name.orEmpty(),
                target.userId.orEmpty(),
                userProfile?.name.orEmpty(),
                extra,
            ),
            SetAvatarExtraAction::class.java,
        )
    }

    fun changeTitleSelected(newTitle: String) {
        val target = selectedTarget ?: return emitToast("请选择目标消息")
        val title = newTitle.trim()
        if (title.isBlank()) return
        updateTitleCall?.cancel()
        updateTitleCall = d(app).dO().a(e.z(app), target.userId.orEmpty(), UpdateUserTitleBody(title))
        updateTitleCall?.enqueue(object : Callback<RegisterResponse> {
            override fun onResponse(call: Call<RegisterResponse>, response: Response<RegisterResponse>) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    emitToast("Update Title Success")
                    emitSystemAction(
                        ChangeTitleAction(
                            "set_title",
                            target.email.orEmpty(),
                            title,
                            userProfile?.name.orEmpty(),
                            target.name.orEmpty(),
                            target.userId.orEmpty(),
                        ),
                        ChangeTitleAction::class.java,
                    )
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
            }

            override fun onFailure(call: Call<RegisterResponse>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
            }
        })
    }

    fun sendServerTalk(text: String) {
        val profile = userProfile ?: return emitToast("你从来没有进入过聊天室！")
        val message = ChatMessageObject(
            profile.userId.orEmpty(),
            "",
            profile.level,
            profile.email.orEmpty(),
            com.picacomic.fregata.utils.g.b(profile.avatar).orEmpty(),
            profile.name.orEmpty(),
            profile.title.orEmpty(),
            profile.gender.orEmpty(),
            "android",
            profile.activationDate.orEmpty(),
            atText,
            replyName,
            replyMessage,
            "##server talk @$text",
            "",
            "",
            blockUserId,
            3,
            profile.isVerified,
            profile.character.orEmpty(),
            profile.charactersStringArray,
            null,
            null,
        )
        socket?.emit("send_message", gson.toJson(message, ChatMessageObject::class.java))
    }

    fun startAiTalk(intervalSeconds: Int, text: String) {
        stopAiTalk()
        if (text.isBlank()) return
        sendServerTalk(text)
        if (intervalSeconds > 0) {
            val delay = intervalSeconds * 1000L
            val runnable = object : Runnable {
                override fun run() {
                    sendServerTalk(text)
                    mainHandler.postDelayed(this, delay)
                }
            }
            aiRunnable = runnable
            mainHandler.postDelayed(runnable, delay)
        }
    }

    fun stopAiTalk() {
        aiRunnable?.let(mainHandler::removeCallbacks)
        aiRunnable = null
    }

    fun refreshSettings() {
        showTimestamp = e.U(app)
        fixImageSize = e.V(app)
        nightMode = e.T(app)
        hideAvatar = e.ad(app)
        speechEnabled = e.Y(app)
        speechWithName = e.Z(app)
        speechLanguage = e.aa(app).orEmpty().ifBlank { "chinese" }
        messageColorReverse = e.af(app)
        adsIntervalSeconds = e.X(app).coerceAtLeast(0)
        maxMessageSize = e.W(app).coerceAtLeast(1)
        loadBlacklist()
        trimMessages()
    }

    fun V(command: String): Boolean {
        when {
            command.equals("NIGHT ON", ignoreCase = true) -> {
                nightMode = true
                e.h(app, true)
                return true
            }
            command.equals("NIGHT OFF", ignoreCase = true) -> {
                nightMode = false
                e.h(app, false)
                return true
            }
            command.equals("TIME ON", ignoreCase = true) -> {
                showTimestamp = true
                e.i(app, true)
                emitToast("SHOW TIMESTAMP ON")
                return true
            }
            command.equals("TIME OFF", ignoreCase = true) -> {
                showTimestamp = false
                e.i(app, false)
                return true
            }
            command.equals("FIX IMAGE SIZE ON", ignoreCase = true) -> {
                fixImageSize = true
                e.j(app, true)
                emitToast("FIX IMAGE SIZE ON")
                return true
            }
            command.equals("FIX IMAGE SIZE OFF", ignoreCase = true) -> {
                fixImageSize = false
                e.j(app, false)
                emitToast("FIX IMAGE SIZE OFF")
                return true
            }
            command.equals("@指令", ignoreCase = true) -> {
                input = "@指令"
                return false
            }
            command.startsWith("@BLACKLIST", ignoreCase = true) -> {
                addSelectedToBlacklist()
                return true
            }
            command.startsWith("AUTO EARN PICA", ignoreCase = true) -> return true
            command.startsWith("MAXIMUM MESSAGE SIZE ", ignoreCase = true) -> {
                maxMessageSize = command.substringAfter("MAXIMUM MESSAGE SIZE ", "").trim().toIntOrNull()
                    ?.coerceAtLeast(1)
                    ?: maxMessageSize
                e.e(app, maxMessageSize)
                trimMessages()
                emitToast("SET MAX MESSAGE SIZE = $maxMessageSize")
                return true
            }
        }
        if (adminMode) {
            when {
                command.startsWith("SET ADS INTERVAL ", ignoreCase = true) -> {
                    adsIntervalSeconds = command.substringAfter("SET ADS INTERVAL ", "").trim().toIntOrNull()
                        ?.coerceAtLeast(0)
                        ?: adsIntervalSeconds
                    e.f(app, adsIntervalSeconds)
                    emitToast("SET ADS INTERVAL = $adsIntervalSeconds")
                    return true
                }
                command.equals("CLEAR TEXT ON", ignoreCase = true) -> {
                    emitToast("CLEAR TEXT ON")
                    return true
                }
                command.equals("CLEAR TEXT OFF", ignoreCase = true) -> {
                    emitToast("CLEAR TEXT OFF")
                    return true
                }
            }
        }
        return false
    }

    fun cd(onReady: (() -> Unit)? = null) {
        if (isLoading) return
        isLoading = true
        profileCall?.cancel()
        profileCall = d(app).dO().am(e.z(app))
        profileCall?.enqueue(object : Callback<GeneralResponse<UserProfileResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<UserProfileResponse>>,
                response: Response<GeneralResponse<UserProfileResponse>>,
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    val profile = response.body()?.data?.user
                    if (profile != null) {
                        userProfile = profile
                        e.i(app, gson.toJson(profile))
                    }
                    onReady?.invoke()
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                isLoading = false
            }

            override fun onFailure(call: Call<GeneralResponse<UserProfileResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                onReady?.invoke()
                isLoading = false
            }
        })
    }

    fun updateChatroomSettings(
        nightMode: Boolean,
        showTimestamp: Boolean,
        fixImageSize: Boolean,
        hideAvatar: Boolean,
        maxMessages: Int,
        speechEnabled: Boolean,
        speechWithName: Boolean,
        speechLanguage: String,
        messageColorReverse: Int,
        adsIntervalSeconds: Int,
        customProfileText: String,
    ) {
        this.nightMode = nightMode
        this.showTimestamp = showTimestamp
        this.fixImageSize = fixImageSize
        this.hideAvatar = hideAvatar
        this.maxMessageSize = maxMessages.coerceAtLeast(1)
        this.speechEnabled = speechEnabled
        this.speechWithName = speechWithName
        this.speechLanguage = speechLanguage.ifBlank { "chinese" }
        this.messageColorReverse = messageColorReverse.coerceIn(0, 100)
        this.adsIntervalSeconds = adsIntervalSeconds.coerceAtLeast(0)
        e.h(app, nightMode)
        e.i(app, showTimestamp)
        e.j(app, fixImageSize)
        e.m(app, hideAvatar)
        e.e(app, this.maxMessageSize)
        e.k(app, speechEnabled)
        e.l(app, speechWithName)
        e.r(app, this.speechLanguage)
        e.g(app, this.messageColorReverse)
        e.f(app, this.adsIntervalSeconds)
        applyCustomProfileText(customProfileText)
        trimMessages()
    }

    private fun applyCustomProfileText(text: String) {
        val profile = userProfile ?: return
        if (!adminMode) return
        when {
            text.startsWith("http://") || text.startsWith("https://") -> {
                if (profile.email.orEmpty().startsWithAnyPrivilegedPrefix()) {
                    e.s(app, text)
                }
            }
            text.startsWith("改名") -> {
                if (profile.email.orEmpty().startsWithAnyNamePrefix()) {
                    val name = text.removePrefix("改名")
                    e.t(app, name)
                    profile.name = name
                }
            }
            text.isBlank() -> e.s(app, "")
        }
    }

    fun loadBlacklist() {
        blacklist.clear()
        val json = e.ae(app) ?: return
        try {
            val type = object : TypeToken<List<ChatroomBlacklistObject>>() {}.type
            val parsed: List<ChatroomBlacklistObject>? = gson.fromJson(json, type)
            if (!parsed.isNullOrEmpty()) blacklist.addAll(parsed)
        } catch (_: Exception) {
        }
    }

    fun addSelectedToBlacklist() {
        val target = selectedTarget
        if (target?.userId.isNullOrBlank() || target?.name.isNullOrBlank()) {
            emitToast("Blacklist User Failed")
            return
        }
        val name = target.name.orEmpty()
        val userId = target.userId.orEmpty()
        if (name.startsWith("嗶咔") || name.equals("ruff", ignoreCase = true)) {
            emitToast("Blacklist User Failed")
            return
        }
        if (blacklist.none { it.userId == userId }) {
            blacklist.add(ChatroomBlacklistObject(name, userId))
            persistBlacklist()
        }
        emitToast("Blacklist User: $name Success")
    }

    fun removeBlacklistAt(index: Int) {
        if (index !in blacklist.indices) return
        blacklist.removeAt(index)
        persistBlacklist()
    }

    fun clearBlacklist() {
        blacklist.clear()
        e.u(app, null)
    }

    private fun connect(roomUrl: String) {
        disconnect()
        val options = IO.Options().apply {
            transports = arrayOf("websocket")
        }
        socket = try {
            IO.socket(roomUrl, options)
        } catch (_: Exception) {
            IO.socket(DEFAULT_CHATROOM_URL, options)
        }
        socket?.apply {
            on("connect") {
                post {
                    isConnected = true
                    userProfile?.let { profile ->
                        emit("init", gson.toJson(profile, UserProfileObject::class.java))
                    }
                }
            }
            on("broadcast_message") { args -> handleChatMessage(args, 0) }
            on("broadcast_ads") { args -> handleChatMessage(args, 11) }
            on("broadcast_image") { args -> handleChatMessage(args, 1) }
            on("broadcast_audio") { args -> handleChatMessage(args, 2) }
            on("got_private_message") { args ->
                val json = args.firstOrNull() as? JSONObject ?: return@on
                val message = parseMessage(json, 3) ?: return@on
                post {
                    message.to = com.picacomic.fregata.objects.ChatroomToObject(
                        json.optString("name"),
                        json.optString("unique_id"),
                        json.optString("user_id").ifBlank { json.optString("userId") },
                    )
                    addMessage(message)
                    emitToast("${message.name.orEmpty()}: ${message.message.orEmpty()}")
                }
            }
            on("new_connection") { args ->
                post {
                    onlineCount = (args.firstOrNull() as? JSONObject)?.optString("connections").orEmpty()
                    connectionNotice = "一位绅士加入了对话，现在人数为：$onlineCount"
                }
            }
            on("connection_close") { args ->
                post {
                    onlineCount = (args.firstOrNull() as? JSONObject)?.optString("connections").orEmpty()
                    connectionNotice = "一位绅士逃跑了，现在人数为：$onlineCount"
                }
            }
            on("receive_notification") { args ->
                val notice = (args.firstOrNull() as? JSONObject)?.optString("message").orEmpty()
                if (notice.isNotBlank()) emitToast(notice)
            }
            on("kick") { args ->
                val notice = (args.firstOrNull() as? JSONObject)?.optString("message").orEmpty()
                emitToast(notice.ifBlank { "你已离开聊天室" })
                disconnect()
            }
            on("set_profile") { args ->
                val json = args.firstOrNull() as? JSONObject ?: return@on
                post {
                    userProfile?.let { profile ->
                        json.optString("name").takeIf { it.isNotBlank() }?.let(profile::setName)
                        json.optString("character").takeIf { it.isNotBlank() }?.let(profile::setCharacter)
                        json.optString("title").takeIf { it.isNotBlank() }?.let(profile::setTitle)
                        val level = json.optInt("level", 0)
                        if (level > 0) profile.level = level
                    }
                }
            }
            on("change_character_icon") { args ->
                val character = (args.firstOrNull() as? JSONObject)?.optString("character").orEmpty()
                if (character.isNotBlank()) {
                    post { userProfile?.character = character }
                }
            }
            on("change_title") { args ->
                val json = args.firstOrNull() as? JSONObject ?: return@on
                post {
                    val userId = json.optString("user_id")
                    val title = json.optString("title")
                    if (userId.isNotBlank() && title.isNotBlank() && userProfile?.userId == userId) {
                        userProfile?.title = title
                    }
                }
            }
            connect()
        }
    }

    private fun handleChatMessage(args: Array<Any>, type: Int) {
        val json = args.firstOrNull() as? JSONObject ?: return
        val message = parseMessage(json, type) ?: return
        post { addMessage(message) }
    }

    fun parseMessage(json: JSONObject, type: Int): ChatMessageObject? {
        return try {
            val message = ChatMessageObject("", "", 0, "", "", "", "", "", "", null, "", "", "", "", "", "", "", type, false, null, null, null, null)
            json.optString("id").takeIf { it.isNotBlank() }?.let(message::setUserId)
            json.optString("userId").takeIf { it.isNotBlank() }?.let(message::setUserId)
            json.optString("user_id").takeIf { it.isNotBlank() }?.let(message::setUserId)
            json.optString("unique_id").takeIf { it.isNotBlank() }?.let(message::setUniqueId)
            if (json.has("level")) message.level = json.optInt("level")
            json.optString("email").takeIf { it.isNotBlank() }?.let(message::setEmail)
            json.optString("avatar").takeIf { it.isNotBlank() }?.let(message::setAvatar)
            json.optString("name").takeIf { it.isNotBlank() }?.let(message::setName)
            json.optString("title").takeIf { it.isNotBlank() }?.let(message::setTitle)
            json.optString("gender").takeIf { it.isNotBlank() }?.let(message::setGender)
            json.optString("platform").takeIf { it.isNotBlank() }?.let(message::setPlatform)
            json.optString("activation_date").takeIf { it.isNotBlank() }?.let(message::setActivationDate)
            json.optString("activationDate").takeIf { it.isNotBlank() }?.let(message::setActivationDate)
            json.optString("at").takeIf { it.isNotBlank() }?.let(message::setAt)
            json.optString("reply_name").takeIf { it.isNotBlank() }?.let(message::setReplyName)
            json.optString("reply").takeIf { it.isNotBlank() }?.let(message::setReply)
            json.optString("message").takeIf { it.isNotBlank() }?.let(message::setMessage)
            json.optString("image").takeIf { it.isNotBlank() }?.let(message::setImage)
            json.optString("audio").takeIf { it.isNotBlank() }?.let(message::setAudio)
            json.optString("block_user_id").takeIf { it.isNotBlank() }?.let(message::setBlockUserId)
            if (json.has("verified")) message.isVerified = json.optBoolean("verified")
            json.optString("character").takeIf { it.isNotBlank() }?.let(message::setCharacter)
            message.characters = json.optStringArray("characters")
            json.optString("event_icon").takeIf { it.isNotBlank() }?.let(message::setEventIcon)
            message.eventColors = json.optStringArray("event_colors")
            message
        } catch (_: Exception) {
            null
        }
    }

    private fun JSONObject.optStringArray(name: String): Array<String>? {
        val array: JSONArray = optJSONArray(name) ?: return null
        if (array.length() == 0) return null
        return Array(array.length()) { index -> array.optString(index) }
    }

    private fun addMessage(message: ChatMessageObject) {
        if (isBlacklisted(message.userId)) return
        messages.add(0, message)
        trimMessages()
    }

    private fun trimMessages() {
        val limit = minOf(maxMessageSize, MAX_MESSAGES).coerceAtLeast(1)
        while (messages.size > limit) messages.removeAt(messages.lastIndex)
    }

    private fun isBlacklisted(userId: String?): Boolean {
        if (userId.isNullOrBlank()) return false
        return blacklist.any { it.userId == userId }
    }

    private fun persistBlacklist() {
        e.u(app, if (blacklist.isEmpty()) null else gson.toJson(blacklist.toList()))
    }

    private fun loadCachedProfile() {
        val cached = e.B(app)
        if (cached.isNullOrBlank()) return
        try {
            userProfile = gson.fromJson(cached, UserProfileObject::class.java)
        } catch (_: Exception) {
        }
    }

    private fun emitToast(text: String) {
        post {
            messageText = text
            messageEvent++
        }
    }

    private fun safeErrorBody(response: Response<*>): String? {
        return try {
            response.errorBody()?.string()
        } catch (_: Exception) {
            null
        }
    }

    private fun emitHttpError(code: Int, body: String?) {
        errorCode = code
        errorBody = body
        errorEvent++
    }

    private fun emitNetworkError() {
        errorCode = null
        errorBody = null
        errorEvent++
    }

    private fun post(block: () -> Unit) {
        mainHandler.post(block)
    }

    private fun disconnect() {
        socket?.disconnect()
        socket?.off()
        socket = null
        isConnected = false
    }

    override fun onCleared() {
        profileCall?.cancel()
        updateTitleCall?.cancel()
        stopAiTalk()
        disconnect()
        super.onCleared()
    }

    private fun String.startsWithAnyPrivilegedPrefix(): Boolean {
        return startsWith("ruff") || startsWith("knight-ace") || startsWith("leader") ||
            startsWith("server") || startsWith("kagu")
    }

    private fun String.startsWithAnyNamePrefix(): Boolean {
        return startsWith("ruff") || startsWith("leader") || startsWith("server") || startsWith("kagu")
    }
}
