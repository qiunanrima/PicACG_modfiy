.class Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$4;
.super Ljava/lang/Object;
.source "AlertDialogCenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;

.field final synthetic val$selected:[Z


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;[Z)V
    .locals 0

    .line 1102
    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$4;->this$0:Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;

    iput-object p2, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$4;->val$selected:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1105
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 1106
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$4;->this$0:Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;

    iget-object v0, v0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->ae(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1109
    new-instance v1, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$4$1;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$4$1;-><init>(Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$4;)V

    invoke-virtual {v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$4$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    .line 1111
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1114
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$4;->val$selected:[Z

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    .line 1115
    iget-object v1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$4;->val$selected:[Z

    array-length v1, v1

    sub-int/2addr v1, v3

    :goto_1
    if-ltz v1, :cond_2

    .line 1116
    iget-object v2, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$4;->val$selected:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    .line 1117
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1120
    :cond_2
    iget-object v1, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$4;->this$0:Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;

    iget-object v1, v1, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;->val$context:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/picacomic/fregata/utils/e;->u(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_2

    .line 1124
    :cond_3
    iget-object p2, p0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26$4;->this$0:Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;

    iget-object p2, p2, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;->val$context:Landroid/content/Context;

    const v0, 0x7f0f00cf

    invoke-static {p2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 1129
    :goto_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
