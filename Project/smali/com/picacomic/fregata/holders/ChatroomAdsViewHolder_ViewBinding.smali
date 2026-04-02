.class public Lcom/picacomic/fregata/holders/ChatroomAdsViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "ChatroomAdsViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private so:Lcom/picacomic/fregata/holders/ChatroomAdsViewHolder;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/holders/ChatroomAdsViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/picacomic/fregata/holders/ChatroomAdsViewHolder_ViewBinding;->so:Lcom/picacomic/fregata/holders/ChatroomAdsViewHolder;

    const-string v0, "field \'imageView_avatar\'"

    .line 22
    const-class v1, Lde/hdodenhof/circleimageview/CircleImageView;

    const v2, 0x7f090140

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ChatroomAdsViewHolder;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    const-string v0, "field \'textView_name\'"

    .line 23
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090260

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ChatroomAdsViewHolder;->textView_name:Landroid/widget/TextView;

    const-string v0, "field \'textView_title\'"

    .line 24
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090265

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ChatroomAdsViewHolder;->textView_title:Landroid/widget/TextView;

    const-string v0, "field \'textView_timestamp\'"

    .line 25
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090264

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/ChatroomAdsViewHolder;->textView_timestamp:Landroid/widget/TextView;

    const-string v0, "field \'textView_level\'"

    .line 26
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09025e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/picacomic/fregata/holders/ChatroomAdsViewHolder;->textView_level:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/picacomic/fregata/holders/ChatroomAdsViewHolder_ViewBinding;->so:Lcom/picacomic/fregata/holders/ChatroomAdsViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/picacomic/fregata/holders/ChatroomAdsViewHolder_ViewBinding;->so:Lcom/picacomic/fregata/holders/ChatroomAdsViewHolder;

    .line 36
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ChatroomAdsViewHolder;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 37
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ChatroomAdsViewHolder;->textView_name:Landroid/widget/TextView;

    .line 38
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ChatroomAdsViewHolder;->textView_title:Landroid/widget/TextView;

    .line 39
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ChatroomAdsViewHolder;->textView_timestamp:Landroid/widget/TextView;

    .line 40
    iput-object v1, v0, Lcom/picacomic/fregata/holders/ChatroomAdsViewHolder;->textView_level:Landroid/widget/TextView;

    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
