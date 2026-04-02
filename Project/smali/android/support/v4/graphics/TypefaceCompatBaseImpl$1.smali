.class Landroid/support/v4/graphics/TypefaceCompatBaseImpl$1;
.super Landroid/support/v4/os/ResultReceiver;
.source "TypefaceCompatBaseImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->create(Landroid/support/v4/provider/FontRequest;Landroid/support/v4/graphics/TypefaceCompat$FontRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/graphics/TypefaceCompatBaseImpl;

.field final synthetic val$callback:Landroid/support/v4/graphics/TypefaceCompat$FontRequestCallback;

.field final synthetic val$request:Landroid/support/v4/provider/FontRequest;


# direct methods
.method constructor <init>(Landroid/support/v4/graphics/TypefaceCompatBaseImpl;Landroid/os/Handler;Landroid/support/v4/provider/FontRequest;Landroid/support/v4/graphics/TypefaceCompat$FontRequestCallback;)V
    .locals 0

    .line 110
    iput-object p1, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$1;->this$0:Landroid/support/v4/graphics/TypefaceCompatBaseImpl;

    iput-object p3, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$1;->val$request:Landroid/support/v4/provider/FontRequest;

    iput-object p4, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$1;->val$callback:Landroid/support/v4/graphics/TypefaceCompat$FontRequestCallback;

    invoke-direct {p0, p2}, Landroid/support/v4/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3

    .line 113
    iget-object v0, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$1;->this$0:Landroid/support/v4/graphics/TypefaceCompatBaseImpl;

    iget-object v1, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$1;->val$request:Landroid/support/v4/provider/FontRequest;

    iget-object v2, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$1;->val$callback:Landroid/support/v4/graphics/TypefaceCompat$FontRequestCallback;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->receiveResult(Landroid/support/v4/provider/FontRequest;Landroid/support/v4/graphics/TypefaceCompat$FontRequestCallback;ILandroid/os/Bundle;)V

    return-void
.end method
