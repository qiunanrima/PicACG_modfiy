.class public Lcom/picacomic/fregata/objects/responses/BannersResponse;
.super Ljava/lang/Object;
.source "BannersResponse.java"


# instance fields
.field banners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/BannerObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/BannerObject;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/BannersResponse;->banners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getBanners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/BannerObject;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/BannersResponse;->banners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setBanners(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/BannerObject;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/BannersResponse;->banners:Ljava/util/ArrayList;

    return-void
.end method
