.class public Lcom/just/agentweb/y;
.super Ljava/lang/Object;
.source "IndicatorHandler.java"

# interfaces
.implements Lcom/just/agentweb/x;


# instance fields
.field private ex:Lcom/just/agentweb/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static am()Lcom/just/agentweb/y;
    .locals 1

    .line 80
    new-instance v0, Lcom/just/agentweb/y;

    invoke-direct {v0}, Lcom/just/agentweb/y;-><init>()V

    return-object v0
.end method


# virtual methods
.method a(Lcom/just/agentweb/i;)Lcom/just/agentweb/y;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/just/agentweb/y;->ex:Lcom/just/agentweb/i;

    return-object p0
.end method

.method public a(Landroid/webkit/WebView;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/just/agentweb/y;->reset()V

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    if-lez p2, :cond_1

    if-gt p2, p1, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/just/agentweb/y;->al()V

    goto :goto_0

    :cond_1
    if-le p2, p1, :cond_2

    const/16 p1, 0x5f

    if-ge p2, p1, :cond_2

    .line 37
    invoke-virtual {p0, p2}, Lcom/just/agentweb/y;->setProgress(I)V

    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p0, p2}, Lcom/just/agentweb/y;->setProgress(I)V

    .line 40
    invoke-virtual {p0}, Lcom/just/agentweb/y;->finish()V

    :goto_0
    return-void
.end method

.method public ak()Lcom/just/agentweb/i;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/just/agentweb/y;->ex:Lcom/just/agentweb/i;

    return-object v0
.end method

.method public al()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/just/agentweb/y;->ex:Lcom/just/agentweb/i;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/just/agentweb/y;->ex:Lcom/just/agentweb/i;

    invoke-interface {v0}, Lcom/just/agentweb/i;->show()V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/just/agentweb/y;->ex:Lcom/just/agentweb/i;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/just/agentweb/y;->ex:Lcom/just/agentweb/i;

    invoke-interface {v0}, Lcom/just/agentweb/i;->hide()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/just/agentweb/y;->ex:Lcom/just/agentweb/i;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/just/agentweb/y;->ex:Lcom/just/agentweb/i;

    invoke-interface {v0}, Lcom/just/agentweb/i;->reset()V

    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/just/agentweb/y;->ex:Lcom/just/agentweb/i;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/just/agentweb/y;->ex:Lcom/just/agentweb/i;

    invoke-interface {v0, p1}, Lcom/just/agentweb/i;->setProgress(I)V

    :cond_0
    return-void
.end method
