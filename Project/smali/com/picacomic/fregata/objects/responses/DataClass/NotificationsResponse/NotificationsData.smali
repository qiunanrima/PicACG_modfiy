.class public Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;
.super Ljava/lang/Object;
.source "NotificationsData.java"


# instance fields
.field docs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/NotificationObject;",
            ">;"
        }
    .end annotation
.end field

.field limit:I

.field page:I

.field pages:I

.field total:I


# direct methods
.method public constructor <init>(IIIILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/NotificationObject;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;->limit:I

    .line 17
    iput p2, p0, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;->page:I

    .line 18
    iput p3, p0, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;->pages:I

    .line 19
    iput p4, p0, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;->total:I

    .line 20
    iput-object p5, p0, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;->docs:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getDocs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/NotificationObject;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;->docs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;->limit:I

    return v0
.end method

.method public getPage()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;->page:I

    return v0
.end method

.method public getPages()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;->pages:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;->total:I

    return v0
.end method

.method public setDocs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/NotificationObject;",
            ">;)V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;->docs:Ljava/util/ArrayList;

    return-void
.end method

.method public setLimit(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;->limit:I

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;->page:I

    return-void
.end method

.method public setPages(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;->pages:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;->total:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationsData{limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;->pages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", docs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;->docs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
