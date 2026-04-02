.class public Lcom/picacomic/fregata/holders/ChatroomGameMessageViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ChatroomGameMessageViewHolder.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ChatroomGameMessageViewHolder"


# instance fields
.field public textView_message:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090259
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
