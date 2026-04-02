.class public Lcom/picacomic/fregata/adapters/b;
.super Landroid/widget/BaseAdapter;
.source "EmojiGridViewAdapter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "b"


# instance fields
.field public final jI:I

.field jJ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final jK:[I

.field jc:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const v0, 0x1f600

    .line 23
    iput v0, p0, Lcom/picacomic/fregata/adapters/b;->jI:I

    const/16 v0, 0x3f

    .line 31
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/picacomic/fregata/adapters/b;->jK:[I

    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/picacomic/fregata/adapters/b;->jJ:Ljava/lang/ref/WeakReference;

    .line 99
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/adapters/b;->jc:Landroid/view/LayoutInflater;

    return-void

    nop

    :array_0
    .array-data 4
        0x1f600
        0x1f601
        0x1f602
        0x1f603
        0x1f604
        0x1f605
        0x1f606
        0x1f607
        0x1f608
        0x1f609
        0x1f60a
        0x1f60b
        0x1f60c
        0x1f60d
        0x1f60e
        0x1f60f
        0x1f610
        0x1f611
        0x1f612
        0x1f613
        0x1f614
        0x1f615
        0x1f616
        0x1f617
        0x1f618
        0x1f619
        0x1f61a
        0x1f61b
        0x1f61c
        0x1f61d
        0x1f61e
        0x1f61f
        0x1f620
        0x1f621
        0x1f622
        0x1f623
        0x1f624
        0x1f625
        0x1f626
        0x1f627
        0x1f628
        0x1f629
        0x1f62a
        0x1f62b
        0x1f62c
        0x1f62d
        0x1f62e
        0x1f62f
        0x1f630
        0x1f631
        0x1f632
        0x1f633
        0x1f634
        0x1f635
        0x1f636
        0x2622
        0x270a
        0x270b
        0x270c
        0x1f354
        0x1f37b
        0x1f375
        0x1f34c
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/b;->jK:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 130
    iget-object p2, p0, Lcom/picacomic/fregata/adapters/b;->jc:Landroid/view/LayoutInflater;

    const v0, 0x7f0b008f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 131
    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    .line 133
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    .line 139
    :goto_0
    iget-object p2, p0, Lcom/picacomic/fregata/adapters/b;->jK:[I

    aget p1, p2, p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/g;->ae(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method
