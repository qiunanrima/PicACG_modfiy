.class Landroid/support/v4/provider/FontsContractInternal$2;
.super Ljava/lang/Object;
.source "FontsContractInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/provider/FontsContractInternal;->getFont(Landroid/support/v4/provider/FontRequest;Landroid/support/v4/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/provider/FontsContractInternal;

.field final synthetic val$receiver:Landroid/support/v4/os/ResultReceiver;

.field final synthetic val$request:Landroid/support/v4/provider/FontRequest;


# direct methods
.method constructor <init>(Landroid/support/v4/provider/FontsContractInternal;Landroid/support/v4/provider/FontRequest;Landroid/support/v4/os/ResultReceiver;)V
    .locals 0

    .line 126
    iput-object p1, p0, Landroid/support/v4/provider/FontsContractInternal$2;->this$0:Landroid/support/v4/provider/FontsContractInternal;

    iput-object p2, p0, Landroid/support/v4/provider/FontsContractInternal$2;->val$request:Landroid/support/v4/provider/FontRequest;

    iput-object p3, p0, Landroid/support/v4/provider/FontsContractInternal$2;->val$receiver:Landroid/support/v4/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 129
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractInternal$2;->this$0:Landroid/support/v4/provider/FontsContractInternal;

    iget-object v1, p0, Landroid/support/v4/provider/FontsContractInternal$2;->val$request:Landroid/support/v4/provider/FontRequest;

    iget-object v2, p0, Landroid/support/v4/provider/FontsContractInternal$2;->val$receiver:Landroid/support/v4/os/ResultReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/provider/FontsContractInternal;->getProvider(Landroid/support/v4/provider/FontRequest;Landroid/support/v4/os/ResultReceiver;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object v1, p0, Landroid/support/v4/provider/FontsContractInternal$2;->this$0:Landroid/support/v4/provider/FontsContractInternal;

    iget-object v2, p0, Landroid/support/v4/provider/FontsContractInternal$2;->val$request:Landroid/support/v4/provider/FontRequest;

    iget-object v3, p0, Landroid/support/v4/provider/FontsContractInternal$2;->val$receiver:Landroid/support/v4/os/ResultReceiver;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/provider/FontsContractInternal;->getFontFromProvider(Landroid/support/v4/provider/FontRequest;Landroid/support/v4/os/ResultReceiver;Ljava/lang/String;)V

    return-void
.end method
