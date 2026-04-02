.class public Lcom/picacomic/fregata/holders/CommentTopReplacementViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CommentTopReplacementViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "CommentTopReplacementViewHolder"


# instance fields
.field sI:Lcom/picacomic/fregata/a/e;

.field public textView_floor:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09028c
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/picacomic/fregata/a/e;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 33
    iput-object p2, p0, Lcom/picacomic/fregata/holders/CommentTopReplacementViewHolder;->sI:Lcom/picacomic/fregata/a/e;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 38
    sget-object p1, Lcom/picacomic/fregata/holders/CommentTopReplacementViewHolder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick--> position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/picacomic/fregata/holders/CommentTopReplacementViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
