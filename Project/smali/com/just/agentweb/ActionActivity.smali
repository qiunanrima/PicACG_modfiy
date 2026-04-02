.class public final Lcom/just/agentweb/ActionActivity;
.super Landroid/app/Activity;
.source "ActionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/just/agentweb/ActionActivity$a;,
        Lcom/just/agentweb/ActionActivity$b;,
        Lcom/just/agentweb/ActionActivity$c;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionActivity"

.field private static cs:Lcom/just/agentweb/ActionActivity$c;

.field private static ct:Lcom/just/agentweb/ActionActivity$b;

.field private static cu:Lcom/just/agentweb/ActionActivity$a;


# instance fields
.field private cv:Lcom/just/agentweb/Action;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(ILandroid/content/Intent;)V
    .locals 2

    .line 133
    sget-object v0, Lcom/just/agentweb/ActionActivity;->cu:Lcom/just/agentweb/ActionActivity$a;

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lcom/just/agentweb/ActionActivity;->cu:Lcom/just/agentweb/ActionActivity$a;

    const/16 v1, 0x254

    invoke-interface {v0, v1, p1, p2}, Lcom/just/agentweb/ActionActivity$a;->a(IILandroid/content/Intent;)V

    const/4 p1, 0x0

    .line 135
    sput-object p1, Lcom/just/agentweb/ActionActivity;->cu:Lcom/just/agentweb/ActionActivity$a;

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/just/agentweb/ActionActivity;->finish()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/just/agentweb/Action;)V
    .locals 2

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/just/agentweb/ActionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "KEY_ACTION"

    .line 55
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Lcom/just/agentweb/Action;)V
    .locals 0

    .line 101
    sget-object p1, Lcom/just/agentweb/ActionActivity;->cu:Lcom/just/agentweb/ActionActivity$a;

    if-nez p1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/just/agentweb/ActionActivity;->finish()V

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/just/agentweb/ActionActivity;->u()V

    return-void
.end method

.method public static a(Lcom/just/agentweb/ActionActivity$b;)V
    .locals 0

    .line 66
    sput-object p0, Lcom/just/agentweb/ActionActivity;->ct:Lcom/just/agentweb/ActionActivity$b;

    return-void
.end method

.method private b(Lcom/just/agentweb/Action;)V
    .locals 3

    .line 152
    invoke-virtual {p1}, Lcom/just/agentweb/Action;->r()Ljava/util/ArrayList;

    move-result-object p1

    .line 153
    invoke-static {p1}, Lcom/just/agentweb/h;->a(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 154
    sput-object v1, Lcom/just/agentweb/ActionActivity;->ct:Lcom/just/agentweb/ActionActivity$b;

    .line 155
    sput-object v1, Lcom/just/agentweb/ActionActivity;->cs:Lcom/just/agentweb/ActionActivity$c;

    .line 156
    invoke-virtual {p0}, Lcom/just/agentweb/ActionActivity;->finish()V

    return-void

    .line 160
    :cond_0
    sget-object v0, Lcom/just/agentweb/ActionActivity;->cs:Lcom/just/agentweb/ActionActivity$c;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 162
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    invoke-virtual {p0, v0}, Lcom/just/agentweb/ActionActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    :cond_2
    sget-object p1, Lcom/just/agentweb/ActionActivity;->cs:Lcom/just/agentweb/ActionActivity$c;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1, v2, v0}, Lcom/just/agentweb/ActionActivity$c;->a(ZLandroid/os/Bundle;)V

    .line 169
    sput-object v1, Lcom/just/agentweb/ActionActivity;->cs:Lcom/just/agentweb/ActionActivity$c;

    .line 170
    invoke-virtual {p0}, Lcom/just/agentweb/ActionActivity;->finish()V

    return-void

    .line 174
    :cond_3
    sget-object v0, Lcom/just/agentweb/ActionActivity;->ct:Lcom/just/agentweb/ActionActivity$b;

    if-eqz v0, :cond_4

    .line 175
    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/just/agentweb/ActionActivity;->requestPermissions([Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method private t()V
    .locals 1

    const/4 v0, 0x0

    .line 70
    sput-object v0, Lcom/just/agentweb/ActionActivity;->cu:Lcom/just/agentweb/ActionActivity$a;

    .line 71
    sput-object v0, Lcom/just/agentweb/ActionActivity;->ct:Lcom/just/agentweb/ActionActivity$b;

    .line 72
    sput-object v0, Lcom/just/agentweb/ActionActivity;->cs:Lcom/just/agentweb/ActionActivity$c;

    return-void
.end method

.method private u()V
    .locals 3

    .line 111
    :try_start_0
    sget-object v0, Lcom/just/agentweb/ActionActivity;->cu:Lcom/just/agentweb/ActionActivity$a;

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/just/agentweb/ActionActivity;->finish()V

    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/just/agentweb/ActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_FILE_CHOOSER_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 118
    invoke-direct {p0}, Lcom/just/agentweb/ActionActivity;->t()V

    return-void

    :cond_1
    const/16 v1, 0x254

    .line 121
    invoke-virtual {p0, v0, v1}, Lcom/just/agentweb/ActionActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 123
    sget-object v1, Lcom/just/agentweb/ActionActivity;->TAG:Ljava/lang/String;

    const-string v2, "\u627e\u4e0d\u5230\u6587\u4ef6\u9009\u62e9\u5668"

    invoke-static {v1, v2}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 124
    invoke-direct {p0, v1, v2}, Lcom/just/agentweb/ActionActivity;->a(ILandroid/content/Intent;)V

    .line 125
    invoke-static {}, Lcom/just/agentweb/ag;->ap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private v()V
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x254

    const/4 v2, 0x0

    .line 185
    :try_start_0
    sget-object v3, Lcom/just/agentweb/ActionActivity;->cu:Lcom/just/agentweb/ActionActivity$a;

    if-nez v3, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/just/agentweb/ActionActivity;->finish()V

    .line 188
    :cond_0
    invoke-static {p0}, Lcom/just/agentweb/h;->i(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    .line 190
    sget-object v4, Lcom/just/agentweb/ActionActivity;->cu:Lcom/just/agentweb/ActionActivity$a;

    invoke-interface {v4, v1, v0, v2}, Lcom/just/agentweb/ActionActivity$a;->a(IILandroid/content/Intent;)V

    .line 191
    sput-object v2, Lcom/just/agentweb/ActionActivity;->cu:Lcom/just/agentweb/ActionActivity$a;

    .line 192
    invoke-virtual {p0}, Lcom/just/agentweb/ActionActivity;->finish()V

    .line 194
    :cond_1
    invoke-static {p0, v3}, Lcom/just/agentweb/h;->d(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "output"

    .line 196
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/just/agentweb/ActionActivity;->mUri:Landroid/net/Uri;

    .line 197
    invoke-virtual {p0, v3, v1}, Lcom/just/agentweb/ActionActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 199
    sget-object v4, Lcom/just/agentweb/ActionActivity;->TAG:Ljava/lang/String;

    const-string v5, "\u627e\u4e0d\u5230\u7cfb\u7edf\u76f8\u673a"

    invoke-static {v4, v5}, Lcom/just/agentweb/ag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget-object v4, Lcom/just/agentweb/ActionActivity;->cu:Lcom/just/agentweb/ActionActivity$a;

    if-eqz v4, :cond_2

    .line 201
    sget-object v4, Lcom/just/agentweb/ActionActivity;->cu:Lcom/just/agentweb/ActionActivity$a;

    invoke-interface {v4, v1, v0, v2}, Lcom/just/agentweb/ActionActivity$a;->a(IILandroid/content/Intent;)V

    .line 203
    :cond_2
    sput-object v2, Lcom/just/agentweb/ActionActivity;->cu:Lcom/just/agentweb/ActionActivity$a;

    .line 204
    invoke-static {}, Lcom/just/agentweb/ag;->ap()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x254

    if-ne p1, v0, :cond_1

    .line 145
    iget-object p1, p0, Lcom/just/agentweb/ActionActivity;->mUri:Landroid/net/Uri;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p3, "KEY_URI"

    iget-object v0, p0, Lcom/just/agentweb/ActionActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p3

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/just/agentweb/ActionActivity;->a(ILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 79
    sget-object v0, Lcom/just/agentweb/ActionActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savedInstanceState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/just/agentweb/ActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "KEY_ACTION"

    .line 83
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/just/agentweb/Action;

    iput-object p1, p0, Lcom/just/agentweb/ActionActivity;->cv:Lcom/just/agentweb/Action;

    .line 84
    iget-object p1, p0, Lcom/just/agentweb/ActionActivity;->cv:Lcom/just/agentweb/Action;

    if-nez p1, :cond_1

    .line 85
    invoke-direct {p0}, Lcom/just/agentweb/ActionActivity;->t()V

    .line 86
    invoke-virtual {p0}, Lcom/just/agentweb/ActionActivity;->finish()V

    return-void

    .line 89
    :cond_1
    iget-object p1, p0, Lcom/just/agentweb/ActionActivity;->cv:Lcom/just/agentweb/Action;

    invoke-virtual {p1}, Lcom/just/agentweb/Action;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 90
    iget-object p1, p0, Lcom/just/agentweb/ActionActivity;->cv:Lcom/just/agentweb/Action;

    invoke-direct {p0, p1}, Lcom/just/agentweb/ActionActivity;->b(Lcom/just/agentweb/Action;)V

    goto :goto_0

    .line 91
    :cond_2
    iget-object p1, p0, Lcom/just/agentweb/ActionActivity;->cv:Lcom/just/agentweb/Action;

    invoke-virtual {p1}, Lcom/just/agentweb/Action;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 92
    invoke-direct {p0}, Lcom/just/agentweb/ActionActivity;->v()V

    goto :goto_0

    .line 94
    :cond_3
    iget-object p1, p0, Lcom/just/agentweb/ActionActivity;->cv:Lcom/just/agentweb/Action;

    invoke-direct {p0, p1}, Lcom/just/agentweb/ActionActivity;->a(Lcom/just/agentweb/Action;)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 238
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 215
    sget-object p1, Lcom/just/agentweb/ActionActivity;->ct:Lcom/just/agentweb/ActionActivity$b;

    if-eqz p1, :cond_0

    .line 216
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "KEY_FROM_INTENTION"

    .line 217
    iget-object v1, p0, Lcom/just/agentweb/ActionActivity;->cv:Lcom/just/agentweb/Action;

    invoke-virtual {v1}, Lcom/just/agentweb/Action;->s()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    sget-object v0, Lcom/just/agentweb/ActionActivity;->ct:Lcom/just/agentweb/ActionActivity$b;

    invoke-interface {v0, p2, p3, p1}, Lcom/just/agentweb/ActionActivity$b;->a([Ljava/lang/String;[ILandroid/os/Bundle;)V

    :cond_0
    const/4 p1, 0x0

    .line 220
    sput-object p1, Lcom/just/agentweb/ActionActivity;->ct:Lcom/just/agentweb/ActionActivity$b;

    .line 221
    invoke-virtual {p0}, Lcom/just/agentweb/ActionActivity;->finish()V

    return-void
.end method
