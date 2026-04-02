.class public Lcom/picacomic/fregata/fragments/ChatroomFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ChatroomFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private mE:Lcom/picacomic/fregata/fragments/ChatroomFragment;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment_ViewBinding;->mE:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    const-string v0, "field \'toolbar\'"

    .line 32
    const-class v1, Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f09030d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "field \'recyclerView_chat\'"

    .line 33
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0901f3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->recyclerView_chat:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "field \'frameLayout_container\'"

    .line 34
    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f09010e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->frameLayout_container:Landroid/widget/FrameLayout;

    const-string v0, "field \'frameLayout_chatOnlineCountContainer\'"

    .line 35
    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0900fd

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->frameLayout_chatOnlineCountContainer:Landroid/widget/FrameLayout;

    const-string v0, "field \'frameLayout_nightMode\'"

    .line 36
    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f090110

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->frameLayout_nightMode:Landroid/widget/FrameLayout;

    const-string v0, "field \'frameLayout_chatOnlineCountBackground\'"

    .line 37
    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0900fc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->frameLayout_chatOnlineCountBackground:Landroid/widget/FrameLayout;

    const-string v0, "field \'gridView_emojiList\'"

    .line 38
    const-class v1, Landroid/widget/GridView;

    const v2, 0x7f090114

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gridView_emojiList:Landroid/widget/GridView;

    const-string v0, "field \'textView_atList\'"

    .line 39
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090251

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_atList:Landroid/widget/TextView;

    const-string v0, "field \'textView_reply\'"

    .line 40
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090255

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_reply:Landroid/widget/TextView;

    const-string v0, "field \'textView_chatOnlineCountTitle\'"

    .line 41
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090254

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_chatOnlineCountTitle:Landroid/widget/TextView;

    const-string v0, "field \'textView_chatOnlineCount\'"

    .line 42
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090253

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_chatOnlineCount:Landroid/widget/TextView;

    const-string v0, "field \'editText_textbox\'"

    .line 43
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900c3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->editText_textbox:Landroid/widget/EditText;

    const-string v0, "field \'textView_toastMsg\'"

    .line 44
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090257

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_toastMsg:Landroid/widget/TextView;

    const-string v0, "field \'button_sendMessage\'"

    .line 45
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090042

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_sendMessage:Landroid/widget/Button;

    const-string v0, "field \'button_saveImage\'"

    .line 46
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090041

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_saveImage:Landroid/widget/Button;

    const-string v0, "field \'button_viewProfile\'"

    .line 47
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090043

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_viewProfile:Landroid/widget/Button;

    const-string v0, "field \'imageButton_hideChannel\'"

    .line 48
    const-class v1, Landroid/widget/ImageButton;

    const v2, 0x7f090120

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageButton_hideChannel:Landroid/widget/ImageButton;

    const-string v0, "field \'linearLayout_chatChannel\'"

    .line 49
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090187

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->linearLayout_chatChannel:Landroid/widget/LinearLayout;

    const-string v0, "field \'linearLayout_controlPanel\'"

    .line 50
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090188

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->linearLayout_controlPanel:Landroid/widget/LinearLayout;

    const-string v0, "field \'linearLayout_controlPanelButtons\'"

    .line 51
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090189

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->linearLayout_controlPanelButtons:Landroid/widget/LinearLayout;

    const-string v0, "field \'button_controlChangeTitle\'"

    .line 52
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f09003b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_controlChangeTitle:Landroid/widget/Button;

    const-string v0, "field \'button_controlTime\'"

    .line 53
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090040

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_controlTime:Landroid/widget/Button;

    const-string v0, "field \'button_controlImage\'"

    .line 54
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f09003e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_controlImage:Landroid/widget/Button;

    const-string v0, "field \'button_controlHideAvatar\'"

    .line 55
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f09003c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_controlHideAvatar:Landroid/widget/Button;

    const-string v0, "field \'button_controlMute\'"

    .line 56
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f09003f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_controlMute:Landroid/widget/Button;

    const-string v0, "field \'button_controlAI\'"

    .line 57
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f09003a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_controlAI:Landroid/widget/Button;

    const-string v0, "field \'button_controlHidePanelButtons\'"

    .line 58
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f09003d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_controlHidePanelButtons:Landroid/widget/Button;

    const-string v0, "field \'button_channelPublic\'"

    .line 59
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090039

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_channelPublic:Landroid/widget/Button;

    const-string v0, "field \'button_channelPrivate\'"

    .line 60
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090038

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_channelPrivate:Landroid/widget/Button;

    const-string v0, "field \'frameLayout_channelIndicator\'"

    .line 61
    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0900fb

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->frameLayout_channelIndicator:Landroid/widget/FrameLayout;

    const-string v0, "field \'imageButton_setting\'"

    .line 62
    const-class v1, Landroid/widget/ImageButton;

    const v2, 0x7f090123

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageButton_setting:Landroid/widget/ImageButton;

    const-string v0, "field \'imageButton_sendImage\'"

    .line 63
    const-class v1, Landroid/widget/ImageButton;

    const v2, 0x7f090122

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageButton_sendImage:Landroid/widget/ImageButton;

    const-string v0, "field \'imageButton_sendAudio\'"

    .line 64
    const-class v1, Landroid/widget/ImageButton;

    const v2, 0x7f09011e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageButton_sendAudio:Landroid/widget/ImageButton;

    const-string v0, "field \'imageButton_sendEmoji\'"

    .line 65
    const-class v1, Landroid/widget/ImageButton;

    const v2, 0x7f090121

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageButton_sendEmoji:Landroid/widget/ImageButton;

    const-string v0, "field \'relativeLayout_popup\'"

    .line 66
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f090204

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->relativeLayout_popup:Landroid/widget/RelativeLayout;

    const-string v0, "field \'imageView_largeImage\'"

    .line 67
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09013e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageView_largeImage:Landroid/widget/ImageView;

    const-string v0, "field \'imageButton_closePopup\'"

    .line 68
    const-class v1, Landroid/widget/ImageButton;

    const v2, 0x7f09011f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageButton_closePopup:Landroid/widget/ImageButton;

    const-string v0, "field \'textView_totalUserCount\'"

    .line 69
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090258

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_totalUserCount:Landroid/widget/TextView;

    const-string v0, "field \'textView_toastAtMe\'"

    .line 70
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090256

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_toastAtMe:Landroid/widget/TextView;

    const-string v0, "field \'textView_audioPlayingTimer\'"

    .line 71
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090252

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_audioPlayingTimer:Landroid/widget/TextView;

    const-string v0, "field \'fab_command\'"

    .line 72
    const-class v1, Landroid/support/design/widget/FloatingActionButton;

    const v2, 0x7f0900f4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->fab_command:Landroid/support/design/widget/FloatingActionButton;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment_ViewBinding;->mE:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 80
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment_ViewBinding;->mE:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    .line 82
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 83
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->recyclerView_chat:Landroid/support/v7/widget/RecyclerView;

    .line 84
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->frameLayout_container:Landroid/widget/FrameLayout;

    .line 85
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->frameLayout_chatOnlineCountContainer:Landroid/widget/FrameLayout;

    .line 86
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->frameLayout_nightMode:Landroid/widget/FrameLayout;

    .line 87
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->frameLayout_chatOnlineCountBackground:Landroid/widget/FrameLayout;

    .line 88
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gridView_emojiList:Landroid/widget/GridView;

    .line 89
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_atList:Landroid/widget/TextView;

    .line 90
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_reply:Landroid/widget/TextView;

    .line 91
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_chatOnlineCountTitle:Landroid/widget/TextView;

    .line 92
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_chatOnlineCount:Landroid/widget/TextView;

    .line 93
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->editText_textbox:Landroid/widget/EditText;

    .line 94
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_toastMsg:Landroid/widget/TextView;

    .line 95
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_sendMessage:Landroid/widget/Button;

    .line 96
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_saveImage:Landroid/widget/Button;

    .line 97
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_viewProfile:Landroid/widget/Button;

    .line 98
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageButton_hideChannel:Landroid/widget/ImageButton;

    .line 99
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->linearLayout_chatChannel:Landroid/widget/LinearLayout;

    .line 100
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->linearLayout_controlPanel:Landroid/widget/LinearLayout;

    .line 101
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->linearLayout_controlPanelButtons:Landroid/widget/LinearLayout;

    .line 102
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_controlChangeTitle:Landroid/widget/Button;

    .line 103
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_controlTime:Landroid/widget/Button;

    .line 104
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_controlImage:Landroid/widget/Button;

    .line 105
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_controlHideAvatar:Landroid/widget/Button;

    .line 106
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_controlMute:Landroid/widget/Button;

    .line 107
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_controlAI:Landroid/widget/Button;

    .line 108
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_controlHidePanelButtons:Landroid/widget/Button;

    .line 109
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_channelPublic:Landroid/widget/Button;

    .line 110
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_channelPrivate:Landroid/widget/Button;

    .line 111
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->frameLayout_channelIndicator:Landroid/widget/FrameLayout;

    .line 112
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageButton_setting:Landroid/widget/ImageButton;

    .line 113
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageButton_sendImage:Landroid/widget/ImageButton;

    .line 114
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageButton_sendAudio:Landroid/widget/ImageButton;

    .line 115
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageButton_sendEmoji:Landroid/widget/ImageButton;

    .line 116
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->relativeLayout_popup:Landroid/widget/RelativeLayout;

    .line 117
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageView_largeImage:Landroid/widget/ImageView;

    .line 118
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageButton_closePopup:Landroid/widget/ImageButton;

    .line 119
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_totalUserCount:Landroid/widget/TextView;

    .line 120
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_toastAtMe:Landroid/widget/TextView;

    .line 121
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_audioPlayingTimer:Landroid/widget/TextView;

    .line 122
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->fab_command:Landroid/support/design/widget/FloatingActionButton;

    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
