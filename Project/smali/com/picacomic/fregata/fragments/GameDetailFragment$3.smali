.class Lcom/picacomic/fregata/fragments/GameDetailFragment$3;
.super Ljava/lang/Object;
.source "GameDetailFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/GameDetailFragment;->dh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
        "Lcom/picacomic/fregata/objects/responses/ActionResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/GameDetailFragment;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$3;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/ActionResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 598
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 599
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$3;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->bC()V

    .line 600
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$3;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 601
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/ActionResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/ActionResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 561
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 562
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/ActionResponse;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/ActionResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/ActionResponse;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 572
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$3;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->a(Lcom/picacomic/fregata/fragments/GameDetailFragment;)Lcom/picacomic/fregata/objects/GameDetailObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 573
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/ActionResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/ActionResponse;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "like"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 574
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$3;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    iput-boolean v0, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->isLiked:Z

    .line 575
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$3;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->z(Z)V

    .line 576
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$3;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_likeCount:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$3;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-static {v1}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->a(Lcom/picacomic/fregata/fragments/GameDetailFragment;)Lcom/picacomic/fregata/objects/GameDetailObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/GameDetailObject;->getLikesCount()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 577
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/ActionResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/ActionResponse;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "unlike"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 578
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$3;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->isLiked:Z

    .line 579
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$3;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->z(Z)V

    .line 580
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$3;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_likeCount:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$3;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-static {v1}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->a(Lcom/picacomic/fregata/fragments/GameDetailFragment;)Lcom/picacomic/fregata/objects/GameDetailObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/GameDetailObject;->getLikesCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 587
    :cond_1
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$3;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 588
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 590
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 593
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$3;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->bC()V

    return-void
.end method
