.class Landroid/support/v4/provider/FontsContractInternal$1;
.super Ljava/lang/Object;
.source "FontsContractInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/provider/FontsContractInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/provider/FontsContractInternal;


# direct methods
.method constructor <init>(Landroid/support/v4/provider/FontsContractInternal;)V
    .locals 0

    .line 104
    iput-object p1, p0, Landroid/support/v4/provider/FontsContractInternal$1;->this$0:Landroid/support/v4/provider/FontsContractInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 107
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractInternal$1;->this$0:Landroid/support/v4/provider/FontsContractInternal;

    invoke-static {v0}, Landroid/support/v4/provider/FontsContractInternal;->access$000(Landroid/support/v4/provider/FontsContractInternal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/provider/FontsContractInternal$1;->this$0:Landroid/support/v4/provider/FontsContractInternal;

    invoke-static {v1}, Landroid/support/v4/provider/FontsContractInternal;->access$100(Landroid/support/v4/provider/FontsContractInternal;)Landroid/os/HandlerThread;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Landroid/support/v4/provider/FontsContractInternal$1;->this$0:Landroid/support/v4/provider/FontsContractInternal;

    invoke-static {v1}, Landroid/support/v4/provider/FontsContractInternal;->access$100(Landroid/support/v4/provider/FontsContractInternal;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 110
    iget-object v1, p0, Landroid/support/v4/provider/FontsContractInternal$1;->this$0:Landroid/support/v4/provider/FontsContractInternal;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v4/provider/FontsContractInternal;->access$102(Landroid/support/v4/provider/FontsContractInternal;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 111
    iget-object v1, p0, Landroid/support/v4/provider/FontsContractInternal$1;->this$0:Landroid/support/v4/provider/FontsContractInternal;

    invoke-static {v1, v2}, Landroid/support/v4/provider/FontsContractInternal;->access$202(Landroid/support/v4/provider/FontsContractInternal;Landroid/os/Handler;)Landroid/os/Handler;

    .line 113
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
