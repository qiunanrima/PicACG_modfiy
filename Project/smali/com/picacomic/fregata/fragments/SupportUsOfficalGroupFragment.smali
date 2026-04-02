.class public Lcom/picacomic/fregata/fragments/SupportUsOfficalGroupFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "SupportUsOfficalGroupFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SupportUsOfficalGroupFragment"


# instance fields
.field textView_warning:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902f4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b006c

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/SupportUsOfficalGroupFragment;->a(Landroid/view/View;)V

    .line 37
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/SupportUsOfficalGroupFragment;->textView_warning:Landroid/widget/TextView;

    new-instance p3, Lcom/picacomic/fregata/fragments/SupportUsOfficalGroupFragment$1;

    invoke-direct {p3, p0}, Lcom/picacomic/fregata/fragments/SupportUsOfficalGroupFragment$1;-><init>(Lcom/picacomic/fregata/fragments/SupportUsOfficalGroupFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
