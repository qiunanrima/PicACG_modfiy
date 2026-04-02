.class Lcom/picacomic/fregata/fragments/ChatroomFragment$17;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V
    .locals 0

    .line 931
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$17;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 934
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$17;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lw:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 935
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$17;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->relativeLayout_popup:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 936
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$17;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ll:Landroid/graphics/Bitmap;

    .line 937
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$17;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$17;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->E(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
