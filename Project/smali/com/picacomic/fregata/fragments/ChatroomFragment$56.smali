.class Lcom/picacomic/fregata/fragments/ChatroomFragment$56;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$56;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 671
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$56;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$56;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->editText_textbox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->V(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 674
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$56;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lD:Lcom/picacomic/fregata/objects/ChatroomToObject;

    if-nez p1, :cond_1

    .line 675
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$56;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->c(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    goto :goto_0

    .line 677
    :cond_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$56;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->d(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V

    .line 678
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$56;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gridView_emojiList:Landroid/widget/GridView;

    if-eqz p1, :cond_2

    .line 679
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$56;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gridView_emojiList:Landroid/widget/GridView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setVisibility(I)V

    .line 680
    :cond_2
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$56;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 683
    :try_start_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$56;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 684
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 686
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method
