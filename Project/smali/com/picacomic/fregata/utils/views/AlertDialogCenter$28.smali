.class final Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;
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

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$editText_adsInterval:Landroid/widget/EditText;

.field final synthetic val$editText_avatar:Landroid/widget/EditText;

.field final synthetic val$editText_maxMessageSize:Landroid/widget/EditText;

.field final synthetic val$editText_messageColor:Landroid/widget/EditText;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;

.field final synthetic val$toggleButton_fixImageSize:Landroid/widget/ToggleButton;

.field final synthetic val$toggleButton_hideAllAvatar:Landroid/widget/ToggleButton;

.field final synthetic val$toggleButton_nightMode:Landroid/widget/ToggleButton;

.field final synthetic val$toggleButton_showTimestamp:Landroid/widget/ToggleButton;

.field final synthetic val$toggleButton_speech:Landroid/widget/ToggleButton;

.field final synthetic val$toggleButton_speechWithName:Landroid/widget/ToggleButton;

.field final synthetic val$userProfileObject:Lcom/picacomic/fregata/objects/UserProfileObject;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ToggleButton;Landroid/widget/ToggleButton;Landroid/widget/ToggleButton;Landroid/widget/ToggleButton;Landroid/widget/ToggleButton;Landroid/widget/ToggleButton;Lcom/picacomic/fregata/objects/UserProfileObject;Landroid/widget/EditText;Landroid/view/View$OnClickListener;Landroid/app/Dialog;)V
    .locals 0

    .line 1164
    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$editText_maxMessageSize:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$editText_messageColor:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$editText_adsInterval:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$toggleButton_nightMode:Landroid/widget/ToggleButton;

    iput-object p6, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$toggleButton_showTimestamp:Landroid/widget/ToggleButton;

    iput-object p7, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$toggleButton_fixImageSize:Landroid/widget/ToggleButton;

    iput-object p8, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$toggleButton_hideAllAvatar:Landroid/widget/ToggleButton;

    iput-object p9, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$toggleButton_speech:Landroid/widget/ToggleButton;

    iput-object p10, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$toggleButton_speechWithName:Landroid/widget/ToggleButton;

    iput-object p11, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$userProfileObject:Lcom/picacomic/fregata/objects/UserProfileObject;

    iput-object p12, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$editText_avatar:Landroid/widget/EditText;

    iput-object p13, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$listener:Landroid/view/View$OnClickListener;

    iput-object p14, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1168
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$context:Landroid/content/Context;

    if-eqz v0, :cond_a

    const/16 v0, 0x64

    .line 1171
    :try_start_0
    iget-object v1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$editText_maxMessageSize:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1175
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, 0x64

    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 1180
    :try_start_1
    iget-object v3, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$editText_messageColor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-gez v3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    if-le v3, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1186
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, 0x46

    .line 1191
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$editText_adsInterval:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-gez v3, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_2

    :catch_2
    move-exception v2

    .line 1195
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v2, 0x1e

    .line 1199
    :goto_2
    iget-object v3, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$toggleButton_nightMode:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/picacomic/fregata/utils/e;->h(Landroid/content/Context;Z)Z

    .line 1200
    iget-object v3, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$toggleButton_showTimestamp:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/picacomic/fregata/utils/e;->i(Landroid/content/Context;Z)Z

    .line 1201
    iget-object v3, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$toggleButton_fixImageSize:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/picacomic/fregata/utils/e;->j(Landroid/content/Context;Z)Z

    .line 1202
    iget-object v3, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$toggleButton_hideAllAvatar:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/picacomic/fregata/utils/e;->m(Landroid/content/Context;Z)Z

    .line 1203
    iget-object v3, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$context:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/picacomic/fregata/utils/e;->e(Landroid/content/Context;I)Z

    .line 1204
    iget-object v1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/picacomic/fregata/utils/e;->g(Landroid/content/Context;I)Z

    .line 1205
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$toggleButton_speech:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/e;->k(Landroid/content/Context;Z)Z

    .line 1206
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$toggleButton_speechWithName:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/e;->l(Landroid/content/Context;Z)Z

    .line 1207
    sget-object v0, Lcom/picacomic/fregata/c/b;->uP:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1208
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$context:Landroid/content/Context;

    sget-object v1, Lcom/picacomic/fregata/c/b;->uP:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/e;->r(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1209
    :cond_4
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$userProfileObject:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$userProfileObject:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@picacomic.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1210
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/picacomic/fregata/utils/e;->f(Landroid/content/Context;I)Z

    .line 1212
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$editText_avatar:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$editText_avatar:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    .line 1216
    :cond_5
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$editText_avatar:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6539\u540d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1217
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$userProfileObject:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ruff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$userProfileObject:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v0

    const-string v1, "leader"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$userProfileObject:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v0

    const-string v1, "server"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$userProfileObject:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kagu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1218
    :cond_6
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$editText_avatar:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u6539\u540d"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/e;->t(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_4

    .line 1221
    :cond_7
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$context:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/e;->s(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_4

    .line 1213
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$userProfileObject:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ruff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$userProfileObject:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v0

    const-string v1, "knight-ace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$userProfileObject:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v0

    const-string v1, "leader"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$userProfileObject:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v0

    const-string v1, "server"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$userProfileObject:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kagu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1214
    :cond_9
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$editText_avatar:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/e;->s(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1225
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1226
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
