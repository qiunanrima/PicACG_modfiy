.class Landroid/support/v4/app/NotificationCompatApi26;
.super Ljava/lang/Object;
.source "NotificationCompatApi26.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompatApi26$Builder;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBadgeIcon(Landroid/app/Notification;)I
    .locals 0

    .line 126
    invoke-virtual {p0}, Landroid/app/Notification;->getBadgeIconType()I

    move-result p0

    return p0
.end method

.method public static getChannel(Landroid/app/Notification;)Ljava/lang/String;
    .locals 0

    .line 122
    invoke-virtual {p0}, Landroid/app/Notification;->getChannel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getShortcutId(Landroid/app/Notification;)Ljava/lang/String;
    .locals 0

    .line 130
    invoke-virtual {p0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeout(Landroid/app/Notification;)J
    .locals 2

    .line 134
    invoke-virtual {p0}, Landroid/app/Notification;->getTimeout()J

    move-result-wide v0

    return-wide v0
.end method
