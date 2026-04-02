.class public Lcom/picacomic/fregata/holders/ChatroomGameMessageViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "ChatroomGameMessageViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private sv:Lcom/picacomic/fregata/holders/ChatroomGameMessageViewHolder;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/holders/ChatroomGameMessageViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/picacomic/fregata/holders/ChatroomGameMessageViewHolder_ViewBinding;->sv:Lcom/picacomic/fregata/holders/ChatroomGameMessageViewHolder;

    const-string v0, "field \'textView_message\'"

    .line 22
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090259

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/picacomic/fregata/holders/ChatroomGameMessageViewHolder;->textView_message:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/picacomic/fregata/holders/ChatroomGameMessageViewHolder_ViewBinding;->sv:Lcom/picacomic/fregata/holders/ChatroomGameMessageViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lcom/picacomic/fregata/holders/ChatroomGameMessageViewHolder_ViewBinding;->sv:Lcom/picacomic/fregata/holders/ChatroomGameMessageViewHolder;

    .line 32
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ChatroomGameMessageViewHolder;->textView_message:Landroid/widget/TextView;

    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
