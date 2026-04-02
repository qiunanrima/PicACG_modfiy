.class public Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsResponse;
.super Ljava/lang/Object;
.source "AnnouncementsResponse.java"


# instance fields
.field announcements:Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsResponse;->announcements:Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;

    return-void
.end method


# virtual methods
.method public getAnnouncements()Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsResponse;->announcements:Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;

    return-object v0
.end method

.method public setAnnouncements(Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsResponse;->announcements:Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsData;

    return-void
.end method
