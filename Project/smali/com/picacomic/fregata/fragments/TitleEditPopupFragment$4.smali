.class Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$4;
.super Ljava/lang/Object;
.source "TitleEditPopupFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->aj(Ljava/lang/String;)V
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
.field final synthetic rZ:Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$4;->rZ:Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;

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

    .line 265
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 266
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$4;->rZ:Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 267
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    .line 268
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$4;->rZ:Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Update Title Failed"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 269
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$4;->rZ:Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->dismiss()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
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

    .line 230
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_0

    .line 247
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$4;->rZ:Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Update Title Success"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 248
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$4;->rZ:Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->dismiss()V

    goto :goto_1

    .line 252
    :cond_0
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$4;->rZ:Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;

    invoke-virtual {v1}, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v2

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, v2, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 253
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 255
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 257
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$4;->rZ:Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Update Title Failed"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 258
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$4;->rZ:Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->dismiss()V

    :goto_1
    return-void
.end method
