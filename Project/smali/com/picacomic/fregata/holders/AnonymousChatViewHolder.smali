.class public Lcom/picacomic/fregata/holders/AnonymousChatViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AnonymousChatViewHolder.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AnonymousChatViewHolder"


# instance fields
.field textView_message:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090247
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 22
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method


# virtual methods
.method public a(Lcom/picacomic/fregata/objects/AnonymousChatDataObject;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/AnonymousChatDataObject;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/picacomic/fregata/holders/AnonymousChatViewHolder;->textView_message:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/AnonymousChatDataObject;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
