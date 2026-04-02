.class public Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "ChatroomMessageViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private sA:Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder_ViewBinding;->sA:Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;

    const-string v0, "field \'container\'"

    .line 24
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09018a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->container:Landroid/widget/LinearLayout;

    const-string v0, "field \'imageView_avatar\'"

    .line 25
    const-class v1, Lde/hdodenhof/circleimageview/CircleImageView;

    const v2, 0x7f090140

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    const-string v0, "field \'textView_name\'"

    .line 26
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090260

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_name:Landroid/widget/TextView;

    const-string v0, "field \'textView_title\'"

    .line 27
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090265

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_title:Landroid/widget/TextView;

    const-string v0, "field \'textView_message\'"

    .line 28
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09025f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_message:Landroid/widget/TextView;

    const-string v0, "field \'textView_timestamp\'"

    .line 29
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090264

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_timestamp:Landroid/widget/TextView;

    const-string v0, "field \'imageView_verified\'"

    .line 30
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090142

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->imageView_verified:Landroid/widget/ImageView;

    const-string v0, "field \'textView_replyName\'"

    .line 31
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090262

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_replyName:Landroid/widget/TextView;

    const-string v0, "field \'textView_replyMessage\'"

    .line 32
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090261

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_replyMessage:Landroid/widget/TextView;

    const-string v0, "field \'textView_at\'"

    .line 33
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09025c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_at:Landroid/widget/TextView;

    const-string v0, "field \'linearLayout_replyContainer\'"

    .line 34
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09018d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->linearLayout_replyContainer:Landroid/widget/LinearLayout;

    const-string v0, "field \'textView_level\'"

    .line 35
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09025e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_level:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder_ViewBinding;->sA:Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder_ViewBinding;->sA:Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;

    .line 45
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->container:Landroid/widget/LinearLayout;

    .line 46
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 47
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_name:Landroid/widget/TextView;

    .line 48
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_title:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_message:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_timestamp:Landroid/widget/TextView;

    .line 51
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->imageView_verified:Landroid/widget/ImageView;

    .line 52
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_replyName:Landroid/widget/TextView;

    .line 53
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_replyMessage:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_at:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->linearLayout_replyContainer:Landroid/widget/LinearLayout;

    .line 56
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ChatroomMessageViewHolder;->textView_level:Landroid/widget/TextView;

    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
