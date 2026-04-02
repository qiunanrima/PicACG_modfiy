.class public Lcom/picacomic/fregata/adapters/PicaAppFragmentPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "PicaAppFragmentPagerAdapter.java"


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 27
    :pswitch_0
    new-instance p1, Lcom/picacomic/fregata/fragments/PicaAppListFragment;

    invoke-direct {p1}, Lcom/picacomic/fregata/fragments/PicaAppListFragment;-><init>()V

    return-object p1

    .line 25
    :pswitch_1
    new-instance p1, Lcom/picacomic/fregata/fragments/ChatroomListFragment;

    invoke-direct {p1}, Lcom/picacomic/fregata/fragments/ChatroomListFragment;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
