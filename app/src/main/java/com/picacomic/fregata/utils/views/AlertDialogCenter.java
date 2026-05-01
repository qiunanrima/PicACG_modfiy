package com.picacomic.fregata.utils.views;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ToggleButton;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.picacomic.fregata.R;
import com.picacomic.fregata.c.b;
import com.picacomic.fregata.objects.LatestApplicationObject;
import com.picacomic.fregata.objects.UserProfileObject;
import com.picacomic.fregata.objects.responses.ChatroomBlacklistObject;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.g;
import java.util.ArrayList;
import java.util.List;

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

    public static void commentOptions(final Context context, final View.OnClickListener onClickListener) {
        new AlertDialog.Builder(context, R.style.MyAlertDialogStyle).setTitle(R.string.comment_option_title).setSingleChoiceItems(R.array.comment_options, -1, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.utils.views.AlertDialogCenter.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                if (i == 0) {
                    AlertDialogCenter.reportComment(context, onClickListener);
                }
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.utils.views.AlertDialogCenter.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).show();
    }

    public static void commentOptionsAdvance(Context context, DialogInterface.OnClickListener onClickListener) {
        new AlertDialog.Builder(context, R.style.MyAlertDialogStyle).setTitle(R.string.comment_option_title).setSingleChoiceItems(R.array.comment_options_advance, -1, onClickListener).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.utils.views.AlertDialogCenter.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).show();
    }

    public static void sortingFavouriteOptions(Context context, int i, DialogInterface.OnClickListener onClickListener) {
        new AlertDialog.Builder(context, R.style.MyAlertDialogStyle).setTitle(R.string.sorting_title).setSingleChoiceItems(R.array.sorting_favourite, i, onClickListener).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.utils.views.AlertDialogCenter.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
            }
        }).show();
    }

    public static void sortingAdvancedOptions(Context context, int i, DialogInterface.OnClickListener onClickListener) {
        new AlertDialog.Builder(context, R.style.MyAlertDialogStyle).setTitle(R.string.sorting_title).setSingleChoiceItems(R.array.sorting_advanced, i, onClickListener).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.utils.views.AlertDialogCenter.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
            }
        }).show();
    }

    public static void sortingAdvancedCategoriesOptions(Context context, String[] strArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener, DialogInterface.OnClickListener onClickListener) {
        new AlertDialog.Builder(context, R.style.MyAlertDialogStyle).setTitle(R.string.title_category).setMultiChoiceItems(strArr, zArr, onMultiChoiceClickListener).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.utils.views.AlertDialogCenter.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).setPositiveButton(R.string.ok, onClickListener).show();
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
        if (context == null || context != null) {
            return;
        }
        final Dialog dialog = new Dialog(context, R.style.CustomDialog);
        dialog.setContentView(R.layout.dialog_faq_alert);
        WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
        attributes.gravity = 17;
        attributes.width = g.as(context);
        FrameLayout frameLayout = (FrameLayout) dialog.findViewById(R.id.frameLayout_dialog_faq_buttons_center_line);
        Button button = (Button) dialog.findViewById(R.id.button_dialog_faq_positive);
        Button button2 = (Button) dialog.findViewById(R.id.button_dialog_faq_negative);
        ((WebView) dialog.findViewById(R.id.webView_faq)).loadUrl(str);
        Log.e(TAG, "Width = " + attributes.width + " Height = " + attributes.height);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.utils.views.AlertDialogCenter.22
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.dismiss();
            }
        });
        button.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.utils.views.AlertDialogCenter.23
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                onClickListener.onClick(view);
                dialog.dismiss();
            }
        });
        if (onClickListener == null) {
            button.setVisibility(8);
            frameLayout.setVisibility(8);
        }
        dialog.setCanceledOnTouchOutside(false);
        dialog.setCancelable(false);
        dialog.show();
    }

    public static void showChatroomSettingDialog(final Context context, final UserProfileObject userProfileObject, final View.OnClickListener onClickListener, final View.OnClickListener onClickListener2) {
        Button button;
        ToggleButton toggleButton;
        int i;
        if (context == null) {
            return;
        }
        final Dialog dialog = new Dialog(context, R.style.CustomDialog);
        dialog.setContentView(R.layout.dialog_chatroom_setting);
        WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
        attributes.gravity = 17;
        attributes.width = g.as(context);
        LinearLayout linearLayout = (LinearLayout) dialog.findViewById(R.id.linearLayout_chatroom_setting_advance);
        TextView textView = (TextView) dialog.findViewById(R.id.textView_chatroom_setting_profile);
        TextView textView2 = (TextView) dialog.findViewById(R.id.textView_chatroom_setting_profile_update);
        final TextView textView3 = (TextView) dialog.findViewById(R.id.textView_chatroom_setting_speech_language);
        final ToggleButton toggleButton2 = (ToggleButton) dialog.findViewById(R.id.toggleButton_chatroom_setting_night_mode);
        final ToggleButton toggleButton3 = (ToggleButton) dialog.findViewById(R.id.toggleButton_chatroom_setting_show_timestamp);
        final ToggleButton toggleButton4 = (ToggleButton) dialog.findViewById(R.id.toggleButton_chatroom_setting_fix_image_size);
        final ToggleButton toggleButton5 = (ToggleButton) dialog.findViewById(R.id.toggleButton_chatroom_setting_speech);
        final ToggleButton toggleButton6 = (ToggleButton) dialog.findViewById(R.id.toggleButton_chatroom_setting_speech_with_name);
        ToggleButton toggleButton7 = (ToggleButton) dialog.findViewById(R.id.toggleButton_chatroom_setting_hide_all_avatar);
        final EditText editText = (EditText) dialog.findViewById(R.id.editText_chatroom_setting_max_message_size);
        final EditText editText2 = (EditText) dialog.findViewById(R.id.editText_chatroom_setting_ads_interval);
        final EditText editText3 = (EditText) dialog.findViewById(R.id.editText_chatroom_setting_custom_avatar);
        final EditText editText4 = (EditText) dialog.findViewById(R.id.editText_chatroom_setting_message_color_reverse);
        TextView textView4 = (TextView) dialog.findViewById(R.id.textView_chatroom_setting_blacklist_update);
        Button button2 = (Button) dialog.findViewById(R.id.button_dialog_positive);
        Button button3 = (Button) dialog.findViewById(R.id.button_dialog_negative);
        b.uP = "chinese";
        if (context != null) {
            button = button3;
            toggleButton4.setChecked(e.V(context));
            toggleButton2.setChecked(e.T(context));
            toggleButton3.setChecked(e.U(context));
            toggleButton7.setChecked(e.ad(context));
            StringBuilder sb = new StringBuilder();
            toggleButton = toggleButton7;
            sb.append(e.W(context));
            sb.append("");
            editText.setText(sb.toString());
            editText4.setText(e.af(context) + "");
            toggleButton5.setChecked(e.Y(context));
            toggleButton6.setChecked(e.Z(context));
            if (e.aa(context).equalsIgnoreCase("cantonese")) {
                textView3.setText(R.string.chatroom_setting_speech_language_cantonese);
                b.uP = "cantonese";
            } else if (e.aa(context).equalsIgnoreCase("english")) {
                textView3.setText(R.string.chatroom_setting_speech_language_english);
                b.uP = "english";
            } else if (e.aa(context).equalsIgnoreCase("japanese")) {
                textView3.setText(R.string.chatroom_setting_speech_language_japanese);
                b.uP = "japanese";
            } else {
                textView3.setText(R.string.chatroom_setting_speech_language_chinese);
                b.uP = "chinese";
            }
        } else {
            button = button3;
            toggleButton = toggleButton7;
        }
        editText3.setText(e.ab(context));
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.utils.views.AlertDialogCenter.24
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (b.uP != null) {
                    if (b.uP.equalsIgnoreCase("chinese")) {
                        textView3.setText(R.string.chatroom_setting_speech_language_cantonese);
                        b.uP = "cantonese";
                    } else if (b.uP.equalsIgnoreCase("cantonese")) {
                        textView3.setText(R.string.chatroom_setting_speech_language_japanese);
                        b.uP = "japanese";
                    } else if (b.uP.equalsIgnoreCase("japanese")) {
                        textView3.setText(R.string.chatroom_setting_speech_language_english);
                        b.uP = "english";
                    } else {
                        textView3.setText(R.string.chatroom_setting_speech_language_chinese);
                        b.uP = "chinese";
                    }
                }
            }
        });
        if (userProfileObject != null) {
            linearLayout.setVisibility(8);
            textView.setText(userProfileObject.getName() + "\n" + context.getString(R.string.level) + userProfileObject.getLevel() + " (" + userProfileObject.getExp() + "/" + g.Z(userProfileObject.getLevel() + 1) + ")");
            if (userProfileObject.getEmail().endsWith("@picacomic.com")) {
                linearLayout.setVisibility(0);
                editText2.setText(e.X(context) + "");
            }
            i = 8;
        } else {
            i = 8;
            linearLayout.setVisibility(8);
        }
        if (onClickListener == null) {
            textView2.setVisibility(i);
        } else {
            textView2.setVisibility(0);
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.utils.views.AlertDialogCenter.25
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    onClickListener.onClick(view);
                    dialog.dismiss();
                }
            });
        }
        if (e.ae(context) != null) {
            textView4.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.utils.views.AlertDialogCenter.26
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ArrayList arrayList;
                    Gson gson = new Gson();
                    String strAe = e.ae(context);
                    if (strAe != null) {
                        arrayList = (ArrayList) gson.fromJson(strAe, new TypeToken<List<ChatroomBlacklistObject>>() { // from class: com.picacomic.fregata.utils.views.AlertDialogCenter.26.1
                        }.getType());
                    } else {
                        arrayList = new ArrayList();
                    }
                    String[] strArr = new String[arrayList.size()];
                    final boolean[] zArr = new boolean[arrayList.size()];
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        strArr[i2] = ((ChatroomBlacklistObject) arrayList.get(i2)).getUsername();
                        zArr[i2] = false;
                    }
                    new AlertDialog.Builder(context, R.style.MyAlertDialogStyle).setTitle(R.string.chatroom_setting_blacklist_clear).setMultiChoiceItems(strArr, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: com.picacomic.fregata.utils.views.AlertDialogCenter.26.5
                        @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                        public void onClick(DialogInterface dialogInterface, int i3, boolean z) {
                            zArr[i3] = z;
                        }
                    }).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.utils.views.AlertDialogCenter.26.4
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i3) {
                            ArrayList arrayList2;
                            Gson gson2 = new Gson();
                            String strAe2 = e.ae(context);
                            if (strAe2 != null) {
                                arrayList2 = (ArrayList) gson2.fromJson(strAe2, new TypeToken<List<ChatroomBlacklistObject>>() { // from class: com.picacomic.fregata.utils.views.AlertDialogCenter.26.4.1
                                }.getType());
                            } else {
                                arrayList2 = new ArrayList();
                            }
                            if (arrayList2.size() == zArr.length) {
                                for (int length = zArr.length - 1; length >= 0; length--) {
                                    if (zArr[length]) {
                                        arrayList2.remove(length);
                                    }
                                }
                                e.u(context, gson2.toJson(arrayList2));
                            } else {
                                Toast.makeText(context, R.string.chatroom_setting_blacklist_clear_error, 1).show();
                            }
                            dialogInterface.dismiss();
                        }
                    }).setNeutralButton(R.string.chatroom_setting_blacklist_clear_all, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.utils.views.AlertDialogCenter.26.3
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i3) {
                            e.u(context, null);
                            dialogInterface.dismiss();
                        }
                    }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.utils.views.AlertDialogCenter.26.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i3) {
                            dialogInterface.dismiss();
                        }
                    }).show();
                }
            });
        } else {
            textView4.setText(R.string.chatroom_setting_blacklist_empty);
        }
        button.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.utils.views.AlertDialogCenter.27
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.dismiss();
            }
        });
        final ToggleButton toggleButton8 = toggleButton;
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.utils.views.AlertDialogCenter.28
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i2;
                if (context != null) {
                    int i3 = 100;
                    try {
                        i2 = Integer.parseInt(editText.getText().toString());
                        if (i2 < 1) {
                            i2 = 1;
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        i2 = 100;
                    }
                    int i4 = 0;
                    try {
                        int i5 = Integer.parseInt(editText4.getText().toString());
                        if (i5 < 0) {
                            i3 = 0;
                        } else if (i5 <= 100) {
                            i3 = i5;
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        i3 = 70;
                    }
                    try {
                        int i6 = Integer.parseInt(editText2.getText().toString());
                        if (i6 >= 0) {
                            i4 = i6;
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        i4 = 30;
                    }
                    e.h(context, toggleButton2.isChecked());
                    e.i(context, toggleButton3.isChecked());
                    e.j(context, toggleButton4.isChecked());
                    e.m(context, toggleButton8.isChecked());
                    e.e(context, i2);
                    e.g(context, i3);
                    e.k(context, toggleButton5.isChecked());
                    e.l(context, toggleButton6.isChecked());
                    if (b.uP != null) {
                        e.r(context, b.uP);
                    }
                    if (userProfileObject != null && userProfileObject.getEmail().endsWith("@picacomic.com")) {
                        e.f(context, i4);
                        if (editText3.getText().toString().startsWith("http://") || editText3.getText().toString().startsWith("https://")) {
                            if (userProfileObject.getEmail().startsWith("ruff") || userProfileObject.getEmail().startsWith("knight-ace") || userProfileObject.getEmail().startsWith("leader") || userProfileObject.getEmail().startsWith("server") || userProfileObject.getEmail().startsWith("kagu")) {
                                e.s(context, editText3.getText().toString());
                            }
                        } else if (editText3.getText().toString().startsWith("改名")) {
                            if (userProfileObject.getEmail().startsWith("ruff") || userProfileObject.getEmail().startsWith("leader") || userProfileObject.getEmail().startsWith("server") || userProfileObject.getEmail().startsWith("kagu")) {
                                e.t(context, editText3.getText().toString().replace("改名", ""));
                            }
                        } else {
                            e.s(context, "");
                        }
                    }
                }
                onClickListener2.onClick(view);
                dialog.dismiss();
            }
        });
        dialog.setCanceledOnTouchOutside(true);
        dialog.setCancelable(true);
        dialog.show();
    }
}
