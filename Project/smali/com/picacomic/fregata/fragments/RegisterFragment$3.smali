.class Lcom/picacomic/fregata/fragments/RegisterFragment$3;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/RegisterFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

.field final synthetic rr:I


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/RegisterFragment;I)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$3;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    iput p2, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$3;->rr:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 203
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$3;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    iget v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$3;->rr:I

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/fragments/RegisterFragment;->aa(I)V

    return-void
.end method
