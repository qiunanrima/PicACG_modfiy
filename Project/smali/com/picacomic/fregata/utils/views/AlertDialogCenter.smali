.class public Lcom/picacomic/fregata/utils/views/AlertDialogCenter;
.super Ljava/lang/Object;
.source "AlertDialogCenter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AlertDialogCenter"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accountNotActivated(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800e3

    const v1, 0x7f0f0037

    .line 104
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static ageNotEnough(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800fd

    const v1, 0x7f0f0070

    .line 71
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static birthday(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800e3

    const v1, 0x7f0f006f

    .line 67
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static cannotComment(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800e3

    const v1, 0x7f0f006a

    .line 112
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static cannotStartWithPica(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800e3

    const v1, 0x7f0f0047

    .line 129
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static chatroomRules(Landroid/content/Context;)V
    .locals 3

    const v0, 0x7f0800e3

    const v1, 0x7f0f0049

    const v2, 0x7f0f0048

    .line 170
    invoke-static {p0, v0, v1, v2}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;III)V

    return-void
.end method

.method public static commentOptions(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 198
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1000ca

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0f0122

    .line 199
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$2;

    invoke-direct {v1, p0, p1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$2;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    const p0, 0x7f030004

    const/4 p1, -0x1

    .line 200
    invoke-virtual {v0, p0, p1, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$1;

    invoke-direct {p1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$1;-><init>()V

    const v0, 0x7f0f009e

    .line 219
    invoke-virtual {p0, v0, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 225
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static commentOptionsAdvance(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 229
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1000ca

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const p0, 0x7f0f0122

    .line 230
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f030005

    const/4 v1, -0x1

    .line 231
    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$3;

    invoke-direct {p1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$3;-><init>()V

    const v0, 0x7f0f009e

    .line 232
    invoke-virtual {p0, v0, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 238
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static continueDownloadComic(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 6

    const v1, 0x7f0800fd

    const v2, 0x7f0f0054

    const v3, 0x7f0f0053

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 289
    invoke-static/range {v0 .. v5}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;IIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static downloadNotReady(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800fd

    const v1, 0x7f0f005b

    .line 166
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static emailExist(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800e3

    const v1, 0x7f0f003a

    .line 79
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static emailLength(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800fd

    const v1, 0x7f0f005f

    .line 55
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static emptyComment(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800fd

    const v1, 0x7f0f005e

    .line 150
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static fakeEmail(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800e3

    const v1, 0x7f0f0062

    .line 133
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static forgotPasswordSuccess(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800ff

    const v1, 0x7f0f0063

    .line 87
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static generalError(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f080103

    const v1, 0x7f0f0064

    .line 145
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static generalError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f080103

    .line 141
    invoke-static {p0, v0, p1, p2}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static giftNotReady(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800fd

    const v1, 0x7f0f0065

    .line 162
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static hideComment(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 6

    const v1, 0x7f0800e3

    const v2, 0x7f0f0067

    const v3, 0x7f0f0066

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 190
    invoke-static/range {v0 .. v5}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;IIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static invalidEmailOrPassword(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800e3

    const v1, 0x7f0f0068

    .line 83
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static leavePica(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 6

    const v1, 0x7f0800ed

    const/4 v2, -0x1

    const v3, 0x7f0f0069

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 174
    invoke-static/range {v0 .. v5}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;IIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static levelUp(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800ff

    const v1, 0x7f0f006b

    .line 95
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static notFound(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800e2

    const v1, 0x7f0f0071

    .line 117
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static notSupportEmail(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800e3

    const v1, 0x7f0f0073

    .line 125
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static passwordLength(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800fd

    const v1, 0x7f0f0061

    .line 59
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static passwordNotMatch(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800e3

    const v1, 0x7f0f0072

    .line 63
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static postCommentTooFrequent(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800e3

    const v1, 0x7f0f0076

    .line 154
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static postReplyTooFrequent(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800e3

    const v1, 0x7f0f0077

    .line 158
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static punchedIn(Landroid/content/Context;)V
    .locals 3

    const v0, 0x7f0800ff

    const/4 v1, -0x1

    const v2, 0x7f0f0078

    .line 178
    invoke-static {p0, v0, v1, v2}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;III)V

    return-void
.end method

.method public static reportComment(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 6

    const v1, 0x7f0800e3

    const v2, 0x7f0f0081

    const v3, 0x7f0f0080

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 194
    invoke-static/range {v0 .. v5}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;IIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static resendActivation(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800ff

    const v1, 0x7f0f0083

    .line 91
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static showAnnouncementAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    if-nez v0, :cond_0

    return-void

    .line 754
    :cond_0
    new-instance v6, Landroid/app/Dialog;

    const v7, 0x7f1000c0

    invoke-direct {v6, v0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v7, 0x7f0b0035

    .line 755
    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 757
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 758
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    const/16 v8, 0x11

    .line 767
    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 770
    invoke-static/range {p0 .. p0}, Lcom/picacomic/fregata/utils/g;->as(Landroid/content/Context;)I

    move-result v8

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    const v8, 0x7f090217

    .line 773
    invoke-virtual {v6, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ScrollView;

    const v9, 0x7f090155

    .line 774
    invoke-virtual {v6, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v10, 0x7f090154

    .line 775
    invoke-virtual {v6, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    const v11, 0x7f09029e

    .line 776
    invoke-virtual {v6, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f09029c

    .line 777
    invoke-virtual {v6, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f09029d

    .line 778
    invoke-virtual {v6, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v14, 0x7f090108

    .line 779
    invoke-virtual {v6, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout;

    const v15, 0x7f09006d

    .line 780
    invoke-virtual {v6, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    move-object/from16 v16, v9

    const v9, 0x7f09006c

    .line 781
    invoke-virtual {v6, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 783
    sget-object v1, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->TAG:Ljava/lang/String;

    move-object/from16 v17, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Width = "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Height = "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-virtual {v8}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$19;

    invoke-direct {v1, v8, v10}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$19;-><init>(Landroid/widget/ScrollView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    const/4 v0, 0x0

    .line 807
    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 809
    new-instance v0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$20;

    invoke-direct {v0, v6}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$20;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 816
    new-instance v0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$21;

    invoke-direct {v0, v5, v6}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$21;-><init>(Landroid/view/View$OnClickListener;Landroid/app/Dialog;)V

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x8

    if-nez v5, :cond_1

    .line 825
    invoke-virtual {v15, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 826
    invoke-virtual {v14, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    if-eqz v2, :cond_2

    .line 831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 833
    :cond_2
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    if-eqz v3, :cond_3

    .line 837
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 839
    :cond_3
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    if-eqz v4, :cond_4

    move-object/from16 v1, p0

    .line 843
    invoke-static {v1, v4}, Lcom/picacomic/fregata/utils/g;->B(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v13, v17

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    move-object/from16 v2, p1

    goto :goto_3

    :cond_4
    move-object/from16 v13, v17

    move-object/from16 v1, p0

    .line 845
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :goto_3
    if-eqz v2, :cond_5

    const-string v3, ""

    .line 848
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 849
    invoke-static/range {p0 .. p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    const v1, 0x7f080133

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    move-object/from16 v9, v16

    invoke-virtual {v0, v9}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_4

    :cond_5
    move-object/from16 v9, v16

    .line 851
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    const/4 v0, 0x0

    .line 854
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 855
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 859
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static showChatroomSettingDialog(Landroid/content/Context;Lcom/picacomic/fregata/objects/UserProfileObject;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    if-nez v1, :cond_0

    return-void

    .line 927
    :cond_0
    new-instance v15, Landroid/app/Dialog;

    const v2, 0x7f1000c0

    invoke-direct {v15, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0b0037

    .line 928
    invoke-virtual {v15, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 930
    invoke-virtual {v15}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 931
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v3, 0x11

    .line 933
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 934
    invoke-static/range {p0 .. p0}, Lcom/picacomic/fregata/utils/g;->as(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const v2, 0x7f09018e

    .line 936
    invoke-virtual {v15, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f090269

    .line 938
    invoke-virtual {v15, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09026a

    .line 939
    invoke-virtual {v15, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f09026b

    .line 940
    invoke-virtual {v15, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090305

    .line 941
    invoke-virtual {v15, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ToggleButton;

    const v7, 0x7f090306

    .line 942
    invoke-virtual {v15, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ToggleButton;

    const v8, 0x7f090303

    .line 943
    invoke-virtual {v15, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ToggleButton;

    const v9, 0x7f090307

    .line 944
    invoke-virtual {v15, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ToggleButton;

    const v10, 0x7f090308

    .line 945
    invoke-virtual {v15, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ToggleButton;

    const v11, 0x7f090304

    .line 946
    invoke-virtual {v15, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ToggleButton;

    const v12, 0x7f0900c6

    .line 947
    invoke-virtual {v15, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    const v13, 0x7f0900c4

    .line 948
    invoke-virtual {v15, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    const v14, 0x7f0900c5

    .line 949
    invoke-virtual {v15, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v16, v4

    const v4, 0x7f0900c7

    .line 950
    invoke-virtual {v15, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const v0, 0x7f090267

    .line 952
    invoke-virtual {v15, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v17, v0

    const v0, 0x7f090268

    .line 954
    invoke-virtual {v15, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f090073

    .line 956
    invoke-virtual {v15, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    move-object/from16 v18, v0

    const v0, 0x7f090072

    .line 957
    invoke-virtual {v15, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v19, "chinese"

    .line 959
    sput-object v19, Lcom/picacomic/fregata/c/b;->uP:Ljava/lang/String;

    if-eqz v1, :cond_4

    move-object/from16 v20, v0

    .line 963
    invoke-static/range {p0 .. p0}, Lcom/picacomic/fregata/utils/e;->V(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 964
    invoke-static/range {p0 .. p0}, Lcom/picacomic/fregata/utils/e;->T(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 965
    invoke-static/range {p0 .. p0}, Lcom/picacomic/fregata/utils/e;->U(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 966
    invoke-static/range {p0 .. p0}, Lcom/picacomic/fregata/utils/e;->ad(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v11, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v11

    invoke-static/range {p0 .. p0}, Lcom/picacomic/fregata/utils/e;->W(Landroid/content/Context;)I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/picacomic/fregata/utils/e;->af(Landroid/content/Context;)I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 970
    invoke-static/range {p0 .. p0}, Lcom/picacomic/fregata/utils/e;->Y(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v9, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 971
    invoke-static/range {p0 .. p0}, Lcom/picacomic/fregata/utils/e;->Z(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 973
    invoke-static/range {p0 .. p0}, Lcom/picacomic/fregata/utils/e;->aa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "cantonese"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0f00db

    .line 974
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    const-string v0, "cantonese"

    .line 975
    sput-object v0, Lcom/picacomic/fregata/c/b;->uP:Ljava/lang/String;

    goto :goto_0

    .line 977
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/picacomic/fregata/utils/e;->aa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "english"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0f00dd

    .line 978
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    const-string v0, "english"

    .line 979
    sput-object v0, Lcom/picacomic/fregata/c/b;->uP:Ljava/lang/String;

    goto :goto_0

    .line 981
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/picacomic/fregata/utils/e;->aa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "japanese"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0f00de

    .line 982
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    const-string v0, "japanese"

    .line 983
    sput-object v0, Lcom/picacomic/fregata/c/b;->uP:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const v0, 0x7f0f00dc

    .line 986
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    const-string v0, "chinese"

    .line 987
    sput-object v0, Lcom/picacomic/fregata/c/b;->uP:Ljava/lang/String;

    goto :goto_0

    :cond_4
    move-object/from16 v20, v0

    move-object/from16 v21, v11

    .line 992
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/picacomic/fregata/utils/e;->ab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 995
    new-instance v0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$24;

    invoke-direct {v0, v5}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$24;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v11, 0x1

    const/16 v5, 0x8

    if-eqz p1, :cond_6

    .line 1021
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1022
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1023
    invoke-virtual/range {p1 .. p1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f0f0155

    .line 1024
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getLevel()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    invoke-virtual/range {p1 .. p1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getExp()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getLevel()I

    move-result v0

    add-int/2addr v0, v11

    invoke-static {v0}, Lcom/picacomic/fregata/utils/g;->Z(I)I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1022
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1028
    invoke-virtual/range {p1 .. p1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v0

    const-string v3, "@picacomic.com"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 1030
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/picacomic/fregata/utils/e;->X(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    const/16 v0, 0x8

    :goto_1
    move-object/from16 v2, p2

    goto :goto_2

    :cond_6
    const/16 v0, 0x8

    .line 1045
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :goto_2
    if-nez v2, :cond_7

    move-object/from16 v3, v16

    .line 1049
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    move-object/from16 v3, v16

    const/4 v0, 0x0

    .line 1051
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1052
    new-instance v0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$25;

    invoke-direct {v0, v2, v15}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$25;-><init>(Landroid/view/View$OnClickListener;Landroid/app/Dialog;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1061
    :goto_3
    invoke-static/range {p0 .. p0}, Lcom/picacomic/fregata/utils/e;->ae(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1063
    new-instance v0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$26;-><init>(Landroid/content/Context;)V

    move-object/from16 v2, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_8
    move-object/from16 v2, v17

    const v0, 0x7f0f00d0

    .line 1152
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1157
    :goto_4
    new-instance v0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$27;

    invoke-direct {v0, v15}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$27;-><init>(Landroid/app/Dialog;)V

    move-object/from16 v2, v20

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1164
    new-instance v5, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;

    move-object/from16 v3, v18

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v12, v3

    move-object v3, v4

    move-object v4, v13

    move-object v13, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object/from16 v8, v21

    move-object/from16 v11, p1

    move-object/from16 v22, v12

    move-object v12, v14

    move-object v14, v13

    move-object/from16 v13, p3

    move-object/from16 v23, v14

    move-object v14, v15

    invoke-direct/range {v0 .. v14}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$28;-><init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ToggleButton;Landroid/widget/ToggleButton;Landroid/widget/ToggleButton;Landroid/widget/ToggleButton;Landroid/widget/ToggleButton;Landroid/widget/ToggleButton;Lcom/picacomic/fregata/objects/UserProfileObject;Landroid/widget/EditText;Landroid/view/View$OnClickListener;Landroid/app/Dialog;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 1231
    invoke-virtual {v15, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1232
    invoke-virtual {v15, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1234
    invoke-virtual {v15}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static showCustomAlertDialog(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, -0x1

    .line 585
    invoke-static {p0, v0, v0, p1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;III)V

    return-void
.end method

.method public static showCustomAlertDialog(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, -0x1

    .line 581
    invoke-static {p0, p1, v0, p2}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;III)V

    return-void
.end method

.method public static showCustomAlertDialog(Landroid/content/Context;III)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 577
    invoke-static/range {v0 .. v5}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;IIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static showCustomAlertDialog(Landroid/content/Context;IIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    if-nez v0, :cond_0

    return-void

    .line 429
    :cond_0
    new-instance v6, Landroid/app/Dialog;

    const v7, 0x7f1000c0

    invoke-direct {v6, v0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v7, 0x7f0b0038

    .line 430
    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 432
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 433
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    const/16 v8, 0x30

    .line 442
    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 445
    invoke-static/range {p0 .. p0}, Lcom/picacomic/fregata/utils/g;->as(Landroid/content/Context;)I

    move-result v8

    add-int/lit8 v8, v8, -0x32

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    const v8, 0x7f090156

    .line 448
    invoke-virtual {v6, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f0902a1

    .line 449
    invoke-virtual {v6, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0902a0

    .line 450
    invoke-virtual {v6, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f09010b

    .line 451
    invoke-virtual {v6, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    const v12, 0x7f09010a

    .line 452
    invoke-virtual {v6, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    const v13, 0x7f09006f

    .line 453
    invoke-virtual {v6, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    const v14, 0x7f09006e

    .line 454
    invoke-virtual {v6, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 456
    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    invoke-static/range {p0 .. p0}, Lcom/picacomic/fregata/utils/g;->as(Landroid/content/Context;)I

    move-result v16

    mul-int/lit8 v16, v16, 0x3

    div-int/lit8 v0, v16, 0x5

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 457
    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lcom/picacomic/fregata/utils/g;->as(Landroid/content/Context;)I

    move-result v11

    div-int/lit8 v11, v11, 0x3

    iput v11, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, -0x1

    const/16 v11, 0x8

    if-ne v2, v0, :cond_1

    .line 460
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 462
    :cond_1
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    if-ne v3, v0, :cond_2

    .line 466
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 468
    :cond_2
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(I)V

    const-string v2, "\n"

    .line 469
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 492
    :goto_1
    new-instance v2, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$11;

    invoke-direct {v2, v8}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$11;-><init>(Landroid/widget/ImageView;)V

    if-ne v1, v0, :cond_4

    .line 513
    invoke-static/range {p0 .. p0}, Lcom/picacomic/fregata/utils/e;->x(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f080103

    if-eqz v0, :cond_3

    .line 514
    invoke-static/range {p0 .. p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_2

    .line 516
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, v8, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    goto :goto_2

    .line 518
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/picacomic/fregata/utils/e;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 519
    invoke-static/range {p0 .. p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_2

    .line 521
    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, v8, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    .line 524
    :goto_2
    sget-object v0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_6

    if-nez v5, :cond_6

    .line 527
    invoke-virtual {v12, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 528
    invoke-virtual {v14, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 529
    new-instance v0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$12;

    invoke-direct {v0, v6}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$12;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_7

    if-nez v5, :cond_7

    .line 538
    new-instance v0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$13;

    invoke-direct {v0, v4, v6}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$13;-><init>(Landroid/view/View$OnClickListener;Landroid/app/Dialog;)V

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    new-instance v0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$14;

    invoke-direct {v0, v6}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$14;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 554
    :cond_7
    invoke-virtual {v13, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 555
    invoke-virtual {v14, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    const/4 v0, 0x0

    .line 568
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 569
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 573
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static showCustomAlertDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 423
    invoke-static/range {v0 .. v5}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static showCustomAlertDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    if-nez v0, :cond_0

    return-void

    .line 302
    :cond_0
    new-instance v6, Landroid/app/Dialog;

    const v7, 0x7f1000c0

    invoke-direct {v6, v0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v7, 0x7f0b0038

    .line 303
    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 305
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 306
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    const/16 v8, 0x30

    .line 308
    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 310
    invoke-static/range {p0 .. p0}, Lcom/picacomic/fregata/utils/g;->as(Landroid/content/Context;)I

    move-result v8

    add-int/lit8 v8, v8, -0x32

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    const v8, 0x7f090156

    .line 312
    invoke-virtual {v6, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f0902a1

    .line 313
    invoke-virtual {v6, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0902a0

    .line 314
    invoke-virtual {v6, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f09010b

    .line 315
    invoke-virtual {v6, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    const v12, 0x7f09010a

    .line 316
    invoke-virtual {v6, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    const v13, 0x7f09006f

    .line 317
    invoke-virtual {v6, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    const v14, 0x7f09006e

    .line 318
    invoke-virtual {v6, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 320
    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    invoke-static/range {p0 .. p0}, Lcom/picacomic/fregata/utils/g;->as(Landroid/content/Context;)I

    move-result v16

    mul-int/lit8 v16, v16, 0x3

    div-int/lit8 v0, v16, 0x5

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 321
    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lcom/picacomic/fregata/utils/g;->as(Landroid/content/Context;)I

    move-result v11

    div-int/lit8 v11, v11, 0x3

    iput v11, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v0, 0x8

    if-nez v2, :cond_1

    .line 324
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 326
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-nez v3, :cond_2

    .line 330
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 332
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "\n"

    .line 333
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 336
    :goto_1
    new-instance v2, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$7;

    invoke-direct {v2, v8}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$7;-><init>(Landroid/widget/ImageView;)V

    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    .line 357
    invoke-static/range {p0 .. p0}, Lcom/picacomic/fregata/utils/e;->x(Landroid/content/Context;)Z

    move-result v1

    const v3, 0x7f080103

    if-eqz v1, :cond_3

    .line 358
    invoke-static/range {p0 .. p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_2

    .line 360
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1, v8, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    goto :goto_2

    .line 363
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/picacomic/fregata/utils/e;->x(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 364
    invoke-static/range {p0 .. p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_2

    .line 366
    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1, v8, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    .line 370
    :goto_2
    sget-object v1, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_6

    if-nez v5, :cond_6

    .line 373
    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 374
    invoke-virtual {v14, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 375
    new-instance v0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$8;

    invoke-direct {v0, v6}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$8;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_7

    if-nez v5, :cond_7

    .line 384
    new-instance v0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$9;

    invoke-direct {v0, v4, v6}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$9;-><init>(Landroid/view/View$OnClickListener;Landroid/app/Dialog;)V

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    new-instance v0, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$10;

    invoke-direct {v0, v6}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$10;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 400
    :cond_7
    invoke-virtual {v13, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    invoke-virtual {v14, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    const/4 v0, 0x0

    .line 414
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 415
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 419
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static showFaqAlertDialog(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 865
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1000c0

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0b003b

    .line 866
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 868
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 869
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    .line 878
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 881
    invoke-static {p0}, Lcom/picacomic/fregata/utils/g;->as(Landroid/content/Context;)I

    move-result p0

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const p0, 0x7f09010c

    .line 884
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    const v2, 0x7f090071

    .line 885
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f090070

    .line 886
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f090326

    .line 887
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    .line 889
    invoke-virtual {v4, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 891
    sget-object p1, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    new-instance p1, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$22;

    invoke-direct {p1, v0}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$22;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 900
    new-instance p1, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$23;

    invoke-direct {p1, p2, v0}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$23;-><init>(Landroid/view/View$OnClickListener;Landroid/app/Dialog;)V

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p2, :cond_1

    const/16 p1, 0x8

    .line 909
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 910
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    const/4 p0, 0x0

    .line 914
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 915
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 919
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static showUpdateApkAlertDialog(Landroid/content/Context;Lcom/picacomic/fregata/objects/LatestApplicationObject;Z)V
    .locals 11

    if-nez p0, :cond_0

    return-void

    .line 642
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1000c0

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0b0040

    .line 643
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 645
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 646
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x30

    .line 648
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 650
    invoke-static {p0}, Lcom/picacomic/fregata/utils/g;->as(Landroid/content/Context;)I

    move-result v2

    add-int/lit8 v2, v2, -0x32

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const v1, 0x7f090157

    .line 652
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0902a6

    .line 653
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0902a5

    .line 654
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09010d

    .line 655
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x7f090076

    .line 656
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const v6, 0x7f090075

    .line 657
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    const v7, 0x7f090074

    .line 658
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 660
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-static {p0}, Lcom/picacomic/fregata/utils/g;->as(Landroid/content/Context;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x5

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 661
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-static {p0}, Lcom/picacomic/fregata/utils/g;->as(Landroid/content/Context;)I

    move-result v8

    div-int/lit8 v8, v8, 0x3

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 663
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/LatestApplicationObject;->getVersion()Ljava/lang/String;

    move-result-object v4

    const/16 v8, 0x8

    if-nez v4, :cond_1

    .line 664
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 666
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f0040

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/LatestApplicationObject;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    :goto_0
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/LatestApplicationObject;->getUpdateContent()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 670
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 672
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/LatestApplicationObject;->getCreatedAt()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/picacomic/fregata/utils/g;->B(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/LatestApplicationObject;->getUpdateContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "\n"

    .line 673
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 676
    :goto_1
    new-instance v2, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$15;

    invoke-direct {v2, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$15;-><init>(Landroid/widget/ImageView;)V

    .line 697
    invoke-static {p0}, Lcom/picacomic/fregata/utils/e;->x(Landroid/content/Context;)Z

    move-result v3

    const v4, 0x7f0800e3

    if-eqz v3, :cond_3

    .line 698
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_2

    .line 700
    :cond_3
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    .line 703
    :goto_2
    new-instance v1, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$16;

    invoke-direct {v1, p1, p0}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$16;-><init>(Lcom/picacomic/fregata/objects/LatestApplicationObject;Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    new-instance v1, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$17;

    invoke-direct {v1, p1, p0}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$17;-><init>(Lcom/picacomic/fregata/objects/LatestApplicationObject;Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 735
    new-instance p1, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$18;

    invoke-direct {p1, p2, p0, v0}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$18;-><init>(ZLandroid/content/Context;Landroid/app/Dialog;)V

    invoke-virtual {v7, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p0, 0x0

    .line 745
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 746
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 748
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static sortingAdvancedCategoriesOptions(Landroid/content/Context;[Ljava/lang/String;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 273
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1000ca

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const p0, 0x7f0f01f2

    .line 274
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 275
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$6;

    invoke-direct {p1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$6;-><init>()V

    const p2, 0x7f0f009e

    .line 276
    invoke-virtual {p0, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f0f0176

    .line 282
    invoke-virtual {p0, p1, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 283
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static sortingAdvancedOptions(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 255
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1000ca

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const p0, 0x7f0f01c8

    .line 256
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f03000e

    .line 257
    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$5;

    invoke-direct {p1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$5;-><init>()V

    const p2, 0x7f0f009e

    .line 258
    invoke-virtual {p0, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 264
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static sortingFavouriteOptions(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 242
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1000ca

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const p0, 0x7f0f01c8

    .line 243
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f03000f

    .line 244
    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$4;

    invoke-direct {p1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter$4;-><init>()V

    const p2, 0x7f0f009e

    .line 245
    invoke-virtual {p0, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 251
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static timeIsNotSynchronize(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800e3

    const v1, 0x7f0f0088

    .line 137
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static tooManyRequests(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800e3

    const v1, 0x7f0f008a

    .line 121
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static underReview(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800fd

    const v1, 0x7f0f008b

    .line 108
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static userNotActivatedCannotCommentOrChat(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800e3

    const v1, 0x7f0f008c

    .line 182
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static usernameExist(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800e3

    const v1, 0x7f0f003b

    .line 75
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static usernameLength(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800fd

    const v1, 0x7f0f0060

    .line 51
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static usingMobileNetwork(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800e3

    const v1, 0x7f0f008d

    .line 186
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static validation(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0800fd

    const v1, 0x7f0f008e

    .line 100
    invoke-static {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    return-void
.end method

.method public static versionNotSupport(Landroid/content/Context;)V
    .locals 3

    const v0, 0x7f0800ed

    const v1, 0x7f0f0090

    const v2, 0x7f0f008f

    .line 293
    invoke-static {p0, v0, v1, v2}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;III)V

    return-void
.end method
