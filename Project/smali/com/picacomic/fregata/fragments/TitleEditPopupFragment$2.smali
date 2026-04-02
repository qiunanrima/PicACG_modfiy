.class Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$2;
.super Ljava/lang/Object;
.source "TitleEditPopupFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->bF()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rZ:Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$2;->rZ:Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 147
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$2;->rZ:Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->dismiss()V

    return-void
.end method
