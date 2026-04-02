.class Lio/socket/f/c$a;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/socket/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public zW:Lio/socket/f/b;

.field zX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/socket/f/b;)V
    .locals 0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p1, p0, Lio/socket/f/c$a;->zW:Lio/socket/f/b;

    .line 256
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/socket/f/c$a;->zX:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public fo()V
    .locals 1

    const/4 v0, 0x0

    .line 271
    iput-object v0, p0, Lio/socket/f/c$a;->zW:Lio/socket/f/b;

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/socket/f/c$a;->zX:Ljava/util/List;

    return-void
.end method

.method public g([B)Lio/socket/f/b;
    .locals 2

    .line 260
    iget-object v0, p0, Lio/socket/f/c$a;->zX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object p1, p0, Lio/socket/f/c$a;->zX:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lio/socket/f/c$a;->zW:Lio/socket/f/b;

    iget v0, v0, Lio/socket/f/b;->zU:I

    if-ne p1, v0, :cond_0

    .line 262
    iget-object p1, p0, Lio/socket/f/c$a;->zW:Lio/socket/f/b;

    iget-object v0, p0, Lio/socket/f/c$a;->zX:Ljava/util/List;

    iget-object v1, p0, Lio/socket/f/c$a;->zX:Ljava/util/List;

    .line 263
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [[B

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    .line 262
    invoke-static {p1, v0}, Lio/socket/f/a;->a(Lio/socket/f/b;[[B)Lio/socket/f/b;

    move-result-object p1

    .line 264
    invoke-virtual {p0}, Lio/socket/f/c$a;->fo()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
