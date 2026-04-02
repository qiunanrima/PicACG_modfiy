.class public Lcom/picacomic/fregata/fragments/SettingFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "SettingFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingFragment"


# instance fields
.field button_logout:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090089
    .end annotation
.end field

.field hM:I

.field rA:[Ljava/lang/String;

.field rB:I

.field rC:[Ljava/lang/String;

.field rD:I

.field rw:[Ljava/lang/String;

.field rx:I

.field ry:[Ljava/lang/String;

.field rz:I

.field textView_apkVersion:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902e0
    .end annotation
.end field

.field textView_apkVersionTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902e1
    .end annotation
.end field

.field textView_autoPagingInterval:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902e2
    .end annotation
.end field

.field textView_cache:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902e3
    .end annotation
.end field

.field textView_cacheTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902e4
    .end annotation
.end field

.field textView_chatroomService:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902e5
    .end annotation
.end field

.field textView_continueDownloadComic:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902e6
    .end annotation
.end field

.field textView_faq:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902e8
    .end annotation
.end field

.field textView_imageQuality:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902e9
    .end annotation
.end field

.field textView_password:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902ea
    .end annotation
.end field

.field textView_pin:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902ec
    .end annotation
.end field

.field textView_pinTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902ed
    .end annotation
.end field

.field textView_screenOrientation:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902ee
    .end annotation
.end field

.field textView_scrollDirection:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902ef
    .end annotation
.end field

.field textView_themeColor:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902f0
    .end annotation
.end field

.field toggleButton_nightMode:Landroid/widget/ToggleButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09030a
    .end annotation
.end field

.field toggleButton_performanceEnhancement:Landroid/widget/ToggleButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09030b
    .end annotation
.end field

.field toggleButton_testingVersion:Landroid/widget/ToggleButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090309
    .end annotation
.end field

.field toggleButton_volumePagingControl:Landroid/widget/ToggleButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09030c
    .end annotation
.end field

.field toolbar:Landroid/support/v7/widget/Toolbar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09030d
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    return-void
.end method

.method public static d(J)Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const-string p0, "0 Bytes"

    return-object p0

    :cond_0
    const/4 v0, 0x5

    .line 582
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "kB"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MB"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GB"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "TB"

    aput-object v2, v0, v1

    long-to-double p0, p0

    .line 583
    invoke-static {p0, p1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    invoke-static {v3, v4}, Ljava/lang/Math;->log10(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    double-to-int v1, v1

    .line 584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "#,##0.#"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-double v6, v1

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v3

    invoke-virtual {v5, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v0, v1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private dK()J
    .locals 4

    .line 549
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/SettingFragment;->f(Ljava/io/File;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    add-long/2addr v0, v2

    .line 550
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/picacomic/fregata/fragments/SettingFragment;->f(Ljava/io/File;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public F(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public ab(I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public bH()V
    .locals 7

    .line 485
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 487
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f0201

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 489
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/MainActivity;

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/activities/MainActivity;->t(I)V

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_apkVersionTitle:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0f01c3

    invoke-virtual {p0, v3}, Lcom/picacomic/fregata/fragments/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f0f0099

    invoke-virtual {p0, v3}, Lcom/picacomic/fregata/fragments/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_screenOrientation:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->rw:[Ljava/lang/String;

    iget v3, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->rx:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_scrollDirection:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->ry:[Ljava/lang/String;

    iget v3, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->rz:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_imageQuality:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->rA:[Ljava/lang/String;

    iget v3, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->rB:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_themeColor:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->rC:[Ljava/lang/String;

    iget v3, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->rD:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->toggleButton_nightMode:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/picacomic/fregata/utils/e;->L(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 499
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->toggleButton_volumePagingControl:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/picacomic/fregata/utils/e;->Q(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 500
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->toggleButton_performanceEnhancement:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/picacomic/fregata/utils/e;->x(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 501
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->toggleButton_testingVersion:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/picacomic/fregata/utils/e;->w(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 504
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_autoPagingInterval:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->hM:I

    int-to-float v5, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0f01a6

    invoke-virtual {p0, v1}, Lcom/picacomic/fregata/fragments/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_cacheTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0f01a8

    invoke-virtual {p0, v2}, Lcom/picacomic/fregata/fragments/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/SettingFragment;->dK()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/picacomic/fregata/fragments/SettingFragment;->d(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_pin:Landroid/widget/TextView;

    const v1, 0x7f0f01bd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 511
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_pinTitle:Landroid/widget/TextView;

    const v1, 0x7f0f01c0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_pin:Landroid/widget/TextView;

    const v1, 0x7f0f01bc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 514
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_pinTitle:Landroid/widget/TextView;

    const v1, 0x7f0f01be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public bI()V
    .locals 0

    .line 589
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    return-void
.end method

.method public ca()V
    .locals 2

    .line 166
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 170
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_screenOrientation:Landroid/widget/TextView;

    new-instance v1, Lcom/picacomic/fregata/fragments/SettingFragment$1;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/SettingFragment$1;-><init>(Lcom/picacomic/fregata/fragments/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_scrollDirection:Landroid/widget/TextView;

    new-instance v1, Lcom/picacomic/fregata/fragments/SettingFragment$10;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/SettingFragment$10;-><init>(Lcom/picacomic/fregata/fragments/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_imageQuality:Landroid/widget/TextView;

    new-instance v1, Lcom/picacomic/fregata/fragments/SettingFragment$11;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/SettingFragment$11;-><init>(Lcom/picacomic/fregata/fragments/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_themeColor:Landroid/widget/TextView;

    new-instance v1, Lcom/picacomic/fregata/fragments/SettingFragment$12;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/SettingFragment$12;-><init>(Lcom/picacomic/fregata/fragments/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_autoPagingInterval:Landroid/widget/TextView;

    new-instance v1, Lcom/picacomic/fregata/fragments/SettingFragment$13;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/SettingFragment$13;-><init>(Lcom/picacomic/fregata/fragments/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_continueDownloadComic:Landroid/widget/TextView;

    new-instance v1, Lcom/picacomic/fregata/fragments/SettingFragment$14;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/SettingFragment$14;-><init>(Lcom/picacomic/fregata/fragments/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->toggleButton_nightMode:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/picacomic/fregata/fragments/SettingFragment$15;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/SettingFragment$15;-><init>(Lcom/picacomic/fregata/fragments/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 348
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->toggleButton_volumePagingControl:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/picacomic/fregata/fragments/SettingFragment$16;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/SettingFragment$16;-><init>(Lcom/picacomic/fregata/fragments/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 361
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->toggleButton_performanceEnhancement:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/picacomic/fregata/fragments/SettingFragment$17;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/SettingFragment$17;-><init>(Lcom/picacomic/fregata/fragments/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 374
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->toggleButton_testingVersion:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/picacomic/fregata/fragments/SettingFragment$2;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/SettingFragment$2;-><init>(Lcom/picacomic/fregata/fragments/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 387
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->button_logout:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/SettingFragment$3;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/SettingFragment$3;-><init>(Lcom/picacomic/fregata/fragments/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_chatroomService:Landroid/widget/TextView;

    new-instance v1, Lcom/picacomic/fregata/fragments/SettingFragment$4;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/SettingFragment$4;-><init>(Lcom/picacomic/fregata/fragments/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_apkVersion:Landroid/widget/TextView;

    new-instance v1, Lcom/picacomic/fregata/fragments/SettingFragment$5;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/SettingFragment$5;-><init>(Lcom/picacomic/fregata/fragments/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_faq:Landroid/widget/TextView;

    new-instance v1, Lcom/picacomic/fregata/fragments/SettingFragment$6;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/SettingFragment$6;-><init>(Lcom/picacomic/fregata/fragments/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_cache:Landroid/widget/TextView;

    new-instance v1, Lcom/picacomic/fregata/fragments/SettingFragment$7;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/SettingFragment$7;-><init>(Lcom/picacomic/fregata/fragments/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_pin:Landroid/widget/TextView;

    new-instance v1, Lcom/picacomic/fregata/fragments/SettingFragment$8;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/SettingFragment$8;-><init>(Lcom/picacomic/fregata/fragments/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_password:Landroid/widget/TextView;

    new-instance v1, Lcom/picacomic/fregata/fragments/SettingFragment$9;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/SettingFragment$9;-><init>(Lcom/picacomic/fregata/fragments/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public f(Ljava/io/File;)J
    .locals 6

    .line 556
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    if-eqz v4, :cond_0

    .line 557
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 558
    invoke-virtual {p0, v4}, Lcom/picacomic/fregata/fragments/SettingFragment;->f(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v1, v4

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_1

    .line 559
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 560
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v1, v4

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method public init()V
    .locals 2

    .line 148
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    .line 150
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->rw:[Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->ry:[Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->rA:[Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->rC:[Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->M(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/SettingFragment;->F(Z)I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->rx:I

    .line 156
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->N(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/SettingFragment;->F(Z)I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->rz:I

    .line 157
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->R(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->rB:I

    .line 158
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->al(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->rD:I

    .line 160
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->O(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment;->hM:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0069

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 142
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/SettingFragment;->a(Landroid/view/View;)V

    return-object p1
.end method
