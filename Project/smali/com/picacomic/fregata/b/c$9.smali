.class Lcom/picacomic/fregata/b/c$9;
.super Ljava/lang/Object;
.source "NetworkErrorHandler.java"

# interfaces
.implements Lcom/picacomic/fregata/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/b/c;->t(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tt:Lcom/picacomic/fregata/b/c;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/b/c;Landroid/content/Context;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/picacomic/fregata/b/c$9;->tt:Lcom/picacomic/fregata/b/c;

    iput-object p2, p0, Lcom/picacomic/fregata/b/c$9;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/picacomic/fregata/objects/NetworkErrorObject;)V
    .locals 0

    .line 263
    iget-object p1, p0, Lcom/picacomic/fregata/b/c$9;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->timeIsNotSynchronize(Landroid/content/Context;)V

    return-void
.end method
