.class public Lcom/picacomic/fregata/fragments/CommentFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "CommentFragment.java"

# interfaces
.implements Lcom/picacomic/fregata/a/e;


# static fields
.field public static final TAG:Ljava/lang/String; = "CommentFragment"


# instance fields
.field button_postComment:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090065
    .end annotation
.end field

.field button_replyCancel:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090064
    .end annotation
.end field

.field comicId:Ljava/lang/String;

.field editText_currentPage:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900c9
    .end annotation
.end field

.field editText_inputField:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900ca
    .end annotation
.end field

.field gameId:Ljava/lang/String;

.field imageView_empty:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09014b
    .end annotation
.end field

.field jG:Z

.field jH:Lcom/picacomic/fregata/objects/UserBasicObject;

.field jz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/CommentWithReplyObject;",
            ">;"
        }
    .end annotation
.end field

.field kE:Z

.field linearLayout_commentPage:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901a1
    .end annotation
.end field

.field linearLayout_inputBar:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09019f
    .end annotation
.end field

.field linearLayout_noComment:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901a0
    .end annotation
.end field

.field mW:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/ActionResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field og:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field oh:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field oi:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field oj:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field ok:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field ol:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/MessageResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field om:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/MessageResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field on:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/CommentPostToTopResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field oo:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/UserProfileDirtyResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field op:Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;

.field oq:Z

.field or:Z

.field os:I

.field ot:Ljava/lang/String;

.field ou:Ljava/lang/String;

.field ov:I

.field page:I

.field recyclerView_comments:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901fa
    .end annotation
.end field

.field textView_totalPage:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09029b
    .end annotation
.end field

.field toolbar:Landroid/support/v7/widget/Toolbar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09030d
    .end annotation
.end field

.field totalPage:I

.field userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 212
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    const-string v0, ""

    .line 159
    iput-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->ou:Ljava/lang/String;

    return-void
.end method

.method public static Z(Ljava/lang/String;)Lcom/picacomic/fregata/fragments/CommentFragment;
    .locals 3

    .line 204
    new-instance v0, Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-direct {v0}, Lcom/picacomic/fregata/fragments/CommentFragment;-><init>()V

    .line 205
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "GAME_ID"

    .line 206
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "FRAGMENT_TYPE"

    const/4 v2, 0x2

    .line 207
    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/fragments/CommentFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/picacomic/fregata/objects/UserBasicObject;)Lcom/picacomic/fregata/fragments/CommentFragment;
    .locals 3

    .line 188
    new-instance v0, Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-direct {v0}, Lcom/picacomic/fregata/fragments/CommentFragment;-><init>()V

    .line 189
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "USER_ID"

    .line 190
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "FRAGMENT_TYPE"

    const/4 v2, 0x1

    .line 191
    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "USER_BASIC_OBJECT"

    .line 192
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 193
    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/fragments/CommentFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;)Lcom/picacomic/fregata/fragments/CommentFragment;
    .locals 3

    .line 171
    new-instance v0, Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-direct {v0}, Lcom/picacomic/fregata/fragments/CommentFragment;-><init>()V

    .line 172
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "COMIC_ID"

    .line 173
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "FRAGMENT_TYPE"

    const/4 v2, 0x0

    .line 175
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "KNIGHT_USER_ID"

    .line 176
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/fragments/CommentFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public A(I)V
    .locals 1

    .line 1302
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->op:Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->A(I)V

    return-void
.end method

.method public C(I)V
    .locals 4

    .line 1129
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->ou:Ljava/lang/String;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getCommentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1130
    invoke-virtual {p0, v2}, Lcom/picacomic/fregata/fragments/CommentFragment;->D(Z)V

    const-string p1, ""

    .line 1131
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->ou:Ljava/lang/String;

    .line 1132
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->op:Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->a(ILjava/util/ArrayList;Z)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1137
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/CommentFragment;->D(Z)V

    .line 1138
    iget-object v3, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getCommentId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->ou:Ljava/lang/String;

    .line 1139
    iput p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->ov:I

    .line 1140
    iget-object v3, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getChildsCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 1141
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1142
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getCurrentPage()I

    move-result v1

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getTotalPage()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1143
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->op:Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v0}, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->a(ILjava/util/ArrayList;Z)V

    goto :goto_0

    .line 1145
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->op:Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->a(ILjava/util/ArrayList;Z)V

    goto :goto_0

    .line 1148
    :cond_2
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getCommentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v2}, Lcom/picacomic/fregata/fragments/CommentFragment;->a(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 1153
    :cond_3
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->op:Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;

    invoke-virtual {v0, p1, v1, v2}, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->a(ILjava/util/ArrayList;Z)V

    :goto_0
    return-void
.end method

.method public C(Z)V
    .locals 5

    .line 448
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->or:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 451
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->or:Z

    .line 452
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0162

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/picacomic/fregata/fragments/CommentFragment;->C(Ljava/lang/String;)V

    .line 455
    new-instance v1, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 474
    iget v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->os:I

    packed-switch v2, :pswitch_data_0

    .line 486
    invoke-virtual {v1}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->comicId:Ljava/lang/String;

    iget v4, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->page:I

    invoke-interface {v1, v2, v3, v4}, Lcom/picacomic/fregata/b/a;->c(Ljava/lang/String;Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->oh:Lretrofit2/Call;

    goto :goto_0

    .line 483
    :pswitch_0
    invoke-virtual {v1}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->gameId:Ljava/lang/String;

    iget v4, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->page:I

    invoke-interface {v1, v2, v3, v4}, Lcom/picacomic/fregata/b/a;->f(Ljava/lang/String;Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->oh:Lretrofit2/Call;

    goto :goto_0

    .line 480
    :pswitch_1
    invoke-virtual {v1}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->page:I

    invoke-interface {v1, v2, v3}, Lcom/picacomic/fregata/b/a;->c(Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->og:Lretrofit2/Call;

    .line 490
    :goto_0
    iget v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->os:I

    if-ne v1, v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->og:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/CommentFragment$14;

    invoke-direct {v1, p0, p1}, Lcom/picacomic/fregata/fragments/CommentFragment$14;-><init>(Lcom/picacomic/fregata/fragments/CommentFragment;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_1

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->oh:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/CommentFragment$15;

    invoke-direct {v1, p0, p1}, Lcom/picacomic/fregata/fragments/CommentFragment$15;-><init>(Lcom/picacomic/fregata/fragments/CommentFragment;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public D(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1448
    iput-boolean p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->oq:Z

    .line 1449
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->button_postComment:Landroid/widget/Button;

    const v1, 0x7f08007f

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1450
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->button_postComment:Landroid/widget/Button;

    const v1, 0x7f0f0128

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 1451
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->editText_inputField:Landroid/widget/EditText;

    const v1, 0x7f0f012a

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 1452
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->button_replyCancel:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v1, -0x2

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1453
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->button_replyCancel:Landroid/widget/Button;

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0, v0, v0}, Landroid/widget/Button;->setPadding(IIII)V

    goto :goto_0

    .line 1455
    :cond_0
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->oq:Z

    .line 1456
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->button_postComment:Landroid/widget/Button;

    const v1, 0x7f08007e

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1457
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->button_postComment:Landroid/widget/Button;

    const v1, 0x7f0f012b

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 1458
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->editText_inputField:Landroid/widget/EditText;

    const v1, 0x7f0f011f

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 1459
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->button_replyCancel:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1460
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->button_replyCancel:Landroid/widget/Button;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/Button;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method public N(I)V
    .locals 2

    .line 1119
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getCurrentPage()I

    move-result v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getTotalPage()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getCommentId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/picacomic/fregata/fragments/CommentFragment;->a(Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public O(I)V
    .locals 8

    .line 1163
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 1164
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getComicId()Lcom/picacomic/fregata/objects/CommentComicIdTitleObject;

    move-result-object v0

    const v1, 0x7f0900ab

    const v2, 0x7f010027

    const v3, 0x7f010026

    const v4, 0x7f010025

    const v5, 0x7f010024

    if-eqz v0, :cond_0

    .line 1165
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1166
    new-instance v0, Lcom/picacomic/fregata/objects/ComicListObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getComicId()Lcom/picacomic/fregata/objects/CommentComicIdTitleObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CommentComicIdTitleObject;->getComicId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/picacomic/fregata/objects/ComicListObject;-><init>(Ljava/lang/String;)V

    .line 1167
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 1168
    invoke-virtual {p1, v5, v4, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 1169
    invoke-static {v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Lcom/picacomic/fregata/objects/ComicListObject;)Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    move-result-object v0

    sget-object v2, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->TAG:Ljava/lang/String;

    .line 1170
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 1171
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 1174
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getGameId()Lcom/picacomic/fregata/objects/CommentGameIdTitleObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1175
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1176
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1177
    invoke-virtual {v0, v5, v4, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    .line 1178
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getGameId()Lcom/picacomic/fregata/objects/CommentGameIdTitleObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CommentGameIdTitleObject;->getGameId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->ad(Ljava/lang/String;)Lcom/picacomic/fregata/fragments/GameDetailFragment;

    move-result-object p1

    sget-object v2, Lcom/picacomic/fregata/fragments/GameDetailFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->TAG:Ljava/lang/String;

    .line 1179
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 1180
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_1
    :goto_0
    return-void
.end method

.method public P(I)V
    .locals 1

    .line 1188
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->a(Lcom/picacomic/fregata/objects/UserProfileObject;)V

    :cond_0
    return-void
.end method

.method public Q(I)V
    .locals 4

    .line 1210
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 1212
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getCommentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/CommentFragment;->aa(Ljava/lang/String;)V

    .line 1214
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->isLiked()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getLikesCount()I

    move-result v0

    sub-int/2addr v0, v2

    .line 1216
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v2, v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->setLikesCount(I)V

    .line 1217
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->setLiked(Z)V

    .line 1218
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0f006c

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1220
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getLikesCount()I

    move-result v0

    add-int/2addr v0, v2

    .line 1221
    iget-object v3, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v3, v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->setLikesCount(I)V

    .line 1222
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0, v2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->setLiked(Z)V

    .line 1223
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0f006d

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1225
    :goto_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->op:Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method public R(I)V
    .locals 1

    .line 1256
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->a(Lcom/picacomic/fregata/objects/UserProfileObject;)V

    :cond_0
    return-void
.end method

.method public S(I)V
    .locals 2

    .line 1280
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/picacomic/fregata/fragments/CommentFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/picacomic/fregata/fragments/CommentFragment$7;-><init>(Lcom/picacomic/fregata/fragments/CommentFragment;I)V

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->hideComment(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public T(I)V
    .locals 1

    .line 1307
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getCommentId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1308
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getCommentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->ac(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public U(I)V
    .locals 1

    .line 1314
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->ab(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public V(I)V
    .locals 1

    const/4 v0, -0x1

    .line 1322
    invoke-virtual {p0, p1, v0}, Lcom/picacomic/fregata/fragments/CommentFragment;->k(II)V

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 2

    .line 869
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->bA()V

    .line 871
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 873
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/picacomic/fregata/b/a;->w(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->ol:Lretrofit2/Call;

    .line 875
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->ol:Lretrofit2/Call;

    new-instance v0, Lcom/picacomic/fregata/fragments/CommentFragment$3;

    invoke-direct {v0, p0, p3, p2}, Lcom/picacomic/fregata/fragments/CommentFragment$3;-><init>(Lcom/picacomic/fregata/fragments/CommentFragment;II)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public a(Ljava/lang/String;IZ)V
    .locals 4

    .line 681
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->or:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 684
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->or:Z

    .line 686
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0162

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/picacomic/fregata/fragments/CommentFragment;->C(Ljava/lang/String;)V

    .line 689
    new-instance v1, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    if-eqz p3, :cond_1

    .line 692
    invoke-virtual {v1}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/picacomic/fregata/b/a;->d(Ljava/lang/String;Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->oj:Lretrofit2/Call;

    goto :goto_0

    .line 694
    :cond_1
    invoke-virtual {v1}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getCurrentPage()I

    move-result v3

    add-int/2addr v3, v0

    invoke-interface {v1, v2, p1, v3}, Lcom/picacomic/fregata/b/a;->d(Ljava/lang/String;Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->oj:Lretrofit2/Call;

    .line 697
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->oj:Lretrofit2/Call;

    new-instance v0, Lcom/picacomic/fregata/fragments/CommentFragment$17;

    invoke-direct {v0, p0, p3, p2}, Lcom/picacomic/fregata/fragments/CommentFragment$17;-><init>(Lcom/picacomic/fregata/fragments/CommentFragment;ZI)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 7

    .line 1400
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->op:Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1401
    :goto_0
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1402
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    .line 1403
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    .line 1404
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    .line 1406
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v2

    const-string v4, "https://www.picacomic.com/special/frame-dirty.png?r=2"

    invoke-virtual {v2, v4}, Lcom/picacomic/fregata/objects/UserProfileObject;->setCharacter(Ljava/lang/String;)V

    goto :goto_1

    .line 1408
    :cond_0
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/picacomic/fregata/objects/UserProfileObject;->setCharacter(Ljava/lang/String;)V

    .line 1410
    :goto_1
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->op:Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->notifyItemChanged(I)V

    .line 1412
    :cond_1
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1413
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x0

    .line 1414
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 1415
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/CommentObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1416
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/CommentObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/CommentObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p2, :cond_2

    .line 1418
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/CommentObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v5

    const-string v6, "https://www.picacomic.com/special/frame-dirty.png?r=2"

    invoke-virtual {v5, v6}, Lcom/picacomic/fregata/objects/UserProfileObject;->setCharacter(Ljava/lang/String;)V

    goto :goto_3

    .line 1420
    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/CommentObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/picacomic/fregata/objects/UserProfileObject;->setCharacter(Ljava/lang/String;)V

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1424
    :cond_4
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->op:Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;

    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->notifyItemChanged(I)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public aa(Ljava/lang/String;)V
    .locals 2

    .line 795
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->bA()V

    .line 797
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 799
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/picacomic/fregata/b/a;->v(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->mW:Lretrofit2/Call;

    .line 801
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->mW:Lretrofit2/Call;

    new-instance v0, Lcom/picacomic/fregata/fragments/CommentFragment$2;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/CommentFragment$2;-><init>(Lcom/picacomic/fregata/fragments/CommentFragment;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public ab(Ljava/lang/String;)V
    .locals 2

    .line 1032
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->bA()V

    .line 1034
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 1036
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/picacomic/fregata/b/a;->p(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->oo:Lretrofit2/Call;

    .line 1038
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->oo:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/CommentFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/picacomic/fregata/fragments/CommentFragment$5;-><init>(Lcom/picacomic/fregata/fragments/CommentFragment;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public ac(Ljava/lang/String;)V
    .locals 2

    .line 1075
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->bA()V

    .line 1077
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 1079
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/picacomic/fregata/b/a;->y(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->on:Lretrofit2/Call;

    .line 1081
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->on:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/CommentFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/picacomic/fregata/fragments/CommentFragment$6;-><init>(Lcom/picacomic/fregata/fragments/CommentFragment;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public b(Ljava/lang/String;II)V
    .locals 2

    .line 949
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->bA()V

    .line 951
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 953
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/picacomic/fregata/b/a;->x(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->om:Lretrofit2/Call;

    .line 955
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->om:Lretrofit2/Call;

    new-instance v0, Lcom/picacomic/fregata/fragments/CommentFragment$4;

    invoke-direct {v0, p0, p3, p2}, Lcom/picacomic/fregata/fragments/CommentFragment$4;-><init>(Lcom/picacomic/fregata/fragments/CommentFragment;II)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 2

    .line 1432
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->op:Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1433
    :goto_0
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1434
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getCommentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1435
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v1, p2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->setTop(Z)V

    .line 1436
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->op:Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;

    invoke-virtual {v1, v0}, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->notifyItemChanged(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bH()V
    .locals 3

    .line 400
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 402
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f01f5

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/picacomic/fregata/fragments/CommentFragment;->a(Landroid/support/v7/widget/Toolbar;IZ)V

    .line 406
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->oq:Z

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/CommentFragment;->D(Z)V

    .line 408
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->kE:Z

    if-eqz v0, :cond_1

    .line 409
    invoke-virtual {p0, v2}, Lcom/picacomic/fregata/fragments/CommentFragment;->C(Z)V

    :cond_1
    return-void
.end method

.method public bI()V
    .locals 4

    .line 421
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    const/4 v0, 0x0

    .line 423
    :try_start_0
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->op:Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 424
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 425
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->linearLayout_noComment:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 426
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    const v2, 0x7f0800f2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->imageView_empty:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 427
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->linearLayout_noComment:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 432
    :goto_1
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->editText_currentPage:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->page:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->textView_totalPage:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->totalPage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 437
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 438
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Update UI error"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_2
    return-void
.end method

.method public ca()V
    .locals 11

    .line 320
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 322
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->recyclerView_comments:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 323
    new-instance v0, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jH:Lcom/picacomic/fregata/objects/UserBasicObject;

    iget-object v8, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->ot:Ljava/lang/String;

    iget-object v9, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v10, p0

    invoke-direct/range {v5 .. v10}, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;-><init>(Landroid/content/Context;Lcom/picacomic/fregata/objects/UserBasicObject;Ljava/lang/String;Ljava/util/ArrayList;Lcom/picacomic/fregata/a/e;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->op:Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;

    .line 324
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->recyclerView_comments:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->op:Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 327
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->recyclerView_comments:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/picacomic/fregata/fragments/CommentFragment$1;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/CommentFragment$1;-><init>(Lcom/picacomic/fregata/fragments/CommentFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 345
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->editText_currentPage:Landroid/widget/EditText;

    new-instance v1, Lcom/picacomic/fregata/fragments/CommentFragment$11;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/CommentFragment$11;-><init>(Lcom/picacomic/fregata/fragments/CommentFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 364
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->button_postComment:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/CommentFragment$12;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/CommentFragment$12;-><init>(Lcom/picacomic/fregata/fragments/CommentFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->button_replyCancel:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/CommentFragment$13;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/CommentFragment$13;-><init>(Lcom/picacomic/fregata/fragments/CommentFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public db()V
    .locals 6

    .line 616
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0165

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/CommentFragment;->C(Ljava/lang/String;)V

    .line 619
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 624
    iget v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->os:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 635
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->comicId:Ljava/lang/String;

    new-instance v3, Lcom/picacomic/fregata/objects/requests/CommentBody;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->editText_inputField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/picacomic/fregata/objects/requests/CommentBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/picacomic/fregata/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/requests/CommentBody;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->oi:Lretrofit2/Call;

    goto :goto_0

    .line 632
    :cond_0
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->gameId:Ljava/lang/String;

    new-instance v3, Lcom/picacomic/fregata/objects/requests/CommentBody;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->editText_inputField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/picacomic/fregata/objects/requests/CommentBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/picacomic/fregata/b/a;->c(Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/requests/CommentBody;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->oi:Lretrofit2/Call;

    .line 638
    :goto_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->oi:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/CommentFragment$16;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/CommentFragment$16;-><init>(Lcom/picacomic/fregata/fragments/CommentFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public dc()V
    .locals 6

    .line 755
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0165

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/CommentFragment;->C(Ljava/lang/String;)V

    .line 758
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 760
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->ou:Ljava/lang/String;

    new-instance v3, Lcom/picacomic/fregata/objects/requests/CommentBody;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->editText_inputField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/picacomic/fregata/objects/requests/CommentBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/picacomic/fregata/b/a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/requests/CommentBody;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->ok:Lretrofit2/Call;

    .line 762
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->ok:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/CommentFragment$18;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/CommentFragment$18;-><init>(Lcom/picacomic/fregata/fragments/CommentFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public f(II)V
    .locals 1

    .line 1198
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    .line 1199
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    .line 1200
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    .line 1201
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CommentObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->a(Lcom/picacomic/fregata/objects/UserProfileObject;)V

    :cond_0
    return-void
.end method

.method public g(II)V
    .locals 4

    .line 1233
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    .line 1234
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    .line 1235
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_1

    .line 1237
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentObject;->getCommentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/CommentFragment;->aa(Ljava/lang/String;)V

    .line 1239
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentObject;->isLiked()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentObject;->getLikesCount()I

    move-result v0

    sub-int/2addr v0, v2

    .line 1241
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v2, v0}, Lcom/picacomic/fregata/objects/CommentObject;->setLikesCount(I)V

    .line 1242
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {p2, v1}, Lcom/picacomic/fregata/objects/CommentObject;->setLiked(Z)V

    .line 1243
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const v0, 0x7f0f006c

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1245
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentObject;->getLikesCount()I

    move-result v0

    add-int/2addr v0, v2

    .line 1246
    iget-object v3, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v3, v0}, Lcom/picacomic/fregata/objects/CommentObject;->setLikesCount(I)V

    .line 1247
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {p2, v2}, Lcom/picacomic/fregata/objects/CommentObject;->setLiked(Z)V

    .line 1248
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const v0, 0x7f0f006d

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 1250
    :goto_0
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->op:Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;

    invoke-virtual {p2, p1}, Lcom/picacomic/fregata/adapters/CommentRecyclerViewAdapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method public h(II)V
    .locals 1

    .line 1267
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    .line 1268
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    .line 1269
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    .line 1270
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CommentObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/CommentWithReplyObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->getArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/CommentObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CommentObject;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->a(Lcom/picacomic/fregata/objects/UserProfileObject;)V

    :cond_0
    return-void
.end method

.method public i(II)V
    .locals 2

    .line 1291
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/picacomic/fregata/fragments/CommentFragment$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/picacomic/fregata/fragments/CommentFragment$8;-><init>(Lcom/picacomic/fregata/fragments/CommentFragment;II)V

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->hideComment(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public init()V
    .locals 4

    .line 277
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    const/4 v0, 0x0

    .line 278
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->oq:Z

    .line 279
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->or:Z

    const-string v1, ""

    .line 280
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->ou:Ljava/lang/String;

    .line 282
    iget v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->os:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 283
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 284
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->linearLayout_inputBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 287
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->linearLayout_inputBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    :goto_0
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    .line 292
    iput-boolean v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->kE:Z

    .line 293
    iput v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->page:I

    goto :goto_1

    .line 297
    :cond_1
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->kE:Z

    .line 300
    :goto_1
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, ""

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 303
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 304
    const-class v3, Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/UserProfileObject;

    if-eqz v0, :cond_2

    .line 305
    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 306
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->ot:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->ot:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 307
    iput-boolean v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jG:Z

    :cond_2
    if-eqz v0, :cond_3

    .line 311
    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@picacomic.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 312
    iput-boolean v2, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jG:Z

    :cond_3
    return-void
.end method

.method public j(II)V
    .locals 0

    .line 1328
    invoke-virtual {p0, p1, p2}, Lcom/picacomic/fregata/fragments/CommentFragment;->k(II)V

    return-void
.end method

.method public k(II)V
    .locals 2

    .line 1332
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jG:Z

    if-nez v0, :cond_0

    .line 1333
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/picacomic/fregata/fragments/CommentFragment$9;

    invoke-direct {v1, p0, p2, p1}, Lcom/picacomic/fregata/fragments/CommentFragment$9;-><init>(Lcom/picacomic/fregata/fragments/CommentFragment;II)V

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->commentOptions(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1345
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/picacomic/fregata/fragments/CommentFragment$10;

    invoke-direct {v1, p0, p2, p1}, Lcom/picacomic/fregata/fragments/CommentFragment$10;-><init>(Lcom/picacomic/fregata/fragments/CommentFragment;II)V

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->commentOptionsAdvance(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 218
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 219
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "COMIC_ID"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->comicId:Ljava/lang/String;

    .line 221
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "GAME_ID"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->gameId:Ljava/lang/String;

    .line 222
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "USER_ID"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->userId:Ljava/lang/String;

    .line 223
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "KNIGHT_USER_ID"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->ot:Ljava/lang/String;

    .line 224
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "FRAGMENT_TYPE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->os:I

    .line 226
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "USER_BASIC_OBJECT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "USER_BASIC_OBJECT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/UserBasicObject;

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->jH:Lcom/picacomic/fregata/objects/UserBasicObject;

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0c0006

    .line 247
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 248
    invoke-super {p0, p1, p2}, Lcom/picacomic/fregata/fragments/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0051

    const/4 v0, 0x0

    .line 237
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    .line 238
    invoke-virtual {p0, p2}, Lcom/picacomic/fregata/fragments/CommentFragment;->setHasOptionsMenu(Z)V

    .line 239
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 240
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->a(Landroid/view/View;)V

    :cond_0
    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 1466
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->mW:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->mW:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 1468
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->ol:Lretrofit2/Call;

    if-eqz v0, :cond_1

    .line 1469
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->ol:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 1470
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->om:Lretrofit2/Call;

    if-eqz v0, :cond_2

    .line 1471
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->om:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 1472
    :cond_2
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->og:Lretrofit2/Call;

    if-eqz v0, :cond_3

    .line 1473
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->og:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 1474
    :cond_3
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->oh:Lretrofit2/Call;

    if-eqz v0, :cond_4

    .line 1475
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->oh:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 1476
    :cond_4
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->oj:Lretrofit2/Call;

    if-eqz v0, :cond_5

    .line 1477
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->oj:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 1478
    :cond_5
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->oi:Lretrofit2/Call;

    if-eqz v0, :cond_6

    .line 1479
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->oi:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 1480
    :cond_6
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->ok:Lretrofit2/Call;

    if-eqz v0, :cond_7

    .line 1481
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->ok:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 1482
    :cond_7
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onDetach()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 253
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090010

    if-ne v0, v1, :cond_1

    .line 255
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->linearLayout_commentPage:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->linearLayout_commentPage:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->linearLayout_commentPage:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->linearLayout_commentPage:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->linearLayout_commentPage:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CommentFragment;->linearLayout_commentPage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
