.class Lcom/picacomic/fregata/fragments/ComicDetailFragment$14;
.super Ljava/lang/Object;
.source "ComicDetailFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ComicDetailFragment;->cL()V
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
.field final synthetic nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)V
    .locals 0

    .line 1054
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$14;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

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

    .line 1096
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1097
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$14;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->bC()V

    .line 1098
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$14;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 1099
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

    .line 1057
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_3

    .line 1058
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/ActionResponse;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/ActionResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/ActionResponse;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1062
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

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1063
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$14;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iput-boolean v1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->isLiked:Z

    .line 1064
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$14;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {p1, v1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->z(Z)V

    .line 1065
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$14;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f0f006d

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1066
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$14;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-boolean p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nl:Z

    if-eqz p1, :cond_0

    .line 1067
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$14;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_likeCount:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$14;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-static {v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)Lcom/picacomic/fregata/objects/ComicDetailObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getLikesCount()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1069
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$14;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_likeCount:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$14;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-static {v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)Lcom/picacomic/fregata/objects/ComicDetailObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getLikesCount()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1070
    :cond_1
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

    if-eqz p1, :cond_4

    .line 1071
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$14;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iput-boolean v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->isLiked:Z

    .line 1072
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$14;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->z(Z)V

    .line 1073
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$14;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f0f006c

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1074
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$14;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-boolean p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nl:Z

    if-eqz p1, :cond_2

    .line 1075
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$14;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_likeCount:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$14;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-static {v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)Lcom/picacomic/fregata/objects/ComicDetailObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getLikesCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1077
    :cond_2
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$14;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->textView_likeCount:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$14;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-static {v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)Lcom/picacomic/fregata/objects/ComicDetailObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getLikesCount()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1085
    :cond_3
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$14;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1086
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1088
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1091
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$14;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->bC()V

    return-void
.end method
