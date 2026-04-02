.class Lcom/picacomic/fregata/fragments/BaseImagePickFragment$1;
.super Ljava/lang/Object;
.source "BaseImagePickFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->cf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic kw:Lcom/picacomic/fregata/fragments/BaseImagePickFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/BaseImagePickFragment;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/BaseImagePickFragment$1;->kw:Lcom/picacomic/fregata/fragments/BaseImagePickFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 55
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 56
    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result p1

    if-nez p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/BaseImagePickFragment$1;->kw:Lcom/picacomic/fregata/fragments/BaseImagePickFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->ch()V

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/BaseImagePickFragment$1;->kw:Lcom/picacomic/fregata/fragments/BaseImagePickFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->cg()V

    :goto_0
    return-void
.end method
