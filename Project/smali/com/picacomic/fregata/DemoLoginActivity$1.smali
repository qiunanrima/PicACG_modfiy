.class Lcom/picacomic/fregata/DemoLoginActivity$1;
.super Ljava/lang/Object;
.source "DemoLoginActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/DemoLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hf:Lcom/picacomic/fregata/DemoLoginActivity;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/DemoLoginActivity;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/picacomic/fregata/DemoLoginActivity$1;->hf:Lcom/picacomic/fregata/DemoLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const p1, 0x7f0901c4

    if-eq p2, p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 81
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/DemoLoginActivity$1;->hf:Lcom/picacomic/fregata/DemoLoginActivity;

    invoke-static {p1}, Lcom/picacomic/fregata/DemoLoginActivity;->a(Lcom/picacomic/fregata/DemoLoginActivity;)V

    const/4 p1, 0x1

    return p1
.end method
