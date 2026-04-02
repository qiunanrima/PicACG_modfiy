.class Lcom/picacomic/fregata/activities/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/activities/SplashActivity;->w(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/picacomic/fregata/objects/responses/WakaInitResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic iX:I

.field final synthetic iY:Lcom/picacomic/fregata/activities/SplashActivity;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/activities/SplashActivity;I)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/picacomic/fregata/activities/SplashActivity$1;->iY:Lcom/picacomic/fregata/activities/SplashActivity;

    iput p2, p0, Lcom/picacomic/fregata/activities/SplashActivity$1;->iX:I

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
            "Lcom/picacomic/fregata/objects/responses/WakaInitResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 116
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    iget p1, p0, Lcom/picacomic/fregata/activities/SplashActivity$1;->iX:I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    if-gez p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/picacomic/fregata/activities/SplashActivity$1;->iY:Lcom/picacomic/fregata/activities/SplashActivity;

    iget-object p1, p1, Lcom/picacomic/fregata/activities/SplashActivity;->linearLayout_error:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    .line 120
    iget-object p1, p0, Lcom/picacomic/fregata/activities/SplashActivity$1;->iY:Lcom/picacomic/fregata/activities/SplashActivity;

    iget-object p1, p1, Lcom/picacomic/fregata/activities/SplashActivity;->linearLayout_error:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/activities/SplashActivity$1;->iY:Lcom/picacomic/fregata/activities/SplashActivity;

    iget-object v0, v0, Lcom/picacomic/fregata/activities/SplashActivity;->linearLayout_error:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 123
    sput-boolean p2, Lcom/picacomic/fregata/activities/SplashActivity;->iV:Z

    .line 124
    iget-object p2, p0, Lcom/picacomic/fregata/activities/SplashActivity$1;->iY:Lcom/picacomic/fregata/activities/SplashActivity;

    invoke-virtual {p2, p1}, Lcom/picacomic/fregata/activities/SplashActivity;->w(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/WakaInitResponse;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/WakaInitResponse;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    .line 79
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 80
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->getWaka()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADS BASE LINK = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->getWaka()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/picacomic/fregata/MyApplication;->by()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->getWaka()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/picacomic/fregata/utils/e;->y(Landroid/content/Context;Ljava/lang/String;)Z

    .line 85
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->getAdKeyword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 86
    invoke-static {}, Lcom/picacomic/fregata/MyApplication;->by()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->getAdKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;Ljava/lang/String;)Z

    .line 89
    :cond_1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->getAddresses()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->getAddresses()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 90
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->getAddresses()Ljava/util/ArrayList;

    move-result-object v1

    .line 91
    sget-object v2, Lcom/picacomic/fregata/activities/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADDRESS IP = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->getAddresses()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/picacomic/fregata/utils/f;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 93
    invoke-static {}, Lcom/picacomic/fregata/MyApplication;->by()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/picacomic/fregata/utils/e;->a(Landroid/content/Context;Ljava/util/Set;)Z

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/picacomic/fregata/activities/SplashActivity$1;->iY:Lcom/picacomic/fregata/activities/SplashActivity;

    iget-object v1, v1, Lcom/picacomic/fregata/activities/SplashActivity;->linearLayout_options:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 97
    iget-object v1, p0, Lcom/picacomic/fregata/activities/SplashActivity$1;->iY:Lcom/picacomic/fregata/activities/SplashActivity;

    iget-object v1, v1, Lcom/picacomic/fregata/activities/SplashActivity;->linearLayout_options:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 99
    :cond_3
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v0, :cond_6

    iget-object p1, p0, Lcom/picacomic/fregata/activities/SplashActivity$1;->iY:Lcom/picacomic/fregata/activities/SplashActivity;

    if-eqz p1, :cond_6

    .line 100
    iget-object v0, p0, Lcom/picacomic/fregata/activities/SplashActivity$1;->iY:Lcom/picacomic/fregata/activities/SplashActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showAnnouncementAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 103
    :cond_4
    iget p2, p0, Lcom/picacomic/fregata/activities/SplashActivity$1;->iX:I

    sub-int/2addr p2, v0

    if-gez p2, :cond_5

    .line 105
    iget-object p2, p0, Lcom/picacomic/fregata/activities/SplashActivity$1;->iY:Lcom/picacomic/fregata/activities/SplashActivity;

    iget-object p2, p2, Lcom/picacomic/fregata/activities/SplashActivity;->linearLayout_options:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_6

    .line 106
    iget-object p2, p0, Lcom/picacomic/fregata/activities/SplashActivity$1;->iY:Lcom/picacomic/fregata/activities/SplashActivity;

    iget-object p2, p2, Lcom/picacomic/fregata/activities/SplashActivity;->linearLayout_error:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 108
    :cond_5
    iget-object p1, p0, Lcom/picacomic/fregata/activities/SplashActivity$1;->iY:Lcom/picacomic/fregata/activities/SplashActivity;

    iget-object p1, p1, Lcom/picacomic/fregata/activities/SplashActivity;->linearLayout_options:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    .line 109
    iget-object p1, p0, Lcom/picacomic/fregata/activities/SplashActivity$1;->iY:Lcom/picacomic/fregata/activities/SplashActivity;

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/activities/SplashActivity;->w(I)V

    :cond_6
    :goto_0
    return-void
.end method
