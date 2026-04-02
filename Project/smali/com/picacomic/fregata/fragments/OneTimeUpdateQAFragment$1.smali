.class Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment$1;
.super Ljava/lang/Object;
.source "OneTimeUpdateQAFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/picacomic/fregata/objects/responses/GeneralResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic qs:Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment$1;->qs:Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;

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
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 164
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 165
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment$1;->qs:Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->bC()V

    .line 166
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment$1;->qs:Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 167
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    .line 168
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment$1;->qs:Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->bI()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse;",
            ">;)V"
        }
    .end annotation

    .line 130
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 143
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment$1;->qs:Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const p2, 0x7f010024

    const v0, 0x7f010025

    const v1, 0x7f010026

    const v2, 0x7f010027

    .line 144
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const p2, 0x7f0900ab

    new-instance v0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;

    invoke-direct {v0}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;-><init>()V

    sget-object v1, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->TAG:Ljava/lang/String;

    .line 145
    invoke-virtual {p1, p2, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object p2, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->TAG:Ljava/lang/String;

    .line 146
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 152
    :cond_0
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment$1;->qs:Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 155
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment$1;->qs:Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->bC()V

    .line 159
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment$1;->qs:Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->bI()V

    return-void
.end method
