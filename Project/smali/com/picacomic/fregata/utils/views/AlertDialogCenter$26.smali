.class final Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;
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
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1063
    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1067
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 1068
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->ae(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1071
    new-instance v1, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$1;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$1;-><init>(Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;)V

    invoke-virtual {v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    goto :goto_0

    .line 1073
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1076
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1077
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1078
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1079
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/picacomic/fregata/objects/responses/ChatroomBlacklistObject;

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/responses/ChatroomBlacklistObject;->getUsername()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 1080
    aput-boolean v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1084
    :cond_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;->val$context:Landroid/content/Context;

    const v3, 0x7f1000ca

    invoke-direct {p1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0f00cd

    .line 1085
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v2, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$5;

    invoke-direct {v2, p0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$5;-><init>(Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;[Z)V

    .line 1086
    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0f0176

    new-instance v2, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$4;

    invoke-direct {v2, p0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$4;-><init>(Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;[Z)V

    .line 1102
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0f00ce

    new-instance v1, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$3;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$3;-><init>(Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;)V

    .line 1133
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0f009e

    new-instance v1, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$2;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$2;-><init>(Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;)V

    .line 1140
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1146
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
