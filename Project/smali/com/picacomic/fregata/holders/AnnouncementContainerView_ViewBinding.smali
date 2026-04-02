.class public Lcom/picacomic/fregata/holders/AnnouncementContainerView_ViewBinding;
.super Ljava/lang/Object;
.source "AnnouncementContainerView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private si:Lcom/picacomic/fregata/holders/AnnouncementContainerView;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/holders/AnnouncementContainerView;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/picacomic/fregata/holders/AnnouncementContainerView_ViewBinding;->si:Lcom/picacomic/fregata/holders/AnnouncementContainerView;

    const-string v0, "field \'imageView_icon\'"

    .line 28
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09013c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->imageView_icon:Landroid/widget/ImageView;

    const-string v0, "field \'textView_title\'"

    .line 29
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090245

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->textView_title:Landroid/widget/TextView;

    const-string v0, "field \'textView_count\'"

    .line 30
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090246

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->textView_count:Landroid/widget/TextView;

    const-string v0, "field \'linearLayout_content\'"

    .line 31
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090180

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->linearLayout_content:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/picacomic/fregata/holders/AnnouncementContainerView_ViewBinding;->si:Lcom/picacomic/fregata/holders/AnnouncementContainerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/picacomic/fregata/holders/AnnouncementContainerView_ViewBinding;->si:Lcom/picacomic/fregata/holders/AnnouncementContainerView;

    .line 41
    iput-object v1, v0, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->imageView_icon:Landroid/widget/ImageView;

    .line 42
    iput-object v1, v0, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->textView_title:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->textView_count:Landroid/widget/TextView;

    .line 44
    iput-object v1, v0, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->linearLayout_content:Landroid/widget/LinearLayout;

    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
