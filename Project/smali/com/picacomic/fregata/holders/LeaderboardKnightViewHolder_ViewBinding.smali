.class public Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "LeaderboardKnightViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private sR:Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder_ViewBinding;->sR:Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;

    const-string v0, "field \'textView_order\'"

    .line 22
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902b8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->textView_order:Landroid/widget/TextView;

    const-string v0, "field \'textView_name\'"

    .line 23
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902b7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->textView_name:Landroid/widget/TextView;

    const-string v0, "field \'textView_level\'"

    .line 24
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902b6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->textView_level:Landroid/widget/TextView;

    const-string v0, "field \'textView_title\'"

    .line 25
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902b9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->textView_title:Landroid/widget/TextView;

    const-string v0, "field \'textView_comic\'"

    .line 26
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902b5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->textView_comic:Landroid/widget/TextView;

    const-string v0, "field \'imageView_characterIcon\'"

    .line 27
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090165

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->imageView_characterIcon:Landroid/widget/ImageView;

    const-string v0, "field \'imageView_order\'"

    .line 28
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090164

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->imageView_order:Landroid/widget/ImageView;

    const-string v0, "field \'imageView_avatar\'"

    .line 29
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090163

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->imageView_avatar:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder_ViewBinding;->sR:Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder_ViewBinding;->sR:Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;

    .line 39
    iput-object v1, v0, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->textView_order:Landroid/widget/TextView;

    .line 40
    iput-object v1, v0, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->textView_name:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->textView_level:Landroid/widget/TextView;

    .line 42
    iput-object v1, v0, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->textView_title:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->textView_comic:Landroid/widget/TextView;

    .line 44
    iput-object v1, v0, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->imageView_characterIcon:Landroid/widget/ImageView;

    .line 45
    iput-object v1, v0, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->imageView_order:Landroid/widget/ImageView;

    .line 46
    iput-object v1, v0, Lcom/picacomic/fregata/holders/LeaderboardKnightViewHolder;->imageView_avatar:Landroid/widget/ImageView;

    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
