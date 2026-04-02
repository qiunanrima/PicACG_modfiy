.class public Lcom/picacomic/fregata/holders/ComicPageSimpleViewHolder;
.super Ljava/lang/Object;
.source "ComicPageSimpleViewHolder.java"


# instance fields
.field public frameLayout_container:Landroid/widget/RelativeLayout;
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
