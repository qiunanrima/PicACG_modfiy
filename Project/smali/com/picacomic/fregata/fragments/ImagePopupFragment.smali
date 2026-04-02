.class public Lcom/picacomic/fregata/fragments/ImagePopupFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ImagePopupFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ImagePopupFragment"


# instance fields
.field public pA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static ae(Ljava/lang/String;)Lcom/picacomic/fregata/fragments/ImagePopupFragment;
    .locals 3

    .line 55
    new-instance v0, Lcom/picacomic/fregata/fragments/ImagePopupFragment;

    invoke-direct {v0}, Lcom/picacomic/fregata/fragments/ImagePopupFragment;-><init>()V

    .line 56
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "IMAGE_URL"

    .line 57
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/fragments/ImagePopupFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ImagePopupFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ImagePopupFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "IMAGE_URL"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ImagePopupFragment;->pA:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 111
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 113
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 117
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 118
    new-instance v0, Lcom/picacomic/fregata/fragments/ImagePopupFragment$3;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/ImagePopupFragment$3;-><init>(Lcom/picacomic/fregata/fragments/ImagePopupFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const p3, 0x7f0b0057

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090162

    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 77
    :try_start_0
    iget-object p3, p0, Lcom/picacomic/fregata/fragments/ImagePopupFragment;->pA:Ljava/lang/String;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/picacomic/fregata/fragments/ImagePopupFragment;->pA:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ImagePopupFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p3

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ImagePopupFragment;->pA:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p3

    const v0, 0x7f080133

    invoke-virtual {p3, v0}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 85
    invoke-virtual {p3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :cond_0
    :goto_0
    const p3, 0x7f090137

    .line 88
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    .line 89
    new-instance v0, Lcom/picacomic/fregata/fragments/ImagePopupFragment$1;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/ImagePopupFragment$1;-><init>(Lcom/picacomic/fregata/fragments/ImagePopupFragment;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    new-instance p3, Lcom/picacomic/fregata/fragments/ImagePopupFragment$2;

    invoke-direct {p3, p0}, Lcom/picacomic/fregata/fragments/ImagePopupFragment$2;-><init>(Lcom/picacomic/fregata/fragments/ImagePopupFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 137
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 138
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ImagePopupFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ImagePopupFragment;->dismiss()V

    .line 141
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDetach()V

    return-void
.end method
