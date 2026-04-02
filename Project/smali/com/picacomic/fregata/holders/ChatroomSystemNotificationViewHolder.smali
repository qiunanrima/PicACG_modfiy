.class public Lcom/picacomic/fregata/holders/ChatroomSystemNotificationViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ChatroomSystemNotificationViewHolder.java"


# instance fields
.field public textView_notification:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090263
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 19
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
