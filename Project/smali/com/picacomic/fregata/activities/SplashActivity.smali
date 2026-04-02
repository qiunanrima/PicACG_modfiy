.class public Lcom/picacomic/fregata/activities/SplashActivity;
.super Lcom/picacomic/fregata/activities/BaseActivity;
.source "SplashActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "SplashActivity"

.field public static iV:Z = false


# instance fields
.field button_error:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09008a
    .end annotation
.end field

.field button_server1:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09008b
    .end annotation
.end field

.field button_server2:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09008c
    .end annotation
.end field

.field button_server3:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09008d
    .end annotation
.end field

.field iW:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/WakaInitResponse;",
            ">;"
        }
    .end annotation
.end field

.field linearLayout_error:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901bb
    .end annotation
.end field

.field linearLayout_options:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901bc
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/picacomic/fregata/activities/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public bZ()V
    .locals 2

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/picacomic/fregata/activities/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/activities/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 138
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/SplashActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 144
    iget-object v0, p0, Lcom/picacomic/fregata/activities/SplashActivity;->button_server1:Landroid/widget/Button;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 145
    invoke-static {p0, v1}, Lcom/picacomic/fregata/utils/e;->p(Landroid/content/Context;Z)Z

    .line 146
    invoke-static {p0, v2}, Lcom/picacomic/fregata/utils/e;->i(Landroid/content/Context;I)Z

    .line 147
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/SplashActivity;->bZ()V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/activities/SplashActivity;->button_server2:Landroid/widget/Button;

    const v3, 0x7f0f01a3

    if-ne p1, v0, :cond_1

    .line 150
    invoke-static {p0, v2}, Lcom/picacomic/fregata/utils/e;->p(Landroid/content/Context;Z)Z

    const/4 v0, 0x2

    .line 151
    invoke-static {p0, v0}, Lcom/picacomic/fregata/utils/e;->i(Landroid/content/Context;I)Z

    .line 153
    :try_start_0
    invoke-static {}, Lcom/picacomic/fregata/MyApplication;->bw()V

    .line 154
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/SplashActivity;->bZ()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    invoke-static {}, Lcom/picacomic/fregata/MyApplication;->by()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 158
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/SplashActivity;->finishAffinity()V

    .line 159
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/SplashActivity;->finish()V

    .line 160
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 163
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/picacomic/fregata/activities/SplashActivity;->button_server3:Landroid/widget/Button;

    const/4 v4, 0x3

    if-ne p1, v0, :cond_2

    .line 164
    invoke-static {p0, v2}, Lcom/picacomic/fregata/utils/e;->p(Landroid/content/Context;Z)Z

    .line 165
    invoke-static {p0, v4}, Lcom/picacomic/fregata/utils/e;->i(Landroid/content/Context;I)Z

    .line 168
    :try_start_1
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/SplashActivity;->bZ()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    invoke-static {}, Lcom/picacomic/fregata/MyApplication;->by()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 172
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/SplashActivity;->finishAffinity()V

    .line 173
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/SplashActivity;->finish()V

    .line 174
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 177
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/picacomic/fregata/activities/SplashActivity;->button_error:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 178
    iget-object p1, p0, Lcom/picacomic/fregata/activities/SplashActivity;->linearLayout_error:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    .line 179
    iget-object p1, p0, Lcom/picacomic/fregata/activities/SplashActivity;->linearLayout_error:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    invoke-virtual {p0, v4}, Lcom/picacomic/fregata/activities/SplashActivity;->w(I)V

    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/picacomic/fregata/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0021

    .line 58
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/activities/SplashActivity;->setContentView(I)V

    .line 59
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    const/4 p1, 0x3

    .line 60
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/activities/SplashActivity;->w(I)V

    .line 62
    iget-object p1, p0, Lcom/picacomic/fregata/activities/SplashActivity;->button_server1:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object p1, p0, Lcom/picacomic/fregata/activities/SplashActivity;->button_server2:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object p1, p0, Lcom/picacomic/fregata/activities/SplashActivity;->button_server3:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object p1, p0, Lcom/picacomic/fregata/activities/SplashActivity;->button_error:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-static {p0}, Lcom/picacomic/fregata/utils/e;->am(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/picacomic/fregata/utils/e;->am(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/picacomic/fregata/utils/e;->ao(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/picacomic/fregata/activities/SplashActivity;->linearLayout_options:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public w(I)V
    .locals 2

    .line 74
    new-instance v0, Lcom/picacomic/fregata/b/e;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/b/e;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/e;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/picacomic/fregata/b/a;->dM()Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/activities/SplashActivity;->iW:Lretrofit2/Call;

    .line 76
    iget-object v0, p0, Lcom/picacomic/fregata/activities/SplashActivity;->iW:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/activities/SplashActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/picacomic/fregata/activities/SplashActivity$1;-><init>(Lcom/picacomic/fregata/activities/SplashActivity;I)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
