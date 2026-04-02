.class Lcom/picacomic/fregata/adapters/BannerPagerAdapter$1;
.super Ljava/lang/Object;
.source "BannerPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/adapters/BannerPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic jf:Lcom/picacomic/fregata/adapters/BannerPagerAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/adapters/BannerPagerAdapter;I)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/picacomic/fregata/adapters/BannerPagerAdapter$1;->jf:Lcom/picacomic/fregata/adapters/BannerPagerAdapter;

    iput p2, p0, Lcom/picacomic/fregata/adapters/BannerPagerAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 88
    iget-object p1, p0, Lcom/picacomic/fregata/adapters/BannerPagerAdapter$1;->jf:Lcom/picacomic/fregata/adapters/BannerPagerAdapter;

    iget-object p1, p1, Lcom/picacomic/fregata/adapters/BannerPagerAdapter;->je:Lcom/picacomic/fregata/a/k;

    iget v0, p0, Lcom/picacomic/fregata/adapters/BannerPagerAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/k;->C(I)V

    return-void
.end method
