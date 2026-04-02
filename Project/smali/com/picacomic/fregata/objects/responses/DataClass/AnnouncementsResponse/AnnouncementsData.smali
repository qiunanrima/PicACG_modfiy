.class public Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;
.super Ljava/lang/Object;
.source "AnnouncementsData.java"


# instance fields
.field docs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/AnnouncementObject;",
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
            "Lcom/picacomic/fregata/objects/AnnouncementObject;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;->total:I

    .line 27
    iput p2, p0, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;->limit:I

    .line 28
    iput p3, p0, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;->page:I

    .line 29
    iput p4, p0, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;->pages:I

    .line 30
    iput-object p5, p0, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;->docs:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getDocs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/AnnouncementObject;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;->docs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;->limit:I

    return v0
.end method

.method public getPage()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;->page:I

    return v0
.end method

.method public getPages()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;->pages:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;->total:I

    return v0
.end method

.method public setDocs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/AnnouncementObject;",
            ">;)V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;->docs:Ljava/util/ArrayList;

    return-void
.end method

.method public setLimit(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;->limit:I

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;->page:I

    return-void
.end method

.method public setPages(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;->pages:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;->total:I

    return-void
.end method
