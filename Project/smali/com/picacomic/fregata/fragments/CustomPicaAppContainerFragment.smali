.class public Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "CustomPicaAppContainerFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CustomPicaAppContainerFragment"


# instance fields
.field fab_add:Landroid/support/design/widget/FloatingActionButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900f3
    .end annotation
.end field

.field gson:Lcom/google/gson/Gson;

.field iI:Landroid/widget/RelativeLayout$LayoutParams;

.field private iJ:I

.field private iK:I

.field iL:J

.field ja:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/PicaAppBaseObject;",
            ">;"
        }
    .end annotation
.end field

.field oK:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ChatroomListObject;",
            ">;"
        }
    .end annotation
.end field

.field oL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/PicaAppObject;",
            ">;"
        }
    .end annotation
.end field

.field oM:Lcom/picacomic/fregata/adapters/CustomPicaAppFragmentPagerAdapter;

.field oN:[Ljava/lang/String;

.field oO:[Ljava/lang/String;

.field oP:[Ljava/lang/String;

.field viewPage_picaApp:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09031c
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->iL:J

    return-void
.end method

.method static synthetic a(Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->iJ:I

    return p0
.end method

.method static synthetic a(Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->iJ:I

    return p1
.end method

.method static synthetic b(Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->iK:I

    return p0
.end method

.method static synthetic b(Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->iK:I

    return p1
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public bH()V
    .locals 0

    .line 186
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    return-void
.end method

.method public bI()V
    .locals 0

    .line 206
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    return-void
.end method

.method public ca()V
    .locals 3

    .line 115
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->ja:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Lcom/picacomic/fregata/adapters/CustomPicaAppFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->ja:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/picacomic/fregata/adapters/CustomPicaAppFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->oM:Lcom/picacomic/fregata/adapters/CustomPicaAppFragmentPagerAdapter;

    .line 122
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->viewPage_picaApp:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->oM:Lcom/picacomic/fregata/adapters/CustomPicaAppFragmentPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 124
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->fab_add:Landroid/support/design/widget/FloatingActionButton;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->iI:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->fab_add:Landroid/support/design/widget/FloatingActionButton;

    new-instance v1, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$3;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$3;-><init>(Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public dd()V
    .locals 4

    .line 211
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1000ca

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0f0058

    .line 212
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->oN:[Ljava/lang/String;

    new-instance v2, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$4;

    invoke-direct {v2, p0}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$4;-><init>(Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;)V

    const/4 v3, -0x1

    .line 213
    invoke-virtual {v0, v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public de()V
    .locals 4

    .line 244
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1000ca

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0f01f3

    .line 245
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->oO:[Ljava/lang/String;

    new-instance v2, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$5;

    invoke-direct {v2, p0}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$5;-><init>(Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;)V

    const/4 v3, -0x1

    .line 246
    invoke-virtual {v0, v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public df()V
    .locals 4

    .line 259
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1000ca

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0f01fd

    .line 260
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->oP:[Ljava/lang/String;

    new-instance v2, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$6;

    invoke-direct {v2, p0}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$6;-><init>(Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;)V

    const/4 v3, -0x1

    .line 261
    invoke-virtual {v0, v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public init()V
    .locals 4

    .line 74
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    const/4 v0, 0x2

    .line 76
    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f0f01f3

    invoke-virtual {p0, v1}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0f01fd

    invoke-virtual {p0, v1}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->oN:[Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->gson:Lcom/google/gson/Gson;

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ""

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$1;

    invoke-direct {v3, p0}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$1;-><init>(Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;)V

    .line 86
    invoke-virtual {v3}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 85
    invoke-virtual {v0, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->oK:Ljava/util/ArrayList;

    .line 87
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->oK:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->oK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->oK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->oO:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 89
    :goto_0
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->oK:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 90
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->oO:[Ljava/lang/String;

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->oK:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/ChatroomListObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/ChatroomListObject;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->H(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, ""

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->H(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$2;

    invoke-direct {v3, p0}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$2;-><init>(Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;)V

    .line 101
    invoke-virtual {v3}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 100
    invoke-virtual {v0, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->oL:Ljava/util/ArrayList;

    .line 102
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->oL:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->oL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 103
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->oL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->oP:[Ljava/lang/String;

    .line 104
    :goto_2
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->oL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 105
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->oP:[Ljava/lang/String;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->oL:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/PicaAppObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/PicaAppObject;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 110
    :cond_4
    :goto_3
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->iI:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0053

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->a(Landroid/view/View;)V

    return-object p1
.end method
