.class public Lcom/picacomic/fregata/fragments/AnonymousChatFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "AnonymousChatFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "AnonymousChatFragment"


# instance fields
.field button_match:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090031
    .end annotation
.end field

.field button_send:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090032
    .end annotation
.end field

.field editText_name:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bc
    .end annotation
.end field

.field editText_typeSpace:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bd
    .end annotation
.end field

.field gson:Lcom/google/gson/Gson;

.field imageButton_leave:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09011c
    .end annotation
.end field

.field jQ:Landroid/support/v7/widget/LinearLayoutManager;

.field public final jU:Ljava/lang/String;

.field public final jV:Ljava/lang/String;

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

.field jY:Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;

.field private jZ:Lio/socket/client/d;

.field ja:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/AnonymousChatDataObject;",
            ">;"
        }
    .end annotation
.end field

.field ka:Ljava/lang/String;

.field kb:Ljava/lang/String;

.field kc:Ljava/lang/String;

.field private kd:Lio/socket/b/a$a;

.field private ke:Lio/socket/b/a$a;

.field private kf:Lio/socket/b/a$a;

.field linearLayout_message:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090181
    .end annotation
.end field

.field linearLayout_name:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090182
    .end annotation
.end field

.field linearLayout_typeSpace:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090183
    .end annotation
.end field

.field recyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901f0
    .end annotation
.end field

.field textView_matcherName:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090248
    .end annotation
.end field

.field textView_message:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090249
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    const-string v0, "action"

    .line 56
    iput-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jU:Ljava/lang/String;

    const-string v0, "response"

    .line 57
    iput-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jV:Ljava/lang/String;

    .line 151
    new-instance v0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$1;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$1;-><init>(Lcom/picacomic/fregata/fragments/AnonymousChatFragment;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->kd:Lio/socket/b/a$a;

    .line 257
    new-instance v0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$3;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$3;-><init>(Lcom/picacomic/fregata/fragments/AnonymousChatFragment;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->ke:Lio/socket/b/a$a;

    .line 277
    new-instance v0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$4;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$4;-><init>(Lcom/picacomic/fregata/fragments/AnonymousChatFragment;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->kf:Lio/socket/b/a$a;

    return-void
.end method


# virtual methods
.method public I(Ljava/lang/String;)V
    .locals 3

    .line 456
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->textView_message:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " joined\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->textView_matcherName:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->linearLayout_typeSpace:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 459
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->linearLayout_message:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 460
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->linearLayout_name:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public J(Ljava/lang/String;)V
    .locals 2

    .line 465
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/e;->v(Landroid/content/Context;Ljava/lang/String;)Z

    .line 466
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/e;->w(Landroid/content/Context;Ljava/lang/String;)Z

    .line 467
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->textView_message:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->linearLayout_typeSpace:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 469
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->linearLayout_message:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 470
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->linearLayout_name:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/picacomic/fregata/objects/AnonymousChatDataObject;)V
    .locals 3

    .line 426
    sget-object v0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FOUND_MATCHER"

    .line 427
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/AnonymousChatDataObject;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->ka:Ljava/lang/String;

    .line 429
    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/AnonymousChatDataObject;->getRoomId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->kb:Ljava/lang/String;

    .line 430
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->kb:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/e;->v(Landroid/content/Context;Ljava/lang/String;)Z

    .line 431
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->ka:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/e;->w(Landroid/content/Context;Ljava/lang/String;)Z

    .line 432
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->ka:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->I(Ljava/lang/String;)V

    .line 433
    sget-object p1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->TAG:Ljava/lang/String;

    const-string p2, "MATCHED"

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/f;->F(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "NO_MATCHER"

    .line 435
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Not Matched"

    .line 436
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->J(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f003c

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;I)V

    .line 438
    sget-object p1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->TAG:Ljava/lang/String;

    const-string p2, "NOT MATCHED"

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/f;->F(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "GOT_MESSAGE"

    .line 441
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 442
    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/AnonymousChatDataObject;->getUserId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/AnonymousChatDataObject;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 448
    :cond_2
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->ja:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 449
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jY:Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 451
    :goto_0
    sget-object p1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->TAG:Ljava/lang/String;

    const-string p2, "GOT MESSAGE"

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/f;->F(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public b(Lorg/json/JSONObject;)Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;
    .locals 8

    .line 298
    new-instance v0, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;

    new-instance v7, Lcom/picacomic/fregata/objects/AnonymousChatDataObject;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/picacomic/fregata/objects/AnonymousChatDataObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v7}, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/AnonymousChatDataObject;)V

    :try_start_0
    const-string v1, "actionType"

    .line 301
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "actionType"

    .line 302
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;->setActionType(Ljava/lang/String;)V

    :cond_0
    const-string v1, "responseType"

    .line 304
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "responseType"

    .line 305
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;->setResponseType(Ljava/lang/String;)V

    :cond_1
    const-string v1, "data"

    .line 308
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "data"

    .line 309
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v1, "id"

    .line 311
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;->getData()Lcom/picacomic/fregata/objects/AnonymousChatDataObject;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/picacomic/fregata/objects/AnonymousChatDataObject;->setId(Ljava/lang/String;)V

    :cond_2
    const-string v1, "userId"

    .line 314
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 315
    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;->getData()Lcom/picacomic/fregata/objects/AnonymousChatDataObject;

    move-result-object v1

    const-string v2, "userId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/picacomic/fregata/objects/AnonymousChatDataObject;->setUserId(Ljava/lang/String;)V

    :cond_3
    const-string v1, "name"

    .line 317
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 318
    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;->getData()Lcom/picacomic/fregata/objects/AnonymousChatDataObject;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/picacomic/fregata/objects/AnonymousChatDataObject;->setName(Ljava/lang/String;)V

    :cond_4
    const-string v1, "message"

    .line 320
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 321
    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;->getData()Lcom/picacomic/fregata/objects/AnonymousChatDataObject;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/picacomic/fregata/objects/AnonymousChatDataObject;->setMessage(Ljava/lang/String;)V

    :cond_5
    const-string v1, "roomId"

    .line 323
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 324
    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;->getData()Lcom/picacomic/fregata/objects/AnonymousChatDataObject;

    move-result-object v1

    const-string v2, "roomId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/picacomic/fregata/objects/AnonymousChatDataObject;->setRoomId(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 331
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_6
    :goto_0
    return-object v0
.end method

.method public bH()V
    .locals 2

    .line 241
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 243
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->kb:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->ah(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->ka:Ljava/lang/String;

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->ka:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->I(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Welcome"

    .line 247
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->J(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bI()V
    .locals 0

    .line 254
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    return-void
.end method

.method public ca()V
    .locals 4

    .line 200
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 202
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->button_match:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->button_send:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->imageButton_leave:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    .line 207
    new-instance v0, Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->kc:Ljava/lang/String;

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->ja:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jY:Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;

    .line 208
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 209
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jY:Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public cc()V
    .locals 11

    .line 355
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 361
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->editText_name:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->editText_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 366
    :goto_0
    new-instance v7, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;

    const-string v8, "MATCHING"

    const/4 v9, 0x0

    new-instance v10, Lcom/picacomic/fregata/objects/AnonymousChatDataObject;

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v6}, Lcom/picacomic/fregata/objects/AnonymousChatDataObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v8, v9, v10}, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/AnonymousChatDataObject;)V

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->gson:Lcom/google/gson/Gson;

    const-class v1, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;

    invoke-virtual {v0, v7, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 369
    sget-object v1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/picacomic/fregata/utils/f;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jZ:Lio/socket/client/d;

    if-nez v1, :cond_1

    .line 371
    sget-object v0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->TAG:Ljava/lang/String;

    const-string v1, "SOCKET NULL"

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->F(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 373
    :cond_1
    sget-object v1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NEW MATCH: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/picacomic/fregata/utils/f;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jZ:Lio/socket/client/d;

    const-string v2, "action"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lio/socket/client/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 378
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :cond_2
    return-void
.end method

.method public cd()V
    .locals 2

    .line 476
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->C(Ljava/lang/String;)V

    const-string v0, "Show Progress"

    .line 477
    invoke-static {v0}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 479
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 481
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/picacomic/fregata/b/a;->am(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jX:Lretrofit2/Call;

    .line 483
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jX:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$5;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$5;-><init>(Lcom/picacomic/fregata/fragments/AnonymousChatFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public init()V
    .locals 3

    .line 177
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    .line 179
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->gson:Lcom/google/gson/Gson;

    .line 181
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 182
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->kc:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->gson:Lcom/google/gson/Gson;

    const-class v2, Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/UserProfileObject;

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    .line 185
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->kc:Ljava/lang/String;

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->cd()V

    .line 190
    :goto_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->ag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->kb:Ljava/lang/String;

    .line 191
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->ah(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->ka:Ljava/lang/String;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->ja:Ljava/util/ArrayList;

    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 385
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 391
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->editText_name:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->editText_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 396
    :goto_0
    new-instance v7, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;

    const-string v8, "SEND_MESSAGE"

    const/4 v9, 0x0

    new-instance v10, Lcom/picacomic/fregata/objects/AnonymousChatDataObject;

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v10

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/picacomic/fregata/objects/AnonymousChatDataObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v8, v9, v10}, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/AnonymousChatDataObject;)V

    .line 397
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->gson:Lcom/google/gson/Gson;

    const-class p2, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;

    invoke-virtual {p1, v7, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    .line 398
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jZ:Lio/socket/client/d;

    const-string v0, "action"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1}, Lio/socket/client/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    .line 401
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->ja:Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;->getData()Lcom/picacomic/fregata/objects/AnonymousChatDataObject;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 402
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jY:Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 403
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->editText_typeSpace:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 215
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->button_send:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->editText_typeSpace:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->editText_typeSpace:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->editText_typeSpace:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->editText_typeSpace:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->kb:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->button_match:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->cc()V

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->imageButton_leave:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_2

    .line 228
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800e3

    const v3, 0x7f0f0092

    const v4, 0x7f0f0091

    new-instance v5, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$2;

    invoke-direct {v5, p0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$2;-><init>(Lcom/picacomic/fregata/fragments/AnonymousChatFragment;)V

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;IIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 129
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    new-instance p1, Lio/socket/client/b$a;

    invoke-direct {p1}, Lio/socket/client/b$a;-><init>()V

    const/4 v0, 0x1

    .line 133
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "websocket"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p1, Lio/socket/client/b$a;->yT:[Ljava/lang/String;

    :try_start_0
    const-string v0, "https://secret-chat.wakamoment.gq"

    .line 136
    invoke-static {v0, p1}, Lio/socket/client/b;->a(Ljava/lang/String;Lio/socket/client/b$a;)Lio/socket/client/d;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jZ:Lio/socket/client/d;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 138
    invoke-virtual {p1}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 142
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jZ:Lio/socket/client/d;

    const-string v0, "action"

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->ke:Lio/socket/b/a$a;

    invoke-virtual {p1, v0, v1}, Lio/socket/client/d;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 143
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jZ:Lio/socket/client/d;

    const-string v0, "response"

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->kf:Lio/socket/b/a$a;

    invoke-virtual {p1, v0, v1}, Lio/socket/client/d;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 144
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jZ:Lio/socket/client/d;

    const-string v0, "connect"

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->kd:Lio/socket/b/a$a;

    invoke-virtual {p1, v0, v1}, Lio/socket/client/d;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 145
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jZ:Lio/socket/client/d;

    invoke-virtual {p1}, Lio/socket/client/d;->eJ()Lio/socket/client/d;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0042

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 171
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 528
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onDetach()V

    const/4 v0, 0x1

    .line 530
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->s(Z)V

    return-void
.end method

.method public s(Z)V
    .locals 10

    .line 409
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 414
    new-instance v0, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;

    const-string v7, "LEAVE_MATCHING"

    const/4 v8, 0x0

    new-instance v9, Lcom/picacomic/fregata/objects/AnonymousChatDataObject;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v6}, Lcom/picacomic/fregata/objects/AnonymousChatDataObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7, v8, v9}, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/AnonymousChatDataObject;)V

    .line 415
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->gson:Lcom/google/gson/Gson;

    const-class v2, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 416
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jZ:Lio/socket/client/d;

    const-string v2, "action"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lio/socket/client/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    if-eqz p1, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "LEAVE"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 419
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jZ:Lio/socket/client/d;

    invoke-virtual {p1}, Lio/socket/client/d;->eO()Lio/socket/client/d;

    .line 420
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jZ:Lio/socket/client/d;

    const-string v0, "action"

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->ke:Lio/socket/b/a$a;

    invoke-virtual {p1, v0, v1}, Lio/socket/client/d;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    :cond_0
    return-void

    :cond_1
    return-void
.end method
