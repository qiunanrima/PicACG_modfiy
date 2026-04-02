.class public Lcom/just/agentweb/download/e;
.super Ljava/lang/Object;
.source "DownloadNotifier.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "e"


# instance fields
.field fL:I

.field private fM:I

.field private volatile fN:Z

.field private fO:Landroid/support/v4/app/NotificationCompat$Action;

.field private fp:Ljava/lang/String;

.field private mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private mChannelId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFile:Ljava/io/File;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/just/agentweb/download/e;->fL:I

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/just/agentweb/download/e;->mChannelId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/just/agentweb/download/e;->fN:Z

    .line 62
    iput p2, p0, Lcom/just/agentweb/download/e;->fM:I

    .line 63
    iput-object p1, p0, Lcom/just/agentweb/download/e;->mContext:Landroid/content/Context;

    .line 65
    iget-object p2, p0, Lcom/just/agentweb/download/e;->mContext:Landroid/content/Context;

    const-string v0, "notification"

    .line 66
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/just/agentweb/download/e;->mNotificationManager:Landroid/app/NotificationManager;

    .line 69
    :try_start_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p2, v0, :cond_0

    .line 70
    new-instance p2, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/just/agentweb/download/e;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/just/agentweb/download/e;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " agentweb/4.0.2 "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/just/agentweb/download/e;->mChannelId:Ljava/lang/String;

    invoke-direct {p2, v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/just/agentweb/download/e;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 72
    new-instance p2, Landroid/app/NotificationChannel;

    iget-object v0, p0, Lcom/just/agentweb/download/e;->mChannelId:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lcom/just/agentweb/h;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-direct {p2, v0, p1, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 75
    iget-object p1, p0, Lcom/just/agentweb/download/e;->mContext:Landroid/content/Context;

    const-string v0, "notification"

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 77
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_0

    .line 79
    :cond_0
    new-instance p1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object p2, p0, Lcom/just/agentweb/download/e;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/just/agentweb/download/e;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 82
    invoke-static {}, Lcom/just/agentweb/ag;->ap()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    :cond_1
    throw p1
.end method

.method private a(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/just/agentweb/download/NotificationCancelReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.agentweb.cancelled"

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TAG"

    .line 122
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    shl-int/lit8 p2, p2, 0x3

    const/high16 p3, 0x8000000

    .line 123
    invoke-static {p1, p2, v0, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 124
    sget-object p3, Lcom/just/agentweb/download/e;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id<<3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private a(IIZ)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/just/agentweb/download/e;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 130
    invoke-direct {p0}, Lcom/just/agentweb/download/e;->aQ()V

    return-void
.end method

.method private a(Landroid/app/PendingIntent;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/just/agentweb/download/e;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method private aP()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/just/agentweb/download/e;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private aQ()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/just/agentweb/download/e;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/download/e;->mNotification:Landroid/app/Notification;

    .line 150
    iget-object v0, p0, Lcom/just/agentweb/download/e;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/just/agentweb/download/e;->fM:I

    iget-object v2, p0, Lcom/just/agentweb/download/e;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method a(Lcom/just/agentweb/download/DownloadTask;)V
    .locals 6

    .line 92
    invoke-virtual {p1}, Lcom/just/agentweb/download/DownloadTask;->aV()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/just/agentweb/download/e;->mContext:Landroid/content/Context;

    sget v1, Lcom/just/agentweb/download/j$b;->agentweb_file_download:I

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/just/agentweb/download/DownloadTask;->aV()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/just/agentweb/download/e;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/just/agentweb/download/e;->mContext:Landroid/content/Context;

    const/16 v3, 0xc8

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x8000000

    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 101
    iget-object v1, p0, Lcom/just/agentweb/download/e;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Lcom/just/agentweb/download/DownloadTask;->aW()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 103
    iget-object v1, p0, Lcom/just/agentweb/download/e;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/just/agentweb/download/e;->mContext:Landroid/content/Context;

    sget v3, Lcom/just/agentweb/download/j$b;->agentweb_trickter:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 105
    iget-object v1, p0, Lcom/just/agentweb/download/e;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 107
    iget-object v0, p0, Lcom/just/agentweb/download/e;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/just/agentweb/download/e;->mContext:Landroid/content/Context;

    sget v2, Lcom/just/agentweb/download/j$b;->agentweb_coming_soon_download:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 108
    iget-object v0, p0, Lcom/just/agentweb/download/e;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 109
    iget-object v0, p0, Lcom/just/agentweb/download/e;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 110
    iget-object v0, p0, Lcom/just/agentweb/download/e;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p1}, Lcom/just/agentweb/download/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/just/agentweb/download/e;->fp:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Lcom/just/agentweb/download/DownloadTask;->aV()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/just/agentweb/download/e;->mFile:Ljava/io/File;

    .line 114
    iget-object v1, p0, Lcom/just/agentweb/download/e;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/just/agentweb/download/e;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/just/agentweb/download/DownloadTask;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/just/agentweb/download/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, v3, p1}, Lcom/just/agentweb/download/e;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 115
    iget-object p1, p0, Lcom/just/agentweb/download/e;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    return-void
.end method

.method aR()V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/just/agentweb/download/e;->aQ()V

    return-void
.end method

.method aS()V
    .locals 4

    const/4 v0, 0x0

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/just/agentweb/download/e;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mActions"

    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v2, p0, Lcom/just/agentweb/download/e;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 192
    iget-object v2, p0, Lcom/just/agentweb/download/e;->fO:Landroid/support/v4/app/NotificationCompat$Action;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 193
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 197
    invoke-static {}, Lcom/just/agentweb/ag;->ap()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 201
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/just/agentweb/download/e;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/just/agentweb/download/e;->mFile:Ljava/io/File;

    invoke-static {v1, v2}, Lcom/just/agentweb/h;->c(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v1

    .line 202
    invoke-direct {p0, v0}, Lcom/just/agentweb/download/e;->a(Landroid/app/PendingIntent;)V

    if-eqz v1, :cond_3

    .line 204
    iget-object v0, p0, Lcom/just/agentweb/download/e;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_2

    const/high16 v0, 0x10000000

    .line 205
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/just/agentweb/download/e;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/just/agentweb/download/e;->fM:I

    shl-int/lit8 v2, v2, 0x4

    const/high16 v3, 0x8000000

    .line 208
    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/just/agentweb/download/e;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/just/agentweb/download/e;->mContext:Landroid/content/Context;

    sget v3, Lcom/just/agentweb/download/j$b;->agentweb_click_open:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 213
    iget-object v1, p0, Lcom/just/agentweb/download/e;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-virtual {v1, v3, v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 214
    iget-object v1, p0, Lcom/just/agentweb/download/e;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 215
    invoke-direct {p0}, Lcom/just/agentweb/download/e;->aQ()V

    :cond_3
    return-void
.end method

.method cancel()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/just/agentweb/download/e;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/just/agentweb/download/e;->fM:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method f(I)V
    .locals 7

    .line 161
    invoke-direct {p0}, Lcom/just/agentweb/download/e;->aP()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/just/agentweb/download/e;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/just/agentweb/download/e;->fM:I

    iget-object v2, p0, Lcom/just/agentweb/download/e;->fp:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/just/agentweb/download/e;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/just/agentweb/download/e;->a(Landroid/app/PendingIntent;)V

    .line 164
    :cond_0
    iget-boolean v0, p0, Lcom/just/agentweb/download/e;->fN:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 165
    iput-boolean v1, p0, Lcom/just/agentweb/download/e;->fN:Z

    .line 166
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action;

    sget v2, Lcom/just/agentweb/download/j$a;->ic_cancel_transparent_2dp:I

    iget-object v3, p0, Lcom/just/agentweb/download/e;->mContext:Landroid/content/Context;

    const/high16 v4, 0x1040000

    .line 167
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/just/agentweb/download/e;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/just/agentweb/download/e;->fM:I

    iget-object v6, p0, Lcom/just/agentweb/download/e;->fp:Ljava/lang/String;

    .line 168
    invoke-direct {p0, v4, v5, v6}, Lcom/just/agentweb/download/e;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput-object v0, p0, Lcom/just/agentweb/download/e;->fO:Landroid/support/v4/app/NotificationCompat$Action;

    .line 169
    iget-object v0, p0, Lcom/just/agentweb/download/e;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/just/agentweb/download/e;->fO:Landroid/support/v4/app/NotificationCompat$Action;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/just/agentweb/download/e;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/just/agentweb/download/e;->mContext:Landroid/content/Context;

    sget v3, Lcom/just/agentweb/download/j$b;->agentweb_current_downloading_progress:I

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 v0, 0x64

    .line 173
    invoke-direct {p0, v0, p1, v5}, Lcom/just/agentweb/download/e;->a(IIZ)V

    .line 174
    invoke-direct {p0}, Lcom/just/agentweb/download/e;->aQ()V

    return-void
.end method
