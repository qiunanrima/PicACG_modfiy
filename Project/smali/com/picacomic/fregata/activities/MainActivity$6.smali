.class Lcom/picacomic/fregata/activities/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/activities/MainActivity;->bX()V
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
        "Lcom/picacomic/fregata/objects/responses/InitialResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic iO:Lcom/picacomic/fregata/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/activities/MainActivity;)V
    .locals 0

    .line 677
    iput-object p1, p0, Lcom/picacomic/fregata/activities/MainActivity$6;->iO:Lcom/picacomic/fregata/activities/MainActivity;

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
            "Lcom/picacomic/fregata/objects/responses/InitialResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 705
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 707
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/activities/MainActivity$6;->iO:Lcom/picacomic/fregata/activities/MainActivity;

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 708
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    .line 709
    iget-object p1, p0, Lcom/picacomic/fregata/activities/MainActivity$6;->iO:Lcom/picacomic/fregata/activities/MainActivity;

    invoke-virtual {p1}, Lcom/picacomic/fregata/activities/MainActivity;->bI()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/InitialResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/InitialResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 682
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 683
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/InitialResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/InitialResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 684
    iget-object p1, p0, Lcom/picacomic/fregata/activities/MainActivity$6;->iO:Lcom/picacomic/fregata/activities/MainActivity;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v0, v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/picacomic/fregata/objects/responses/InitialResponse;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/MainActivity;->iH:Lcom/picacomic/fregata/objects/responses/InitialResponse;

    .line 685
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/InitialResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/InitialResponse;->imageServer:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 686
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 687
    sget-object p2, Lcom/picacomic/fregata/activities/BaseActivity;->TAG:Ljava/lang/String;

    const-string v0, "SET Image Storage"

    invoke-static {p2, v0}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    iget-object p2, p0, Lcom/picacomic/fregata/activities/MainActivity$6;->iO:Lcom/picacomic/fregata/activities/MainActivity;

    invoke-static {p2, p1}, Lcom/picacomic/fregata/utils/e;->q(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 693
    :cond_0
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity$6;->iO:Lcom/picacomic/fregata/activities/MainActivity;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 694
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 696
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 700
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/activities/MainActivity$6;->iO:Lcom/picacomic/fregata/activities/MainActivity;

    invoke-virtual {p1}, Lcom/picacomic/fregata/activities/MainActivity;->bI()V

    return-void
.end method
