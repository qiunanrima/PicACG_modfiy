.class Lcom/picacomic/fregata/fragments/ChangePasswordFragment$5;
.super Ljava/lang/Object;
.source "ChangePasswordFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->L(Ljava/lang/String;)V
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
.field final synthetic kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

.field final synthetic kO:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChangePasswordFragment;Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$5;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$5;->kO:Ljava/lang/String;

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
            "Lcom/picacomic/fregata/objects/responses/RegisterResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 215
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 217
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$5;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 218
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    .line 219
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$5;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->bI()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
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

    .line 194
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 195
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$5;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$5;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 196
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$5;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f0f00b2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 197
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$5;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$5;->kO:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/e;->f(Landroid/content/Context;Ljava/lang/String;)Z

    .line 198
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$5;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 203
    :cond_0
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$5;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 206
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$5;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->bI()V

    return-void
.end method
