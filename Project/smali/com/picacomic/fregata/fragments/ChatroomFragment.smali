.class public Lcom/picacomic/fregata/fragments/ChatroomFragment;
.super Lcom/picacomic/fregata/fragments/BaseImagePickFragment;
.source "ChatroomFragment.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Lcom/picacomic/fregata/a/a;


# static fields
.field public static final TAG:Ljava/lang/String; = "ChatroomFragment"


# instance fields
.field arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ChatBaseObject;",
            ">;"
        }
    .end annotation
.end field

.field at:Ljava/lang/String;

.field button_channelPrivate:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090038
    .end annotation
.end field

.field button_channelPublic:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090039
    .end annotation
.end field

.field button_controlAI:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09003a
    .end annotation
.end field

.field button_controlChangeTitle:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09003b
    .end annotation
.end field

.field button_controlHideAvatar:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09003c
    .end annotation
.end field

.field button_controlHidePanelButtons:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09003d
    .end annotation
.end field

.field button_controlImage:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09003e
    .end annotation
.end field

.field button_controlMute:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09003f
    .end annotation
.end field

.field button_controlTime:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090040
    .end annotation
.end field

.field button_saveImage:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090041
    .end annotation
.end field

.field button_sendMessage:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090042
    .end annotation
.end field

.field button_viewProfile:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090043
    .end annotation
.end field

.field countDownTimer:Landroid/os/CountDownTimer;

.field editText_textbox:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900c3
    .end annotation
.end field

.field fab_command:Landroid/support/design/widget/FloatingActionButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900f4
    .end annotation
.end field

.field frameLayout_channelIndicator:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900fb
    .end annotation
.end field

.field frameLayout_chatOnlineCountBackground:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900fc
    .end annotation
.end field

.field frameLayout_chatOnlineCountContainer:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900fd
    .end annotation
.end field

.field frameLayout_container:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09010e
    .end annotation
.end field

.field frameLayout_nightMode:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090110
    .end annotation
.end field

.field gridView_emojiList:Landroid/widget/GridView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090114
    .end annotation
.end field

.field gson:Lcom/google/gson/Gson;

.field iI:Landroid/widget/RelativeLayout$LayoutParams;

.field private iJ:I

.field private iK:I

.field iL:J

.field iN:Z

.field private ii:Landroid/media/MediaPlayer;

.field imageButton_closePopup:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09011f
    .end annotation
.end field

.field imageButton_hideChannel:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090120
    .end annotation
.end field

.field imageButton_sendAudio:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09011e
    .end annotation
.end field

.field imageButton_sendEmoji:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090121
    .end annotation
.end field

.field imageButton_sendImage:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090122
    .end annotation
.end field

.field imageButton_setting:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090123
    .end annotation
.end field

.field imageView_largeImage:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09013e
    .end annotation
.end field

.field jQ:Landroid/support/v7/widget/LinearLayoutManager;

.field jW:Lcom/picacomic/fregata/objects/UserProfileObject;

.field jX:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/UserProfileResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private jZ:Lio/socket/client/d;

.field public kW:I

.field public kX:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field kY:Landroid/os/CountDownTimer;

.field kZ:Ljava/lang/String;

.field private kd:Lio/socket/b/a$a;

.field lA:Z

.field lB:I

.field lC:I

.field lD:Lcom/picacomic/fregata/objects/ChatroomToObject;

.field lE:Lcom/picacomic/fregata/fragments/ChatroomGameFragment;

.field lF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/AtMeObject;",
            ">;"
        }
    .end annotation
.end field

.field lG:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/responses/ChatroomBlacklistObject;",
            ">;"
        }
    .end annotation
.end field

.field lH:Landroid/speech/tts/TextToSpeech;

.field lI:Z

.field lJ:Z

.field lK:Z

.field private lL:Lio/socket/b/a$a;

.field private lM:Lio/socket/b/a$a;

.field private lN:Lio/socket/b/a$a;

.field private lO:Lio/socket/b/a$a;

.field private lP:Lio/socket/b/a$a;

.field private lQ:Lio/socket/b/a$a;

.field private lR:Lio/socket/b/a$a;

.field private lS:Lio/socket/b/a$a;

.field private lT:Lio/socket/b/a$a;

.field private lU:Lio/socket/b/a$a;

.field private lV:Lio/socket/b/a$a;

.field private lW:Lio/socket/b/a$a;

.field lX:Ljava/util/Timer;

.field private la:Landroid/media/MediaRecorder;

.field lb:J

.field lc:J

.field ld:Landroid/os/CountDownTimer;

.field le:Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;

.field lf:Lcom/picacomic/fregata/adapters/b;

.field lg:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/RegisterResponse;",
            ">;"
        }
    .end annotation
.end field

.field lh:Landroid/os/CountDownTimer;

.field li:Landroid/os/CountDownTimer;

.field linearLayout_chatChannel:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090187
    .end annotation
.end field

.field linearLayout_controlPanel:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090188
    .end annotation
.end field

.field linearLayout_controlPanelButtons:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090189
    .end annotation
.end field

.field lj:Landroid/os/CountDownTimer;

.field lk:Landroid/os/CountDownTimer;

.field ll:Landroid/graphics/Bitmap;

.field lm:Ljava/lang/String;

.field ln:Ljava/lang/String;

.field lo:Ljava/lang/String;

.field lp:[Ljava/lang/String;

.field lq:Ljava/lang/String;

.field lr:I

.field ls:I

.field lt:Ljava/lang/String;

.field lu:Ljava/lang/String;

.field lv:Ljava/lang/String;

.field lw:Ljava/lang/String;

.field lx:Z

.field ly:Z

.field lz:Z

.field private final mFileName:Ljava/lang/String;

.field recyclerView_chat:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901f3
    .end annotation
.end field

.field relativeLayout_popup:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090204
    .end annotation
.end field

.field reply:Ljava/lang/String;

.field textView_atList:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090251
    .end annotation
.end field

.field textView_audioPlayingTimer:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090252
    .end annotation
.end field

.field textView_chatOnlineCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090253
    .end annotation
.end field

.field textView_chatOnlineCountTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090254
    .end annotation
.end field

.field textView_reply:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090255
    .end annotation
.end field

.field textView_toastAtMe:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090256
    .end annotation
.end field

.field textView_toastMsg:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090257
    .end annotation
.end field

.field textView_totalUserCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090258
    .end annotation
.end field

.field toolbar:Landroid/support/v7/widget/Toolbar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09030d
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 393
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;-><init>()V

    const/16 v0, 0x64

    .line 146
    iput v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->kW:I

    const/16 v0, 0x1e

    .line 147
    iput v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->kX:I

    const-wide/16 v0, 0x0

    .line 306
    iput-wide v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->iL:J

    const-string v0, "https://chat.picacomic.com"

    .line 310
    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->kZ:Ljava/lang/String;

    const/4 v0, 0x0

    .line 312
    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->la:Landroid/media/MediaRecorder;

    .line 313
    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ii:Landroid/media/MediaPlayer;

    .line 346
    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lp:[Ljava/lang/String;

    .line 347
    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lq:Ljava/lang/String;

    const-string v1, ""

    .line 352
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->at:Ljava/lang/String;

    const-string v1, ""

    .line 353
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lt:Ljava/lang/String;

    const-string v1, ""

    .line 354
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->reply:Ljava/lang/String;

    const-string v1, ""

    .line 355
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lu:Ljava/lang/String;

    .line 356
    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lv:Ljava/lang/String;

    .line 1408
    new-instance v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$28;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$28;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lL:Lio/socket/b/a$a;

    .line 1455
    new-instance v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$29;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lM:Lio/socket/b/a$a;

    .line 1554
    new-instance v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$30;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$30;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->kd:Lio/socket/b/a$a;

    .line 1570
    new-instance v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$31;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$31;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lN:Lio/socket/b/a$a;

    .line 1607
    new-instance v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$32;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$32;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lO:Lio/socket/b/a$a;

    .line 1632
    new-instance v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$33;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$33;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lP:Lio/socket/b/a$a;

    .line 1656
    new-instance v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$35;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$35;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lQ:Lio/socket/b/a$a;

    .line 1680
    new-instance v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$36;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$36;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lR:Lio/socket/b/a$a;

    .line 1711
    new-instance v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$37;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$37;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lS:Lio/socket/b/a$a;

    .line 1731
    new-instance v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$38;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$38;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lT:Lio/socket/b/a$a;

    .line 1753
    new-instance v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$39;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$39;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lU:Lio/socket/b/a$a;

    .line 1887
    new-instance v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$40;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$40;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lV:Lio/socket/b/a$a;

    .line 1911
    new-instance v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$41;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$41;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lW:Lio/socket/b/a$a;

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/audiorecordtest.3gp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->mFileName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 397
    iput v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ls:I

    return-void
.end method

.method public static M(Ljava/lang/String;)Lcom/picacomic/fregata/fragments/ChatroomFragment;
    .locals 3

    .line 401
    new-instance v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-direct {v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;-><init>()V

    .line 402
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "KEY_CHATROOM_URL"

    .line 403
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private O(Ljava/lang/String;)V
    .locals 27

    move-object/from16 v0, p0

    const-string v1, ""

    .line 1237
    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1238
    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1239
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1243
    :cond_1
    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-nez v1, :cond_2

    .line 1244
    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->userNotActivatedCannotCommentOrChat(Landroid/content/Context;)V

    return-void

    .line 1248
    :cond_2
    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->editText_textbox:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1249
    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    if-nez v1, :cond_3

    .line 1250
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    .line 1252
    :cond_3
    new-instance v1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    move-object v2, v1

    iget-object v3, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    iget-object v5, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/UserProfileObject;->getLevel()I

    move-result v5

    iget-object v6, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v7}, Lcom/picacomic/fregata/objects/UserProfileObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v7

    invoke-static {v7}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v9}, Lcom/picacomic/fregata/objects/UserProfileObject;->getTitle()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v10}, Lcom/picacomic/fregata/objects/UserProfileObject;->getGender()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android"

    iget-object v12, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v12}, Lcom/picacomic/fregata/objects/UserProfileObject;->getActivationDate()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->at:Ljava/lang/String;

    iget-object v14, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lt:Ljava/lang/String;

    iget-object v15, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->reply:Ljava/lang/String;

    const-string v16, ""

    const-string v18, ""

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lu:Ljava/lang/String;

    move-object/from16 v19, v1

    const/16 v20, 0x4

    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->isVerified()Z

    move-result v21

    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharacter()Ljava/lang/String;

    move-result-object v22

    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharactersStringArray()[Ljava/lang/String;

    move-result-object v23

    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lq:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lp:[Ljava/lang/String;

    move-object/from16 v25, v1

    move-object/from16 v17, p1

    invoke-direct/range {v2 .. v25}, Lcom/picacomic/fregata/objects/ChatMessageObject;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1253
    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    const-class v2, Lcom/picacomic/fregata/objects/ChatMessageObject;

    move-object/from16 v3, v26

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    .line 1256
    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v4, "send_image"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v2, v4, v5}, Lio/socket/client/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    .line 1257
    invoke-virtual {v0, v3}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->c(Lcom/picacomic/fregata/objects/ChatMessageObject;)V

    .line 1260
    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cz()V

    .line 1261
    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cA()V

    return-void
.end method

.method private P(Ljava/lang/String;)V
    .locals 27

    move-object/from16 v0, p0

    const-string v1, ""

    .line 1271
    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1272
    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1273
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1277
    :cond_1
    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-nez v1, :cond_2

    .line 1278
    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->userNotActivatedCannotCommentOrChat(Landroid/content/Context;)V

    return-void

    .line 1282
    :cond_2
    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->editText_textbox:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1283
    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    if-nez v1, :cond_3

    .line 1284
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    .line 1286
    :cond_3
    new-instance v1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    move-object v2, v1

    iget-object v3, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    iget-object v5, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/UserProfileObject;->getLevel()I

    move-result v5

    iget-object v6, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v7}, Lcom/picacomic/fregata/objects/UserProfileObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v7

    invoke-static {v7}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v9}, Lcom/picacomic/fregata/objects/UserProfileObject;->getTitle()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v10}, Lcom/picacomic/fregata/objects/UserProfileObject;->getGender()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android"

    iget-object v12, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v12}, Lcom/picacomic/fregata/objects/UserProfileObject;->getActivationDate()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->at:Ljava/lang/String;

    iget-object v14, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lt:Ljava/lang/String;

    iget-object v15, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->reply:Ljava/lang/String;

    const-string v16, ""

    const-string v17, ""

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lu:Ljava/lang/String;

    move-object/from16 v19, v1

    const/16 v20, 0x5

    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->isVerified()Z

    move-result v21

    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharacter()Ljava/lang/String;

    move-result-object v22

    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharactersStringArray()[Ljava/lang/String;

    move-result-object v23

    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lq:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lp:[Ljava/lang/String;

    move-object/from16 v25, v1

    move-object/from16 v18, p1

    invoke-direct/range {v2 .. v25}, Lcom/picacomic/fregata/objects/ChatMessageObject;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1287
    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    const-class v2, Lcom/picacomic/fregata/objects/ChatMessageObject;

    move-object/from16 v3, v26

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    .line 1290
    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v4, "send_audio"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v2, v4, v5}, Lio/socket/client/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    .line 1291
    invoke-virtual {v0, v3}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->d(Lcom/picacomic/fregata/objects/ChatMessageObject;)V

    .line 1294
    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cz()V

    .line 1295
    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cA()V

    return-void
.end method

.method static synthetic a(Lcom/picacomic/fregata/fragments/ChatroomFragment;)I
    .locals 0

    .line 122
    iget p0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->iJ:I

    return p0
.end method

.method static synthetic a(Lcom/picacomic/fregata/fragments/ChatroomFragment;I)I
    .locals 0

    .line 122
    iput p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->iJ:I

    return p1
.end method

.method static synthetic a(Lcom/picacomic/fregata/fragments/ChatroomFragment;Lcom/picacomic/fregata/objects/chatroomObjects/ChatroomSystemAction;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->a(Lcom/picacomic/fregata/objects/chatroomObjects/ChatroomSystemAction;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method static synthetic a(Lcom/picacomic/fregata/fragments/ChatroomFragment;Z)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->t(Z)V

    return-void
.end method

.method private a(Lcom/picacomic/fregata/objects/chatroomObjects/ChatroomSystemAction;Ljava/lang/reflect/Type;)V
    .locals 3

    .line 1300
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-nez v0, :cond_0

    .line 1301
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->userNotActivatedCannotCommentOrChat(Landroid/content/Context;)V

    return-void

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_1

    .line 1306
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    .line 1308
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    .line 1309
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v0, "system_action"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1}, Lio/socket/client/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    return-void
.end method

.method static synthetic b(Lcom/picacomic/fregata/fragments/ChatroomFragment;)I
    .locals 0

    .line 122
    iget p0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->iK:I

    return p0
.end method

.method static synthetic b(Lcom/picacomic/fregata/fragments/ChatroomFragment;I)I
    .locals 0

    .line 122
    iput p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->iK:I

    return p1
.end method

.method static synthetic b(Lcom/picacomic/fregata/fragments/ChatroomFragment;Z)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->u(Z)V

    return-void
.end method

.method static synthetic c(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cr()V

    return-void
.end method

.method private cr()V
    .locals 29

    move-object/from16 v0, p0

    .line 1156
    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->editText_textbox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, "@\u6307\u4ee4"

    .line 1160
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 1161
    iput-boolean v4, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lA:Z

    .line 1163
    :cond_0
    iget-object v3, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1164
    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1166
    :cond_1
    iget-object v3, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ku:Landroid/net/Uri;

    if-eqz v3, :cond_2

    .line 1167
    iget-object v3, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ku:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 1169
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_1

    .line 1172
    :cond_3
    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-nez v2, :cond_4

    .line 1173
    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->userNotActivatedCannotCommentOrChat(Landroid/content/Context;)V

    return-void

    .line 1176
    :cond_4
    iget-boolean v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lz:Z

    const/4 v3, 0x0

    if-nez v2, :cond_6

    .line 1177
    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->at:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->at:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 1178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@private "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1180
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0205

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_6
    :goto_0
    move-object/from16 v19, v1

    .line 1184
    iget-boolean v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lI:Z

    if-eqz v1, :cond_7

    .line 1185
    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->editText_textbox:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1186
    :cond_7
    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    if-nez v1, :cond_8

    .line 1187
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    .line 1189
    :cond_8
    new-instance v1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    move-object v5, v1

    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getLevel()I

    move-result v8

    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v9

    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v2

    invoke-static {v2}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v10

    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v11

    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getTitle()Ljava/lang/String;

    move-result-object v12

    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getGender()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android"

    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getActivationDate()Ljava/lang/String;

    move-result-object v15

    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->at:Ljava/lang/String;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lt:Ljava/lang/String;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->reply:Ljava/lang/String;

    move-object/from16 v18, v2

    const-string v20, ""

    const-string v21, ""

    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lu:Ljava/lang/String;

    move-object/from16 v22, v2

    const/16 v23, 0x3

    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->isVerified()Z

    move-result v24

    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharacter()Ljava/lang/String;

    move-result-object v25

    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharactersStringArray()[Ljava/lang/String;

    move-result-object v26

    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lq:Ljava/lang/String;

    move-object/from16 v27, v2

    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lp:[Ljava/lang/String;

    move-object/from16 v28, v2

    invoke-direct/range {v5 .. v28}, Lcom/picacomic/fregata/objects/ChatMessageObject;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1190
    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    const-class v5, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v2, v1, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    .line 1192
    iget-object v5, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v6, "send_message"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    invoke-virtual {v5, v6, v4}, Lio/socket/client/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    .line 1193
    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->a(Lcom/picacomic/fregata/objects/ChatMessageObject;)V

    return-void

    :cond_9
    :goto_1
    return-void
.end method

.method private cs()V
    .locals 28

    move-object/from16 v0, p0

    .line 1198
    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->editText_textbox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    const-string v1, ""

    .line 1201
    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1202
    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1204
    :cond_0
    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ku:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 1205
    iget-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ku:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 1207
    :cond_1
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_0

    .line 1210
    :cond_2
    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-nez v1, :cond_3

    .line 1211
    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->userNotActivatedCannotCommentOrChat(Landroid/content/Context;)V

    return-void

    .line 1215
    :cond_3
    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->editText_textbox:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1216
    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    if-nez v1, :cond_4

    .line 1217
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    .line 1219
    :cond_4
    new-instance v1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    move-object v2, v1

    iget-object v3, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    iget-object v5, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/UserProfileObject;->getLevel()I

    move-result v5

    iget-object v6, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v7}, Lcom/picacomic/fregata/objects/UserProfileObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v7

    invoke-static {v7}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v9}, Lcom/picacomic/fregata/objects/UserProfileObject;->getTitle()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v10}, Lcom/picacomic/fregata/objects/UserProfileObject;->getGender()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android"

    iget-object v12, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v12}, Lcom/picacomic/fregata/objects/UserProfileObject;->getActivationDate()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->at:Ljava/lang/String;

    iget-object v14, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lt:Ljava/lang/String;

    iget-object v15, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->reply:Ljava/lang/String;

    const-string v17, ""

    const-string v18, ""

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lu:Ljava/lang/String;

    move-object/from16 v19, v1

    const/16 v20, 0x3

    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->isVerified()Z

    move-result v21

    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharacter()Ljava/lang/String;

    move-result-object v22

    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharactersStringArray()[Ljava/lang/String;

    move-result-object v23

    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lq:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lp:[Ljava/lang/String;

    move-object/from16 v25, v1

    invoke-direct/range {v2 .. v25}, Lcom/picacomic/fregata/objects/ChatMessageObject;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1220
    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lD:Lcom/picacomic/fregata/objects/ChatroomToObject;

    if-nez v1, :cond_5

    return-void

    .line 1222
    :cond_5
    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lD:Lcom/picacomic/fregata/objects/ChatroomToObject;

    move-object/from16 v2, v26

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->setTo(Lcom/picacomic/fregata/objects/ChatroomToObject;)V

    .line 1223
    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    const-class v3, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    .line 1225
    iget-object v3, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v4, "send_private_message"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Lio/socket/client/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    .line 1226
    iget-object v1, v2, Lcom/picacomic/fregata/objects/ChatMessageObject;->user_id:Ljava/lang/String;

    move-object v15, v2

    const-string v2, ""

    iget-object v3, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/UserProfileObject;->getLevel()I

    move-result v3

    invoke-virtual {v15}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getEmail()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v15, Lcom/picacomic/fregata/objects/ChatMessageObject;->avatar:Ljava/lang/String;

    invoke-virtual {v15}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getGender()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getPlatform()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getActivationDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getAt()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getReplyName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getReply()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getBlockUserId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v19, v15

    move-object/from16 v15, v16

    const/16 v16, 0x1

    invoke-virtual/range {v19 .. v19}, Lcom/picacomic/fregata/objects/ChatMessageObject;->isVerified()Z

    move-result v17

    invoke-virtual/range {v19 .. v19}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getCharacter()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v19 .. v19}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getTo()Lcom/picacomic/fregata/objects/ChatroomToObject;

    move-result-object v19

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lq:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lp:[Ljava/lang/String;

    move-object/from16 v21, v1

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual/range {v0 .. v21}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Lcom/picacomic/fregata/objects/ChatroomToObject;Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_0
    return-void
.end method

.method private cw()V
    .locals 7

    .line 2585
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ii:Landroid/media/MediaPlayer;

    .line 2587
    :try_start_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ii:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 2588
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ii:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 2589
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ii:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 2590
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ii:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 2620
    sget-object v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DURATION = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ii:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 2621
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ii:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$44;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$44;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2628
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_audioPlayingTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2629
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_audioPlayingTimer:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2630
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lX:Ljava/util/Timer;

    .line 2631
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lX:Ljava/util/Timer;

    new-instance v2, Lcom/picacomic/fregata/fragments/ChatroomFragment$46;

    invoke-direct {v2, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$46;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x64

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private cx()V
    .locals 2

    .line 2664
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_audioPlayingTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2665
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_audioPlayingTimer:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2666
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lk:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 2667
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lk:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 2668
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ii:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 2669
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ii:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 2670
    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ii:Landroid/media/MediaPlayer;

    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cs()V

    return-void
.end method

.method static synthetic e(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cx()V

    return-void
.end method

.method static synthetic f(Lcom/picacomic/fregata/fragments/ChatroomFragment;)Lio/socket/client/d;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    return-object p0
.end method

.method static synthetic g(Lcom/picacomic/fregata/fragments/ChatroomFragment;)Landroid/media/MediaPlayer;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ii:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private startRecording()V
    .locals 2

    .line 2675
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->la:Landroid/media/MediaRecorder;

    .line 2676
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->la:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 2677
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->la:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 2678
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->la:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 2679
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->la:Landroid/media/MediaRecorder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 2682
    :try_start_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->la:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2684
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2688
    :goto_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->la:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    return-void
.end method

.method private stopRecording()V
    .locals 1

    .line 2693
    :try_start_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->la:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 2694
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->la:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    .line 2695
    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->la:Landroid/media/MediaRecorder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2697
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private t(Z)V
    .locals 7

    if-eqz p1, :cond_0

    .line 2541
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cy()V

    .line 2542
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->startRecording()V

    goto :goto_0

    .line 2545
    :cond_0
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->stopRecording()V

    .line 2546
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->mFileName:Ljava/lang/String;

    invoke-static {p1}, Lcom/picacomic/fregata/utils/g;->aB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    .line 2548
    iget-wide v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lc:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    iget-wide v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lb:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    iget-wide v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lc:J

    iget-wide v4, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lb:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    .line 2550
    invoke-direct {p0, p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->P(Ljava/lang/String;)V

    .line 2551
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->mFileName:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p1

    .line 2552
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    .line 2559
    :cond_1
    iput-wide v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lb:J

    .line 2560
    iput-wide v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lc:J

    .line 2562
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ld:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_2

    .line 2563
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ld:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    const/4 p1, 0x0

    .line 2564
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ld:Landroid/os/CountDownTimer;

    :cond_2
    :goto_0
    return-void
.end method

.method private u(Z)V
    .locals 0

    if-eqz p1, :cond_1

    .line 2571
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ii:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 2572
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cx()V

    .line 2574
    :cond_0
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cw()V

    goto :goto_0

    .line 2576
    :cond_1
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cx()V

    :goto_0
    return-void
.end method


# virtual methods
.method public D(I)V
    .locals 1

    .line 2727
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getAudio()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->mFileName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/g;->G(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    const/4 p1, 0x1

    .line 2728
    invoke-direct {p0, p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->u(Z)V

    return-void
.end method

.method public E(I)V
    .locals 2

    .line 2738
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getImage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getImage()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2740
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2741
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getAt()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2742
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getAt()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/picacomic/fregata/utils/g;->A(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 2744
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getImage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2745
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getImage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 2746
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ll:Landroid/graphics/Bitmap;

    .line 2747
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageView_largeImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ll:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2748
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->relativeLayout_popup:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2749
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ll:Landroid/graphics/Bitmap;

    const/16 v1, 0x8

    if-nez p1, :cond_1

    .line 2750
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_saveImage:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 2752
    :cond_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_saveImage:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 2754
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_viewProfile:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public F(I)V
    .locals 2

    .line 2776
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_3

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2778
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    iget v0, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    iget v0, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    iget v0, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2782
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2784
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->relativeLayout_popup:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2785
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_viewProfile:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2786
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lw:Ljava/lang/String;

    .line 2792
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getAvatar()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getAvatar()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2793
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getAvatar()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageView_largeImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_1

    .line 2795
    :cond_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageView_largeImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 2779
    iput p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->kv:I

    .line 2780
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cf()V

    :cond_3
    :goto_1
    return-void
.end method

.method public G(I)V
    .locals 3

    .line 2803
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_atList:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_8

    .line 2810
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/MainActivity;

    iget-boolean v0, v0, Lcom/picacomic/fregata/activities/MainActivity;->iM:Z

    if-eqz v0, :cond_0

    .line 2811
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/MainActivity;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/picacomic/fregata/activities/MainActivity;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2814
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cB()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2815
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/g;->F(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    .line 2816
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2819
    :cond_1
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cC()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2820
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2821
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2824
    :cond_2
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cD()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2825
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2826
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2831
    :cond_3
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->at:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->at:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->at:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2832
    :cond_4
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_atList:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    .line 2834
    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->at:Ljava/lang/String;

    .line 2836
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->at:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u55f6\u5494_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->at:Ljava/lang/String;

    .line 2838
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lu:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lu:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lu:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const-string v0, ""

    .line 2839
    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lu:Ljava/lang/String;

    .line 2841
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lu:Ljava/lang/String;

    .line 2844
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_atList:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 2845
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_atList:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    :goto_0
    return-void
.end method

.method public H(I)V
    .locals 3

    .line 2858
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_reply:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_4

    .line 2859
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2864
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/g;->F(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 2865
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2868
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cC()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2869
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2870
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2873
    :cond_1
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cD()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2874
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2875
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2880
    :cond_2
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 2881
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getAt()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2882
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getAt()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/picacomic/fregata/utils/g;->A(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2884
    :cond_3
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2885
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->reply:Ljava/lang/String;

    .line 2886
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lt:Ljava/lang/String;

    .line 2887
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_reply:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->reply:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2888
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_reply:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public K(Ljava/lang/String;)V
    .locals 2

    .line 1314
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->K(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1316
    iget v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->kv:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1318
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/picacomic/fregata/utils/g;->b(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/g;->f(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->O(Ljava/lang/String;)V

    goto :goto_0

    .line 1320
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1321
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cd()V

    :cond_1
    :goto_0
    return-void
.end method

.method public N(Ljava/lang/String;)V
    .locals 7

    .line 1047
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_toastMsg:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_toastMsg:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cn()V

    .line 1052
    new-instance p1, Lcom/picacomic/fregata/fragments/ChatroomFragment$25;

    const-wide/16 v3, 0x1388

    const-wide/16 v5, 0x1f4

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/picacomic/fregata/fragments/ChatroomFragment$25;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;JJ)V

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lh:Landroid/os/CountDownTimer;

    .line 1065
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lh:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2367
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    new-instance v1, Lcom/picacomic/fregata/objects/ChatSystemObject;

    invoke-direct {v1, p1}, Lcom/picacomic/fregata/objects/ChatSystemObject;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2368
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->le:Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->notifyItemInserted(I)V

    .line 2370
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    .line 2371
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public R(Ljava/lang/String;)V
    .locals 3

    .line 2398
    :try_start_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_totalUserCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2399
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->frameLayout_chatOnlineCountBackground:Landroid/widget/FrameLayout;

    const v1, 0x7f080098

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 2400
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->frameLayout_chatOnlineCountContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2401
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_chatOnlineCountTitle:Landroid/widget/TextView;

    const v1, 0x7f0f00ba

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2402
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_chatOnlineCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2403
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cq()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2405
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public S(Ljava/lang/String;)V
    .locals 3

    .line 2420
    :try_start_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_totalUserCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2421
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->frameLayout_chatOnlineCountBackground:Landroid/widget/FrameLayout;

    const v1, 0x7f080097

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 2422
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->frameLayout_chatOnlineCountContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2423
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_chatOnlineCountTitle:Landroid/widget/TextView;

    const v1, 0x7f0f00b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2424
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_chatOnlineCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2425
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cq()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2427
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public T(Ljava/lang/String;)V
    .locals 3

    .line 3219
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1000ca

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0f00bd

    .line 3220
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$63;

    invoke-direct {v1, p0, p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment$63;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;Ljava/lang/String;)V

    const p1, 0x7f030012

    const/4 v2, -0x1

    .line 3221
    invoke-virtual {v0, p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 3238
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public U(Ljava/lang/String;)V
    .locals 3

    .line 3242
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1000ca

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0f00bc

    .line 3243
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$64;

    invoke-direct {v1, p0, p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment$64;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;Ljava/lang/String;)V

    const p1, 0x7f030012

    const/4 v2, -0x1

    .line 3244
    invoke-virtual {v0, p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 3261
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public V(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "NIGHT ON"

    .line 3270
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3271
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->frameLayout_nightMode:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return v2

    :cond_0
    const-string v0, "NIGHT OFF"

    .line 3274
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3275
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->frameLayout_nightMode:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return v2

    :cond_1
    const-string v0, "TIME ON"

    .line 3278
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3279
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->le:Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;

    invoke-virtual {p1, v2}, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->n(Z)V

    .line 3280
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "SHOW TIMESTAMP ON"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v2

    :cond_2
    const-string v0, "TIME OFF"

    .line 3283
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3284
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->le:Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;

    invoke-virtual {p1, v1}, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->n(Z)V

    return v2

    :cond_3
    const-string v0, "FIX IMAGE SIZE ON"

    .line 3287
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3288
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->le:Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;

    invoke-virtual {p1, v2}, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->o(Z)V

    .line 3289
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "FIX IMAGE SIZE ON"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v2

    :cond_4
    const-string v0, "FIX IMAGE SIZE OFF"

    .line 3292
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3293
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->le:Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;

    invoke-virtual {p1, v1}, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->o(Z)V

    .line 3294
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "FIX IMAGE SIZE OFF"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v2

    .line 3297
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AUTO EARN PICA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    .line 3303
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MAXIMUM MESSAGE SIZE "

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3304
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MAXIMUM MESSAGE SIZE "

    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 3306
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->kW:I

    .line 3307
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SET MAX MESSAGE SIZE = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->kW:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3309
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v2

    :cond_7
    const-string v0, "@BLACKLIST"

    .line 3313
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3314
    sget-object p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->at:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lu:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 3315
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->at:Ljava/lang/String;

    const-string v0, "\u55f6\u5494_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3316
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lu:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_e

    if-eqz v0, :cond_e

    const/4 v3, 0x0

    .line 3319
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_8

    .line 3320
    sget-object v4, Lcom/picacomic/fregata/fragments/ChatroomFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 3321
    sget-object v4, Lcom/picacomic/fregata/fragments/ChatroomFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3324
    :cond_8
    array-length v3, p1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    array-length v3, v0

    if-eq v3, v4, :cond_9

    .line 3325
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Blacklist User Failed"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 3329
    :cond_9
    aget-object v3, p1, v2

    const-string v4, "\u55f6\u5494"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    aget-object v3, p1, v2

    const-string v4, "ruff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto/16 :goto_3

    .line 3334
    :cond_a
    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lG:Ljava/util/ArrayList;

    if-nez v3, :cond_b

    .line 3335
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lG:Ljava/util/ArrayList;

    .line 3336
    :cond_b
    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lG:Ljava/util/ArrayList;

    new-instance v4, Lcom/picacomic/fregata/objects/responses/ChatroomBlacklistObject;

    aget-object v5, p1, v2

    aget-object v0, v0, v2

    invoke-direct {v4, v5, v0}, Lcom/picacomic/fregata/objects/responses/ChatroomBlacklistObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3338
    :goto_2
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 3339
    sget-object v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BLACKLIST "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lG:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/picacomic/fregata/objects/responses/ChatroomBlacklistObject;

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/responses/ChatroomBlacklistObject;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lG:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/picacomic/fregata/objects/responses/ChatroomBlacklistObject;

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/responses/ChatroomBlacklistObject;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3342
    :cond_c
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lG:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/e;->u(Landroid/content/Context;Ljava/lang/String;)Z

    .line 3343
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Blacklist User: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Success"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 3330
    :cond_d
    :goto_3
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Blacklist User Failed"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v2

    :cond_e
    :goto_4
    return v2

    .line 3350
    :cond_f
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v0

    const-string v3, "@picacomic.com"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3351
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SET ADS INTERVAL "

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3352
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SET ADS INTERVAL "

    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 3354
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->kX:I

    .line 3360
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SET ADS INTERVAL = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->kX:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 3362
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return v2

    :cond_10
    const-string v0, "CONTROL PANEL"

    .line 3366
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3367
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz p1, :cond_11

    .line 3368
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/activities/MainActivity;

    invoke-virtual {p1}, Lcom/picacomic/fregata/activities/MainActivity;->bY()V

    :cond_11
    return v2

    :cond_12
    const-string v0, "CLEAR TEXT ON"

    .line 3372
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3373
    iput-boolean v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lI:Z

    .line 3374
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "CLEAR TEXT ON"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v2

    :cond_13
    const-string v0, "CLEAR TEXT OFF"

    .line 3377
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 3378
    iput-boolean v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lI:Z

    .line 3379
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "CLEAR TEXT OFF"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v2

    :cond_14
    return v1
.end method

.method public W(Ljava/lang/String;)Z
    .locals 3

    .line 3398
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lG:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 3399
    :goto_0
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lG:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3400
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lG:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/responses/ChatroomBlacklistObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/responses/ChatroomBlacklistObject;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public X(Ljava/lang/String;)V
    .locals 6

    const-string v0, "\n@"

    .line 3517
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 3518
    aget-object v1, p1, v0

    .line 3519
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 3520
    :goto_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 3521
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, 0x1

    aget-object v5, p1, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    move v0, v4

    goto :goto_0

    .line 3527
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v3, 0x7f1000ca

    invoke-direct {p1, v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 3528
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, -0x1

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$66;

    invoke-direct {v1, p0, v2}, Lcom/picacomic/fregata/fragments/ChatroomFragment$66;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;[Ljava/lang/String;)V

    .line 3529
    invoke-virtual {p1, v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 3551
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)Lcom/picacomic/fregata/objects/ChatMessageObject;
    .locals 26

    move-object/from16 v0, p1

    move/from16 v19, p2

    .line 1936
    new-instance v11, Lcom/picacomic/fregata/objects/ChatMessageObject;

    move-object v1, v11

    const-string v2, ""

    const-string v3, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    const/4 v4, 0x0

    const/16 v20, 0x0

    move-object/from16 v25, v11

    move-object/from16 v11, v20

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v1 .. v24}, Lcom/picacomic/fregata/objects/ChatMessageObject;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :try_start_0
    const-string v1, "id"

    .line 1938
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "id"

    .line 1940
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v25

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->setUserId(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v2, v25

    :goto_0
    const-string v1, "userId"

    .line 1942
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "userId"

    .line 1944
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->setUserId(Ljava/lang/String;)V

    :cond_1
    const-string v1, "user_id"

    .line 1946
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "user_id"

    .line 1948
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->setUserId(Ljava/lang/String;)V

    :cond_2
    const-string v1, "unique_id"

    .line 1950
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "unique_id"

    .line 1952
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->setUniqueId(Ljava/lang/String;)V

    :cond_3
    const-string v1, "level"

    .line 1954
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "level"

    .line 1955
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->setLevel(I)V

    :cond_4
    const-string v1, "email"

    .line 1957
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "email"

    .line 1958
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->setEmail(Ljava/lang/String;)V

    :cond_5
    const-string v1, "avatar"

    .line 1960
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "avatar"

    .line 1962
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->setAvatar(Ljava/lang/String;)V

    :cond_6
    const-string v1, "name"

    .line 1965
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "name"

    .line 1966
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->setName(Ljava/lang/String;)V

    :cond_7
    const-string v1, "title"

    .line 1968
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "title"

    .line 1970
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->setTitle(Ljava/lang/String;)V

    :cond_8
    const-string v1, "gender"

    .line 1972
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "gender"

    .line 1974
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->setGender(Ljava/lang/String;)V

    :cond_9
    const-string v1, "platform"

    .line 1976
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "platform"

    .line 1978
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->setPlatform(Ljava/lang/String;)V

    :cond_a
    const-string v1, "activation_date"

    .line 1980
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "activation_date"

    .line 1982
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->setActivationDate(Ljava/lang/String;)V

    :cond_b
    const-string v1, "activationDate"

    .line 1984
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "activationDate"

    .line 1986
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->setActivationDate(Ljava/lang/String;)V

    :cond_c
    const-string v1, "at"

    .line 1988
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "at"

    .line 1990
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->setAt(Ljava/lang/String;)V

    :cond_d
    const-string v1, "reply_name"

    .line 1992
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "reply_name"

    .line 1994
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->setReplyName(Ljava/lang/String;)V

    :cond_e
    const-string v1, "reply"

    .line 1996
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "reply"

    .line 1998
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->setReply(Ljava/lang/String;)V

    :cond_f
    const-string v1, "message"

    .line 2000
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "message"

    .line 2002
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->setMessage(Ljava/lang/String;)V

    :cond_10
    const-string v1, "image"

    .line 2004
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "image"

    .line 2006
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->setImage(Ljava/lang/String;)V

    :cond_11
    const-string v1, "audio"

    .line 2008
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "audio"

    .line 2010
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->setAudio(Ljava/lang/String;)V

    :cond_12
    const-string v1, "block_user_id"

    .line 2012
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "block_user_id"

    .line 2014
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->setBlockUserId(Ljava/lang/String;)V

    :cond_13
    const-string v1, "verified"

    .line 2017
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "verified"

    .line 2019
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->setVerified(Z)V

    :cond_14
    const-string v1, "character"

    .line 2021
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "character"

    .line 2023
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->setCharacter(Ljava/lang/String;)V

    :cond_15
    const-string v1, "characters"

    .line 2025
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_17

    const-string v1, "characters"

    .line 2026
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 2027
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_17

    .line 2028
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 2029
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_16

    .line 2030
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2032
    :cond_16
    invoke-virtual {v2, v4}, Lcom/picacomic/fregata/objects/ChatMessageObject;->setCharacters([Ljava/lang/String;)V

    :cond_17
    const-string v1, "event_icon"

    .line 2036
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "event_icon"

    .line 2038
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->setEventIcon(Ljava/lang/String;)V

    :cond_18
    const-string v1, "event_colors"

    .line 2040
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "event_colors"

    .line 2041
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2042
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1a

    .line 2043
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 2044
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_19

    .line 2045
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2047
    :cond_19
    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->setEventColors([Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1a
    return-object v2

    :catch_0
    move-exception v0

    .line 2052
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 3558
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1000c0

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0b0039

    .line 3559
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3561
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 3562
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    .line 3564
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3565
    invoke-static {p1}, Lcom/picacomic/fregata/utils/g;->as(Landroid/content/Context;)I

    move-result p1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const p1, 0x7f0900cb

    .line 3567
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const v1, 0x7f0902a4

    .line 3569
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090073

    .line 3570
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f090072

    .line 3571
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 3573
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const-string v1, "\u55f6\u5494\u5e63"

    .line 3577
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u7de8\u865f"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u9801\u78bc"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_1
    const-string p3, "0123456789"

    .line 3578
    invoke-static {p3}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    const/4 p3, 0x3

    .line 3579
    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setInputType(I)V

    .line 3582
    :cond_2
    new-instance p3, Lcom/picacomic/fregata/fragments/ChatroomFragment$68;

    invoke-direct {p3, p0, p2, p1, v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$68;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;Ljava/lang/String;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3591
    new-instance p1, Lcom/picacomic/fregata/fragments/ChatroomFragment$69;

    invoke-direct {p1, p0, v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$69;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;Landroid/app/Dialog;)V

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3598
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public a(Lcom/picacomic/fregata/objects/ChatMessageObject;)V
    .locals 7

    .line 2066
    sget-object v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHAT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->W(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2071
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2072
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getAt()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getAt()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u55f6\u5494_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2073
    new-instance v0, Lcom/picacomic/fregata/objects/AtMeObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/picacomic/fregata/objects/AtMeObject;-><init>(Ljava/lang/String;I)V

    .line 2074
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lF:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2075
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lF:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2077
    :cond_1
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->co()V

    goto :goto_0

    .line 2078
    :cond_2
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getReplyName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getReplyName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2079
    new-instance v0, Lcom/picacomic/fregata/objects/AtMeObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/picacomic/fregata/objects/AtMeObject;-><init>(Ljava/lang/String;I)V

    .line 2080
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lF:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 2081
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lF:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2083
    :cond_3
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->co()V

    .line 2085
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cv()V

    .line 2087
    :cond_5
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2088
    :try_start_0
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2089
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 2093
    sget-object v2, Lcom/picacomic/fregata/fragments/ChatroomFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message Data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cz()V

    .line 2095
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cA()V

    goto/16 :goto_1

    .line 2099
    :cond_6
    sget-object v2, Lcom/picacomic/fregata/fragments/ChatroomFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message Data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    iget-boolean v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lA:Z

    if-eqz v2, :cond_7

    .line 2107
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u804a\u5929\u5ba4\u7684\u6307\u4ee4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2108
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->X(Ljava/lang/String;)V

    .line 2109
    iput-boolean v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lA:Z

    .line 2114
    :cond_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_9

    .line 2115
    iget-boolean v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lJ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_9

    .line 2120
    :try_start_1
    iget-boolean v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lK:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_8

    .line 2121
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lH:Landroid/speech/tts/TextToSpeech;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u8aaa\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v2, v5, v4, v3, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    goto :goto_1

    .line 2123
    :cond_8
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lH:Landroid/speech/tts/TextToSpeech;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v2, v5, v4, v3, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 2127
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2135
    :cond_9
    :goto_1
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->le:Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->notifyItemInserted(I)V

    .line 2136
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2137
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cu()V

    .line 2139
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ct()V

    .line 2142
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-nez v0, :cond_a

    .line 2143
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_2

    .line 2145
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->N(Ljava/lang/String;)V

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 2136
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Lcom/picacomic/fregata/objects/ChatroomToObject;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 29

    move-object/from16 v1, p0

    .line 2196
    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cv()V

    .line 2198
    iget-object v2, v1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    monitor-enter v2

    if-eqz p16, :cond_0

    .line 2201
    :try_start_0
    iget-object v3, v1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    new-instance v15, Lcom/picacomic/fregata/objects/ChatMessageObject;

    const-string v19, ""

    const-string v20, ""

    const/16 v22, 0xa

    const/16 v25, 0x0

    move-object v4, v15

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object v0, v15

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    move-object/from16 v17, p13

    move-object/from16 v18, p14

    move-object/from16 v21, p15

    move/from16 v23, p17

    move-object/from16 v24, p18

    move-object/from16 v26, p20

    move-object/from16 v27, p21

    move-object/from16 v28, p19

    invoke-direct/range {v4 .. v28}, Lcom/picacomic/fregata/objects/ChatMessageObject;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/picacomic/fregata/objects/ChatroomToObject;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2202
    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cz()V

    .line 2203
    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cA()V

    const/4 v0, 0x0

    .line 2204
    iput-object v0, v1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lD:Lcom/picacomic/fregata/objects/ChatroomToObject;

    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    .line 2206
    :cond_0
    iget-object v0, v1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    new-instance v15, Lcom/picacomic/fregata/objects/ChatMessageObject;

    const-string v18, ""

    const-string v19, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v21, 0x9

    const/16 v24, 0x0

    move-object v3, v15

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object v1, v15

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v20, p15

    move/from16 v22, p17

    move-object/from16 v23, p18

    move-object/from16 v25, p20

    move-object/from16 v26, p21

    move-object/from16 v27, p19

    :try_start_1
    invoke-direct/range {v3 .. v27}, Lcom/picacomic/fregata/objects/ChatMessageObject;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/picacomic/fregata/objects/ChatroomToObject;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p0

    .line 2208
    :goto_0
    :try_start_2
    iget-object v0, v1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->le:Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;

    invoke-virtual {v0, v3}, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->notifyItemInserted(I)V

    .line 2209
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2210
    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cu()V

    .line 2212
    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ct()V

    .line 2215
    iget-object v0, v1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-nez v0, :cond_1

    .line 2216
    iget-object v0, v1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_1

    .line 2218
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, p6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p14

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->N(Ljava/lang/String;)V

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    .line 2209
    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 2502
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 2504
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/picacomic/fregata/objects/requests/UpdateUserTitleBody;

    invoke-direct {v2, p2}, Lcom/picacomic/fregata/objects/requests/UpdateUserTitleBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p5, v2}, Lcom/picacomic/fregata/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/requests/UpdateUserTitleBody;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lg:Lretrofit2/Call;

    .line 2506
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lg:Lretrofit2/Call;

    new-instance v8, Lcom/picacomic/fregata/fragments/ChatroomFragment$43;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/picacomic/fregata/fragments/ChatroomFragment$43;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 33

    move-object/from16 v8, p0

    .line 529
    iget-object v0, v8, Lcom/picacomic/fregata/fragments/ChatroomFragment;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, v8, Lcom/picacomic/fregata/fragments/ChatroomFragment;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 533
    :cond_0
    iget-object v0, v8, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-eqz v0, :cond_1

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##server talk @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p2

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 537
    new-instance v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    move-object v9, v0

    iget-object v1, v8, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    iget-object v1, v8, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getLevel()I

    move-result v12

    iget-object v1, v8, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v13

    iget-object v1, v8, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v14

    iget-object v1, v8, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v15

    iget-object v1, v8, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getTitle()Ljava/lang/String;

    move-result-object v16

    iget-object v1, v8, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getGender()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android"

    iget-object v1, v8, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getActivationDate()Ljava/lang/String;

    move-result-object v19

    iget-object v1, v8, Lcom/picacomic/fregata/fragments/ChatroomFragment;->at:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v8, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lt:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v1, v8, Lcom/picacomic/fregata/fragments/ChatroomFragment;->reply:Ljava/lang/String;

    move-object/from16 v22, v1

    const-string v24, ""

    const-string v25, ""

    iget-object v1, v8, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lu:Ljava/lang/String;

    move-object/from16 v26, v1

    const/16 v27, 0x3

    iget-object v1, v8, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->isVerified()Z

    move-result v28

    iget-object v1, v8, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharacter()Ljava/lang/String;

    move-result-object v29

    iget-object v1, v8, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharactersStringArray()[Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v9 .. v32}, Lcom/picacomic/fregata/objects/ChatMessageObject;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 538
    iget-object v1, v8, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    const-class v2, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 539
    iget-object v1, v8, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v2, "send_message"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lio/socket/client/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    goto :goto_0

    :cond_1
    move-object/from16 v7, p2

    :goto_0
    move/from16 v6, p1

    mul-int/lit16 v0, v6, 0x3e8

    if-lez v0, :cond_2

    .line 546
    new-instance v9, Lcom/picacomic/fregata/fragments/ChatroomFragment$12;

    int-to-long v4, v0

    move-object v0, v9

    move-object/from16 v1, p0

    move-wide v2, v4

    move/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/picacomic/fregata/fragments/ChatroomFragment$12;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;JJILjava/lang/String;)V

    .line 556
    invoke-virtual {v9}, Lcom/picacomic/fregata/fragments/ChatroomFragment$12;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, v8, Lcom/picacomic/fregata/fragments/ChatroomFragment;->countDownTimer:Landroid/os/CountDownTimer;

    :cond_2
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 12

    .line 2900
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->relativeLayout_popup:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->relativeLayout_popup:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 2901
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->relativeLayout_popup:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 p1, 0x0

    .line 2902
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ll:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 2904
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;

    if-eqz p1, :cond_2

    .line 2905
    :cond_1
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0800ed

    const v2, 0x7f0f004c

    const v3, 0x7f0f004b

    new-instance v4, Lcom/picacomic/fregata/fragments/ChatroomFragment$48;

    invoke-direct {v4, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$48;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;IIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 2916
    :cond_2
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f0800ed

    const v8, 0x7f0f004c

    const v9, 0x7f0f004b

    new-instance v10, Lcom/picacomic/fregata/fragments/ChatroomFragment$49;

    invoke-direct {v10, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$49;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;IIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public b(Lcom/picacomic/fregata/objects/ChatMessageObject;)V
    .locals 7

    .line 2156
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cv()V

    .line 2157
    sget-object v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADD ADS IMAGE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2160
    :try_start_0
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2162
    sget-object v1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    .line 2165
    iget-boolean v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lJ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 2167
    :try_start_1
    iget-boolean v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lK:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 2168
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lH:Landroid/speech/tts/TextToSpeech;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u767c\u4e86\u4e00\u500b\u5ee3\u544a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v1, v5, v4, v3, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    goto :goto_0

    .line 2170
    :cond_0
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lH:Landroid/speech/tts/TextToSpeech;

    const-string v5, "\u767c\u4e86\u4e00\u500b\u5ee3\u544a"

    const-string v6, ""

    invoke-virtual {v1, v5, v4, v3, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2174
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2179
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->le:Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;

    invoke-virtual {v1, v2}, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->notifyItemInserted(I)V

    .line 2180
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2181
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cu()V

    .line 2183
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ct()V

    .line 2186
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-nez v0, :cond_2

    .line 2187
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_1

    .line 2189
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f00c4

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->N(Ljava/lang/String;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 2180
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 3001
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1000ca

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 3002
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$52;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$52;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    const v2, 0x7f030002

    const/4 v3, -0x1

    .line 3003
    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v7, Lcom/picacomic/fregata/fragments/ChatroomFragment$51;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/picacomic/fregata/fragments/ChatroomFragment$51;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0f0176

    .line 3011
    invoke-virtual {v0, p1, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/picacomic/fregata/fragments/ChatroomFragment$50;

    invoke-direct {p2, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$50;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    const p3, 0x7f0f009e

    .line 3031
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 3044
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public bH()V
    .locals 3

    .line 1004
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->bH()V

    .line 1006
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1007
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1010
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->chatroomRules(Landroid/content/Context;)V

    .line 1012
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz v0, :cond_2

    .line 1013
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/MainActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/activities/MainActivity;->t(I)V

    .line 1015
    :cond_2
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_3

    .line 1016
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    .line 1017
    :cond_3
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1019
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    const-class v2, Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/UserProfileObject;

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    .line 1020
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lv:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lv:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1021
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->setCharacter(Ljava/lang/String;)V

    .line 1025
    :cond_4
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cd()V

    return-void
.end method

.method public bI()V
    .locals 2

    .line 1031
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->bI()V

    .line 1032
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-eqz v0, :cond_0

    .line 1038
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cF()V

    .line 1040
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lv:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lv:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->setCharacter(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/picacomic/fregata/objects/ChatMessageObject;)V
    .locals 7

    .line 2270
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cv()V

    .line 2272
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2273
    :try_start_0
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2274
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getType()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 2276
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cz()V

    .line 2277
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cA()V

    goto :goto_0

    .line 2280
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_2

    .line 2281
    iget-boolean v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lJ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 2283
    :try_start_1
    iget-boolean v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lK:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 2284
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lH:Landroid/speech/tts/TextToSpeech;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u767c\u4e86\u4e00\u5f35\u5716\u7247"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v1, v5, v4, v3, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    goto :goto_0

    .line 2286
    :cond_1
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lH:Landroid/speech/tts/TextToSpeech;

    const-string v5, "\u767c\u4e86\u4e00\u5f35\u5716\u7247"

    const-string v6, ""

    invoke-virtual {v1, v5, v4, v3, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2290
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2295
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->le:Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;

    invoke-virtual {v1, v2}, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->notifyItemInserted(I)V

    .line 2296
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2297
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cu()V

    .line 2299
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ct()V

    .line 2302
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-nez v0, :cond_3

    .line 2303
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_1

    .line 2305
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f00c6

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->N(Ljava/lang/String;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 2296
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 3048
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1000ca

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 3049
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$55;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$55;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    const v2, 0x7f030001

    const/4 v3, -0x1

    .line 3050
    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v7, Lcom/picacomic/fregata/fragments/ChatroomFragment$54;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/picacomic/fregata/fragments/ChatroomFragment$54;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0f0176

    .line 3056
    invoke-virtual {v0, p1, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/picacomic/fregata/fragments/ChatroomFragment$53;

    invoke-direct {p2, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$53;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    const p3, 0x7f0f009e

    .line 3075
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 3084
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public cA()V
    .locals 2

    .line 2938
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_reply:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    .line 2939
    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->reply:Ljava/lang/String;

    const-string v0, ""

    .line 2940
    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lt:Ljava/lang/String;

    .line 2941
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_reply:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public cB()Z
    .locals 1

    .line 2945
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->iN:Z

    return v0
.end method

.method public cC()Z
    .locals 1

    .line 2975
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lx:Z

    return v0
.end method

.method public cD()Z
    .locals 1

    .line 2988
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ly:Z

    return v0
.end method

.method public cE()V
    .locals 6

    .line 3174
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 3175
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0b003e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900e3

    .line 3178
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f0900e4

    .line 3179
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 3182
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f1000ca

    invoke-direct {v3, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f0f0038

    .line 3183
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 3184
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/picacomic/fregata/fragments/ChatroomFragment$62;

    invoke-direct {v3, p0, v2, v1}, Lcom/picacomic/fregata/fragments/ChatroomFragment$62;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V

    const v1, 0x7f0f0176

    .line 3186
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$61;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$61;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    const v2, 0x7f0f009e

    .line 3207
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3215
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public cF()V
    .locals 3

    .line 3409
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->le:Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 3412
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->le:Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->U(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->n(Z)V

    .line 3413
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->le:Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->V(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->o(Z)V

    .line 3414
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->le:Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->ad(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->p(Z)V

    .line 3415
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->frameLayout_nightMode:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3416
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->T(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3417
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->frameLayout_nightMode:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 3419
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->frameLayout_nightMode:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3421
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->W(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->kW:I

    .line 3422
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->X(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->kX:I

    .line 3424
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->ab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3425
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/picacomic/fregata/utils/e;->ab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->setCharacter(Ljava/lang/String;)V

    .line 3428
    :cond_3
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->ac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3429
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/picacomic/fregata/utils/e;->ac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->setName(Ljava/lang/String;)V

    .line 3432
    :cond_4
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/picacomic/fregata/utils/g;->F(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 3433
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->linearLayout_controlPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 3435
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->linearLayout_controlPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3438
    :cond_5
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageButton_hideChannel:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    .line 3439
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageButton_hideChannel:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3443
    :cond_6
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    .line 3444
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->ae(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3446
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    new-instance v2, Lcom/picacomic/fregata/fragments/ChatroomFragment$65;

    invoke-direct {v2, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$65;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v2}, Lcom/picacomic/fregata/fragments/ChatroomFragment$65;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lG:Ljava/util/ArrayList;

    goto :goto_1

    .line 3448
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lG:Ljava/util/ArrayList;

    .line 3455
    :goto_1
    sget-object v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated UserProfile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 3457
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lH:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_b

    .line 3462
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 3464
    :try_start_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->aa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cantonese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3465
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lH:Landroid/speech/tts/TextToSpeech;

    const-string v1, "cantonese"

    invoke-static {v1}, Lcom/picacomic/fregata/c/b;->aD(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    goto :goto_2

    .line 3466
    :cond_8
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->aa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "english"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3467
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lH:Landroid/speech/tts/TextToSpeech;

    const-string v1, "english"

    invoke-static {v1}, Lcom/picacomic/fregata/c/b;->aD(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    goto :goto_2

    .line 3468
    :cond_9
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->aa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "japanese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3469
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lH:Landroid/speech/tts/TextToSpeech;

    const-string v1, "japanese"

    invoke-static {v1}, Lcom/picacomic/fregata/c/b;->aD(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    goto :goto_2

    .line 3471
    :cond_a
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lH:Landroid/speech/tts/TextToSpeech;

    const-string v1, "chinese"

    invoke-static {v1}, Lcom/picacomic/fregata/c/b;->aD(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 3473
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3482
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->Y(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lJ:Z

    .line 3483
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->Z(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lK:Z

    .line 3485
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lJ:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lH:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lH:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3486
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lH:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 3489
    :cond_c
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->le:Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void

    :cond_d
    :goto_3
    return-void
.end method

.method public ca()V
    .locals 2

    .line 563
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->ca()V

    .line 565
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->iI:Landroid/widget/RelativeLayout$LayoutParams;

    .line 567
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->fab_command:Landroid/support/design/widget/FloatingActionButton;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->iI:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 569
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->fab_command:Landroid/support/design/widget/FloatingActionButton;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$23;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$23;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 626
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gridView_emojiList:Landroid/widget/GridView;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$34;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$34;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 633
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->editText_textbox:Landroid/widget/EditText;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$45;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$45;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 667
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_sendMessage:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$56;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$56;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 692
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageButton_setting:Landroid/widget/ImageButton;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$67;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$67;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageButton_sendEmoji:Landroid/widget/ImageButton;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$70;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$70;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageButton_sendImage:Landroid/widget/ImageButton;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$71;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$71;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageButton_sendAudio:Landroid/widget/ImageButton;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$2;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$2;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 793
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_saveImage:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$3;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$3;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 803
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageButton_closePopup:Landroid/widget/ImageButton;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$4;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$4;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 811
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageView_largeImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$5;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$5;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 820
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_toastMsg:Landroid/widget/TextView;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$6;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$6;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 829
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_toastAtMe:Landroid/widget/TextView;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$7;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$7;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 850
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_atList:Landroid/widget/TextView;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$8;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$8;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 863
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_reply:Landroid/widget/TextView;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$9;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$9;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 870
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_audioPlayingTimer:Landroid/widget/TextView;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$10;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$10;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 878
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_controlTime:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$11;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$11;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 885
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_controlImage:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$13;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$13;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 892
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_controlHidePanelButtons:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$14;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$14;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 908
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_controlMute:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$15;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$15;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 920
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_controlHideAvatar:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$16;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$16;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 931
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_viewProfile:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$17;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$17;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 942
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_controlChangeTitle:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$18;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$18;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 953
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_controlAI:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$19;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$19;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 964
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_totalUserCount:Landroid/widget/TextView;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$20;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$20;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 974
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_channelPublic:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$21;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$21;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 980
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_channelPrivate:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$22;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$22;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 987
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->imageButton_hideChannel:Landroid/widget/ImageButton;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$24;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$24;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public cd()V
    .locals 2

    .line 2440
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->C(Ljava/lang/String;)V

    const-string v0, "Show Progress"

    .line 2441
    invoke-static {v0}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 2443
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 2445
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/picacomic/fregata/b/a;->am(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jX:Lretrofit2/Call;

    .line 2447
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jX:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$42;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$42;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public cn()V
    .locals 2

    .line 1069
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lh:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lh:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 1071
    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lh:Landroid/os/CountDownTimer;

    .line 1073
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_toastMsg:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1074
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_toastMsg:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public co()V
    .locals 8

    .line 1078
    sget-object v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->TAG:Ljava/lang/String;

    const-string v1, "RUN SHOW TOAST AT ME"

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cp()V

    .line 1080
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_toastAtMe:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1081
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_toastAtMe:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1083
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lF:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1084
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    const v3, 0x7f0f00b8

    if-le v0, v2, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_toastAtMe:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lF:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u500b\u4eba "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lF:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/AtMeObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AtMeObject;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1088
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_toastAtMe:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0f00c2

    invoke-virtual {p0, v2}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1091
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_toastAtMe:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lF:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/AtMeObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/AtMeObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    :cond_2
    :goto_0
    new-instance v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$26;

    const-wide/32 v4, 0xea60

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/picacomic/fregata/fragments/ChatroomFragment$26;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;JJ)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lj:Landroid/os/CountDownTimer;

    .line 1118
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lj:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public cp()V
    .locals 2

    .line 1122
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_toastAtMe:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_toastAtMe:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lj:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 1125
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lj:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 1126
    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lj:Landroid/os/CountDownTimer;

    :cond_1
    return-void
.end method

.method public cq()V
    .locals 7

    .line 1133
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->li:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->li:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 1135
    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->li:Landroid/os/CountDownTimer;

    .line 1137
    :cond_0
    new-instance v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$27;

    const-wide/16 v3, 0x7d0

    const-wide/16 v5, 0x1f4

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/picacomic/fregata/fragments/ChatroomFragment$27;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;JJ)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->li:Landroid/os/CountDownTimer;

    .line 1149
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->li:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public ct()V
    .locals 4

    .line 2228
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->kW:I

    if-le v0, v1, :cond_1

    .line 2229
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->kW:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2232
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->kW:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2235
    :cond_0
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->le:Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;

    iget v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->kW:I

    invoke-virtual {v1, v2, v0}, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->notifyItemRangeRemoved(II)V

    :cond_1
    return-void
.end method

.method public cu()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public cv()V
    .locals 2

    .line 2432
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lF:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 2433
    :goto_0
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lF:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2434
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lF:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/AtMeObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/AtMeObject;->addIndex()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cy()V
    .locals 7

    .line 2705
    new-instance v6, Lcom/picacomic/fregata/fragments/ChatroomFragment$47;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x1f4

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/picacomic/fregata/fragments/ChatroomFragment$47;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;JJ)V

    iput-object v6, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ld:Landroid/os/CountDownTimer;

    .line 2721
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ld:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public cz()V
    .locals 2

    .line 2931
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_atList:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    .line 2932
    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->at:Ljava/lang/String;

    const-string v0, ""

    .line 2933
    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lu:Ljava/lang/String;

    .line 2934
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_atList:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public d(Lcom/picacomic/fregata/objects/ChatMessageObject;)V
    .locals 7

    .line 2315
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cv()V

    .line 2318
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2319
    :try_start_0
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2320
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getType()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 2322
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cz()V

    .line 2323
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cA()V

    goto :goto_0

    .line 2326
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_2

    .line 2327
    iget-boolean v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lJ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 2329
    :try_start_1
    iget-boolean v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lK:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 2330
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lH:Landroid/speech/tts/TextToSpeech;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u767c\u4e86\u4e00\u6bb5\u8a9e\u97f3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v1, v5, v4, v3, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    goto :goto_0

    .line 2332
    :cond_1
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lH:Landroid/speech/tts/TextToSpeech;

    const-string v5, "\u767c\u4e86\u4e00\u6bb5\u8a9e\u97f3"

    const-string v6, ""

    invoke-virtual {v1, v5, v4, v3, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2336
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2341
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->le:Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;

    invoke-virtual {v1, v2}, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->notifyItemInserted(I)V

    .line 2342
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2343
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cu()V

    .line 2345
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ct()V

    .line 2348
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-nez v0, :cond_3

    .line 2349
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_1

    .line 2351
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f00c5

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->N(Ljava/lang/String;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 2342
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 3089
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 3090
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0b003d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900e2

    .line 3092
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/EditText;

    .line 3094
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f1000ca

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 3095
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 3096
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$58;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/picacomic/fregata/fragments/ChatroomFragment$58;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0f0176

    .line 3098
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/picacomic/fregata/fragments/ChatroomFragment$57;

    invoke-direct {p2, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$57;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    const p3, 0x7f0f009e

    .line 3122
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 3131
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 3136
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 3137
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0b003f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902df

    .line 3139
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0900e5

    .line 3140
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/EditText;

    .line 3142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3144
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f1000ca

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0f0039

    .line 3145
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 3146
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$60;

    move-object v3, v1

    move-object v4, p0

    move-object v6, p1

    move-object v7, p4

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/picacomic/fregata/fragments/ChatroomFragment$60;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0f0176

    .line 3148
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/picacomic/fregata/fragments/ChatroomFragment$59;

    invoke-direct {p2, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$59;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    const p3, 0x7f0f009e

    .line 3161
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 3169
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public init()V
    .locals 3

    .line 475
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->init()V

    .line 477
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lH:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    .line 478
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lH:Landroid/speech/tts/TextToSpeech;

    :cond_0
    const/4 v0, 0x0

    .line 479
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lJ:Z

    .line 480
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/picacomic/fregata/utils/e;->k(Landroid/content/Context;Z)Z

    const/4 v1, 0x1

    .line 481
    iput-boolean v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lK:Z

    .line 482
    iput-boolean v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lI:Z

    .line 483
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->iN:Z

    .line 484
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lx:Z

    .line 485
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ly:Z

    .line 486
    iput-boolean v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lz:Z

    const/4 v0, -0x1

    .line 488
    iput v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lB:I

    .line 489
    iput v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lC:I

    .line 491
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/picacomic/fregata/utils/e;->t(Landroid/content/Context;Ljava/lang/String;)Z

    .line 497
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f0f01f3

    invoke-virtual {p0, v0, v2, v1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->a(Landroid/support/v7/widget/Toolbar;IZ)V

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lF:Ljava/util/ArrayList;

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    .line 501
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    .line 502
    new-instance v0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->arrayList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p0}, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/picacomic/fregata/a/a;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->le:Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;

    .line 503
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->recyclerView_chat:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 504
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->recyclerView_chat:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->le:Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 513
    new-instance v0, Lcom/picacomic/fregata/adapters/b;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/adapters/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lf:Lcom/picacomic/fregata/adapters/b;

    .line 514
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gridView_emojiList:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lf:Lcom/picacomic/fregata/adapters/b;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 516
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    .line 517
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->ae(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 519
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    new-instance v2, Lcom/picacomic/fregata/fragments/ChatroomFragment$1;

    invoke-direct {v2, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$1;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    invoke-virtual {v2}, Lcom/picacomic/fregata/fragments/ChatroomFragment$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lG:Ljava/util/ArrayList;

    goto :goto_0

    .line 521
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lG:Ljava/util/ArrayList;

    :goto_0
    return-void
.end method

.method public m(Z)V
    .locals 2

    .line 2953
    iput-boolean p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->iN:Z

    if-eqz p1, :cond_0

    .line 2955
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_controlMute:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060039

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_0

    .line 2957
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_controlMute:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600a0

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 411
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->onCreate(Landroid/os/Bundle;)V

    .line 413
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 414
    new-instance p1, Lio/socket/client/b$a;

    invoke-direct {p1}, Lio/socket/client/b$a;-><init>()V

    const/4 v0, 0x1

    .line 415
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "websocket"

    aput-object v2, v0, v1

    iput-object v0, p1, Lio/socket/client/b$a;->yT:[Ljava/lang/String;

    .line 418
    :try_start_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_CHATROOM_URL"

    const-string v2, "https://chat.picacomic.com"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lio/socket/client/b;->a(Ljava/lang/String;Lio/socket/client/b$a;)Lio/socket/client/d;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v0, "https://chat.picacomic.com"

    .line 421
    invoke-static {v0, p1}, Lio/socket/client/b;->a(Ljava/lang/String;Lio/socket/client/b$a;)Lio/socket/client/d;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 428
    :catch_1
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v0, "broadcast_message"

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lS:Lio/socket/b/a$a;

    invoke-virtual {p1, v0, v1}, Lio/socket/client/d;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 429
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v0, "broadcast_image"

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lV:Lio/socket/b/a$a;

    invoke-virtual {p1, v0, v1}, Lio/socket/client/d;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 430
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v0, "broadcast_audio"

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lW:Lio/socket/b/a$a;

    invoke-virtual {p1, v0, v1}, Lio/socket/client/d;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 431
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v0, "new_connection"

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lP:Lio/socket/b/a$a;

    invoke-virtual {p1, v0, v1}, Lio/socket/client/d;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 432
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v0, "connection_close"

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lQ:Lio/socket/b/a$a;

    invoke-virtual {p1, v0, v1}, Lio/socket/client/d;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 433
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v0, "got_private_message"

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lU:Lio/socket/b/a$a;

    invoke-virtual {p1, v0, v1}, Lio/socket/client/d;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 434
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v0, "change_character_icon"

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lR:Lio/socket/b/a$a;

    invoke-virtual {p1, v0, v1}, Lio/socket/client/d;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 435
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v0, "broadcast_ads"

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lT:Lio/socket/b/a$a;

    invoke-virtual {p1, v0, v1}, Lio/socket/client/d;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 436
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v0, "change_title"

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lL:Lio/socket/b/a$a;

    invoke-virtual {p1, v0, v1}, Lio/socket/client/d;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 437
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v0, "receive_notification"

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lO:Lio/socket/b/a$a;

    invoke-virtual {p1, v0, v1}, Lio/socket/client/d;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 438
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v0, "kick"

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lN:Lio/socket/b/a$a;

    invoke-virtual {p1, v0, v1}, Lio/socket/client/d;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 439
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v0, "set_profile"

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lM:Lio/socket/b/a$a;

    invoke-virtual {p1, v0, v1}, Lio/socket/client/d;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 440
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v0, "connect"

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->kd:Lio/socket/b/a$a;

    invoke-virtual {p1, v0, v1}, Lio/socket/client/d;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 441
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    invoke-virtual {p1}, Lio/socket/client/d;->eJ()Lio/socket/client/d;

    :cond_0
    const/4 p1, 0x2

    .line 445
    iput p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->kv:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0047

    const/4 v0, 0x0

    .line 454
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 457
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->a(Landroid/view/View;)V

    .line 463
    new-instance p2, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;

    invoke-direct {p2}, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;-><init>()V

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lE:Lcom/picacomic/fregata/fragments/ChatroomGameFragment;

    return-object p1
.end method

.method public onDetach()V
    .locals 3

    .line 1351
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->onDetach()V

    .line 1353
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    invoke-virtual {v0}, Lio/socket/client/d;->eO()Lio/socket/client/d;

    .line 1354
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v1, "broadcast_message"

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lS:Lio/socket/b/a$a;

    invoke-virtual {v0, v1, v2}, Lio/socket/client/d;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 1355
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v1, "broadcast_image"

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lV:Lio/socket/b/a$a;

    invoke-virtual {v0, v1, v2}, Lio/socket/client/d;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 1356
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v1, "broadcast_audio"

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lW:Lio/socket/b/a$a;

    invoke-virtual {v0, v1, v2}, Lio/socket/client/d;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 1357
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v1, "new_connection"

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lP:Lio/socket/b/a$a;

    invoke-virtual {v0, v1, v2}, Lio/socket/client/d;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 1358
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v1, "connection_close"

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lQ:Lio/socket/b/a$a;

    invoke-virtual {v0, v1, v2}, Lio/socket/client/d;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 1359
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v1, "change_character_icon"

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lR:Lio/socket/b/a$a;

    invoke-virtual {v0, v1, v2}, Lio/socket/client/d;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 1360
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v1, "broadcast_ads"

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lT:Lio/socket/b/a$a;

    invoke-virtual {v0, v1, v2}, Lio/socket/client/d;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 1361
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v1, "change_title"

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lL:Lio/socket/b/a$a;

    invoke-virtual {v0, v1, v2}, Lio/socket/client/d;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 1362
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v1, "receive_notification"

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lO:Lio/socket/b/a$a;

    invoke-virtual {v0, v1, v2}, Lio/socket/client/d;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 1363
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v1, "kick"

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lN:Lio/socket/b/a$a;

    invoke-virtual {v0, v1, v2}, Lio/socket/client/d;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 1364
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v1, "set_profile"

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lM:Lio/socket/b/a$a;

    invoke-virtual {v0, v1, v2}, Lio/socket/client/d;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 1365
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jZ:Lio/socket/client/d;

    const-string v1, "connect"

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->kd:Lio/socket/b/a$a;

    invoke-virtual {v0, v1, v2}, Lio/socket/client/d;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 1367
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->kY:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->kY:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1370
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jX:Lretrofit2/Call;

    if-eqz v0, :cond_1

    .line 1371
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jX:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 1373
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lg:Lretrofit2/Call;

    if-eqz v0, :cond_2

    .line 1374
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lg:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 1376
    :cond_2
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->li:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1377
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->li:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1378
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->li:Landroid/os/CountDownTimer;

    .line 1381
    :cond_3
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ld:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_4

    .line 1382
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ld:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1383
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ld:Landroid/os/CountDownTimer;

    .line 1386
    :cond_4
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lk:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_5

    .line 1387
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lk:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1388
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lk:Landroid/os/CountDownTimer;

    .line 1391
    :cond_5
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lh:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_6

    .line 1392
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lh:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1393
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lh:Landroid/os/CountDownTimer;

    .line 1396
    :cond_6
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lj:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_7

    .line 1397
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lj:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1398
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lj:Landroid/os/CountDownTimer;

    .line 1401
    :cond_7
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lH:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_8

    .line 1402
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lH:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 1403
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lH:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    :cond_8
    return-void
.end method

.method public onInit(I)V
    .locals 1

    if-nez p1, :cond_1

    .line 3497
    :try_start_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lH:Landroid/speech/tts/TextToSpeech;

    const-string v0, "chinese"

    invoke-static {v0}, Lcom/picacomic/fregata/c/b;->aD(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    :cond_0
    const-string p1, "error"

    const-string v0, "This Language is not supported"

    .line 3500
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    const-string p1, "error"

    const-string v0, "Initilization Failed!"

    .line 3507
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3509
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1328
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->onPause()V

    .line 1330
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_audioPlayingTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_audioPlayingTimer:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1333
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->la:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1334
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->la:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1335
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->la:Landroid/media/MediaRecorder;

    .line 1338
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lX:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 1339
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lX:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1340
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lX:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1343
    :cond_2
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ii:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 1344
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ii:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1345
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ii:Landroid/media/MediaPlayer;

    :cond_3
    return-void
.end method

.method public v(Z)V
    .locals 2

    .line 2979
    iput-boolean p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lx:Z

    if-eqz p1, :cond_0

    .line 2981
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_controlHideAvatar:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060039

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_0

    .line 2983
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_controlHideAvatar:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600a0

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public w(Z)V
    .locals 2

    .line 2992
    iput-boolean p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ly:Z

    if-eqz p1, :cond_0

    .line 2994
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_controlChangeTitle:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060039

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_0

    .line 2996
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->button_controlChangeTitle:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600a0

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public x(Z)V
    .locals 2

    .line 3389
    iput-boolean p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lz:Z

    if-eqz p1, :cond_0

    .line 3391
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->frameLayout_channelIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060038

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 3393
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->frameLayout_channelIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06003a

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method
