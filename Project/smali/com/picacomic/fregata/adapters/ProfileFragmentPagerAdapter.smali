.class public Lcom/picacomic/fregata/adapters/ProfileFragmentPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "ProfileFragmentPagerAdapter.java"


# instance fields
.field jH:Lcom/picacomic/fregata/objects/UserBasicObject;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Lcom/picacomic/fregata/objects/UserBasicObject;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 22
    iput-object p2, p0, Lcom/picacomic/fregata/adapters/ProfileFragmentPagerAdapter;->jH:Lcom/picacomic/fregata/objects/UserBasicObject;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ProfileFragmentPagerAdapter;->jH:Lcom/picacomic/fregata/objects/UserBasicObject;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    const-string p1, "575e28eafec093bf19360331"

    .line 34
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/ProfileFragmentPagerAdapter;->jH:Lcom/picacomic/fregata/objects/UserBasicObject;

    invoke-static {p1, v0}, Lcom/picacomic/fregata/fragments/CommentFragment;->a(Ljava/lang/String;Lcom/picacomic/fregata/objects/UserBasicObject;)Lcom/picacomic/fregata/fragments/CommentFragment;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_1
    new-instance p1, Lcom/picacomic/fregata/fragments/ProfileComicFragment;

    invoke-direct {p1}, Lcom/picacomic/fregata/fragments/ProfileComicFragment;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
