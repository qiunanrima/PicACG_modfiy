.class public Lcom/picacomic/fregata/fragments/SupportUsQQAlipayFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "SupportUsQQAlipayFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "SupportUsQQAlipayFragment"


# instance fields
.field textView_alipay:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902f2
    .end annotation
.end field

.field textView_alipayTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902f3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public ca()V
    .locals 1

    .line 48
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 50
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SupportUsQQAlipayFragment;->textView_alipayTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SupportUsQQAlipayFragment;->textView_alipay:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0902f2

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902f3

    if-ne p1, v0, :cond_1

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SupportUsQQAlipayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SupportUsQQAlipayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    const-string v0, "label"

    const v1, 0x7f0f01d3

    .line 60
    invoke-virtual {p0, v1}, Lcom/picacomic/fregata/fragments/SupportUsQQAlipayFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 62
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SupportUsQQAlipayFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f0055

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b006e

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/SupportUsQQAlipayFragment;->a(Landroid/view/View;)V

    return-object p1
.end method
