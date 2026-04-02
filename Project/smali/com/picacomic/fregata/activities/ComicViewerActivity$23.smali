.class Lcom/picacomic/fregata/activities/ComicViewerActivity$23;
.super Ljava/lang/Object;
.source "ComicViewerActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/activities/ComicViewerActivity;->bF()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

.field im:I

.field io:I

.field ip:I


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$23;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private s(I)V
    .locals 3

    .line 569
    iget v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$23;->im:I

    iget v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$23;->ip:I

    iget v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$23;->io:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 570
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$23;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {p1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bN()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 561
    iput p2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$23;->im:I

    .line 562
    iput p3, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$23;->io:I

    .line 563
    iput p4, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$23;->ip:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 556
    invoke-direct {p0, p2}, Lcom/picacomic/fregata/activities/ComicViewerActivity$23;->s(I)V

    return-void
.end method
