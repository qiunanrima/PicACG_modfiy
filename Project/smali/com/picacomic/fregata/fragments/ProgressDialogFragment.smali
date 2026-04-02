.class public Lcom/picacomic/fregata/fragments/ProgressDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ProgressDialogFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ProgressDialogFragment"


# instance fields
.field public rd:Ljava/lang/String;

.field re:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static ai(Ljava/lang/String;)Lcom/picacomic/fregata/fragments/ProgressDialogFragment;
    .locals 3

    .line 53
    new-instance v0, Lcom/picacomic/fregata/fragments/ProgressDialogFragment;

    invoke-direct {v0}, Lcom/picacomic/fregata/fragments/ProgressDialogFragment;-><init>()V

    .line 54
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "PROGRESS_MESSAGE"

    .line 55
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/fragments/ProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static dH()Lcom/picacomic/fregata/fragments/ProgressDialogFragment;
    .locals 2

    .line 46
    new-instance v0, Lcom/picacomic/fregata/fragments/ProgressDialogFragment;

    invoke-direct {v0}, Lcom/picacomic/fregata/fragments/ProgressDialogFragment;-><init>()V

    .line 47
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 48
    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/fragments/ProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 62
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "PROGRESS_MESSAGE"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ProgressDialogFragment;->rd:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 66
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ProgressDialogFragment;->rd:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 100
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 102
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 106
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 107
    new-instance v0, Lcom/picacomic/fregata/fragments/ProgressDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/ProgressDialogFragment$1;-><init>(Lcom/picacomic/fregata/fragments/ProgressDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p2, 0x0

    const p3, 0x7f0b0065

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, p3, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p3, 0x7f090168

    .line 74
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v0, 0x7f0901e3

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0902da

    .line 76
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 78
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProgressDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProgressDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/picacomic/fregata/utils/e;->x(Landroid/content/Context;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    .line 80
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 81
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 84
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProgressDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p2

    const-string v0, "TestingLink"

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    const v0, 0x7f08011e

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 88
    invoke-virtual {p2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 91
    :goto_0
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ProgressDialogFragment;->rd:Ljava/lang/String;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 126
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 127
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProgressDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProgressDialogFragment;->dismiss()V

    .line 129
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProgressDialogFragment;->re:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ProgressDialogFragment;->re:Landroid/graphics/drawable/AnimationDrawable;

    .line 132
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDetach()V

    return-void
.end method
