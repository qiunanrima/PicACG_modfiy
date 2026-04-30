package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.google.gson.Gson
import com.picacomic.fregata.R
import com.picacomic.fregata.b.d
import com.picacomic.fregata.objects.CommentObject
import com.picacomic.fregata.objects.CommentWithReplyObject
import com.picacomic.fregata.objects.UserBasicObject
import com.picacomic.fregata.objects.UserProfileObject
import com.picacomic.fregata.objects.requests.CommentBody
import com.picacomic.fregata.objects.responses.ActionResponse
import com.picacomic.fregata.objects.responses.CommentPostToTopResponse
import com.picacomic.fregata.objects.responses.DataClass.CommentsResponse.CommentsResponse
import com.picacomic.fregata.objects.responses.DataClass.PostCommentResponse.PostCommentResponse
import com.picacomic.fregata.objects.responses.DataClass.ProfileCommentsResponse.ProfileCommentsResponse
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.objects.responses.MessageResponse
import com.picacomic.fregata.objects.responses.UserProfileDirtyResponse
import com.picacomic.fregata.utils.e
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class CommentViewModel(application: Application) : AndroidViewModel(application) {
    companion object {
        const val MODE_COMIC = 0
        const val MODE_PROFILE = 1
        const val MODE_GAME = 2
        const val MODE_THREAD = 3

        private const val DIRTY_FRAME_URL = "https://www.picacomic.com/special/frame-dirty.png?r=2"
    }

    var commentItems by mutableStateOf<List<CommentWithReplyObject>>(emptyList())
        private set

    var displayFloorCount by mutableIntStateOf(0)
        private set

    var topCommentCount by mutableIntStateOf(0)
        private set

    var currentPage by mutableIntStateOf(1)
        private set

    var totalPages by mutableIntStateOf(1)
        private set

    var hasMore by mutableStateOf(true)
        private set

    var isLoading by mutableStateOf(false)
        private set

    var loadingReplyIndex by mutableIntStateOf(-1)
        private set

    var isPosting by mutableStateOf(false)
        private set

    var replyMode by mutableStateOf(false)
        private set

    var replyingToCommentId by mutableStateOf<String?>(null)
        private set

    var replyingToIndex by mutableIntStateOf(-1)
        private set

    var expandedCommentIndex by mutableIntStateOf(-1)
        private set

    var inputBarVisible by mutableStateOf(true)
        private set

    var toolbarVisible by mutableStateOf(true)
        private set

    var adminMode by mutableStateOf(false)
        private set

    var adminToolsIndex by mutableIntStateOf(-1)
        private set

    var profileUser by mutableStateOf<UserBasicObject?>(null)
        private set

    val isProfileMode: Boolean
        get() = mode == MODE_PROFILE

    var errorEvent by mutableIntStateOf(0)
        private set

    var errorCode by mutableStateOf<Int?>(null)
        private set

    var errorBody by mutableStateOf<String?>(null)
        private set

    var messageEvent by mutableIntStateOf(0)
        private set

    var messageRes by mutableStateOf<Int?>(null)
        private set

    var messageText by mutableStateOf<String?>(null)
        private set

    var submitSuccessEvent by mutableIntStateOf(0)
        private set

    private var requestKey: String? = null
    private var mode = MODE_COMIC
    private var comicId: String? = null
    private var gameId: String? = null
    private var userId: String? = null
    private var knightUserId: String? = null
    private var threadCommentId: String? = null

    private var rootCommentsCall: Call<*>? = null
    private var childCommentsCall: Call<GeneralResponse<CommentsResponse>>? = null
    private var postCommentCall: Call<GeneralResponse<PostCommentResponse>>? = null
    private var likeCall: Call<GeneralResponse<ActionResponse>>? = null
    private var hideCall: Call<GeneralResponse<MessageResponse>>? = null
    private var reportCall: Call<GeneralResponse<MessageResponse>>? = null
    private var topCall: Call<GeneralResponse<CommentPostToTopResponse>>? = null
    private var dirtyCall: Call<GeneralResponse<UserProfileDirtyResponse>>? = null

    fun init(
        comicId: String? = null,
        gameId: String? = null,
        userId: String? = null,
        knightUserId: String? = null,
        userBasic: UserBasicObject? = null,
        force: Boolean = false
    ) {
        profileUser = userBasic
        this.comicId = comicId
        this.gameId = gameId
        this.userId = userId
        this.knightUserId = knightUserId
        threadCommentId = null
        mode = when {
            !userId.isNullOrBlank() -> MODE_PROFILE
            !gameId.isNullOrBlank() -> MODE_GAME
            else -> MODE_COMIC
        }

        val newRequestKey = listOf(mode, comicId, gameId, userId, knightUserId, userBasic?.userId)
            .joinToString("|") { it?.toString().orEmpty() }
        if (force || requestKey != newRequestKey) {
            requestKey = newRequestKey
            resetState()
            resolveAdminMode()
        }

        if (commentItems.isEmpty()) {
            loadRootComments(reset = true)
        }
    }

    fun loadComments(
        comicId: String? = null,
        gameId: String? = null,
        commentId: String? = null,
        page: Int = 1,
        force: Boolean = false
    ) {
        if (force || requestKey == null) {
            this.comicId = comicId
            this.gameId = gameId
            this.threadCommentId = commentId
            this.userId = null
            this.knightUserId = null
            mode = when {
                !gameId.isNullOrBlank() -> MODE_GAME
                !commentId.isNullOrBlank() -> MODE_THREAD
                else -> MODE_COMIC
            }
            requestKey = listOf(mode, comicId, gameId, commentId).joinToString("|") { it?.toString().orEmpty() }
            resetState()
            resolveAdminMode()
        }

        currentPage = page.coerceAtLeast(1)
        loadRootComments(reset = force || currentPage <= 1)
    }

    fun refresh() {
        resetState()
        loadRootComments(reset = true)
    }

    fun jumpToPage(targetPage: Int) {
        currentPage = targetPage.coerceAtLeast(1)
        loadRootComments(reset = true)
    }

    fun submitComment(content: String) {
        if (content.trim().length < 2) {
            emitMessageText("留言內容太短")
            return
        }
        if (replyMode && !replyingToCommentId.isNullOrBlank()) {
            postReply(content.trim())
        } else {
            postRootComment(content.trim())
        }
    }

    fun cancelReplyMode() {
        D(false)
    }

    fun selectComment(index: Int) {
        val item = commentItems.getOrNull(index) ?: return
        if (replyingToCommentId.equals(item.commentId, ignoreCase = true) && replyMode) {
            cancelReplyMode()
            expandedCommentIndex = -1
            return
        }

        D(true)
        replyingToCommentId = item.commentId
        replyingToIndex = index
        expandedCommentIndex = index

        if (item.childsCount > 0 && item.arrayList.isNullOrEmpty()) {
            loadReplies(index, reset = true)
        }
    }

    fun toggleReplies(index: Int) {
        val item = commentItems.getOrNull(index) ?: return
        if (expandedCommentIndex == index) {
            expandedCommentIndex = -1
            return
        }

        expandedCommentIndex = index
        replyingToCommentId = item.commentId
        replyingToIndex = index

        val currentChildren = item.arrayList
        if (!currentChildren.isNullOrEmpty()) {
            return
        }
        if (item.childsCount > 0) {
            loadReplies(index, reset = true)
        }
    }

    fun loadReplies(index: Int, reset: Boolean = false) {
        val item = commentItems.getOrNull(index) ?: return
        val commentId = item.commentId ?: return
        if (loadingReplyIndex == index) return

        val targetPage = if (reset) 1 else (item.currentPage + 1).coerceAtLeast(1)
        val context = getApplication<Application>()
        val api = d(context).dO()
        val auth = e.z(context)

        loadingReplyIndex = index
        childCommentsCall?.cancel()
        childCommentsCall = api.d(auth, commentId, targetPage)
        childCommentsCall?.enqueue(object : Callback<GeneralResponse<CommentsResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<CommentsResponse>>,
                response: Response<GeneralResponse<CommentsResponse>>
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    val paging = response.body()?.data?.comments
                    val existing = if (reset) {
                        arrayListOf()
                    } else {
                        item.arrayList ?: arrayListOf()
                    }
                    paging?.docs?.forEach { existing.add(it) }

                    updateRootItem(index) { root ->
                        root.arrayList = existing
                        root.currentPage = targetPage
                        root.totalPage = paging?.pages ?: root.totalPage
                        root.childsCount = paging?.total ?: root.childsCount
                    }
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                loadingReplyIndex = -1
            }

            override fun onFailure(call: Call<GeneralResponse<CommentsResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                loadingReplyIndex = -1
            }
        })
    }

    fun beginReply(index: Int) {
        val item = commentItems.getOrNull(index) ?: return
        if (replyingToCommentId.equals(item.commentId, ignoreCase = true) && replyMode) {
            cancelReplyMode()
            return
        }
        D(true)
        replyingToCommentId = item.commentId
        replyingToIndex = index
    }

    fun toggleCommentLike(index: Int) {
        val item = commentItems.getOrNull(index) ?: return
        toggleLike(commentId = item.commentId, isReply = false, rootIndex = index, replyIndex = -1)
    }

    fun toggleReplyLike(rootIndex: Int, replyIndex: Int) {
        val reply = commentItems.getOrNull(rootIndex)?.arrayList?.getOrNull(replyIndex) ?: return
        toggleLike(commentId = reply.commentId, isReply = true, rootIndex = rootIndex, replyIndex = replyIndex)
    }

    fun hideComment(index: Int) {
        val item = commentItems.getOrNull(index) ?: return
        performHide(commentId = item.commentId, rootIndex = index, replyIndex = -1)
    }

    fun hideReply(rootIndex: Int, replyIndex: Int) {
        val reply = commentItems.getOrNull(rootIndex)?.arrayList?.getOrNull(replyIndex) ?: return
        performHide(commentId = reply.commentId, rootIndex = rootIndex, replyIndex = replyIndex)
    }

    fun reportComment(index: Int) {
        val item = commentItems.getOrNull(index) ?: return
        performReport(commentId = item.commentId, rootIndex = index, replyIndex = -1)
    }

    fun reportReply(rootIndex: Int, replyIndex: Int) {
        val reply = commentItems.getOrNull(rootIndex)?.arrayList?.getOrNull(replyIndex) ?: return
        performReport(commentId = reply.commentId, rootIndex = rootIndex, replyIndex = replyIndex)
    }

    fun toggleTop(index: Int) {
        val item = commentItems.getOrNull(index) ?: return
        val commentId = item.commentId ?: return
        ac(commentId)
    }

    fun toggleDirtyAvatarForComment(index: Int) {
        val userId = commentItems.getOrNull(index)?.user?.userId ?: return
        ab(userId)
    }

    fun toggleDirtyAvatarForReply(rootIndex: Int, replyIndex: Int) {
        val userId = commentItems.getOrNull(rootIndex)?.arrayList?.getOrNull(replyIndex)?.user?.userId ?: return
        ab(userId)
    }

    fun C(reset: Boolean) {
        loadRootComments(reset)
    }

    fun C(index: Int) {
        toggleReplies(index)
    }

    fun D(enabled: Boolean) {
        replyMode = enabled
        if (!enabled) {
            replyingToCommentId = null
            replyingToIndex = -1
        }
    }

    fun N(index: Int) {
        val item = commentItems.getOrNull(index) ?: return
        expandedCommentIndex = index
        if (item.childsCount <= 0) return
        if (item.arrayList.isNullOrEmpty() || item.currentPage <= 0) {
            a(item.commentId.orEmpty(), index, true)
        } else if (item.currentPage < item.totalPage) {
            a(item.commentId.orEmpty(), index, false)
        }
    }

    fun O(index: Int): CommentTarget? {
        val item = commentItems.getOrNull(index) ?: return null
        item.comicId?.comicId?.takeIf { it.isNotBlank() }?.let {
            return CommentTarget.Comic(it)
        }
        item.gameId?.gameId?.takeIf { it.isNotBlank() }?.let {
            return CommentTarget.Game(it)
        }
        return null
    }

    fun P(index: Int): UserProfileObject? = commentItems.getOrNull(index)?.user

    fun f(rootIndex: Int, replyIndex: Int): UserProfileObject? =
        commentItems.getOrNull(rootIndex)?.arrayList?.getOrNull(replyIndex)?.user

    fun Q(index: Int) {
        toggleCommentLike(index)
    }

    fun g(rootIndex: Int, replyIndex: Int) {
        toggleReplyLike(rootIndex, replyIndex)
    }

    fun R(index: Int): UserProfileObject? = P(index)

    fun h(rootIndex: Int, replyIndex: Int): UserProfileObject? = f(rootIndex, replyIndex)

    fun S(index: Int) {
        hideComment(index)
    }

    fun i(rootIndex: Int, replyIndex: Int) {
        hideReply(rootIndex, replyIndex)
    }

    fun A(index: Int) {
        adminToolsIndex = if (adminToolsIndex == index) -1 else index
    }

    fun T(index: Int) {
        val commentId = commentItems.getOrNull(index)?.commentId ?: return
        ac(commentId)
    }

    fun U(index: Int) {
        val userId = commentItems.getOrNull(index)?.user?.userId ?: return
        ab(userId)
    }

    fun V(index: Int) {
        k(index, -1)
    }

    fun j(rootIndex: Int, replyIndex: Int) {
        k(rootIndex, replyIndex)
    }

    fun k(rootIndex: Int, replyIndex: Int) {
        if (replyIndex >= 0) {
            reportReply(rootIndex, replyIndex)
        } else {
            reportComment(rootIndex)
        }
    }

    fun db(content: String) {
        postRootComment(content.trim())
    }

    fun dc(content: String) {
        postReply(content.trim())
    }

    fun a(commentId: String, index: Int, reset: Boolean) {
        if (commentId.isBlank()) return
        loadReplies(index, reset)
    }

    fun aa(commentId: String) {
        sendLikeAction(commentId)
    }

    fun a(commentId: String, rootIndex: Int, replyIndex: Int) {
        performHide(commentId, rootIndex, replyIndex)
    }

    fun b(commentId: String, rootIndex: Int, replyIndex: Int) {
        performReport(commentId, rootIndex, replyIndex)
    }

    fun ab(userId: String) {
        toggleDirtyAvatar(userId)
    }

    fun ac(commentId: String) {
        val context = getApplication<Application>()
        val api = d(context).dO()
        val auth = e.z(context)

        topCall?.cancel()
        topCall = api.y(auth, commentId)
        topCall?.enqueue(object : Callback<GeneralResponse<CommentPostToTopResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<CommentPostToTopResponse>>,
                response: Response<GeneralResponse<CommentPostToTopResponse>>
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    b(commentId, response.body()?.data?.isTop == true)
                    emitMessageText("修改置頂成功！更新介面需重新進入。")
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
            }

            override fun onFailure(call: Call<GeneralResponse<CommentPostToTopResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
            }
        })
    }

    fun a(userId: String, dirty: Boolean) {
        applyDirtyState(userId, dirty)
    }

    fun b(commentId: String, top: Boolean) {
        applyTopState(commentId, top)
    }

    private fun loadRootComments(reset: Boolean) {
        if (isLoading) return
        val context = getApplication<Application>()
        val api = d(context).dO()
        val auth = e.z(context)

        if (reset) {
            commentItems = emptyList()
            topCommentCount = 0
            hasMore = true
        }

        isLoading = true
        when (mode) {
            MODE_PROFILE -> {
                rootCommentsCall?.cancel()
                rootCommentsCall = api.c(auth, currentPage)
                @Suppress("UNCHECKED_CAST")
                (rootCommentsCall as? Call<GeneralResponse<ProfileCommentsResponse>>)?.enqueue(
                    object : Callback<GeneralResponse<ProfileCommentsResponse>> {
                        override fun onResponse(
                            call: Call<GeneralResponse<ProfileCommentsResponse>>,
                            response: Response<GeneralResponse<ProfileCommentsResponse>>
                        ) {
                            if (call.isCanceled) return
                            if (response.code() == 200) {
                                val paging = response.body()?.data?.comments
                                val docs = paging?.docs?.map {
                                    CommentWithReplyObject(it, profileUser?.toUserProfileObject())
                                } ?: emptyList()
                                commentItems = if (reset) docs else commentItems + docs
                                currentPage = paging?.page ?: currentPage
                                totalPages = paging?.pages ?: 1
                                hasMore = currentPage < totalPages
                                if (reset) {
                                    val total = paging?.total ?: commentItems.size
                                    val limit = paging?.limit ?: commentItems.size
                                    displayFloorCount = total - (limit * (currentPage - 1))
                                }
                            } else {
                                emitHttpError(response.code(), safeErrorBody(response))
                            }
                            isLoading = false
                        }

                        override fun onFailure(
                            call: Call<GeneralResponse<ProfileCommentsResponse>>,
                            t: Throwable
                        ) {
                            if (call.isCanceled) return
                            emitNetworkError()
                            isLoading = false
                        }
                    }
                )
            }

            else -> {
                val call = when {
                    mode == MODE_GAME && !gameId.isNullOrBlank() -> api.f(auth, gameId!!, currentPage)
                    mode == MODE_THREAD && !threadCommentId.isNullOrBlank() -> api.d(auth, threadCommentId!!, currentPage)
                    else -> api.c(auth, comicId.orEmpty(), currentPage)
                }
                rootCommentsCall?.cancel()
                rootCommentsCall = call
                call.enqueue(object : Callback<GeneralResponse<CommentsResponse>> {
                    override fun onResponse(
                        call: Call<GeneralResponse<CommentsResponse>>,
                        response: Response<GeneralResponse<CommentsResponse>>
                    ) {
                        if (call.isCanceled) return
                        if (response.code() == 200) {
                            val data = response.body()?.data
                            val paging = data?.comments
                            val docs = paging?.docs?.map { CommentWithReplyObject(it) } ?: emptyList()
                            val merged = if (reset) {
                                val initial = ArrayList<CommentWithReplyObject>()
                                val top = if (mode != MODE_THREAD && currentPage == 1) {
                                    data?.topComments?.map { CommentWithReplyObject(it).apply { isTop = true } }
                                        ?: emptyList()
                                } else {
                                    emptyList()
                                }
                                topCommentCount = top.size
                                initial.addAll(top)
                                initial.addAll(docs)
                                initial
                            } else {
                                ArrayList<CommentWithReplyObject>(commentItems).apply { addAll(docs) }
                            }
                            commentItems = merged
                            currentPage = paging?.page ?: currentPage
                            totalPages = paging?.pages ?: 1
                            hasMore = currentPage < totalPages
                            if (reset) {
                                val total = paging?.total ?: merged.size
                                val limit = paging?.limit ?: merged.size
                                displayFloorCount = if (topCommentCount > 0 && currentPage == 1 && mode != MODE_THREAD) {
                                    total + topCommentCount
                                } else {
                                    total - (limit * (currentPage - 1))
                                }
                            }
                        } else {
                            emitHttpError(response.code(), safeErrorBody(response))
                        }
                        isLoading = false
                    }

                    override fun onFailure(call: Call<GeneralResponse<CommentsResponse>>, t: Throwable) {
                        if (call.isCanceled) return
                        emitNetworkError()
                        isLoading = false
                    }
                })
            }
        }
    }

    private fun postRootComment(content: String) {
        if (mode == MODE_PROFILE) return
        val context = getApplication<Application>()
        val api = d(context).dO()
        val auth = e.z(context)

        isPosting = true
        postCommentCall?.cancel()
        postCommentCall = if (mode == MODE_GAME && !gameId.isNullOrBlank()) {
            api.c(auth, gameId!!, CommentBody(content))
        } else {
            api.a(auth, comicId.orEmpty(), CommentBody(content))
        }
        postCommentCall?.enqueue(object : Callback<GeneralResponse<PostCommentResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<PostCommentResponse>>,
                response: Response<GeneralResponse<PostCommentResponse>>
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    cancelReplyMode()
                    submitSuccessEvent++
                    refresh()
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                isPosting = false
            }

            override fun onFailure(call: Call<GeneralResponse<PostCommentResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                isPosting = false
            }
        })
    }

    private fun postReply(content: String) {
        val parentId = replyingToCommentId ?: return
        val rootIndex = replyingToIndex
        if (rootIndex < 0) return

        val context = getApplication<Application>()
        val api = d(context).dO()
        val auth = e.z(context)

        isPosting = true
        postCommentCall?.cancel()
        postCommentCall = api.b(auth, parentId, CommentBody(content))
        postCommentCall?.enqueue(object : Callback<GeneralResponse<PostCommentResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<PostCommentResponse>>,
                response: Response<GeneralResponse<PostCommentResponse>>
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    loadReplies(rootIndex, reset = true)
                    cancelReplyMode()
                    submitSuccessEvent++
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                isPosting = false
            }

            override fun onFailure(call: Call<GeneralResponse<PostCommentResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                isPosting = false
            }
        })
    }

    private fun toggleLike(
        commentId: String?,
        isReply: Boolean,
        rootIndex: Int,
        replyIndex: Int
    ) {
        val targetId = commentId ?: return
        val context = getApplication<Application>()
        val api = d(context).dO()
        val auth = e.z(context)

        if (isReply) {
            updateReply(rootIndex, replyIndex) { reply ->
                if (reply.isLiked) {
                    reply.likesCount = (reply.likesCount - 1).coerceAtLeast(0)
                    reply.isLiked = false
                    emitMessage(R.string.alert_like_canceled)
                } else {
                    reply.likesCount += 1
                    reply.isLiked = true
                    emitMessage(R.string.alert_liked)
                }
            }
        } else {
            updateRootItem(rootIndex) { root ->
                if (root.isLiked) {
                    root.likesCount = (root.likesCount - 1).coerceAtLeast(0)
                    root.isLiked = false
                    emitMessage(R.string.alert_like_canceled)
                } else {
                    root.likesCount += 1
                    root.isLiked = true
                    emitMessage(R.string.alert_liked)
                }
            }
        }

        aa(targetId)
    }

    private fun sendLikeAction(commentId: String) {
        if (commentId.isBlank()) return
        val context = getApplication<Application>()
        val api = d(context).dO()
        val auth = e.z(context)

        likeCall?.cancel()
        likeCall = api.v(auth, commentId)
        likeCall?.enqueue(object : Callback<GeneralResponse<ActionResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<ActionResponse>>,
                response: Response<GeneralResponse<ActionResponse>>
            ) {
                if (call.isCanceled) return
                if (response.code() != 200) {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
            }

            override fun onFailure(call: Call<GeneralResponse<ActionResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
            }
        })
    }

    private fun performHide(commentId: String?, rootIndex: Int, replyIndex: Int) {
        val targetId = commentId ?: return
        val context = getApplication<Application>()
        val api = d(context).dO()
        val auth = e.z(context)

        hideCall?.cancel()
        hideCall = api.w(auth, targetId)
        hideCall?.enqueue(object : Callback<GeneralResponse<MessageResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<MessageResponse>>,
                response: Response<GeneralResponse<MessageResponse>>
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    val message = response.body()?.data?.message
                    if (replyIndex >= 0) {
                        updateReply(rootIndex, replyIndex) { reply ->
                            reply.setHide(true)
                            if (!message.isNullOrBlank()) {
                                reply.content = message
                            }
                        }
                    } else {
                        updateRootItem(rootIndex) { root ->
                            root.setHide(true)
                            if (!message.isNullOrBlank()) {
                                root.content = message
                            }
                        }
                    }
                    emitMessageText("隱藏留言成功！")
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
            }

            override fun onFailure(call: Call<GeneralResponse<MessageResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
            }
        })
    }

    private fun performReport(commentId: String?, rootIndex: Int, replyIndex: Int) {
        val targetId = commentId ?: return
        val context = getApplication<Application>()
        val api = d(context).dO()
        val auth = e.z(context)

        reportCall?.cancel()
        reportCall = api.x(auth, targetId)
        reportCall?.enqueue(object : Callback<GeneralResponse<MessageResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<MessageResponse>>,
                response: Response<GeneralResponse<MessageResponse>>
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    val message = response.body()?.data?.message
                    if (replyIndex >= 0) {
                        updateReply(rootIndex, replyIndex) { reply ->
                            reply.setHide(true)
                            if (!message.isNullOrBlank()) {
                                reply.content = message
                            }
                        }
                    } else {
                        updateRootItem(rootIndex) { root ->
                            root.setHide(true)
                            if (!message.isNullOrBlank()) {
                                root.content = message
                            }
                        }
                    }
                    emitMessageText("舉報留言成功！")
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
            }

            override fun onFailure(call: Call<GeneralResponse<MessageResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
            }
        })
    }

    private fun toggleDirtyAvatar(userId: String) {
        val context = getApplication<Application>()
        val api = d(context).dO()
        val auth = e.z(context)

        dirtyCall?.cancel()
        dirtyCall = api.p(auth, userId)
        dirtyCall?.enqueue(object : Callback<GeneralResponse<UserProfileDirtyResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<UserProfileDirtyResponse>>,
                response: Response<GeneralResponse<UserProfileDirtyResponse>>
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    applyDirtyState(userId, response.body()?.data?.isDirty == true)
                    emitMessageText("修改污頭像成功！")
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
            }

            override fun onFailure(call: Call<GeneralResponse<UserProfileDirtyResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
            }
        })
    }

    private fun applyDirtyState(targetUserId: String, isDirty: Boolean) {
        val updated = commentItems.toMutableList()
        updated.forEach { root ->
            if (root.user?.userId == targetUserId) {
                root.user?.character = if (isDirty) DIRTY_FRAME_URL else null
            }
            root.arrayList?.forEach { reply ->
                if (reply.user?.userId == targetUserId) {
                    reply.user?.character = if (isDirty) DIRTY_FRAME_URL else null
                }
            }
        }
        commentItems = updated
    }

    private fun applyTopState(targetCommentId: String, isTop: Boolean) {
        val updated = commentItems.toMutableList()
        updated.forEach { root ->
            if (root.commentId == targetCommentId) {
                root.isTop = isTop
            }
        }
        commentItems = updated
    }

    private fun updateRootItem(index: Int, block: (CommentWithReplyObject) -> Unit) {
        val updated = commentItems.toMutableList()
        val item = updated.getOrNull(index) ?: return
        block(item)
        commentItems = updated
    }

    private fun updateReply(rootIndex: Int, replyIndex: Int, block: (CommentObject) -> Unit) {
        val updated = commentItems.toMutableList()
        val root = updated.getOrNull(rootIndex) ?: return
        val replies = root.arrayList ?: return
        val reply = replies.getOrNull(replyIndex) ?: return
        block(reply)
        root.arrayList = ArrayList(replies)
        commentItems = updated
    }

    private fun resolveAdminMode() {
        adminMode = false
        val profileJson = e.B(getApplication<Application>())
        if (profileJson.isNullOrBlank()) return

        try {
            val currentUser = Gson().fromJson(profileJson, UserProfileObject::class.java) ?: return
            adminMode = currentUser.userId != null && knightUserId != null && currentUser.userId == knightUserId
            if (!adminMode) {
                adminMode = currentUser.email?.endsWith("@picacomic.com") == true
            }
        } catch (_: Exception) {
        }

        inputBarVisible = mode != MODE_PROFILE
        toolbarVisible = mode != MODE_PROFILE
    }

    private fun UserBasicObject.toUserProfileObject(): UserProfileObject {
        return UserProfileObject().apply {
            setUserId(this@toUserProfileObject.userId)
            setName(this@toUserProfileObject.name)
            setGender(this@toUserProfileObject.gender)
            setCharacter(this@toUserProfileObject.character)
            setLevel(this@toUserProfileObject.level)
            setExp(this@toUserProfileObject.exp)
            setVerified(this@toUserProfileObject.isVerified)
            setAvatar(this@toUserProfileObject.avatar)
        }
    }

    private fun resetState() {
        rootCommentsCall?.cancel()
        childCommentsCall?.cancel()
        postCommentCall?.cancel()
        commentItems = emptyList()
        displayFloorCount = 0
        topCommentCount = 0
        currentPage = 1
        totalPages = 1
        hasMore = true
        isLoading = false
        loadingReplyIndex = -1
        isPosting = false
        expandedCommentIndex = -1
        adminToolsIndex = -1
        cancelReplyMode()
    }

    private fun emitMessage(message: Int) {
        messageRes = message
        messageText = null
        messageEvent++
    }

    private fun emitMessageText(message: String) {
        messageText = message
        messageRes = null
        messageEvent++
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

    private fun safeErrorBody(response: Response<*>): String? {
        return try {
            response.errorBody()?.string()
        } catch (_: Exception) {
            null
        }
    }

    override fun onCleared() {
        rootCommentsCall?.cancel()
        childCommentsCall?.cancel()
        postCommentCall?.cancel()
        likeCall?.cancel()
        hideCall?.cancel()
        reportCall?.cancel()
        topCall?.cancel()
        dirtyCall?.cancel()
        super.onCleared()
    }

    sealed class CommentTarget {
        data class Comic(val comicId: String) : CommentTarget()
        data class Game(val gameId: String) : CommentTarget()
    }
}
