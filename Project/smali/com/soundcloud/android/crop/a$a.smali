.class Lcom/soundcloud/android/crop/a$a;
.super Lcom/soundcloud/android/crop/c$a;
.source "CropUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soundcloud/android/crop/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final vA:Landroid/app/ProgressDialog;

.field private final vB:Ljava/lang/Runnable;

.field private final vC:Ljava/lang/Runnable;

.field private final vz:Lcom/soundcloud/android/crop/c;


# direct methods
.method public constructor <init>(Lcom/soundcloud/android/crop/c;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .locals 1

    .line 183
    invoke-direct {p0}, Lcom/soundcloud/android/crop/c$a;-><init>()V

    .line 175
    new-instance v0, Lcom/soundcloud/android/crop/a$a$1;

    invoke-direct {v0, p0}, Lcom/soundcloud/android/crop/a$a$1;-><init>(Lcom/soundcloud/android/crop/a$a;)V

    iput-object v0, p0, Lcom/soundcloud/android/crop/a$a;->vC:Ljava/lang/Runnable;

    .line 184
    iput-object p1, p0, Lcom/soundcloud/android/crop/a$a;->vz:Lcom/soundcloud/android/crop/c;

    .line 185
    iput-object p3, p0, Lcom/soundcloud/android/crop/a$a;->vA:Landroid/app/ProgressDialog;

    .line 186
    iput-object p2, p0, Lcom/soundcloud/android/crop/a$a;->vB:Ljava/lang/Runnable;

    .line 187
    iget-object p1, p0, Lcom/soundcloud/android/crop/a$a;->vz:Lcom/soundcloud/android/crop/c;

    invoke-virtual {p1, p0}, Lcom/soundcloud/android/crop/c;->b(Lcom/soundcloud/android/crop/c$b;)V

    .line 188
    iput-object p4, p0, Lcom/soundcloud/android/crop/a$a;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/soundcloud/android/crop/a$a;)Lcom/soundcloud/android/crop/c;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/soundcloud/android/crop/a$a;->vz:Lcom/soundcloud/android/crop/c;

    return-object p0
.end method

.method static synthetic b(Lcom/soundcloud/android/crop/a$a;)Landroid/app/ProgressDialog;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/soundcloud/android/crop/a$a;->vA:Landroid/app/ProgressDialog;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/soundcloud/android/crop/c;)V
    .locals 1

    .line 203
    iget-object p1, p0, Lcom/soundcloud/android/crop/a$a;->vC:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 204
    iget-object p1, p0, Lcom/soundcloud/android/crop/a$a;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/soundcloud/android/crop/a$a;->vC:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcom/soundcloud/android/crop/c;)V
    .locals 0

    .line 209
    iget-object p1, p0, Lcom/soundcloud/android/crop/a$a;->vA:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->hide()V

    return-void
.end method

.method public c(Lcom/soundcloud/android/crop/c;)V
    .locals 0

    .line 214
    iget-object p1, p0, Lcom/soundcloud/android/crop/a$a;->vA:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public run()V
    .locals 3

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/a$a;->vB:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    iget-object v0, p0, Lcom/soundcloud/android/crop/a$a;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/soundcloud/android/crop/a$a;->vC:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/soundcloud/android/crop/a$a;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/soundcloud/android/crop/a$a;->vC:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
