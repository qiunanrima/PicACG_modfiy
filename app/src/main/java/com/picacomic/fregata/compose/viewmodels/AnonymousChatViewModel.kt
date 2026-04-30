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
import com.picacomic.fregata.b.d
import com.picacomic.fregata.objects.AnonymousChatActionDataObject
import com.picacomic.fregata.objects.AnonymousChatDataObject
import com.picacomic.fregata.objects.UserProfileObject
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.objects.responses.UserProfileResponse
import com.picacomic.fregata.utils.e
import io.socket.client.IO
import io.socket.client.Socket
import io.socket.emitter.Emitter
import org.json.JSONException
import org.json.JSONObject
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class AnonymousChatViewModel(application: Application) : AndroidViewModel(application) {
    companion object {
        private const val SOCKET_URL = "https://secret-chat.wakamoment.gq"
        private const val EVENT_ACTION = "action"
        private const val EVENT_RESPONSE = "response"
        private const val EVENT_CONNECT = "connect"
    }

    val messages = mutableStateListOf<AnonymousChatDataObject>()

    var userId by mutableStateOf("")
        private set
    var nameDraft by mutableStateOf("")
        private set
    var messageDraft by mutableStateOf("")
        private set
    var roomId by mutableStateOf<String?>(null)
        private set
    var matcherName by mutableStateOf<String?>(null)
        private set
    var statusText by mutableStateOf("Welcome")
        private set
    var isMatched by mutableStateOf(false)
        private set
    var isSocketConnected by mutableStateOf(false)
        private set
    var isLoadingProfile by mutableStateOf(false)
        private set
    var isMatching by mutableStateOf(false)
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

    private val gson = Gson()
    private val mainHandler = Handler(Looper.getMainLooper())
    private var userProfile: UserProfileObject? = null
    private var profileCall: Call<GeneralResponse<UserProfileResponse>>? = null
    private var socket: Socket? = null
    private var initialized = false

    private val connectListener = Emitter.Listener {
        runOnMain {
            isSocketConnected = true
            if (!roomId.isNullOrBlank() && !matcherName.isNullOrBlank()) {
                I(matcherName.orEmpty())
            }
        }
    }

    private val actionListener = Emitter.Listener { args ->
        runOnMain {
            (args.firstOrNull() as? JSONObject)?.let { b(it) }
        }
    }

    private val responseListener = Emitter.Listener { args ->
        runOnMain {
            val action = (args.firstOrNull() as? JSONObject)?.let { b(it) } ?: return@runOnMain
            val responseType = action.responseType ?: return@runOnMain
            a(responseType, action.data)
        }
    }

    fun start() {
        if (initialized) return
        initialized = true
        init()
        connectSocket()
        bH()
    }

    fun updateNameDraft(value: String) {
        nameDraft = value.take(50)
    }

    fun updateMessageDraft(value: String) {
        messageDraft = value.take(500)
    }

    fun sendDraft() {
        val content = messageDraft.trim()
        val targetRoom = roomId
        if (content.isBlank() || targetRoom.isNullOrBlank()) return
        j(targetRoom, content)
    }

    fun leaveCurrentRoom(disconnect: Boolean = false) {
        s(disconnect)
        J("leave room")
    }

    fun init() {
        val app = getApplication<Application>()
        val cachedProfile = e.B(app)
        if (!cachedProfile.isNullOrBlank()) {
            runCatching {
                userProfile = gson.fromJson(cachedProfile, UserProfileObject::class.java)
                userId = userProfile?.userId.orEmpty()
            }
        } else {
            cd()
        }
        roomId = e.ag(app)
        matcherName = e.ah(app)
        nameDraft = userProfile?.name.orEmpty().take(50)
    }

    fun bH() {
        val cachedRoom = roomId
        val cachedName = matcherName
        if (!cachedRoom.isNullOrBlank() && !cachedName.isNullOrBlank()) {
            I(cachedName)
        } else {
            J("Welcome")
        }
    }

    fun b(jsonObject: JSONObject): AnonymousChatActionDataObject {
        val result = AnonymousChatActionDataObject(null, null, AnonymousChatDataObject(null, null, null, null, null))
        try {
            if (jsonObject.has("actionType")) {
                result.actionType = jsonObject.getString("actionType")
            }
            if (jsonObject.has("responseType")) {
                result.responseType = jsonObject.getString("responseType")
            }
            if (jsonObject.has("data")) {
                val data = jsonObject.optJSONObject("data")
                if (data != null) {
                    if (data.has("id")) result.data.id = data.getString("id")
                    if (data.has("userId")) result.data.userId = data.getString("userId")
                    if (data.has("name")) result.data.name = data.getString("name")
                    if (data.has("message")) result.data.message = data.getString("message")
                    if (data.has("roomId")) result.data.roomId = data.getString("roomId")
                }
            }
        } catch (_: JSONException) {
        }
        return result
    }

    fun cc() {
        val currentUser = userProfile
        val currentUserId = currentUser?.userId
        if (currentUser == null || currentUserId.isNullOrBlank()) {
            cd()
            return
        }
        isMatching = true
        val action = AnonymousChatActionDataObject(
            "MATCHING",
            null,
            AnonymousChatDataObject(null, currentUserId, nameDraft, null, null)
        )
        socket?.emit(EVENT_ACTION, gson.toJson(action, AnonymousChatActionDataObject::class.java))
    }

    fun j(roomId: String, message: String) {
        val currentUser = userProfile
        val currentUserId = currentUser?.userId
        if (currentUser == null || currentUserId.isNullOrBlank()) return
        val action = AnonymousChatActionDataObject(
            "SEND_MESSAGE",
            null,
            AnonymousChatDataObject(null, currentUserId, nameDraft, message, roomId)
        )
        socket?.emit(EVENT_ACTION, gson.toJson(action, AnonymousChatActionDataObject::class.java))
        messages.add(0, action.data)
        messageDraft = ""
    }

    fun s(disconnect: Boolean) {
        val currentUserId = userProfile?.userId ?: return
        val action = AnonymousChatActionDataObject(
            "LEAVE_MATCHING",
            null,
            AnonymousChatDataObject(null, currentUserId, null, null, null)
        )
        socket?.emit(EVENT_ACTION, gson.toJson(action, AnonymousChatActionDataObject::class.java))
        if (disconnect) {
            socket?.disconnect()
            socket?.off(EVENT_ACTION, actionListener)
            socket?.off(EVENT_RESPONSE, responseListener)
            socket?.off(EVENT_CONNECT, connectListener)
        }
    }

    fun a(responseType: String, data: AnonymousChatDataObject?) {
        when {
            responseType.equals("FOUND_MATCHER", ignoreCase = true) && data != null -> {
                matcherName = data.name
                roomId = data.roomId
                e.v(getApplication(), roomId)
                e.w(getApplication(), matcherName)
                isMatching = false
                I(matcherName.orEmpty())
            }
            responseType.equals("NO_MATCHER", ignoreCase = true) -> {
                isMatching = false
                J("Not Matched")
                emitMessage("暂时没有匹配对象")
            }
            responseType.equals("GOT_MESSAGE", ignoreCase = true) && data != null -> {
                if (data.userId.isNullOrBlank() || !data.userId.equals(userProfile?.userId, ignoreCase = true)) {
                    messages.add(0, data)
                }
            }
        }
    }

    fun I(name: String) {
        statusText = "$name joined"
        matcherName = name
        isMatched = true
    }

    fun J(message: String) {
        e.v(getApplication(), null)
        e.w(getApplication(), null)
        roomId = null
        matcherName = null
        statusText = message
        isMatched = false
        isMatching = false
        messages.clear()
    }

    fun cd() {
        val app = getApplication<Application>()
        isLoadingProfile = true
        profileCall?.cancel()
        profileCall = d(app).dO().am(e.z(app))
        profileCall?.enqueue(object : Callback<GeneralResponse<UserProfileResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<UserProfileResponse>>,
                response: Response<GeneralResponse<UserProfileResponse>>
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    val profile = response.body()?.data?.user
                    if (profile != null) {
                        userProfile = profile
                        userId = profile.userId.orEmpty()
                        nameDraft = profile.name.orEmpty().take(50)
                        e.i(app, gson.toJson(profile))
                    }
                } else {
                    errorCode = response.code()
                    errorBody = runCatching { response.errorBody()?.string() }.getOrNull()
                    errorEvent++
                }
                isLoadingProfile = false
            }

            override fun onFailure(call: Call<GeneralResponse<UserProfileResponse>>, t: Throwable) {
                if (call.isCanceled) return
                isLoadingProfile = false
                errorCode = null
                errorBody = null
                errorEvent++
            }
        })
    }

    private fun connectSocket() {
        if (socket != null) return
        val options = IO.Options().apply {
            transports = arrayOf("websocket")
        }
        socket = runCatching { IO.socket(SOCKET_URL, options) }.getOrNull()
        socket?.on(EVENT_ACTION, actionListener)
        socket?.on(EVENT_RESPONSE, responseListener)
        socket?.on(EVENT_CONNECT, connectListener)
        socket?.connect()
    }

    private fun emitMessage(message: String) {
        messageText = message
        messageEvent++
    }

    private fun runOnMain(block: () -> Unit) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            block()
        } else {
            mainHandler.post(block)
        }
    }

    override fun onCleared() {
        profileCall?.cancel()
        s(disconnect = true)
        super.onCleared()
    }
}
