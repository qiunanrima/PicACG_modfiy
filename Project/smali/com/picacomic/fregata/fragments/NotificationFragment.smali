.class public Lcom/picacomic/fregata/fragments/NotificationFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "NotificationFragment.java"

# interfaces
.implements Lcom/picacomic/fregata/a/h;


# static fields
.field public static final TAG:Ljava/lang/String; = "NotificationFragment"


# instance fields
.field ja:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/NotificationObject;",
            ">;"
        }
    .end annotation
.end field

.field or:Z

.field page:I

.field qj:Lcom/picacomic/fregata/adapters/NotificationRecyclerViewAdapter;

.field qk:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field recyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901ff
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
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public W(I)V
    .locals 7

    .line 203
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_4

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/NotificationObject;->getRedirectType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 207
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/NotificationObject;->getRedirectType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "comic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f0900ab

    const v2, 0x7f010027

    const v3, 0x7f010026

    const v4, 0x7f010025

    const v5, 0x7f010024

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/NotificationObject;->getRedirectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Lcom/picacomic/fregata/objects/ComicListObject;

    iget-object v6, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/NotificationObject;->getRedirectId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/picacomic/fregata/objects/ComicListObject;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/NotificationFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 212
    invoke-virtual {p1, v5, v4, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 213
    invoke-static {v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Lcom/picacomic/fregata/objects/ComicListObject;)Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    move-result-object v0

    sget-object v2, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->TAG:Ljava/lang/String;

    .line 214
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/NotificationObject;->getRedirectType()Ljava/lang/String;

    move-result-object v0

    const-string v6, "game"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/NotificationObject;->getRedirectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/NotificationFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 221
    invoke-virtual {v0, v5, v4, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    .line 222
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/NotificationObject;->getRedirectId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->ad(Ljava/lang/String;)Lcom/picacomic/fregata/fragments/GameDetailFragment;

    move-result-object p1

    sget-object v2, Lcom/picacomic/fregata/fragments/GameDetailFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->TAG:Ljava/lang/String;

    .line 223
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/NotificationObject;->getRedirectType()Ljava/lang/String;

    move-result-object v0

    const-string v6, "comment"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/NotificationObject;->getRedirectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/NotificationFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 229
    invoke-virtual {v0, v5, v4, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    .line 230
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/NotificationObject;->getRedirectId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->l(Ljava/lang/String;Ljava/lang/String;)Lcom/picacomic/fregata/fragments/CommentFragment;

    move-result-object p1

    sget-object v2, Lcom/picacomic/fregata/fragments/CommentFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/CommentFragment;->TAG:Ljava/lang/String;

    .line 231
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 232
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/NotificationObject;->getRedirectType()Ljava/lang/String;

    move-result-object v0

    const-string v6, "app"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/NotificationFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 237
    invoke-virtual {v0, v5, v4, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    .line 238
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/NotificationObject;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/NotificationObject;->getLink()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/picacomic/fregata/fragments/PicaAppFragment;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/picacomic/fregata/fragments/PicaAppFragment;

    move-result-object p1

    sget-object v2, Lcom/picacomic/fregata/fragments/PicaAppFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/PicaAppFragment;->TAG:Ljava/lang/String;

    .line 239
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 240
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/NotificationObject;->getRedirectType()Ljava/lang/String;

    move-result-object v0

    const-string v6, "web"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 243
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/NotificationFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 244
    invoke-virtual {v0, v5, v4, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    .line 245
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/NotificationObject;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/NotificationObject;->getLink()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/picacomic/fregata/fragments/PicaAppFragment;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/picacomic/fregata/fragments/PicaAppFragment;

    move-result-object p1

    sget-object v2, Lcom/picacomic/fregata/fragments/PicaAppFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/PicaAppFragment;->TAG:Ljava/lang/String;

    .line 246
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 247
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_4
    :goto_0
    return-void
.end method

.method public X(I)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/NotificationObject;->getSender()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/NotificationObject;->getSender()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/NotificationFragment;->a(Lcom/picacomic/fregata/objects/UserProfileObject;)V

    :cond_0
    return-void
.end method

.method public Y(I)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/NotificationObject;->getSender()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/NotificationObject;->getCover()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/NotificationFragment;->D(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bH()V
    .locals 0

    .line 132
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    return-void
.end method

.method public bI()V
    .locals 1

    .line 139
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    .line 141
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->qj:Lcom/picacomic/fregata/adapters/NotificationRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/picacomic/fregata/adapters/NotificationRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public ca()V
    .locals 4

    .line 100
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 102
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/NotificationFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 103
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 104
    new-instance v0, Lcom/picacomic/fregata/adapters/NotificationRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/NotificationFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p0}, Lcom/picacomic/fregata/adapters/NotificationRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/picacomic/fregata/a/h;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->qj:Lcom/picacomic/fregata/adapters/NotificationRecyclerViewAdapter;

    .line 105
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->qj:Lcom/picacomic/fregata/adapters/NotificationRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 108
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/picacomic/fregata/fragments/NotificationFragment$1;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/NotificationFragment$1;-><init>(Lcom/picacomic/fregata/fragments/NotificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public ds()V
    .locals 3

    .line 147
    iget v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->totalPage:I

    iget v1, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->page:I

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->or:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->or:Z

    .line 151
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/NotificationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/NotificationFragment;->C(Ljava/lang/String;)V

    .line 153
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/NotificationFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/NotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->page:I

    invoke-interface {v0, v1, v2}, Lcom/picacomic/fregata/b/a;->d(Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->qk:Lretrofit2/Call;

    .line 157
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->qk:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/NotificationFragment$2;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/NotificationFragment$2;-><init>(Lcom/picacomic/fregata/fragments/NotificationFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .line 78
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    .line 79
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x1

    const v2, 0x7f0f01fb

    invoke-virtual {p0, v0, v2, v1}, Lcom/picacomic/fregata/fragments/NotificationFragment;->a(Landroid/support/v7/widget/Toolbar;IZ)V

    .line 81
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/NotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/NotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/NotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/MainActivity;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/picacomic/fregata/activities/MainActivity;->t(I)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->ja:Ljava/util/ArrayList;

    .line 87
    iput v1, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->page:I

    .line 88
    iput v1, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->totalPage:I

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->or:Z

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/NotificationFragment;->ds()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b005d

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/NotificationFragment;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->qk:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/NotificationFragment;->qk:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 276
    :cond_0
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onDetach()V

    return-void
.end method
