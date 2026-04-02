.class public Lcom/picacomic/fregata/adapters/ChatroomFragmentPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "ChatroomFragmentPagerAdapter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ChatroomFragmentPagerAdapter"


# instance fields
.field ja:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ChatroomListObject;",
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
            "Lcom/picacomic/fregata/objects/ChatroomListObject;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 22
    iput-object p2, p0, Lcom/picacomic/fregata/adapters/ChatroomFragmentPagerAdapter;->ja:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomFragmentPagerAdapter;->ja:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomFragmentPagerAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomFragmentPagerAdapter;->ja:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomFragmentPagerAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ChatroomFragmentPagerAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ChatroomListObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatroomListObject;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->M(Ljava/lang/String;)Lcom/picacomic/fregata/fragments/ChatroomFragment;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
