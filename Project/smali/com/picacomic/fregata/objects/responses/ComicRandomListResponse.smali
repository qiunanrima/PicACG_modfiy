.class public Lcom/picacomic/fregata/objects/responses/ComicRandomListResponse;
.super Ljava/lang/Object;
.source "ComicRandomListResponse.java"


# instance fields
.field comics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicListObject;",
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
            "Lcom/picacomic/fregata/objects/ComicListObject;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/ComicRandomListResponse;->comics:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getComics()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicListObject;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/ComicRandomListResponse;->comics:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setComics(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicListObject;",
            ">;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/ComicRandomListResponse;->comics:Ljava/util/ArrayList;

    return-void
.end method
