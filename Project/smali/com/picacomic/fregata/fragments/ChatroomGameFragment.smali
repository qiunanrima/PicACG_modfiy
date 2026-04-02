.class public Lcom/picacomic/fregata/fragments/ChatroomGameFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "ChatroomGameFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "ChatroomGameFragment"


# instance fields
.field arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field button_t1:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090093
    .end annotation
.end field

.field button_t2:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090094
    .end annotation
.end field

.field button_t3:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090095
    .end annotation
.end field

.field button_t4:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090096
    .end annotation
.end field

.field gameView:Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09009f
    .end annotation
.end field

.field gson:Lcom/google/gson/Gson;

.field jQ:Landroid/support/v7/widget/LinearLayoutManager;

.field private jZ:Lio/socket/client/d;

.field mF:Lcom/picacomic/fregata/adapters/ChatroomGameMessageRecyclerViewAdapter;

.field mG:Lcom/picacomic/fregata/objects/chatroomGameObjects/ChatroomGameEmit;

.field private mH:Lio/socket/b/a$a;

.field private mI:Lio/socket/b/a$a;

.field private mJ:Lio/socket/b/a$a;

.field recyclerView_gameMessage:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901f4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 161
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    .line 75
    new-instance v0, Lio/socket/client/b$a;

    invoke-direct {v0}, Lio/socket/client/b$a;-><init>()V

    const/4 v1, 0x1

    .line 76
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "websocket"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, v0, Lio/socket/client/b$a;->yT:[Ljava/lang/String;

    :try_start_0
    const-string v1, "https://game.picacomic.com"

    .line 79
    invoke-static {v1, v0}, Lio/socket/client/b;->a(Ljava/lang/String;Lio/socket/client/b$a;)Lio/socket/client/d;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->jZ:Lio/socket/client/d;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :catch_0
    new-instance v0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment$1;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/ChatroomGameFragment$1;-><init>(Lcom/picacomic/fregata/fragments/ChatroomGameFragment;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->mH:Lio/socket/b/a$a;

    .line 111
    new-instance v0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment$2;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/ChatroomGameFragment$2;-><init>(Lcom/picacomic/fregata/fragments/ChatroomGameFragment;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->mI:Lio/socket/b/a$a;

    .line 136
    new-instance v0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment$3;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/ChatroomGameFragment$3;-><init>(Lcom/picacomic/fregata/fragments/ChatroomGameFragment;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->mJ:Lio/socket/b/a$a;

    return-void
.end method

.method private cI()V
    .locals 5

    .line 272
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->cG()V

    .line 276
    new-instance v0, Lcom/picacomic/fregata/objects/chatroomGameObjects/ChatroomGameEmit;

    const-string v1, "INIT"

    const-string v2, "testId"

    invoke-direct {v0, v1, v2}, Lcom/picacomic/fregata/objects/chatroomGameObjects/ChatroomGameEmit;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->jZ:Lio/socket/client/d;

    const-string v2, "PICA_GAME"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lio/socket/client/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 3

    .line 311
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Game BackPress"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 313
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0, p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public bH()V
    .locals 3

    .line 243
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->arrayList:Ljava/util/ArrayList;

    const-string v2, "Message"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->mF:Lcom/picacomic/fregata/adapters/ChatroomGameMessageRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/picacomic/fregata/adapters/ChatroomGameMessageRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bI()V
    .locals 0

    .line 256
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    return-void
.end method

.method public cG()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->gson:Lcom/google/gson/Gson;

    :cond_0
    return-void
.end method

.method public cH()V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->jZ:Lio/socket/client/d;

    const-string v1, "PICA_GAME/GOT_PROFILE"

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->mH:Lio/socket/b/a$a;

    invoke-virtual {v0, v1, v2}, Lio/socket/client/d;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 263
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->jZ:Lio/socket/client/d;

    const-string v1, "PICA_GAME/EXPLORED"

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->mI:Lio/socket/b/a$a;

    invoke-virtual {v0, v1, v2}, Lio/socket/client/d;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 264
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->jZ:Lio/socket/client/d;

    const-string v1, "PICA_GAME/CONFIRMED"

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->mJ:Lio/socket/b/a$a;

    invoke-virtual {v0, v1, v2}, Lio/socket/client/d;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 265
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->jZ:Lio/socket/client/d;

    invoke-virtual {v0}, Lio/socket/client/d;->eJ()Lio/socket/client/d;

    return-void
.end method

.method public ca()V
    .locals 2

    .line 207
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 209
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->recyclerView_gameMessage:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 210
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->recyclerView_gameMessage:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->mF:Lcom/picacomic/fregata/adapters/ChatroomGameMessageRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 212
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->button_t1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->button_t2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->button_t3:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->button_t4:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public init()V
    .locals 3

    .line 184
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    .line 186
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->arrayList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->arrayList:Ljava/util/ArrayList;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->mF:Lcom/picacomic/fregata/adapters/ChatroomGameMessageRecyclerViewAdapter;

    if-nez v0, :cond_1

    .line 190
    new-instance v0, Lcom/picacomic/fregata/adapters/ChatroomGameMessageRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->arrayList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/picacomic/fregata/adapters/ChatroomGameMessageRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->mF:Lcom/picacomic/fregata/adapters/ChatroomGameMessageRecyclerViewAdapter;

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v0, :cond_2

    .line 194
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    .line 197
    :cond_2
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->cH()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->button_t1:Landroid/widget/Button;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "test 1 - INIT"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 223
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->cI()V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->button_t2:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "test 2"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 227
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->gameView:Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;

    invoke-virtual {v0}, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->getHeroSprite()Lcom/picacomic/fregata/utils/ChatroomGame/c;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/picacomic/fregata/utils/ChatroomGame/c;->setAction(I)V

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->button_t3:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 231
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "test 2"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 232
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->gameView:Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;

    invoke-virtual {v0}, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->getHeroSprite()Lcom/picacomic/fregata/utils/ChatroomGame/c;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/picacomic/fregata/utils/ChatroomGame/c;->setAction(I)V

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->button_t4:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 237
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "test 2"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 167
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 170
    new-instance p1, Lcom/picacomic/fregata/objects/chatroomGameObjects/ChatroomGameEmit;

    const-string v0, "test"

    invoke-direct {p1, v0}, Lcom/picacomic/fregata/objects/chatroomGameObjects/ChatroomGameEmit;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->mG:Lcom/picacomic/fregata/objects/chatroomGameObjects/ChatroomGameEmit;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0049

    const/4 v0, 0x0

    .line 177
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 178
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 3

    .line 299
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onDetach()V

    .line 300
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->gameView:Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->gameView:Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->setRunning(Z)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->jZ:Lio/socket/client/d;

    invoke-virtual {v0}, Lio/socket/client/d;->eO()Lio/socket/client/d;

    .line 303
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->jZ:Lio/socket/client/d;

    const-string v1, "PICA_GAME/GOT_PROFILE"

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->mH:Lio/socket/b/a$a;

    invoke-virtual {v0, v1, v2}, Lio/socket/client/d;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 304
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->jZ:Lio/socket/client/d;

    const-string v1, "PICA_GAME/EXPLORED"

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->mI:Lio/socket/b/a$a;

    invoke-virtual {v0, v1, v2}, Lio/socket/client/d;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 305
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->jZ:Lio/socket/client/d;

    const-string v1, "PICA_GAME/CONFIRMED"

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->mJ:Lio/socket/b/a$a;

    invoke-virtual {v0, v1, v2}, Lio/socket/client/d;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 283
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onResume()V

    .line 285
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->gameView:Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->gameView:Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->setRunning(Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 292
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onStop()V

    .line 293
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->gameView:Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->gameView:Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->setRunning(Z)V

    :cond_0
    return-void
.end method
