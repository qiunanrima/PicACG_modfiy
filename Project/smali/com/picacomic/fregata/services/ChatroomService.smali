.class public Lcom/picacomic/fregata/services/ChatroomService;
.super Landroid/app/Service;
.source "ChatroomService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/picacomic/fregata/a/a;


# static fields
.field public static final TAG:Ljava/lang/String; = "ChatroomService"


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

.field button_close:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090084
    .end annotation
.end field

.field button_messageMode:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090085
    .end annotation
.end field

.field button_move:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090086
    .end annotation
.end field

.field button_send:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090087
    .end annotation
.end field

.field button_sizeController:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090088
    .end annotation
.end field

.field editText_input:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900e1
    .end annotation
.end field

.field handler:Landroid/os/Handler;

.field private iK:I

.field jQ:Landroid/support/v7/widget/LinearLayoutManager;

.field jW:Lcom/picacomic/fregata/objects/UserProfileObject;

.field private jZ:Lio/socket/client/d;

.field private jc:Landroid/view/LayoutInflater;

.field private lP:Lio/socket/b/a$a;

.field private lQ:Lio/socket/b/a$a;

.field private lS:Lio/socket/b/a$a;

.field le:Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;

.field lh:Landroid/os/CountDownTimer;

.field lt:Ljava/lang/String;

.field lu:Ljava/lang/String;

.field recyclerView_chat:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090201
    .end annotation
.end field

.field relativeLayout_input:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09020a
    .end annotation
.end field

.field reply:Ljava/lang/String;

.field private screenWidth:I

.field private tC:Landroid/view/WindowManager;

.field tD:Landroid/view/View;

.field tE:Landroid/view/WindowManager$LayoutParams;

.field private tF:I

.field tG:Z

.field tH:Lcom/picacomic/fregata/objects/ChatMessageObject;

.field textView_atList:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090251
    .end annotation
.end field

.field textView_reply:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090255
    .end annotation
.end field

.field textView_toastMsg:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090257
    .end annotation
.end field

.field textView_totalUserCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902dd
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 186
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/16 v0, 0xc8

    .line 155
    iput v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->tF:I

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->tG:Z

    const-string v0, ""

    .line 160
    iput-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->at:Ljava/lang/String;

    const-string v0, ""

    .line 161
    iput-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->lt:Ljava/lang/String;

    const-string v0, ""

    .line 162
    iput-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->reply:Ljava/lang/String;

    const-string v0, ""

    .line 163
    iput-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->lu:Ljava/lang/String;

    :try_start_0
    const-string v0, "https://chat.picacomic.com"

    .line 180
    invoke-static {v0}, Lio/socket/client/b;->aE(Ljava/lang/String;)Lio/socket/client/d;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->jZ:Lio/socket/client/d;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :catch_0
    new-instance v0, Lcom/picacomic/fregata/services/ChatroomService$12;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/services/ChatroomService$12;-><init>(Lcom/picacomic/fregata/services/ChatroomService;)V

    iput-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->lS:Lio/socket/b/a$a;

    .line 628
    new-instance v0, Lcom/picacomic/fregata/services/ChatroomService$2;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/services/ChatroomService$2;-><init>(Lcom/picacomic/fregata/services/ChatroomService;)V

    iput-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->lP:Lio/socket/b/a$a;

    .line 653
    new-instance v0, Lcom/picacomic/fregata/services/ChatroomService$3;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/services/ChatroomService$3;-><init>(Lcom/picacomic/fregata/services/ChatroomService;)V

    iput-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->lQ:Lio/socket/b/a$a;

    return-void
.end method

.method static synthetic a(Lcom/picacomic/fregata/services/ChatroomService;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/picacomic/fregata/services/ChatroomService;->iK:I

    return p1
.end method

.method static synthetic a(Lcom/picacomic/fregata/services/ChatroomService;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/picacomic/fregata/services/ChatroomService;->cr()V

    return-void
.end method

.method static synthetic a(Lcom/picacomic/fregata/services/ChatroomService;Ljava/lang/Runnable;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/picacomic/fregata/services/ChatroomService;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/picacomic/fregata/services/ChatroomService;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/picacomic/fregata/services/ChatroomService;->iK:I

    return p0
.end method

.method static synthetic c(Lcom/picacomic/fregata/services/ChatroomService;)Landroid/view/WindowManager;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/picacomic/fregata/services/ChatroomService;->tC:Landroid/view/WindowManager;

    return-object p0
.end method

.method private cr()V
    .locals 28

    move-object/from16 v0, p0

    .line 695
    iget-object v1, v0, Lcom/picacomic/fregata/services/ChatroomService;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-eqz v1, :cond_2

    .line 696
    iget-object v1, v0, Lcom/picacomic/fregata/services/ChatroomService;->editText_input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 698
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v15, 0x0

    if-eqz v1, :cond_0

    .line 699
    iput-boolean v15, v0, Lcom/picacomic/fregata/services/ChatroomService;->tG:Z

    .line 700
    invoke-virtual {v0, v15}, Lcom/picacomic/fregata/services/ChatroomService;->D(Z)V

    return-void

    .line 704
    :cond_0
    iget-object v1, v0, Lcom/picacomic/fregata/services/ChatroomService;->editText_input:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 705
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const/4 v2, 0x0

    .line 707
    iget-object v3, v0, Lcom/picacomic/fregata/services/ChatroomService;->tH:Lcom/picacomic/fregata/objects/ChatMessageObject;

    if-eqz v3, :cond_1

    .line 708
    iget-object v2, v0, Lcom/picacomic/fregata/services/ChatroomService;->tH:Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getUserId()Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object/from16 v19, v2

    .line 710
    new-instance v14, Lcom/picacomic/fregata/objects/ChatMessageObject;

    move-object v2, v14

    iget-object v3, v0, Lcom/picacomic/fregata/services/ChatroomService;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    iget-object v5, v0, Lcom/picacomic/fregata/services/ChatroomService;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/UserProfileObject;->getLevel()I

    move-result v5

    iget-object v6, v0, Lcom/picacomic/fregata/services/ChatroomService;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/picacomic/fregata/services/ChatroomService;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v7}, Lcom/picacomic/fregata/objects/UserProfileObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v7

    invoke-static {v7}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/picacomic/fregata/services/ChatroomService;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v8}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/picacomic/fregata/services/ChatroomService;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v9}, Lcom/picacomic/fregata/objects/UserProfileObject;->getTitle()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/picacomic/fregata/services/ChatroomService;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v10}, Lcom/picacomic/fregata/objects/UserProfileObject;->getGender()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android S"

    iget-object v12, v0, Lcom/picacomic/fregata/services/ChatroomService;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v12}, Lcom/picacomic/fregata/objects/UserProfileObject;->getActivationDate()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/picacomic/fregata/services/ChatroomService;->at:Ljava/lang/String;

    iget-object v15, v0, Lcom/picacomic/fregata/services/ChatroomService;->lt:Ljava/lang/String;

    move-object/from16 v26, v1

    move-object v1, v14

    move-object v14, v15

    iget-object v15, v0, Lcom/picacomic/fregata/services/ChatroomService;->reply:Ljava/lang/String;

    const-string v17, ""

    const-string v18, ""

    const/16 v20, 0x0

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/picacomic/fregata/services/ChatroomService;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->isVerified()Z

    move-result v21

    iget-object v1, v0, Lcom/picacomic/fregata/services/ChatroomService;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharacter()Ljava/lang/String;

    move-result-object v22

    iget-object v1, v0, Lcom/picacomic/fregata/services/ChatroomService;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharactersStringArray()[Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v2 .. v25}, Lcom/picacomic/fregata/objects/ChatMessageObject;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 711
    const-class v1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v2, v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    .line 712
    iget-object v2, v0, Lcom/picacomic/fregata/services/ChatroomService;->jZ:Lio/socket/client/d;

    const-string v4, "send_message"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v1, v5, v15

    invoke-virtual {v2, v4, v5}, Lio/socket/client/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    .line 713
    iget-object v1, v3, Lcom/picacomic/fregata/objects/ChatMessageObject;->user_id:Ljava/lang/String;

    move-object v14, v3

    const-string v2, ""

    iget-object v3, v0, Lcom/picacomic/fregata/services/ChatroomService;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/UserProfileObject;->getLevel()I

    move-result v3

    invoke-virtual {v14}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getEmail()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v14, Lcom/picacomic/fregata/objects/ChatMessageObject;->avatar:Ljava/lang/String;

    invoke-virtual {v14}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getGender()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getPlatform()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getActivationDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getAt()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getReplyName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getReply()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v18, v14

    move-object/from16 v14, v16

    invoke-virtual/range {v18 .. v18}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getBlockUserId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v15, v16

    const/16 v16, 0x1

    invoke-virtual/range {v18 .. v18}, Lcom/picacomic/fregata/objects/ChatMessageObject;->isVerified()Z

    move-result v17

    invoke-virtual/range {v18 .. v18}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getCharacter()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v20}, Lcom/picacomic/fregata/services/ChatroomService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 714
    iput-boolean v1, v0, Lcom/picacomic/fregata/services/ChatroomService;->tG:Z

    .line 715
    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/services/ChatroomService;->D(Z)V

    .line 717
    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/services/ChatroomService;->cz()V

    .line 718
    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/services/ChatroomService;->cA()V

    :cond_2
    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 836
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public D(I)V
    .locals 0

    return-void
.end method

.method public D(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 680
    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService;->tE:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 682
    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService;->tC:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/picacomic/fregata/services/ChatroomService;->tD:Landroid/view/View;

    iget-object v2, p0, Lcom/picacomic/fregata/services/ChatroomService;->tE:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 683
    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService;->button_messageMode:Landroid/widget/Button;

    const v1, 0x7f0f00c7

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 684
    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService;->relativeLayout_input:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 686
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService;->tE:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 688
    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService;->tC:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/picacomic/fregata/services/ChatroomService;->tD:Landroid/view/View;

    iget-object v2, p0, Lcom/picacomic/fregata/services/ChatroomService;->tE:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 689
    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService;->button_messageMode:Landroid/widget/Button;

    const v1, 0x7f0f00c8

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 690
    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService;->relativeLayout_input:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public E(I)V
    .locals 0

    return-void
.end method

.method public F(I)V
    .locals 0

    return-void
.end method

.method public G(I)V
    .locals 3

    .line 861
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->at:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->at:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->at:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->textView_atList:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    .line 863
    iput-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->at:Ljava/lang/String;

    .line 865
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/picacomic/fregata/services/ChatroomService;->at:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u55f6\u5494_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/services/ChatroomService;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->at:Ljava/lang/String;

    .line 867
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->lu:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->lu:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->lu:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, ""

    .line 868
    iput-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->lu:Ljava/lang/String;

    .line 870
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/picacomic/fregata/services/ChatroomService;->lu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/services/ChatroomService;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->lu:Ljava/lang/String;

    .line 872
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->textView_atList:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/services/ChatroomService;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 873
    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService;->textView_atList:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public H(I)V
    .locals 2

    .line 878
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->reply:Ljava/lang/String;

    .line 880
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ChatMessageObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatMessageObject;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService;->lt:Ljava/lang/String;

    .line 881
    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService;->textView_reply:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/picacomic/fregata/services/ChatroomService;->lt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/services/ChatroomService;->reply:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 882
    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService;->textView_reply:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public N(Ljava/lang/String;)V
    .locals 7

    .line 942
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->textView_toastMsg:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->textView_toastMsg:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 945
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/services/ChatroomService;->cn()V

    .line 947
    new-instance p1, Lcom/picacomic/fregata/services/ChatroomService$4;

    const-wide/16 v3, 0x1388

    const-wide/16 v5, 0x1f4

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/picacomic/fregata/services/ChatroomService$4;-><init>(Lcom/picacomic/fregata/services/ChatroomService;JJ)V

    iput-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService;->lh:Landroid/os/CountDownTimer;

    .line 960
    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService;->lh:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v0, p6

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    const/4 v15, 0x0

    if-eqz v13, :cond_0

    .line 745
    iget-object v2, v1, Lcom/picacomic/fregata/services/ChatroomService;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 746
    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/services/ChatroomService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0f00b8

    invoke-virtual {v1, v4}, Lcom/picacomic/fregata/services/ChatroomService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    if-eqz v14, :cond_1

    .line 749
    iget-object v2, v1, Lcom/picacomic/fregata/services/ChatroomService;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 750
    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/services/ChatroomService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0f00c3

    invoke-virtual {v1, v4}, Lcom/picacomic/fregata/services/ChatroomService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 770
    :cond_1
    :goto_0
    iget-object v12, v1, Lcom/picacomic/fregata/services/ChatroomService;->arrayList:Ljava/util/ArrayList;

    monitor-enter v12

    if-eqz p16, :cond_2

    .line 773
    :try_start_0
    new-instance v11, Lcom/picacomic/fregata/objects/ChatMessageObject;

    const-string v17, ""

    const-string v18, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v20, 0x3

    const/16 v23, 0x0

    move-object v2, v11

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object v0, v11

    move-object/from16 v11, p9

    move-object/from16 v26, v12

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v27, v0

    const/4 v0, 0x0

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v19, p15

    move/from16 v21, p17

    move-object/from16 v22, p18

    move-object/from16 v24, p19

    move-object/from16 v25, p20

    :try_start_1
    invoke-direct/range {v2 .. v25}, Lcom/picacomic/fregata/objects/ChatMessageObject;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 774
    iget-object v2, v1, Lcom/picacomic/fregata/services/ChatroomService;->arrayList:Ljava/util/ArrayList;

    move-object/from16 v3, v27

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 775
    sget-object v2, Lcom/picacomic/fregata/services/ChatroomService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message Data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/ChatMessageObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v26, v12

    goto/16 :goto_3

    :cond_2
    move-object/from16 v26, v12

    const/4 v0, 0x0

    .line 779
    new-instance v15, Lcom/picacomic/fregata/objects/ChatMessageObject;

    const-string v17, ""

    const-string v18, ""

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object v2, v15

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object v0, v15

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v19, p15

    move/from16 v21, p17

    move-object/from16 v22, p18

    move-object/from16 v24, p19

    move-object/from16 v25, p20

    invoke-direct/range {v2 .. v25}, Lcom/picacomic/fregata/objects/ChatMessageObject;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 780
    iget-object v2, v1, Lcom/picacomic/fregata/services/ChatroomService;->arrayList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 781
    sget-object v2, Lcom/picacomic/fregata/services/ChatroomService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message Data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ChatMessageObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    :goto_1
    iget-object v0, v1, Lcom/picacomic/fregata/services/ChatroomService;->le:Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->notifyItemInserted(I)V

    .line 788
    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 790
    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/services/ChatroomService;->cu()V

    .line 791
    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/services/ChatroomService;->ct()V

    .line 793
    iget-object v0, v1, Lcom/picacomic/fregata/services/ChatroomService;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-nez v0, :cond_3

    .line 794
    iget-object v0, v1, Lcom/picacomic/fregata/services/ChatroomService;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_2

    .line 796
    :cond_3
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

    invoke-virtual {v1, v0}, Lcom/picacomic/fregata/services/ChatroomService;->N(Ljava/lang/String;)V

    :goto_2
    return-void

    :catchall_1
    move-exception v0

    .line 788
    :goto_3
    :try_start_2
    monitor-exit v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public bF()V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->textView_atList:Landroid/widget/TextView;

    new-instance v1, Lcom/picacomic/fregata/services/ChatroomService$1;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/services/ChatroomService$1;-><init>(Lcom/picacomic/fregata/services/ChatroomService;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->textView_reply:Landroid/widget/TextView;

    new-instance v1, Lcom/picacomic/fregata/services/ChatroomService$5;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/services/ChatroomService$5;-><init>(Lcom/picacomic/fregata/services/ChatroomService;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->textView_toastMsg:Landroid/widget/TextView;

    new-instance v1, Lcom/picacomic/fregata/services/ChatroomService$6;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/services/ChatroomService$6;-><init>(Lcom/picacomic/fregata/services/ChatroomService;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->button_close:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/services/ChatroomService$7;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/services/ChatroomService$7;-><init>(Lcom/picacomic/fregata/services/ChatroomService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->button_send:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/services/ChatroomService$8;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/services/ChatroomService$8;-><init>(Lcom/picacomic/fregata/services/ChatroomService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->button_messageMode:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/services/ChatroomService$9;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/services/ChatroomService$9;-><init>(Lcom/picacomic/fregata/services/ChatroomService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->button_move:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/services/ChatroomService$10;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/services/ChatroomService$10;-><init>(Lcom/picacomic/fregata/services/ChatroomService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 469
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->button_sizeController:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/services/ChatroomService$11;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/services/ChatroomService$11;-><init>(Lcom/picacomic/fregata/services/ChatroomService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public bH()V
    .locals 3

    .line 507
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->tC:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/picacomic/fregata/services/ChatroomService;->tD:Landroid/view/View;

    iget-object v2, p0, Lcom/picacomic/fregata/services/ChatroomService;->tE:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 508
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/services/ChatroomService;->D(Z)V

    return-void
.end method

.method public cA()V
    .locals 2

    .line 980
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->textView_reply:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    .line 981
    iput-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->reply:Ljava/lang/String;

    const-string v0, ""

    .line 982
    iput-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->lt:Ljava/lang/String;

    .line 983
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->textView_reply:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public cn()V
    .locals 2

    .line 964
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->lh:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->lh:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 966
    iput-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->lh:Landroid/os/CountDownTimer;

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->textView_toastMsg:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 969
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->textView_toastMsg:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public ct()V
    .locals 4

    .line 802
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    .line 803
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 806
    iget-object v3, p0, Lcom/picacomic/fregata/services/ChatroomService;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 809
    :cond_0
    iget-object v2, p0, Lcom/picacomic/fregata/services/ChatroomService;->le:Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;

    invoke-virtual {v2, v1, v0}, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;->notifyItemRangeRemoved(II)V

    :cond_1
    return-void
.end method

.method public cu()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public cz()V
    .locals 2

    .line 973
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->textView_atList:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    .line 974
    iput-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->at:Ljava/lang/String;

    const-string v0, ""

    .line 975
    iput-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->lu:Ljava/lang/String;

    .line 976
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->textView_atList:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public dP()V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->tD:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 265
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/services/ChatroomService;->stopForeground(Z)V

    .line 266
    invoke-virtual {p0}, Lcom/picacomic/fregata/services/ChatroomService;->stopSelf()V

    .line 268
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->jZ:Lio/socket/client/d;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->jZ:Lio/socket/client/d;

    invoke-virtual {v0}, Lio/socket/client/d;->eO()Lio/socket/client/d;

    .line 270
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->jZ:Lio/socket/client/d;

    const-string v1, "broadcast_message"

    iget-object v2, p0, Lcom/picacomic/fregata/services/ChatroomService;->lS:Lio/socket/b/a$a;

    invoke-virtual {v0, v1, v2}, Lio/socket/client/d;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 271
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->jZ:Lio/socket/client/d;

    const-string v1, "new_connection"

    iget-object v2, p0, Lcom/picacomic/fregata/services/ChatroomService;->lP:Lio/socket/b/a$a;

    invoke-virtual {v0, v1, v2}, Lio/socket/client/d;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 272
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->jZ:Lio/socket/client/d;

    const-string v1, "connection_close"

    iget-object v2, p0, Lcom/picacomic/fregata/services/ChatroomService;->lQ:Lio/socket/b/a$a;

    invoke-virtual {v0, v1, v2}, Lio/socket/client/d;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->lh:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->lh:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 277
    iput-object v1, p0, Lcom/picacomic/fregata/services/ChatroomService;->lh:Landroid/os/CountDownTimer;

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 281
    iput-object v1, p0, Lcom/picacomic/fregata/services/ChatroomService;->handler:Landroid/os/Handler;

    :cond_2
    return-void
.end method

.method public init()V
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->jc:Landroid/view/LayoutInflater;

    const v1, 0x7f0b00c4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->tD:Landroid/view/View;

    .line 337
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->tD:Landroid/view/View;

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 346
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 347
    iput-boolean v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->tG:Z

    .line 350
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->jZ:Lio/socket/client/d;

    const-string v1, "broadcast_message"

    iget-object v2, p0, Lcom/picacomic/fregata/services/ChatroomService;->lS:Lio/socket/b/a$a;

    invoke-virtual {v0, v1, v2}, Lio/socket/client/d;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 351
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->jZ:Lio/socket/client/d;

    const-string v1, "new_connection"

    iget-object v2, p0, Lcom/picacomic/fregata/services/ChatroomService;->lP:Lio/socket/b/a$a;

    invoke-virtual {v0, v1, v2}, Lio/socket/client/d;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 352
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->jZ:Lio/socket/client/d;

    const-string v1, "connection_close"

    iget-object v2, p0, Lcom/picacomic/fregata/services/ChatroomService;->lQ:Lio/socket/b/a$a;

    invoke-virtual {v0, v1, v2}, Lio/socket/client/d;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 353
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->jZ:Lio/socket/client/d;

    invoke-virtual {v0}, Lio/socket/client/d;->eJ()Lio/socket/client/d;

    .line 356
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 357
    invoke-static {p0}, Lcom/picacomic/fregata/utils/e;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 359
    const-class v2, Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/UserProfileObject;

    iput-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    .line 360
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-nez v0, :cond_1

    .line 361
    invoke-virtual {p0}, Lcom/picacomic/fregata/services/ChatroomService;->dP()V

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/services/ChatroomService;->dP()V

    .line 375
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->arrayList:Ljava/util/ArrayList;

    .line 376
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    .line 377
    new-instance v0, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;

    iget-object v1, p0, Lcom/picacomic/fregata/services/ChatroomService;->arrayList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, p0}, Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/picacomic/fregata/a/a;)V

    iput-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->le:Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;

    .line 378
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->recyclerView_chat:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/services/ChatroomService;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 379
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->recyclerView_chat:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/services/ChatroomService;->le:Lcom/picacomic/fregata/adapters/ChatroomRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 193
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 7

    .line 287
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 288
    invoke-static {p0}, Lcom/picacomic/fregata/utils/g;->aw(Landroid/content/Context;)V

    const-string v0, "layout_inflater"

    .line 289
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/services/ChatroomService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->jc:Landroid/view/LayoutInflater;

    const-string v0, "window"

    .line 290
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/services/ChatroomService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->tC:Landroid/view/WindowManager;

    .line 291
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->tC:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->screenWidth:I

    .line 293
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x7d2

    const/16 v5, 0x8

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->tE:Landroid/view/WindowManager$LayoutParams;

    .line 300
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->tE:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 301
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->tE:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 302
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService;->tE:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x64

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 315
    invoke-virtual {p0}, Lcom/picacomic/fregata/services/ChatroomService;->init()V

    .line 316
    invoke-virtual {p0}, Lcom/picacomic/fregata/services/ChatroomService;->bF()V

    .line 317
    invoke-virtual {p0}, Lcom/picacomic/fregata/services/ChatroomService;->bH()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 323
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    const/4 p3, 0x1

    if-eqz p1, :cond_5

    .line 199
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.picacomic.fregata.interfaces.foregroundservice.action.startforeground"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 205
    sget-object p1, Lcom/picacomic/fregata/services/ChatroomService;->TAG:Ljava/lang/String;

    const-string p2, "Received Start Foreground Intent "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/picacomic/fregata/activities/LoginActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "com.picacomic.fregata.interfaces.foregroundservice.action.main"

    .line 207
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const p2, 0x10008000

    .line 208
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 210
    invoke-static {p0, v0, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 213
    new-instance p2, Landroid/content/Intent;

    const-class v1, Lcom/picacomic/fregata/services/ChatroomService;

    invoke-direct {p2, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.picacomic.fregata.interfaces.foregroundservice.action.stopforeground"

    .line 214
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    invoke-static {p0, v0, p2, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 219
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/picacomic/fregata/services/ChatroomService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.picacomic.fregata.interfaces.foregroundservice.action.hideforeground"

    .line 220
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    invoke-static {p0, v0, v1, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 224
    invoke-virtual {p0}, Lcom/picacomic/fregata/services/ChatroomService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080121

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 230
    new-instance v4, Landroid/support/v7/app/NotificationCompat$Builder;

    invoke-direct {v4, p0}, Landroid/support/v7/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0f01f3

    .line 231
    invoke-virtual {p0, v5}, Lcom/picacomic/fregata/services/ChatroomService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v7/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 232
    invoke-virtual {p0, v5}, Lcom/picacomic/fregata/services/ChatroomService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const v5, 0x7f0f00d8

    .line 233
    invoke-virtual {p0, v5}, Lcom/picacomic/fregata/services/ChatroomService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 234
    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/16 v4, 0x80

    .line 236
    invoke-static {v2, v4, v4, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 235
    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 237
    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v0, 0x2

    .line 238
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    const v0, 0x1080069

    .line 240
    invoke-virtual {p0}, Lcom/picacomic/fregata/services/ChatroomService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f014b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-virtual {p1, v0, v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    const v0, 0x108006a

    .line 242
    invoke-virtual {p0}, Lcom/picacomic/fregata/services/ChatroomService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0191

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-virtual {p1, v0, v1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 242
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const/16 p2, 0x10cd

    .line 243
    invoke-virtual {p0, p2, p1}, Lcom/picacomic/fregata/services/ChatroomService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.picacomic.fregata.interfaces.foregroundservice.action.stopforeground"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 247
    sget-object p1, Lcom/picacomic/fregata/services/ChatroomService;->TAG:Ljava/lang/String;

    const-string p2, "Received Stop Foreground Intent"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0}, Lcom/picacomic/fregata/services/ChatroomService;->dP()V

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.picacomic.fregata.interfaces.foregroundservice.action.hideforeground"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 252
    sget-object p1, Lcom/picacomic/fregata/services/ChatroomService;->TAG:Ljava/lang/String;

    const-string p2, "Received Hide Foreground Intent"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService;->tD:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 255
    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService;->tD:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 257
    :cond_3
    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService;->tD:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_0
    return p3

    :cond_5
    :goto_1
    if-nez p1, :cond_6

    const-string p1, "intent"

    goto :goto_2

    :cond_6
    const-string p1, "action"

    .line 201
    :goto_2
    sget-object v0, Lcom/picacomic/fregata/services/ChatroomService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was null, flags="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bits="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p3
.end method
