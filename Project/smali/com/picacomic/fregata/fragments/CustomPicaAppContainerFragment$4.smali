.class Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$4;
.super Ljava/lang/Object;
.source "CustomPicaAppContainerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->dd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oQ:Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$4;->oQ:Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 216
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 223
    :pswitch_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$4;->oQ:Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->df()V

    goto :goto_0

    .line 220
    :pswitch_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$4;->oQ:Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->de()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
