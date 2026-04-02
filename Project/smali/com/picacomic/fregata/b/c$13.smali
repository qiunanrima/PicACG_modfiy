.class Lcom/picacomic/fregata/b/c$13;
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

    .line 178
    iput-object p1, p0, Lcom/picacomic/fregata/b/c$13;->tt:Lcom/picacomic/fregata/b/c;

    iput-object p2, p0, Lcom/picacomic/fregata/b/c$13;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/picacomic/fregata/objects/NetworkErrorObject;)V
    .locals 1

    .line 181
    iget-object p1, p0, Lcom/picacomic/fregata/b/c$13;->val$context:Landroid/content/Context;

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/e;->h(Landroid/content/Context;Ljava/lang/String;)Z

    .line 182
    iget-object p1, p0, Lcom/picacomic/fregata/b/c$13;->val$context:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 184
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/picacomic/fregata/b/c$13;->val$context:Landroid/content/Context;

    const-class v0, Lcom/picacomic/fregata/activities/LoginActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    iget-object p2, p0, Lcom/picacomic/fregata/b/c$13;->val$context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 187
    iget-object p1, p0, Lcom/picacomic/fregata/b/c$13;->val$context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
