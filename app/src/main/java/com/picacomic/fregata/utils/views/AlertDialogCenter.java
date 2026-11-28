package com.picacomic.fregata.utils.views;

import android.content.Context;
import android.view.View;
import com.picacomic.fregata.R;
import com.picacomic.fregata.objects.LatestApplicationObject;

/* JADX INFO: loaded from: classes.dex */
public class AlertDialogCenter {
    public static final String TAG = "AlertDialogCenter";

    public static void usernameLength(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_question_error, R.string.alert_empty_name);
    }

    public static void emailLength(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_question_error, R.string.alert_empty_email);
    }

    public static void passwordLength(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_question_error, R.string.alert_empty_password);
    }

    public static void passwordNotMatch(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_exclamation_error, R.string.alert_not_same_password);
    }

    public static void birthday(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_exclamation_error, R.string.alert_not_chosen_birthday);
    }

    public static void ageNotEnough(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_question_error, R.string.alert_not_enough_18);
    }

    public static void usernameExist(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_exclamation_error, R.string.alert_already_exist_name);
    }

    public static void emailExist(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_exclamation_error, R.string.alert_already_exist_email);
    }

    public static void invalidEmailOrPassword(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_exclamation_error, R.string.alert_invalid_email_or_password);
    }

    public static void forgotPasswordSuccess(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_success, R.string.alert_forgot_password_success);
    }

    public static void resendActivation(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_success, R.string.alert_resend_activation_success);
    }

    public static void levelUp(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_success, R.string.alert_level_up);
    }

    public static void validation(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_question_error, R.string.alert_validation);
    }

    public static void accountNotActivated(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_exclamation_error, R.string.alert_account_not_activated);
    }

    public static void underReview(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_question_error, R.string.alert_under_review);
    }

    public static void cannotComment(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_exclamation_error, R.string.alert_level_not_high_enough_to_comment);
    }

    public static void notFound(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_empty, R.string.alert_not_found);
    }

    public static void tooManyRequests(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_exclamation_error, R.string.alert_too_many_requests);
    }

    public static void notSupportEmail(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_exclamation_error, R.string.alert_not_support_email);
    }

    public static void cannotStartWithPica(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_exclamation_error, R.string.alert_cannot_start_with_pica);
    }

    public static void fakeEmail(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_exclamation_error, R.string.alert_fake_email);
    }

    public static void timeIsNotSynchronize(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_exclamation_error, R.string.alert_time_is_not_synchronize);
    }

    public static void generalError(Context context, String str, String str2) {
        showCustomAlertDialog(context, R.drawable.icon_unknown_error, str, str2);
    }

    public static void generalError(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_unknown_error, R.string.alert_general_error);
    }

    public static void emptyComment(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_question_error, R.string.alert_empty_comment);
    }

    public static void postCommentTooFrequent(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_exclamation_error, R.string.alert_post_comment_too_frequent);
    }

    public static void postReplyTooFrequent(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_exclamation_error, R.string.alert_post_reply_too_frequent);
    }

    public static void giftNotReady(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_question_error, R.string.alert_gift_not_ready);
    }

    public static void downloadNotReady(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_question_error, R.string.alert_download_not_ready);
    }

    public static void chatroomRules(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_exclamation_error, R.string.alert_chat_rule_title, R.string.alert_chat_rule);
    }

    public static void leavePica(Context context, View.OnClickListener onClickListener) {
        showCustomAlertDialog(context, R.drawable.icon_leave, -1, R.string.alert_leave, onClickListener, (View.OnClickListener) null);
    }

    public static void punchedIn(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_success, -1, R.string.alert_punch_in_success);
    }

    public static void userNotActivatedCannotCommentOrChat(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_exclamation_error, R.string.alert_user_not_activated_cannot_comment_or_chat);
    }

    public static void usingMobileNetwork(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_exclamation_error, R.string.alert_using_mobile_network);
    }

    public static void hideComment(Context context, View.OnClickListener onClickListener) {
        showCustomAlertDialog(context, R.drawable.icon_exclamation_error, R.string.alert_hide_comment_title, R.string.alert_hide_comment, onClickListener, (View.OnClickListener) null);
    }

    public static void reportComment(Context context, View.OnClickListener onClickListener) {
        showCustomAlertDialog(context, R.drawable.icon_exclamation_error, R.string.alert_report_comment_title, R.string.alert_report_comment, onClickListener, (View.OnClickListener) null);
    }

    public static void continueDownloadComic(Context context, View.OnClickListener onClickListener) {
        showCustomAlertDialog(context, R.drawable.icon_question_error, R.string.alert_continue_download_comic_title, R.string.alert_continue_download_comic, onClickListener, (View.OnClickListener) null);
    }

    public static void versionNotSupport(Context context) {
        showCustomAlertDialog(context, R.drawable.icon_leave, R.string.alert_version_not_supported_title, R.string.alert_version_not_supported);
    }

    public static void showCustomAlertDialog(Context context, int i, String str, String str2, final View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        ComposeAlertDialogCenter.showCustomAlertDialog(context, i, str, str2, onClickListener, onClickListener2);
    }

    public static void showCustomAlertDialog(Context context, int i, String str, String str2) {
        showCustomAlertDialog(context, i, str, str2, (View.OnClickListener) null, (View.OnClickListener) null);
    }

    public static void showCustomAlertDialog(Context context, int i, int i2, int i3, final View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        String title = i2 == -1 || context == null ? null : context.getString(i2);
        String message = i3 == -1 || context == null ? null : context.getString(i3);
        ComposeAlertDialogCenter.showCustomAlertDialog(context, i, title, message, onClickListener, onClickListener2);
    }

    public static void showCustomAlertDialog(Context context, int i, int i2, int i3) {
        showCustomAlertDialog(context, i, i2, i3, (View.OnClickListener) null, (View.OnClickListener) null);
    }

    public static void showCustomAlertDialog(Context context, int i, int i2) {
        showCustomAlertDialog(context, i, -1, i2);
    }

    public static void showCustomAlertDialog(Context context, int i) {
        showCustomAlertDialog(context, -1, -1, i);
    }

    public static void showUpdateApkAlertDialog(final Context context, final LatestApplicationObject latestApplicationObject, final boolean z) {
        ComposeAlertDialogCenter.showUpdateApkAlertDialog(context, latestApplicationObject, z);
    }

    public static void showAnnouncementAlertDialog(Context context, String str, String str2, String str3, String str4, final View.OnClickListener onClickListener) {
        ComposeAlertDialogCenter.showAnnouncementAlertDialog(context, str, str2, str3, str4, onClickListener);
    }

    public static void showFaqAlertDialog(Context context, String str, final View.OnClickListener onClickListener) {
        ComposeAlertDialogCenter.showFaqAlertDialog(context, str, onClickListener);
    }
}
