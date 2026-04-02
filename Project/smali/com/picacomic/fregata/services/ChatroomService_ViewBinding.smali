.class public Lcom/picacomic/fregata/services/ChatroomService_ViewBinding;
.super Ljava/lang/Object;
.source "ChatroomService_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private tM:Lcom/picacomic/fregata/services/ChatroomService;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/services/ChatroomService;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService_ViewBinding;->tM:Lcom/picacomic/fregata/services/ChatroomService;

    const-string v0, "field \'recyclerView_chat\'"

    .line 25
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f090201

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/picacomic/fregata/services/ChatroomService;->recyclerView_chat:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "field \'relativeLayout_input\'"

    .line 26
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f09020a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/services/ChatroomService;->relativeLayout_input:Landroid/widget/RelativeLayout;

    const-string v0, "field \'button_messageMode\'"

    .line 27
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090085

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/services/ChatroomService;->button_messageMode:Landroid/widget/Button;

    const-string v0, "field \'button_close\'"

    .line 28
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090084

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/services/ChatroomService;->button_close:Landroid/widget/Button;

    const-string v0, "field \'button_send\'"

    .line 29
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090087

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/services/ChatroomService;->button_send:Landroid/widget/Button;

    const-string v0, "field \'button_move\'"

    .line 30
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090086

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/services/ChatroomService;->button_move:Landroid/widget/Button;

    const-string v0, "field \'button_sizeController\'"

    .line 31
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090088

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/services/ChatroomService;->button_sizeController:Landroid/widget/Button;

    const-string v0, "field \'editText_input\'"

    .line 32
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900e1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/services/ChatroomService;->editText_input:Landroid/widget/EditText;

    const-string v0, "field \'textView_totalUserCount\'"

    .line 33
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902dd

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/services/ChatroomService;->textView_totalUserCount:Landroid/widget/TextView;

    const-string v0, "field \'textView_atList\'"

    .line 34
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090251

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/services/ChatroomService;->textView_atList:Landroid/widget/TextView;

    const-string v0, "field \'textView_reply\'"

    .line 35
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090255

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/services/ChatroomService;->textView_reply:Landroid/widget/TextView;

    const-string v0, "field \'textView_toastMsg\'"

    .line 36
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090257

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/picacomic/fregata/services/ChatroomService;->textView_toastMsg:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService_ViewBinding;->tM:Lcom/picacomic/fregata/services/ChatroomService;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/picacomic/fregata/services/ChatroomService_ViewBinding;->tM:Lcom/picacomic/fregata/services/ChatroomService;

    .line 46
    iput-object v1, v0, Lcom/picacomic/fregata/services/ChatroomService;->recyclerView_chat:Landroid/support/v7/widget/RecyclerView;

    .line 47
    iput-object v1, v0, Lcom/picacomic/fregata/services/ChatroomService;->relativeLayout_input:Landroid/widget/RelativeLayout;

    .line 48
    iput-object v1, v0, Lcom/picacomic/fregata/services/ChatroomService;->button_messageMode:Landroid/widget/Button;

    .line 49
    iput-object v1, v0, Lcom/picacomic/fregata/services/ChatroomService;->button_close:Landroid/widget/Button;

    .line 50
    iput-object v1, v0, Lcom/picacomic/fregata/services/ChatroomService;->button_send:Landroid/widget/Button;

    .line 51
    iput-object v1, v0, Lcom/picacomic/fregata/services/ChatroomService;->button_move:Landroid/widget/Button;

    .line 52
    iput-object v1, v0, Lcom/picacomic/fregata/services/ChatroomService;->button_sizeController:Landroid/widget/Button;

    .line 53
    iput-object v1, v0, Lcom/picacomic/fregata/services/ChatroomService;->editText_input:Landroid/widget/EditText;

    .line 54
    iput-object v1, v0, Lcom/picacomic/fregata/services/ChatroomService;->textView_totalUserCount:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcom/picacomic/fregata/services/ChatroomService;->textView_atList:Landroid/widget/TextView;

    .line 56
    iput-object v1, v0, Lcom/picacomic/fregata/services/ChatroomService;->textView_reply:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lcom/picacomic/fregata/services/ChatroomService;->textView_toastMsg:Landroid/widget/TextView;

    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
