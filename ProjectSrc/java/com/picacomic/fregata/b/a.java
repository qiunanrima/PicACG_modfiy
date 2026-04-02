package com.picacomic.fregata.b;

import com.picacomic.fregata.objects.requests.AdjustExpBody;
import com.picacomic.fregata.objects.requests.AvatarBody;
import com.picacomic.fregata.objects.requests.ChangePasswordBody;
import com.picacomic.fregata.objects.requests.CommentBody;
import com.picacomic.fregata.objects.requests.ForgotPasswordBody;
import com.picacomic.fregata.objects.requests.RegisterBody;
import com.picacomic.fregata.objects.requests.ResetPasswordBody;
import com.picacomic.fregata.objects.requests.SignInBody;
import com.picacomic.fregata.objects.requests.SortingBody;
import com.picacomic.fregata.objects.requests.UpdatePicaIdBody;
import com.picacomic.fregata.objects.requests.UpdateProfileBody;
import com.picacomic.fregata.objects.requests.UpdateQandABody;
import com.picacomic.fregata.objects.requests.UpdateUserTitleBody;
import com.picacomic.fregata.objects.requests.UserIdBody;
import com.picacomic.fregata.objects.responses.ActionResponse;
import com.picacomic.fregata.objects.responses.BannersResponse;
import com.picacomic.fregata.objects.responses.CategoryResponse;
import com.picacomic.fregata.objects.responses.ChatroomListResponse;
import com.picacomic.fregata.objects.responses.ComicDetailResponse;
import com.picacomic.fregata.objects.responses.ComicRandomListResponse;
import com.picacomic.fregata.objects.responses.CommentPostToTopResponse;
import com.picacomic.fregata.objects.responses.DataClass.AnnouncementsResponse.AnnouncementsResponse;
import com.picacomic.fregata.objects.responses.DataClass.ApplicationsResponse.ApplicationsResponse;
import com.picacomic.fregata.objects.responses.DataClass.CollectionsResponse;
import com.picacomic.fregata.objects.responses.DataClass.ComicEpisodeResponse.ComicEpisodeResponse;
import com.picacomic.fregata.objects.responses.DataClass.ComicListResponse.ComicListResponse;
import com.picacomic.fregata.objects.responses.DataClass.ComicPageResponse.ComicPagesResponse;
import com.picacomic.fregata.objects.responses.DataClass.CommentsResponse.CommentsResponse;
import com.picacomic.fregata.objects.responses.DataClass.GameDetailResponse.GameDetailResponse;
import com.picacomic.fregata.objects.responses.DataClass.GameListResponse.GameListResponse;
import com.picacomic.fregata.objects.responses.DataClass.NotificationsResponse.NotificationsResponse;
import com.picacomic.fregata.objects.responses.DataClass.PicaAppsResponse;
import com.picacomic.fregata.objects.responses.DataClass.PostCommentResponse.PostCommentResponse;
import com.picacomic.fregata.objects.responses.DataClass.ProfileCommentsResponse.ProfileCommentsResponse;
import com.picacomic.fregata.objects.responses.ForgotPasswordResponse;
import com.picacomic.fregata.objects.responses.GeneralResponse;
import com.picacomic.fregata.objects.responses.InitialResponse;
import com.picacomic.fregata.objects.responses.KeywordsResponse;
import com.picacomic.fregata.objects.responses.LeaderboardKnightResponse;
import com.picacomic.fregata.objects.responses.LeaderboardResponse;
import com.picacomic.fregata.objects.responses.MessageResponse;
import com.picacomic.fregata.objects.responses.PasswordResponse;
import com.picacomic.fregata.objects.responses.PunchInResponse;
import com.picacomic.fregata.objects.responses.PutAvatarResponse;
import com.picacomic.fregata.objects.responses.RegisterResponse;
import com.picacomic.fregata.objects.responses.SignInResponse;
import com.picacomic.fregata.objects.responses.UserProfileDirtyResponse;
import com.picacomic.fregata.objects.responses.UserProfileResponse;
import com.picacomic.fregata.objects.responses.WakaInitResponse;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;
import retrofit2.http.Query;

/* JADX INFO: compiled from: ApiService.java */
/* JADX INFO: loaded from: classes.dex */
public interface a {
    @POST("games/{gameId}/like")
    Call<GeneralResponse<ActionResponse>> A(@Header("authorization") String str, @Path("gameId") String str2);

    @POST("auth/forgot-password")
    Call<GeneralResponse<ForgotPasswordResponse>> a(@Body ForgotPasswordBody forgotPasswordBody);

    @POST("auth/register")
    Call<RegisterResponse> a(@Body RegisterBody registerBody);

    @POST("auth/reset-password")
    Call<GeneralResponse<PasswordResponse>> a(@Body ResetPasswordBody resetPasswordBody);

    @POST("auth/sign-in")
    Call<GeneralResponse<SignInResponse>> a(@Body SignInBody signInBody);

    @POST("comics/advanced-search")
    Call<GeneralResponse<ComicListResponse>> a(@Header("authorization") String str, @Query("page") int i, @Body SortingBody sortingBody);

    @GET("comics")
    Call<GeneralResponse<ComicListResponse>> a(@Header("authorization") String str, @Query("page") int i, @Query("c") String str2, @Query("t") String str3, @Query("a") String str4, @Query("f") String str5, @Query("s") String str6, @Query("ct") String str7, @Query("ca") String str8);

    @POST("utils/adjust-exp")
    Call<RegisterResponse> a(@Header("authorization") String str, @Body AdjustExpBody adjustExpBody);

    @PUT("users/avatar")
    Call<GeneralResponse<PutAvatarResponse>> a(@Header("authorization") String str, @Body AvatarBody avatarBody);

    @PUT("users/password")
    Call<RegisterResponse> a(@Header("authorization") String str, @Body ChangePasswordBody changePasswordBody);

    @PUT("users/update-id")
    Call<GeneralResponse> a(@Header("authorization") String str, @Body UpdatePicaIdBody updatePicaIdBody);

    @PUT("users/profile")
    Call<RegisterResponse> a(@Header("authorization") String str, @Body UpdateProfileBody updateProfileBody);

    @PUT("users/update-qa")
    Call<GeneralResponse> a(@Header("authorization") String str, @Body UpdateQandABody updateQandABody);

    @POST("utils/remove-comment")
    Call<GeneralResponse> a(@Header("authorization") String str, @Body UserIdBody userIdBody);

    @GET("users/favourite")
    Call<GeneralResponse<ComicListResponse>> a(@Header("authorization") String str, @Query("s") String str2, @Query("page") int i);

    @GET("comics/{comicId}/order/{order}/pages")
    Call<GeneralResponse<ComicPagesResponse>> a(@Header("authorization") String str, @Path("comicId") String str2, @Path("order") int i, @Query("page") int i2);

    @POST("comics/{comicId}/comments")
    Call<GeneralResponse<PostCommentResponse>> a(@Header("authorization") String str, @Path("comicId") String str2, @Body CommentBody commentBody);

    @PUT("users/{userId}/title")
    Call<RegisterResponse> a(@Header("authorization") String str, @Path("userId") String str2, @Body UpdateUserTitleBody updateUserTitleBody);

    @GET("comics/leaderboard")
    Call<GeneralResponse<LeaderboardResponse>> a(@Header("authorization") String str, @Query("tt") String str2, @Query("ct") String str3);

    @GET("init?platform=android")
    Call<GeneralResponse<InitialResponse>> ak(@Header("authorization") String str);

    @GET("categories")
    Call<GeneralResponse<CategoryResponse>> al(@Header("authorization") String str);

    @GET("users/profile")
    Call<GeneralResponse<UserProfileResponse>> am(@Header("authorization") String str);

    @POST("users/punch-in")
    Call<GeneralResponse<PunchInResponse>> an(@Header("authorization") String str);

    @GET("comics/random")
    Call<GeneralResponse<ComicRandomListResponse>> ao(@Header("authorization") String str);

    @GET("comics/knight-leaderboard")
    Call<GeneralResponse<LeaderboardKnightResponse>> ap(@Header("authorization") String str);

    @GET("collections")
    Call<GeneralResponse<CollectionsResponse>> aq(@Header("authorization") String str);

    @GET("keywords")
    Call<GeneralResponse<KeywordsResponse>> ar(@Header("authorization") String str);

    @GET("banners")
    Call<GeneralResponse<BannersResponse>> as(@Header("authorization") String str);

    @GET("chat")
    Call<GeneralResponse<ChatroomListResponse>> at(@Header("authorization") String str);

    @GET("pica-apps")
    Call<GeneralResponse<PicaAppsResponse>> au(@Header("authorization") String str);

    @GET("applications?platform=android")
    Call<GeneralResponse<ApplicationsResponse>> b(@Header("authorization") String str, @Query("page") int i);

    @POST("utils/block-user")
    Call<GeneralResponse> b(@Header("authorization") String str, @Body UserIdBody userIdBody);

    @GET("comics/{comicId}/eps")
    Call<GeneralResponse<ComicEpisodeResponse>> b(@Header("authorization") String str, @Path("comicId") String str2, @Query("page") int i);

    @POST("comments/{commentId}")
    Call<GeneralResponse<PostCommentResponse>> b(@Header("authorization") String str, @Path("commentId") String str2, @Body CommentBody commentBody);

    @GET("users/my-comments")
    Call<GeneralResponse<ProfileCommentsResponse>> c(@Header("authorization") String str, @Query("page") int i);

    @GET("comics/{comicId}/comments")
    Call<GeneralResponse<CommentsResponse>> c(@Header("authorization") String str, @Path("comicId") String str2, @Query("page") int i);

    @POST("games/{gameId}/comments")
    Call<GeneralResponse<PostCommentResponse>> c(@Header("authorization") String str, @Path("gameId") String str2, @Body CommentBody commentBody);

    @GET("users/notifications")
    Call<GeneralResponse<NotificationsResponse>> d(@Header("authorization") String str, @Query("page") int i);

    @GET("comments/{commentId}/childrens")
    Call<GeneralResponse<CommentsResponse>> d(@Header("authorization") String str, @Path("commentId") String str2, @Query("page") int i);

    @GET("init")
    Call<WakaInitResponse> dM();

    @GET("games")
    Call<GeneralResponse<GameListResponse>> e(@Header("authorization") String str, @Query("page") int i);

    @GET("eps/{epsId}/pages")
    Call<GeneralResponse<ComicPagesResponse>> e(@Header("authorization") String str, @Path("epsId") String str2, @Query("page") int i);

    @GET("announcements")
    Call<GeneralResponse<AnnouncementsResponse>> f(@Header("authorization") String str, @Query("page") int i);

    @GET("games/{gameId}/comments")
    Call<GeneralResponse<CommentsResponse>> f(@Header("authorization") String str, @Path("gameId") String str2, @Query("page") int i);

    @POST("users/{userId}/dirty")
    Call<GeneralResponse<UserProfileDirtyResponse>> p(@Header("authorization") String str, @Path("userId") String str2);

    @GET("users/{userId}/profile")
    Call<GeneralResponse<UserProfileResponse>> q(@Header("authorization") String str, @Path("userId") String str2);

    @GET("comics/{comicId}")
    Call<GeneralResponse<ComicDetailResponse>> r(@Header("authorization") String str, @Path("comicId") String str2);

    @POST("comics/{comicId}/like")
    Call<GeneralResponse<ActionResponse>> s(@Header("authorization") String str, @Path("comicId") String str2);

    @POST("comics/{comicId}/favourite")
    Call<GeneralResponse<ActionResponse>> t(@Header("authorization") String str, @Path("comicId") String str2);

    @GET("comics/{comicId}/recommendation")
    Call<GeneralResponse<ComicRandomListResponse>> u(@Header("authorization") String str, @Path("comicId") String str2);

    @POST("comments/{commentId}/like")
    Call<GeneralResponse<ActionResponse>> v(@Header("authorization") String str, @Path("commentId") String str2);

    @POST("comments/{commentId}/hide")
    Call<GeneralResponse<MessageResponse>> w(@Header("authorization") String str, @Path("commentId") String str2);

    @POST("comments/{commentId}/report")
    Call<GeneralResponse<MessageResponse>> x(@Header("authorization") String str, @Path("commentId") String str2);

    @POST("comments/{commentId}/top")
    Call<GeneralResponse<CommentPostToTopResponse>> y(@Header("authorization") String str, @Path("commentId") String str2);

    @GET("games/{gameId}")
    Call<GeneralResponse<GameDetailResponse>> z(@Header("authorization") String str, @Path("gameId") String str2);
}
