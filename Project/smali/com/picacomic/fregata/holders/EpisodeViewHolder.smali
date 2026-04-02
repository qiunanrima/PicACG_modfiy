.class public Lcom/picacomic/fregata/holders/EpisodeViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "EpisodeViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "EpisodeViewHolder"


# instance fields
.field public button_epsiodeTitle:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090077
    .end annotation
.end field

.field context:Landroid/content/Context;

.field je:Lcom/picacomic/fregata/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/picacomic/fregata/a/k;)V
    .locals 0

    .line 29
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 30
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 31
    iput-object p1, p0, Lcom/picacomic/fregata/holders/EpisodeViewHolder;->context:Landroid/content/Context;

    .line 32
    iput-object p3, p0, Lcom/picacomic/fregata/holders/EpisodeViewHolder;->je:Lcom/picacomic/fregata/a/k;

    .line 34
    iget-object p1, p0, Lcom/picacomic/fregata/holders/EpisodeViewHolder;->button_epsiodeTitle:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/picacomic/fregata/objects/ComicEpisodeObject;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/picacomic/fregata/holders/EpisodeViewHolder;->button_epsiodeTitle:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 48
    iget-object p1, p0, Lcom/picacomic/fregata/holders/EpisodeViewHolder;->je:Lcom/picacomic/fregata/a/k;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/EpisodeViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/k;->C(I)V

    .line 49
    sget-object p1, Lcom/picacomic/fregata/holders/EpisodeViewHolder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick--> position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/EpisodeViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
