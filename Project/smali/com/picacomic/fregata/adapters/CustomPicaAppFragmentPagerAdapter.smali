.class public Lcom/picacomic/fregata/adapters/CustomPicaAppFragmentPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "CustomPicaAppFragmentPagerAdapter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CustomPicaAppFragmentPagerAdapter"


# instance fields
.field ja:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/PicaAppBaseObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/PicaAppBaseObject;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 26
    iput-object p2, p0, Lcom/picacomic/fregata/adapters/CustomPicaAppFragmentPagerAdapter;->ja:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CustomPicaAppFragmentPagerAdapter;->ja:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CustomPicaAppFragmentPagerAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CustomPicaAppFragmentPagerAdapter;->ja:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CustomPicaAppFragmentPagerAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 34
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CustomPicaAppFragmentPagerAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/objects/PicaAppObject;

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CustomPicaAppFragmentPagerAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/PicaAppObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/PicaAppObject;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u55f6\u5494\u840c\u7d04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance p1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    invoke-direct {p1}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;-><init>()V

    return-object p1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CustomPicaAppFragmentPagerAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/PicaAppObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/PicaAppObject;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/CustomPicaAppFragmentPagerAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/PicaAppObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/PicaAppObject;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/picacomic/fregata/fragments/PicaAppFragment;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/picacomic/fregata/fragments/PicaAppFragment;

    move-result-object p1

    return-object p1

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CustomPicaAppFragmentPagerAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/objects/ChatroomListObject;

    if-eqz v0, :cond_2

    .line 41
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/CustomPicaAppFragmentPagerAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ChatroomListObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatroomListObject;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->M(Ljava/lang/String;)Lcom/picacomic/fregata/fragments/ChatroomFragment;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
