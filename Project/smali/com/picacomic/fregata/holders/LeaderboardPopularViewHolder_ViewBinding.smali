.class public Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "LeaderboardPopularViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private sS:Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder_ViewBinding;->sS:Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;

    const-string v0, "field \'textView_order\'"

    .line 23
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902bd

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;->textView_order:Landroid/widget/TextView;

    const-string v0, "field \'textView_name\'"

    .line 24
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902bc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;->textView_name:Landroid/widget/TextView;

    const-string v0, "field \'textView_author\'"

    .line 25
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902ba

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;->textView_author:Landroid/widget/TextView;

    const-string v0, "field \'textView_category\'"

    .line 26
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902bb

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;->textView_category:Landroid/widget/TextView;

    const-string v0, "field \'textView_viewCount\'"

    .line 27
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902be

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;->textView_viewCount:Landroid/widget/TextView;

    const-string v0, "field \'textView_viewCountTitle\'"

    .line 28
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902bf

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;->textView_viewCountTitle:Landroid/widget/TextView;

    const-string v0, "field \'imageView_order\'"

    .line 29
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090167

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;->imageView_order:Landroid/widget/ImageView;

    const-string v0, "field \'imageView_image\'"

    .line 30
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090166

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;->imageView_image:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder_ViewBinding;->sS:Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder_ViewBinding;->sS:Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;

    .line 40
    iput-object v1, v0, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;->textView_order:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;->textView_name:Landroid/widget/TextView;

    .line 42
    iput-object v1, v0, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;->textView_author:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;->textView_category:Landroid/widget/TextView;

    .line 44
    iput-object v1, v0, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;->textView_viewCount:Landroid/widget/TextView;

    .line 45
    iput-object v1, v0, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;->textView_viewCountTitle:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;->imageView_order:Landroid/widget/ImageView;

    .line 47
    iput-object v1, v0, Lcom/picacomic/fregata/holders/LeaderboardPopularViewHolder;->imageView_image:Landroid/widget/ImageView;

    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
