.class public Lcom/picacomic/fregata/objects/ApkObject;
.super Ljava/lang/Object;
.source "ApkObject.java"


# instance fields
.field fileServer:Ljava/lang/String;

.field originalName:Ljava/lang/String;

.field path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ApkObject;->originalName:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/picacomic/fregata/objects/ApkObject;->path:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/picacomic/fregata/objects/ApkObject;->fileServer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFileServer()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ApkObject;->fileServer:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ApkObject;->originalName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ApkObject;->path:Ljava/lang/String;

    return-object v0
.end method

.method public setFileServer(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ApkObject;->fileServer:Ljava/lang/String;

    return-void
.end method

.method public setOriginalName(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ApkObject;->originalName:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ApkObject;->path:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApkObject{originalName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/ApkObject;->originalName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", path=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ApkObject;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fileServer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ApkObject;->fileServer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
