.class Lcom/picacomic/fregata/fragments/ComicDownloadFragment$4;
.super Ljava/lang/Object;
.source "ComicDownloadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ComicDownloadFragment;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$4;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 316
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$4;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u529f\u80fd\u66ab\u672a\u958b\u653e"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
