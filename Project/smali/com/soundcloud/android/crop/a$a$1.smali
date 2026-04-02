.class Lcom/soundcloud/android/crop/a$a$1;
.super Ljava/lang/Object;
.source "CropUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soundcloud/android/crop/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic vD:Lcom/soundcloud/android/crop/a$a;


# direct methods
.method constructor <init>(Lcom/soundcloud/android/crop/a$a;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/soundcloud/android/crop/a$a$1;->vD:Lcom/soundcloud/android/crop/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/soundcloud/android/crop/a$a$1;->vD:Lcom/soundcloud/android/crop/a$a;

    invoke-static {v0}, Lcom/soundcloud/android/crop/a$a;->a(Lcom/soundcloud/android/crop/a$a;)Lcom/soundcloud/android/crop/c;

    move-result-object v0

    iget-object v1, p0, Lcom/soundcloud/android/crop/a$a$1;->vD:Lcom/soundcloud/android/crop/a$a;

    invoke-virtual {v0, v1}, Lcom/soundcloud/android/crop/c;->a(Lcom/soundcloud/android/crop/c$b;)V

    .line 178
    iget-object v0, p0, Lcom/soundcloud/android/crop/a$a$1;->vD:Lcom/soundcloud/android/crop/a$a;

    invoke-static {v0}, Lcom/soundcloud/android/crop/a$a;->b(Lcom/soundcloud/android/crop/a$a;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/soundcloud/android/crop/a$a$1;->vD:Lcom/soundcloud/android/crop/a$a;

    invoke-static {v0}, Lcom/soundcloud/android/crop/a$a;->b(Lcom/soundcloud/android/crop/a$a;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method
