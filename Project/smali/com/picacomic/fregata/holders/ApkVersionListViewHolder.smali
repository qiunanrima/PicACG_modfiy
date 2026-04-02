.class public Lcom/picacomic/fregata/holders/ApkVersionListViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ApkVersionListViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "ApkVersionListViewHolder"


# instance fields
.field context:Landroid/content/Context;

.field je:Lcom/picacomic/fregata/a/k;

.field public textView_content:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09024a
    .end annotation
.end field

.field public textView_timestamp:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09024b
    .end annotation
.end field

.field public textView_version:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09024d
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/picacomic/fregata/a/k;)V
    .locals 0

    .line 35
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 36
    iput-object p1, p0, Lcom/picacomic/fregata/holders/ApkVersionListViewHolder;->context:Landroid/content/Context;

    .line 37
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 38
    iput-object p3, p0, Lcom/picacomic/fregata/holders/ApkVersionListViewHolder;->je:Lcom/picacomic/fregata/a/k;

    .line 40
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/picacomic/fregata/objects/LatestApplicationObject;)V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/picacomic/fregata/holders/ApkVersionListViewHolder;->textView_version:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/LatestApplicationObject;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/picacomic/fregata/holders/ApkVersionListViewHolder;->textView_content:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/LatestApplicationObject;->getUpdateContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/picacomic/fregata/holders/ApkVersionListViewHolder;->textView_timestamp:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/picacomic/fregata/holders/ApkVersionListViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/LatestApplicationObject;->getCreatedAt()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/picacomic/fregata/utils/g;->B(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 46
    iget-object p1, p0, Lcom/picacomic/fregata/holders/ApkVersionListViewHolder;->je:Lcom/picacomic/fregata/a/k;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/ApkVersionListViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/picacomic/fregata/a/k;->C(I)V

    .line 47
    sget-object p1, Lcom/picacomic/fregata/holders/ApkVersionListViewHolder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick--> position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/ApkVersionListViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
