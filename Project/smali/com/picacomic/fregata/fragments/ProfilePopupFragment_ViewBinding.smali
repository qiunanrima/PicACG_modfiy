.class public Lcom/picacomic/fregata/fragments/ProfilePopupFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ProfilePopupFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private rc:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/fragments/ProfilePopupFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment_ViewBinding;->rc:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    const-string v0, "field \'imageView_avatar\'"

    .line 23
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090171

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->imageView_avatar:Landroid/widget/ImageView;

    const-string v0, "field \'imageView_character\'"

    .line 24
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090172

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->imageView_character:Landroid/widget/ImageView;

    const-string v0, "field \'textView_levelTitle\'"

    .line 25
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902d1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_levelTitle:Landroid/widget/TextView;

    const-string v0, "field \'textView_level\'"

    .line 26
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902d0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_level:Landroid/widget/TextView;

    const-string v0, "field \'textView_name\'"

    .line 27
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902d2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_name:Landroid/widget/TextView;

    const-string v0, "field \'textView_title\'"

    .line 28
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902d5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_title:Landroid/widget/TextView;

    const-string v0, "field \'textView_slogan\'"

    .line 29
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902d4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_slogan:Landroid/widget/TextView;

    const-string v0, "field \'textView_adminFunction\'"

    .line 30
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902cf

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_adminFunction:Landroid/widget/TextView;

    const-string v0, "field \'textView_block\'"

    .line 31
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902ce

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_block:Landroid/widget/TextView;

    const-string v0, "field \'textView_woo\'"

    .line 32
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902d6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_woo:Landroid/widget/TextView;

    const-string v0, "field \'textView_removeComment\'"

    .line 33
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902d3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_removeComment:Landroid/widget/TextView;

    const-string v0, "field \'linearLayout_adminFunction\'"

    .line 34
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0901b9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->linearLayout_adminFunction:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment_ViewBinding;->rc:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment_ViewBinding;->rc:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    .line 44
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->imageView_avatar:Landroid/widget/ImageView;

    .line 45
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->imageView_character:Landroid/widget/ImageView;

    .line 46
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_levelTitle:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_level:Landroid/widget/TextView;

    .line 48
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_name:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_title:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_slogan:Landroid/widget/TextView;

    .line 51
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_adminFunction:Landroid/widget/TextView;

    .line 52
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_block:Landroid/widget/TextView;

    .line 53
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_woo:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_removeComment:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->linearLayout_adminFunction:Landroid/widget/LinearLayout;

    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
