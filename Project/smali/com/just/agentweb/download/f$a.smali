.class final Lcom/just/agentweb/download/f$a;
.super Ljava/io/RandomAccessFile;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/download/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic gi:Lcom/just/agentweb/download/f;


# direct methods
.method public constructor <init>(Lcom/just/agentweb/download/f;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 566
    iput-object p1, p0, Lcom/just/agentweb/download/f$a;->gi:Lcom/just/agentweb/download/f;

    const-string p1, "rw"

    .line 567
    invoke-direct {p0, p2, p1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    invoke-super {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 574
    iget-object p1, p0, Lcom/just/agentweb/download/f$a;->gi:Lcom/just/agentweb/download/f;

    iget-object p2, p0, Lcom/just/agentweb/download/f$a;->gi:Lcom/just/agentweb/download/f;

    invoke-static {p2}, Lcom/just/agentweb/download/f;->a(Lcom/just/agentweb/download/f;)J

    move-result-wide v0

    int-to-long p2, p3

    add-long/2addr v0, p2

    invoke-static {p1, v0, v1}, Lcom/just/agentweb/download/f;->a(Lcom/just/agentweb/download/f;J)J

    .line 575
    iget-object p1, p0, Lcom/just/agentweb/download/f$a;->gi:Lcom/just/agentweb/download/f;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Integer;

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p3

    invoke-static {p1, p2}, Lcom/just/agentweb/download/f;->a(Lcom/just/agentweb/download/f;[Ljava/lang/Object;)V

    return-void
.end method
