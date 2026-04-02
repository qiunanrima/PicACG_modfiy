.class final Lcom/picacomic/fregata/utils/views/AlertDialogCenter$19;
.super Ljava/lang/Object;
.source "AlertDialogCenter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showAnnouncementAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$imageView_icon:Landroid/widget/ImageView;

.field final synthetic val$scrollView:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Landroid/widget/ScrollView;Landroid/widget/ImageView;)V
    .locals 0

    .line 785
    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$19;->val$scrollView:Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$19;->val$imageView_icon:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 3

    .line 789
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$19;->val$scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_0

    .line 791
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$19;->val$imageView_icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$19;->val$scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x43480000    # 200.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$19;->val$imageView_icon:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_0
    return-void
.end method
