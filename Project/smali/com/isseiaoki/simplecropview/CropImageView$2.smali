.class Lcom/isseiaoki/simplecropview/CropImageView$2;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isseiaoki/simplecropview/CropImageView;->a(Lcom/isseiaoki/simplecropview/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic as:Lcom/isseiaoki/simplecropview/CropImageView;

.field final synthetic au:Lcom/isseiaoki/simplecropview/b/a;


# direct methods
.method constructor <init>(Lcom/isseiaoki/simplecropview/CropImageView;Lcom/isseiaoki/simplecropview/b/a;)V
    .locals 0

    .line 1166
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$2;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    iput-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$2;->au:Lcom/isseiaoki/simplecropview/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1169
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$2;->au:Lcom/isseiaoki/simplecropview/b/a;

    invoke-interface {v0}, Lcom/isseiaoki/simplecropview/b/a;->onError()V

    return-void
.end method
