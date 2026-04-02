.class Lcom/picacomic/fregata/fragments/ChatroomFragment$43;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/picacomic/fregata/objects/responses/RegisterResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

.field final synthetic mo:Ljava/lang/String;

.field final synthetic mp:Ljava/lang/String;

.field final synthetic mq:Ljava/lang/String;

.field final synthetic mr:Ljava/lang/String;

.field final synthetic ms:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2506
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$43;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$43;->mo:Ljava/lang/String;

    iput-object p3, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$43;->mp:Ljava/lang/String;

    iput-object p4, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$43;->mq:Ljava/lang/String;

    iput-object p5, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$43;->mr:Ljava/lang/String;

    iput-object p6, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$43;->ms:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/RegisterResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 2528
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2529
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$43;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 2530
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    .line 2531
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$43;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Update Title Failed"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/RegisterResponse;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/RegisterResponse;",
            ">;)V"
        }
    .end annotation

    .line 2509
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_0

    .line 2511
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$43;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Update Title Success"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 2512
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$43;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    new-instance p2, Lcom/picacomic/fregata/objects/chatroomObjects/ChangeTitleAction;

    const-string v1, "set_title"

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$43;->mo:Ljava/lang/String;

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$43;->mp:Ljava/lang/String;

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$43;->mq:Ljava/lang/String;

    iget-object v5, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$43;->mr:Ljava/lang/String;

    iget-object v6, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$43;->ms:Ljava/lang/String;

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/picacomic/fregata/objects/chatroomObjects/ChangeTitleAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/picacomic/fregata/objects/chatroomObjects/ChangeTitleAction;

    invoke-static {p1, p2, v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->a(Lcom/picacomic/fregata/fragments/ChatroomFragment;Lcom/picacomic/fregata/objects/chatroomObjects/ChatroomSystemAction;Ljava/lang/reflect/Type;)V

    goto :goto_1

    .line 2516
    :cond_0
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$43;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {v1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v2

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, v2, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 2517
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2519
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2521
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$43;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Update Title Failed"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
