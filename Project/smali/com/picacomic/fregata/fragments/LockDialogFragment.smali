.class public Lcom/picacomic/fregata/fragments/LockDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "LockDialogFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LockDialogFragment"


# instance fields
.field count:I

.field pP:[Landroid/widget/EditText;

.field pQ:Landroid/widget/TextView;

.field pR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment;->count:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x103000a

    .line 56
    invoke-virtual {p0, p1, v0}, Lcom/picacomic/fregata/fragments/LockDialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 192
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 193
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 194
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 200
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 201
    new-instance v0, Lcom/picacomic/fregata/fragments/LockDialogFragment$6;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/LockDialogFragment$6;-><init>(Lcom/picacomic/fregata/fragments/LockDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p2, 0x0

    const p3, 0x7f0b005b

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, p3, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p3, 0x7f0902c0

    .line 63
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment;->pQ:Landroid/widget/TextView;

    const/4 p3, 0x4

    .line 64
    new-array p3, p3, [Landroid/widget/EditText;

    iput-object p3, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment;->pP:[Landroid/widget/EditText;

    .line 65
    iget-object p3, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment;->pP:[Landroid/widget/EditText;

    const v0, 0x7f0900d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    aput-object v0, p3, p2

    .line 66
    iget-object p3, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment;->pP:[Landroid/widget/EditText;

    const v0, 0x7f0900d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x1

    aput-object v0, p3, v1

    .line 67
    iget-object p3, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment;->pP:[Landroid/widget/EditText;

    const v0, 0x7f0900d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v2, 0x2

    aput-object v0, p3, v2

    .line 68
    iget-object p3, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment;->pP:[Landroid/widget/EditText;

    const v0, 0x7f0900d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v3, 0x3

    aput-object v0, p3, v3

    .line 70
    iput p2, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment;->count:I

    .line 72
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LockDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/picacomic/fregata/utils/e;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment;->pR:Ljava/lang/String;

    .line 73
    iget-object p3, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment;->pR:Ljava/lang/String;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment;->pR:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LockDialogFragment;->dismiss()V

    .line 77
    :cond_1
    iget-object p3, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment;->pQ:Landroid/widget/TextView;

    new-instance v0, Lcom/picacomic/fregata/fragments/LockDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/LockDialogFragment$1;-><init>(Lcom/picacomic/fregata/fragments/LockDialogFragment;)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object p3, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment;->pP:[Landroid/widget/EditText;

    aget-object p2, p3, p2

    new-instance p3, Lcom/picacomic/fregata/fragments/LockDialogFragment$2;

    invoke-direct {p3, p0}, Lcom/picacomic/fregata/fragments/LockDialogFragment$2;-><init>(Lcom/picacomic/fregata/fragments/LockDialogFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 111
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment;->pP:[Landroid/widget/EditText;

    aget-object p2, p2, v1

    new-instance p3, Lcom/picacomic/fregata/fragments/LockDialogFragment$3;

    invoke-direct {p3, p0}, Lcom/picacomic/fregata/fragments/LockDialogFragment$3;-><init>(Lcom/picacomic/fregata/fragments/LockDialogFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment;->pP:[Landroid/widget/EditText;

    aget-object p2, p2, v2

    new-instance p3, Lcom/picacomic/fregata/fragments/LockDialogFragment$4;

    invoke-direct {p3, p0}, Lcom/picacomic/fregata/fragments/LockDialogFragment$4;-><init>(Lcom/picacomic/fregata/fragments/LockDialogFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 151
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment;->pP:[Landroid/widget/EditText;

    aget-object p2, p2, v3

    new-instance p3, Lcom/picacomic/fregata/fragments/LockDialogFragment$5;

    invoke-direct {p3, p0}, Lcom/picacomic/fregata/fragments/LockDialogFragment$5;-><init>(Lcom/picacomic/fregata/fragments/LockDialogFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 0

    .line 220
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 221
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDetach()V

    return-void
.end method
