.class public Lcom/picacomic/fregata/fragments/AnonymousChatFragment_ViewBinding;
.super Ljava/lang/Object;
.source "AnonymousChatFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private kl:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/fragments/AnonymousChatFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment_ViewBinding;->kl:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    const-string v0, "field \'linearLayout_name\'"

    .line 26
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090182

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->linearLayout_name:Landroid/widget/LinearLayout;

    const-string v0, "field \'linearLayout_typeSpace\'"

    .line 27
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090183

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->linearLayout_typeSpace:Landroid/widget/LinearLayout;

    const-string v0, "field \'linearLayout_message\'"

    .line 28
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090181

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->linearLayout_message:Landroid/widget/LinearLayout;

    const-string v0, "field \'recyclerView\'"

    .line 29
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0901f0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "field \'editText_name\'"

    .line 30
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900bc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->editText_name:Landroid/widget/EditText;

    const-string v0, "field \'editText_typeSpace\'"

    .line 31
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900bd

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->editText_typeSpace:Landroid/widget/EditText;

    const-string v0, "field \'textView_message\'"

    .line 32
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090249

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->textView_message:Landroid/widget/TextView;

    const-string v0, "field \'textView_matcherName\'"

    .line 33
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090248

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->textView_matcherName:Landroid/widget/TextView;

    const-string v0, "field \'imageButton_leave\'"

    .line 34
    const-class v1, Landroid/widget/ImageButton;

    const v2, 0x7f09011c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->imageButton_leave:Landroid/widget/ImageButton;

    const-string v0, "field \'button_match\'"

    .line 35
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090031

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->button_match:Landroid/widget/Button;

    const-string v0, "field \'button_send\'"

    .line 36
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090032

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->button_send:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment_ViewBinding;->kl:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment_ViewBinding;->kl:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    .line 46
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->linearLayout_name:Landroid/widget/LinearLayout;

    .line 47
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->linearLayout_typeSpace:Landroid/widget/LinearLayout;

    .line 48
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->linearLayout_message:Landroid/widget/LinearLayout;

    .line 49
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 50
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->editText_name:Landroid/widget/EditText;

    .line 51
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->editText_typeSpace:Landroid/widget/EditText;

    .line 52
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->textView_message:Landroid/widget/TextView;

    .line 53
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->textView_matcherName:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->imageButton_leave:Landroid/widget/ImageButton;

    .line 55
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->button_match:Landroid/widget/Button;

    .line 56
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->button_send:Landroid/widget/Button;

    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
