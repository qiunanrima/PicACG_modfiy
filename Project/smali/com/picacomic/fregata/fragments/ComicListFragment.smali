.class public Lcom/picacomic/fregata/fragments/ComicListFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "ComicListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/picacomic/fregata/a/b;


# static fields
.field public static final TAG:Ljava/lang/String; = "ComicListFragment"

.field private static ny:I = 0x28

.field public static final nz:[I


# instance fields
.field private author:Ljava/lang/String;

.field public buttons_filters:[Landroid/widget/Button;
    .annotation build Lbutterknife/BindViews;
        value = {
            0x7f09004a,
            0x7f09004d,
            0x7f090048,
            0x7f09004c,
            0x7f09004e,
            0x7f090049,
            0x7f09004b,
            0x7f09004f
        }
    .end annotation
.end field

.field coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900ae
    .end annotation
.end field

.field private creatorId:Ljava/lang/String;

.field private creatorName:Ljava/lang/String;

.field editText_currentPage:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900c8
    .end annotation
.end field

.field frameLayout_noComics:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900ff
    .end annotation
.end field

.field hP:I

.field imageView_empty:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090147
    .end annotation
.end field

.field kE:Z

.field public nA:[Z

.field nB:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field nC:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/ComicRandomListResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field nD:Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;

.field nE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicListObject;",
            ">;"
        }
    .end annotation
.end field

.field nF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field nG:[Ljava/lang/String;

.field nH:[Z

.field private nI:Ljava/lang/String;

.field private nJ:Ljava/lang/String;

.field private nK:Ljava/lang/String;

.field private nL:Ljava/lang/String;

.field private nM:Ljava/lang/String;

.field nN:I

.field nO:I

.field nP:Z

.field nQ:Z

.field nR:I

.field nS:I

.field page:I

.field recyclerView_comicList:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901f8
    .end annotation
.end field

.field private tags:Ljava/lang/String;

.field textView_totalPage:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090281
    .end annotation
.end field

.field toolbar:Landroid/support/v7/widget/Toolbar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09030d
    .end annotation
.end field

.field totalPage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    .line 97
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nz:[I

    return-void

    :array_0
    .array-data 4
        0x7f08006f
        0x7f080072
        0x7f08006d
        0x7f080071
        0x7f080073
        0x7f08006e
        0x7f080070
        0x7f080075
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 191
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    const/16 v0, 0x8

    .line 117
    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nA:[Z

    const/4 v0, 0x0

    .line 188
    iput v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nR:I

    .line 189
    iput v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nS:I

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic L(I)I
    .locals 0

    .line 66
    sput p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->ny:I

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/picacomic/fregata/fragments/ComicListFragment;
    .locals 3

    .line 197
    new-instance v0, Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-direct {v0}, Lcom/picacomic/fregata/fragments/ComicListFragment;-><init>()V

    .line 198
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "CATEGORY_TITLE"

    .line 199
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "KEYWORDS"

    .line 200
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "TAGS"

    .line 201
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "AUTHOR"

    .line 202
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "FINISHED"

    .line 203
    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "SORTING"

    .line 204
    invoke-virtual {v1, p0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "TRANSLATE"

    .line 205
    invoke-virtual {v1, p0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "CREATOR_ID"

    .line 206
    invoke-virtual {v1, p0, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "CREATOR_NAME"

    .line 207
    invoke-virtual {v1, p0, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/picacomic/fregata/fragments/ComicListFragment;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/picacomic/fregata/fragments/ComicListFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nL:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public C(I)V
    .locals 5

    .line 903
    div-int/lit8 v0, p1, 0x15

    sub-int/2addr p1, v0

    .line 905
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010024

    const v2, 0x7f010025

    const v3, 0x7f010026

    const v4, 0x7f010027

    .line 906
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nE:Ljava/util/ArrayList;

    .line 907
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Lcom/picacomic/fregata/objects/ComicListObject;)Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    move-result-object p1

    sget-object v1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->TAG:Ljava/lang/String;

    const v2, 0x7f0900ab

    invoke-virtual {v0, v2, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->TAG:Ljava/lang/String;

    .line 908
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 909
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public I(I)V
    .locals 1

    .line 914
    div-int/lit8 v0, p1, 0x15

    sub-int/2addr p1, v0

    .line 916
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nE:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nE:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nE:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicListObject;->getThumb()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nE:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicListObject;->getThumb()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->D(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public K(I)Z
    .locals 5

    .line 975
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nA:[Z

    aget-boolean v0, v0, p1

    const v1, 0x7f0f0207

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->buttons_filters:[Landroid/widget/Button;

    aget-object v0, v0, p1

    sget-object v3, Lcom/picacomic/fregata/fragments/ComicListFragment;->nz:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 977
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nA:[Z

    aput-boolean v2, v0, p1

    .line 978
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lcom/picacomic/fregata/utils/e;->a(Landroid/content/Context;IZ)Z

    .line 979
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->buttons_filters:[Landroid/widget/Button;

    aget-object p1, v1, p1

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f0f0208

    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v2

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->buttons_filters:[Landroid/widget/Button;

    aget-object v0, v0, p1

    const v3, 0x7f080074

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 983
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nA:[Z

    const/4 v3, 0x1

    aput-boolean v3, v0, p1

    .line 984
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, v3}, Lcom/picacomic/fregata/utils/e;->a(Landroid/content/Context;IZ)Z

    .line 985
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->buttons_filters:[Landroid/widget/Button;

    aget-object p1, v1, p1

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f0f0206

    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v3
.end method

.method public bH()V
    .locals 4

    .line 499
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 500
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/picacomic/fregata/fragments/ComicListFragment;->a(Landroid/support/v7/widget/Toolbar;Ljava/lang/String;Z)V

    const v0, 0x7f0f0200

    .line 507
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 522
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nJ:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 523
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v1, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v2}, Lcom/picacomic/fregata/fragments/ComicListFragment;->a(Landroid/support/v7/widget/Toolbar;Ljava/lang/String;Z)V

    .line 527
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nJ:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 528
    sget-object v0, Lcom/picacomic/fregata/c/c;->uR:[Ljava/lang/String;

    iget v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nS:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nL:Ljava/lang/String;

    goto/16 :goto_0

    .line 531
    :cond_1
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->tags:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 532
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->tags:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 534
    :cond_2
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->author:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 535
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->author:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 537
    :cond_3
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nM:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 538
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nM:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 540
    :cond_4
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->creatorId:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 541
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->creatorName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 545
    :cond_5
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    const-string v1, "CATEGORY_RANDOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 546
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f00ab

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    goto/16 :goto_0

    .line 548
    :cond_6
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    const-string v1, "CATEGORY_USER_FAVOURITE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 549
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_7

    .line 550
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 552
    :cond_7
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/picacomic/fregata/fragments/ComicListFragment;->a(Landroid/support/v7/widget/Toolbar;Ljava/lang/String;Z)V

    .line 553
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f009c

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    goto/16 :goto_0

    .line 555
    :cond_8
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    const-string v1, "CATEGORY_RECENT_VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 556
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_9

    .line 557
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 558
    :cond_9
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/picacomic/fregata/fragments/ComicListFragment;->a(Landroid/support/v7/widget/Toolbar;Ljava/lang/String;Z)V

    .line 559
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f0192

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    .line 561
    :cond_a
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    const-string v1, "CATEGORY_DOWNLOADED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 562
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f013a

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    .line 564
    :cond_b
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 565
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_c

    .line 566
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 568
    :cond_c
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/picacomic/fregata/fragments/ComicListFragment;->a(Landroid/support/v7/widget/Toolbar;Ljava/lang/String;Z)V

    .line 569
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 573
    :cond_d
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nL:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nL:Ljava/lang/String;

    const-string v1, "dd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 574
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f00a5

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    :cond_e
    :goto_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_10

    .line 579
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nD:Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nA:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->a(IZ)V

    .line 580
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nA:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_f

    .line 581
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->buttons_filters:[Landroid/widget/Button;

    aget-object v1, v1, v0

    const v2, 0x7f080074

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2

    .line 583
    :cond_f
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->buttons_filters:[Landroid/widget/Button;

    aget-object v1, v1, v0

    sget-object v2, Lcom/picacomic/fregata/fragments/ComicListFragment;->nz:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 591
    :cond_10
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz v0, :cond_11

    .line 592
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/MainActivity;

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/activities/MainActivity;->t(I)V

    .line 595
    :cond_11
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->kE:Z

    if-eqz v0, :cond_16

    .line 596
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    const-string v1, "CATEGORY_RANDOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 597
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->cR()V

    goto :goto_3

    .line 598
    :cond_12
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    const-string v1, "CATEGORY_USER_FAVOURITE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 599
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->cV()V

    goto :goto_3

    .line 600
    :cond_13
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    const-string v1, "CATEGORY_RECENT_VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 601
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->cS()V

    goto :goto_3

    .line 602
    :cond_14
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    const-string v1, "CATEGORY_DOWNLOADED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 603
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->cT()V

    goto :goto_3

    .line 605
    :cond_15
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->cW()V

    :cond_16
    :goto_3
    return-void
.end method

.method public bI()V
    .locals 11

    .line 618
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    .line 621
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 622
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nE:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nE:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->frameLayout_noComics:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 624
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    const v1, 0x7f0800e2

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->imageView_empty:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 625
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->frameLayout_noComics:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 631
    :goto_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    const-string v5, "CATEGORY_RECENT_VIEW"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 632
    const-class v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;

    invoke-static {v0}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->count(Ljava/lang/Class;)J

    move-result-wide v5

    .line 633
    sget v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->ny:I

    int-to-long v7, v0

    div-long v7, v5, v7

    .line 634
    sget v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->ny:I

    int-to-long v9, v0

    rem-long/2addr v5, v9

    cmp-long v0, v5, v3

    if-eqz v0, :cond_2

    add-long/2addr v7, v1

    .line 637
    :cond_2
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->textView_totalPage:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 639
    :cond_3
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    const-string v5, "CATEGORY_DOWNLOADED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 640
    const-class v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;

    const-string v5, "download_status > 0"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->count(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v5

    .line 641
    sget v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->ny:I

    int-to-long v7, v0

    div-long v7, v5, v7

    .line 642
    sget v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->ny:I

    int-to-long v9, v0

    rem-long/2addr v5, v9

    cmp-long v0, v5, v3

    if-eqz v0, :cond_4

    add-long/2addr v7, v1

    .line 645
    :cond_4
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->textView_totalPage:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 648
    :cond_5
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->textView_totalPage:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->totalPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    :goto_2
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nD:Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->notifyDataSetChanged()V

    :cond_6
    return-void
.end method

.method public cR()V
    .locals 2

    .line 657
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->C(Ljava/lang/String;)V

    .line 659
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 661
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/picacomic/fregata/b/a;->ao(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nC:Lretrofit2/Call;

    .line 664
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nC:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicListFragment$11;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ComicListFragment$11;-><init>(Lcom/picacomic/fregata/fragments/ComicListFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public cS()V
    .locals 8

    .line 702
    const-class v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;

    const-string v1, "SELECT * FROM db_comic_view_record_object WHERE last_view_timestamp > 0 ORDER BY last_view_timestamp DESC LIMIT ? OFFSET ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/picacomic/fregata/fragments/ComicListFragment;->ny:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nN:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->findWithQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 704
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nE:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 706
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 708
    const-class v2, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;

    const-string v3, "comic_id = ?"

    new-array v6, v5, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;

    invoke-virtual {v7}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->getComicId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v2, v3, v6}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->find(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 709
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 710
    new-instance v3, Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;

    invoke-direct {v3, v2}, Lcom/picacomic/fregata/objects/ComicListObject;-><init>(Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;)V

    .line 711
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nE:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    sget-object v2, Lcom/picacomic/fregata/fragments/ComicListFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recent View "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 716
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nN:I

    .line 717
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->bI()V

    :cond_2
    return-void
.end method

.method public cT()V
    .locals 6

    .line 723
    const-class v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;

    const-string v1, "SELECT * FROM db_comic_detail_object WHERE download_status > 0 ORDER BY downloaded_at DESC LIMIT ? OFFSET ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/picacomic/fregata/fragments/ComicListFragment;->ny:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nO:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->findWithQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 725
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nE:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 727
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_0

    .line 731
    new-instance v1, Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;

    invoke-direct {v1, v2}, Lcom/picacomic/fregata/objects/ComicListObject;-><init>(Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;)V

    .line 732
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nE:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    sget-object v1, Lcom/picacomic/fregata/fragments/ComicListFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recent View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nO:I

    .line 738
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->bI()V

    :cond_1
    return-void
.end method

.method public cU()V
    .locals 3

    .line 744
    const-class v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;

    invoke-static {v0}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->deleteAll(Ljava/lang/Class;)I

    .line 745
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nE:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 747
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nD:Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 748
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f004e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public cV()V
    .locals 4

    .line 765
    iget v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->totalPage:I

    iget v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->page:I

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nP:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 767
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nP:Z

    .line 769
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->C(Ljava/lang/String;)V

    .line 771
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 773
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/picacomic/fregata/c/c;->uQ:[Ljava/lang/String;

    iget v3, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nR:I

    aget-object v2, v2, v3

    iget v3, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->page:I

    invoke-interface {v0, v1, v2, v3}, Lcom/picacomic/fregata/b/a;->a(Ljava/lang/String;Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nB:Lretrofit2/Call;

    .line 775
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nB:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicListFragment$2;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ComicListFragment$2;-><init>(Lcom/picacomic/fregata/fragments/ComicListFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_0
    return-void
.end method

.method public cW()V
    .locals 11

    .line 830
    iget v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->totalPage:I

    iget v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->page:I

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nP:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 832
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nP:Z

    .line 834
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->C(Ljava/lang/String;)V

    .line 836
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 839
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nJ:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 841
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->page:I

    new-instance v3, Lcom/picacomic/fregata/objects/requests/SortingBody;

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nJ:Ljava/lang/String;

    iget-object v5, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nL:Ljava/lang/String;

    iget-object v6, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nF:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v5, v6}, Lcom/picacomic/fregata/objects/requests/SortingBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/picacomic/fregata/b/a;->a(Ljava/lang/String;ILcom/picacomic/fregata/objects/requests/SortingBody;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nB:Lretrofit2/Call;

    goto :goto_0

    .line 845
    :cond_0
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->page:I

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    iget-object v5, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->tags:Ljava/lang/String;

    iget-object v6, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->author:Ljava/lang/String;

    iget-object v7, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nK:Ljava/lang/String;

    iget-object v8, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nL:Ljava/lang/String;

    iget-object v9, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nM:Ljava/lang/String;

    iget-object v10, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->creatorId:Ljava/lang/String;

    invoke-interface/range {v1 .. v10}, Lcom/picacomic/fregata/b/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nB:Lretrofit2/Call;

    .line 848
    :goto_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nB:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicListFragment$3;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ComicListFragment$3;-><init>(Lcom/picacomic/fregata/fragments/ComicListFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_1
    return-void
.end method

.method public ca()V
    .locals 3

    .line 406
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 408
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 409
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->recyclerView_comicList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 411
    new-instance v0, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nE:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p0}, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/picacomic/fregata/a/b;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nD:Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;

    .line 412
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->recyclerView_comicList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nD:Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 414
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->buttons_filters:[Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 415
    :goto_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->buttons_filters:[Landroid/widget/Button;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->buttons_filters:[Landroid/widget/Button;

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "NULL!!!"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->recyclerView_comicList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicListFragment$9;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ComicListFragment$9;-><init>(Lcom/picacomic/fregata/fragments/ComicListFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 469
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->editText_currentPage:Landroid/widget/EditText;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicListFragment$10;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ComicListFragment$10;-><init>(Lcom/picacomic/fregata/fragments/ComicListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public init()V
    .locals 5

    .line 364
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    .line 366
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 368
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nA:[Z

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/picacomic/fregata/utils/e;->d(Landroid/content/Context;I)Z

    move-result v3

    aput-boolean v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    :cond_0
    iput-boolean v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->kE:Z

    .line 374
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nE:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 375
    iput-boolean v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nQ:Z

    const/4 v0, 0x1

    .line 376
    iput v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->page:I

    .line 377
    iput v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->totalPage:I

    .line 378
    iget v2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->page:I

    iput v2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->hP:I

    .line 379
    iput-boolean v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nP:Z

    .line 380
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nE:Ljava/util/ArrayList;

    .line 381
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->kE:Z

    .line 382
    iput v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nN:I

    .line 383
    iput v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nO:I

    .line 386
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 387
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/picacomic/fregata/utils/e;->D(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/picacomic/fregata/utils/e;->D(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 388
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 389
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/picacomic/fregata/utils/e;->D(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/picacomic/fregata/fragments/ComicListFragment$8;

    invoke-direct {v3, p0}, Lcom/picacomic/fregata/fragments/ComicListFragment$8;-><init>(Lcom/picacomic/fregata/fragments/ComicListFragment;)V

    .line 390
    invoke-virtual {v3}, Lcom/picacomic/fregata/fragments/ComicListFragment$8;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 389
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :cond_2
    if-eqz v0, :cond_3

    .line 394
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nG:[Ljava/lang/String;

    .line 395
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nH:[Z

    const/4 v2, 0x0

    .line 396
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 397
    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nG:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/picacomic/fregata/objects/CategoryObject;

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/CategoryObject;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 398
    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nH:[Z

    aput-boolean v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 933
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/4 p1, 0x7

    .line 963
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->K(I)Z

    .line 964
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nD:Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nA:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->a(IZ)V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x4

    .line 951
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->K(I)Z

    .line 952
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nD:Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nA:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->a(IZ)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x1

    .line 939
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->K(I)Z

    .line 940
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nD:Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nA:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->a(IZ)V

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x3

    .line 947
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->K(I)Z

    .line 948
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nD:Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nA:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->a(IZ)V

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x6

    .line 959
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->K(I)Z

    .line 960
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nD:Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nA:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->a(IZ)V

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x0

    .line 935
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->K(I)Z

    .line 936
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nD:Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nA:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->a(IZ)V

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x5

    .line 955
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->K(I)Z

    .line 956
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nD:Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nA:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->a(IZ)V

    goto :goto_0

    :pswitch_7
    const/4 p1, 0x2

    .line 943
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->K(I)Z

    .line 944
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nD:Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nA:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/picacomic/fregata/adapters/ComicListRecyclerViewAdapter;->a(IZ)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090048
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 214
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 215
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "CATEGORY_TITLE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    .line 217
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "KEYWORDS"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nJ:Ljava/lang/String;

    .line 218
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "TAGS"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->tags:Ljava/lang/String;

    .line 219
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "AUTHOR"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->author:Ljava/lang/String;

    .line 220
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "FINISHED"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nK:Ljava/lang/String;

    .line 221
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "SORTING"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nL:Ljava/lang/String;

    .line 222
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "TRANSLATE"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nM:Ljava/lang/String;

    .line 223
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "CREATOR_ID"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->creatorId:Ljava/lang/String;

    .line 224
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "CREATOR_NAME"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->creatorName:Ljava/lang/String;

    .line 226
    sget-object p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CAT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KEY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TAG="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->tags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AUT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FIN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SOR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nJ:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    const v0, 0x7f0c0003

    .line 252
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 253
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x1

    .line 254
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    const-string v3, "CATEGORY_RECENT_VIEW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c0002

    .line 257
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    const-string v3, "CATEGORY_USER_FAVOURITE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nL:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nL:Ljava/lang/String;

    const-string v3, "dd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const v0, 0x7f0c0004

    .line 261
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 262
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 268
    :cond_4
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/picacomic/fregata/fragments/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b004e

    const/4 v0, 0x0

    .line 233
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    .line 235
    invoke-virtual {p0, p2}, Lcom/picacomic/fregata/fragments/ComicListFragment;->setHasOptionsMenu(Z)V

    .line 240
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nB:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nB:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nC:Lretrofit2/Call;

    if-eqz v0, :cond_1

    .line 927
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nC:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 928
    :cond_1
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onDetach()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .line 273
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09000f

    if-ne v0, v1, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800e3

    const v4, 0x7f0f004f

    const v5, 0x7f0f004d

    new-instance v6, Lcom/picacomic/fregata/fragments/ComicListFragment$1;

    invoke-direct {v6, p0}, Lcom/picacomic/fregata/fragments/ComicListFragment$1;-><init>(Lcom/picacomic/fregata/fragments/ComicListFragment;)V

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;IIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 284
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09001f

    if-ne v0, v1, :cond_2

    .line 285
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nI:Ljava/lang/String;

    const-string v1, "CATEGORY_USER_FAVOURITE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nR:I

    new-instance v2, Lcom/picacomic/fregata/fragments/ComicListFragment$4;

    invoke-direct {v2, p0, p1}, Lcom/picacomic/fregata/fragments/ComicListFragment$4;-><init>(Lcom/picacomic/fregata/fragments/ComicListFragment;Landroid/view/MenuItem;)V

    invoke-static {v0, v1, v2}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->sortingFavouriteOptions(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nS:I

    new-instance v2, Lcom/picacomic/fregata/fragments/ComicListFragment$5;

    invoke-direct {v2, p0, p1}, Lcom/picacomic/fregata/fragments/ComicListFragment$5;-><init>(Lcom/picacomic/fregata/fragments/ComicListFragment;Landroid/view/MenuItem;)V

    invoke-static {v0, v1, v2}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->sortingAdvancedOptions(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 316
    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09000e

    if-ne v0, v1, :cond_3

    .line 317
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nG:[Ljava/lang/String;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nH:[Z

    new-instance v3, Lcom/picacomic/fregata/fragments/ComicListFragment$6;

    invoke-direct {v3, p0}, Lcom/picacomic/fregata/fragments/ComicListFragment$6;-><init>(Lcom/picacomic/fregata/fragments/ComicListFragment;)V

    new-instance v4, Lcom/picacomic/fregata/fragments/ComicListFragment$7;

    invoke-direct {v4, p0}, Lcom/picacomic/fregata/fragments/ComicListFragment$7;-><init>(Lcom/picacomic/fregata/fragments/ComicListFragment;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->sortingAdvancedCategoriesOptions(Landroid/content/Context;[Ljava/lang/String;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 359
    :cond_3
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
