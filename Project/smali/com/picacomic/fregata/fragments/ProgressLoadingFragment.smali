.class public Lcom/picacomic/fregata/fragments/ProgressLoadingFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ProgressLoadingFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ProgressLoadingFragment"


# instance fields
.field re:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x3

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/picacomic/fregata/fragments/ProgressLoadingFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 51
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProgressLoadingFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    const/16 v0, 0x31

    invoke-virtual {p3, v0}, Landroid/view/Window;->setGravity(I)V

    const/4 p3, 0x0

    const v0, 0x7f0b0066

    .line 52
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090168

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const v0, 0x7f0901e3

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 56
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProgressLoadingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProgressLoadingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->x(Landroid/content/Context;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    invoke-virtual {v0, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProgressLoadingFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p3

    const-string v0, "TestingLink"

    invoke-virtual {p3, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p3

    const v0, 0x7f08011d

    invoke-virtual {p3, v0}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 70
    invoke-virtual {p2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProgressLoadingFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProgressLoadingFragment;->dismiss()V

    .line 42
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProgressLoadingFragment;->re:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ProgressLoadingFragment;->re:Landroid/graphics/drawable/AnimationDrawable;

    .line 45
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDetach()V

    return-void
.end method
