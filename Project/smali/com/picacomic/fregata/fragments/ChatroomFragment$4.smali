.class Lcom/picacomic/fregata/fragments/ChatroomFragment$4;
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

    .line 803
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$4;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 806
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$4;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->relativeLayout_popup:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 807
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$4;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ll:Landroid/graphics/Bitmap;

    return-void
.end method
