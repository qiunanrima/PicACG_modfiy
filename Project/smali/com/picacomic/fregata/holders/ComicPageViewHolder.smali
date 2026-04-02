.class public Lcom/picacomic/fregata/holders/ComicPageViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ComicPageViewHolder.java"


# instance fields
.field public frameLayout_container:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090103
    .end annotation
.end field

.field public imageView_image:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090149
    .end annotation
.end field

.field public textView_page:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090282
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 29
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
