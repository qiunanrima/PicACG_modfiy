.class final Lcom/picacomic/fregata/utils/views/AlertDialogCenter$24;
.super Ljava/lang/Object;
.source "AlertDialogCenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showChatroomSettingDialog(Landroid/content/Context;Lcom/picacomic/fregata/objects/UserProfileObject;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$textView_speechLanguage:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .line 995
    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$24;->val$textView_speechLanguage:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 998
    sget-object p1, Lcom/picacomic/fregata/c/b;->uP:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 999
    sget-object p1, Lcom/picacomic/fregata/c/b;->uP:Ljava/lang/String;

    const-string v0, "chinese"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1000
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$24;->val$textView_speechLanguage:Landroid/widget/TextView;

    const v0, 0x7f0f00db

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const-string p1, "cantonese"

    .line 1001
    sput-object p1, Lcom/picacomic/fregata/c/b;->uP:Ljava/lang/String;

    goto :goto_0

    .line 1003
    :cond_0
    sget-object p1, Lcom/picacomic/fregata/c/b;->uP:Ljava/lang/String;

    const-string v0, "cantonese"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1004
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$24;->val$textView_speechLanguage:Landroid/widget/TextView;

    const v0, 0x7f0f00de

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const-string p1, "japanese"

    .line 1005
    sput-object p1, Lcom/picacomic/fregata/c/b;->uP:Ljava/lang/String;

    goto :goto_0

    .line 1007
    :cond_1
    sget-object p1, Lcom/picacomic/fregata/c/b;->uP:Ljava/lang/String;

    const-string v0, "japanese"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1008
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$24;->val$textView_speechLanguage:Landroid/widget/TextView;

    const v0, 0x7f0f00dd

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const-string p1, "english"

    .line 1009
    sput-object p1, Lcom/picacomic/fregata/c/b;->uP:Ljava/lang/String;

    goto :goto_0

    .line 1012
    :cond_2
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$24;->val$textView_speechLanguage:Landroid/widget/TextView;

    const v0, 0x7f0f00dc

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const-string p1, "chinese"

    .line 1013
    sput-object p1, Lcom/picacomic/fregata/c/b;->uP:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method
