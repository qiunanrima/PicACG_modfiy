.class Lcom/picacomic/fregata/b/c$1;
.super Ljava/lang/Object;
.source "NetworkErrorHandler.java"

# interfaces
.implements Lcom/picacomic/fregata/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V
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

    .line 83
    iput-object p1, p0, Lcom/picacomic/fregata/b/c$1;->tt:Lcom/picacomic/fregata/b/c;

    iput-object p2, p0, Lcom/picacomic/fregata/b/c$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/picacomic/fregata/objects/NetworkErrorObject;)V
    .locals 3

    const-string p1, "Run default Alert"

    .line 86
    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 92
    iget-object p1, p0, Lcom/picacomic/fregata/b/c$1;->tt:Lcom/picacomic/fregata/b/c;

    iget-object p1, p1, Lcom/picacomic/fregata/b/c;->tb:Lcom/picacomic/fregata/objects/NetworkErrorObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/NetworkErrorObject;->getError()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/b/c$1;->tt:Lcom/picacomic/fregata/b/c;

    iget-object p1, p1, Lcom/picacomic/fregata/b/c;->tb:Lcom/picacomic/fregata/objects/NetworkErrorObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/NetworkErrorObject;->getError()Ljava/lang/String;

    move-result-object p1

    .line 97
    :goto_0
    iget-object p2, p0, Lcom/picacomic/fregata/b/c$1;->tt:Lcom/picacomic/fregata/b/c;

    iget-object p2, p2, Lcom/picacomic/fregata/b/c;->tb:Lcom/picacomic/fregata/objects/NetworkErrorObject;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/NetworkErrorObject;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, ""

    goto :goto_1

    .line 100
    :cond_1
    iget-object p2, p0, Lcom/picacomic/fregata/b/c$1;->tt:Lcom/picacomic/fregata/b/c;

    iget-object p2, p2, Lcom/picacomic/fregata/b/c;->tb:Lcom/picacomic/fregata/objects/NetworkErrorObject;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/NetworkErrorObject;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 102
    :goto_1
    iget-object v0, p0, Lcom/picacomic/fregata/b/c$1;->tt:Lcom/picacomic/fregata/b/c;

    iget-object v0, v0, Lcom/picacomic/fregata/b/c;->tb:Lcom/picacomic/fregata/objects/NetworkErrorObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/NetworkErrorObject;->getDetail()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_2

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/picacomic/fregata/b/c$1;->tt:Lcom/picacomic/fregata/b/c;

    iget-object v0, v0, Lcom/picacomic/fregata/b/c;->tb:Lcom/picacomic/fregata/objects/NetworkErrorObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/NetworkErrorObject;->getDetail()Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_2
    iget-object v1, p0, Lcom/picacomic/fregata/b/c$1;->val$context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->generalError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 110
    :cond_3
    iget-object p1, p0, Lcom/picacomic/fregata/b/c$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->generalError(Landroid/content/Context;)V

    :goto_3
    return-void
.end method
