.class public Lcom/picacomic/fregata/DemoLoginActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DemoLoginActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/picacomic/fregata/DemoLoginActivity$b;,
        Lcom/picacomic/fregata/DemoLoginActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/app/AppCompatActivity;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final gZ:[Ljava/lang/String;


# instance fields
.field private ha:Lcom/picacomic/fregata/DemoLoginActivity$b;

.field private hb:Landroid/widget/AutoCompleteTextView;

.field private hc:Landroid/widget/EditText;

.field private hd:Landroid/view/View;

.field private he:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 54
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "foo@example.com:hello"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "bar@example.com:world"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/picacomic/fregata/DemoLoginActivity;->gZ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/picacomic/fregata/DemoLoginActivity;->ha:Lcom/picacomic/fregata/DemoLoginActivity$b;

    return-void
.end method

.method private A(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "@"

    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private B(Ljava/lang/String;)Z
    .locals 1

    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/picacomic/fregata/DemoLoginActivity;Lcom/picacomic/fregata/DemoLoginActivity$b;)Lcom/picacomic/fregata/DemoLoginActivity$b;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/picacomic/fregata/DemoLoginActivity;->ha:Lcom/picacomic/fregata/DemoLoginActivity$b;

    return-object p1
.end method

.method static synthetic a(Lcom/picacomic/fregata/DemoLoginActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/picacomic/fregata/DemoLoginActivity;->bu()V

    return-void
.end method

.method static synthetic a(Lcom/picacomic/fregata/DemoLoginActivity;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/picacomic/fregata/DemoLoginActivity;->g(Z)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 293
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x109000a

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 297
    iget-object p1, p0, Lcom/picacomic/fregata/DemoLoginActivity;->hb:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic b(Lcom/picacomic/fregata/DemoLoginActivity;)Landroid/view/View;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/picacomic/fregata/DemoLoginActivity;->he:Landroid/view/View;

    return-object p0
.end method

.method private bs()V
    .locals 3

    .line 101
    invoke-direct {p0}, Lcom/picacomic/fregata/DemoLoginActivity;->bt()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/DemoLoginActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method private bt()Z
    .locals 4

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const-string v0, "android.permission.READ_CONTACTS"

    .line 112
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/DemoLoginActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string v0, "android.permission.READ_CONTACTS"

    .line 115
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/DemoLoginActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/picacomic/fregata/DemoLoginActivity;->hb:Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f0f0180

    const/4 v3, -0x2

    invoke-static {v0, v1, v3}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    const v1, 0x104000a

    new-instance v3, Lcom/picacomic/fregata/DemoLoginActivity$3;

    invoke-direct {v3, p0}, Lcom/picacomic/fregata/DemoLoginActivity$3;-><init>(Lcom/picacomic/fregata/DemoLoginActivity;)V

    .line 117
    invoke-virtual {v0, v1, v3}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    goto :goto_0

    .line 125
    :cond_2
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/picacomic/fregata/DemoLoginActivity;->requestPermissions([Ljava/lang/String;I)V

    :goto_0
    return v2
.end method

.method private bu()V
    .locals 6

    .line 150
    iget-object v0, p0, Lcom/picacomic/fregata/DemoLoginActivity;->ha:Lcom/picacomic/fregata/DemoLoginActivity$b;

    if-eqz v0, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/DemoLoginActivity;->hb:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/picacomic/fregata/DemoLoginActivity;->hc:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/picacomic/fregata/DemoLoginActivity;->hb:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    iget-object v2, p0, Lcom/picacomic/fregata/DemoLoginActivity;->hc:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 166
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    invoke-direct {p0, v2}, Lcom/picacomic/fregata/DemoLoginActivity;->B(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 167
    iget-object v1, p0, Lcom/picacomic/fregata/DemoLoginActivity;->hc:Landroid/widget/EditText;

    const v2, 0x7f0f013f

    invoke-virtual {p0, v2}, Lcom/picacomic/fregata/DemoLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v1, p0, Lcom/picacomic/fregata/DemoLoginActivity;->hc:Landroid/widget/EditText;

    const/4 v3, 0x1

    .line 173
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    iget-object v0, p0, Lcom/picacomic/fregata/DemoLoginActivity;->hb:Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f0f013c

    invoke-virtual {p0, v1}, Lcom/picacomic/fregata/DemoLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v1, p0, Lcom/picacomic/fregata/DemoLoginActivity;->hb:Landroid/widget/AutoCompleteTextView;

    goto :goto_0

    .line 177
    :cond_2
    invoke-direct {p0, v0}, Lcom/picacomic/fregata/DemoLoginActivity;->A(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 178
    iget-object v0, p0, Lcom/picacomic/fregata/DemoLoginActivity;->hb:Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f0f013e

    invoke-virtual {p0, v1}, Lcom/picacomic/fregata/DemoLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v1, p0, Lcom/picacomic/fregata/DemoLoginActivity;->hb:Landroid/widget/AutoCompleteTextView;

    goto :goto_0

    :cond_3
    move v5, v3

    :goto_0
    if-eqz v5, :cond_4

    .line 186
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 191
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/picacomic/fregata/activities/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/DemoLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 193
    invoke-virtual {p0}, Lcom/picacomic/fregata/DemoLoginActivity;->finish()V

    :goto_1
    return-void
.end method

.method static synthetic bv()[Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/picacomic/fregata/DemoLoginActivity;->gZ:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/picacomic/fregata/DemoLoginActivity;)Landroid/view/View;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/picacomic/fregata/DemoLoginActivity;->hd:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/picacomic/fregata/DemoLoginActivity;)Landroid/widget/EditText;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/picacomic/fregata/DemoLoginActivity;->hc:Landroid/widget/EditText;

    return-object p0
.end method

.method private g(Z)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .line 218
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/16 v3, 0xd

    if-lt v0, v3, :cond_4

    .line 219
    invoke-virtual {p0}, Lcom/picacomic/fregata/DemoLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v3, 0x10e0000

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 221
    iget-object v3, p0, Lcom/picacomic/fregata/DemoLoginActivity;->he:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v4, 0x8

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object v3, p0, Lcom/picacomic/fregata/DemoLoginActivity;->he:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v7, Lcom/picacomic/fregata/DemoLoginActivity$4;

    invoke-direct {v7, p0, p1}, Lcom/picacomic/fregata/DemoLoginActivity$4;-><init>(Lcom/picacomic/fregata/DemoLoginActivity;Z)V

    .line 223
    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 230
    iget-object v0, p0, Lcom/picacomic/fregata/DemoLoginActivity;->hd:Landroid/view/View;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/picacomic/fregata/DemoLoginActivity;->hd:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/picacomic/fregata/DemoLoginActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/picacomic/fregata/DemoLoginActivity$5;-><init>(Lcom/picacomic/fregata/DemoLoginActivity;Z)V

    .line 232
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_5

    .line 241
    :cond_4
    iget-object v0, p0, Lcom/picacomic/fregata/DemoLoginActivity;->hd:Landroid/view/View;

    if-eqz p1, :cond_5

    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    const/16 v3, 0x8

    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/picacomic/fregata/DemoLoginActivity;->he:Landroid/view/View;

    if-eqz p1, :cond_6

    const/16 v1, 0x8

    :cond_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 265
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 266
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 267
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 268
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 272
    :cond_0
    invoke-direct {p0, p1}, Lcom/picacomic/fregata/DemoLoginActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001d

    .line 71
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/DemoLoginActivity;->setContentView(I)V

    const p1, 0x7f0900e8

    .line 73
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/DemoLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    iput-object p1, p0, Lcom/picacomic/fregata/DemoLoginActivity;->hb:Landroid/widget/AutoCompleteTextView;

    const p1, 0x7f0901de

    .line 76
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/DemoLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/picacomic/fregata/DemoLoginActivity;->hc:Landroid/widget/EditText;

    .line 77
    iget-object p1, p0, Lcom/picacomic/fregata/DemoLoginActivity;->hc:Landroid/widget/EditText;

    new-instance v0, Lcom/picacomic/fregata/DemoLoginActivity$1;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/DemoLoginActivity$1;-><init>(Lcom/picacomic/fregata/DemoLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const p1, 0x7f0900ea

    .line 88
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/DemoLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 89
    new-instance v0, Lcom/picacomic/fregata/DemoLoginActivity$2;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/DemoLoginActivity$2;-><init>(Lcom/picacomic/fregata/DemoLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901c5

    .line 96
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/DemoLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/DemoLoginActivity;->he:Landroid/view/View;

    const p1, 0x7f0901c6

    .line 97
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/DemoLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/DemoLoginActivity;->hd:Landroid/view/View;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 248
    new-instance p1, Landroid/content/CursorLoader;

    sget-object p2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "data"

    .line 250
    invoke-static {p2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/picacomic/fregata/DemoLoginActivity$a;->hh:[Ljava/lang/String;

    const-string v4, "mimetype = ?"

    const/4 p2, 0x1

    new-array v5, p2, [Ljava/lang/String;

    const-string p2, "vnd.android.cursor.item/email_v2"

    const/4 v0, 0x0

    aput-object p2, v5, v0

    const-string v6, "is_primary DESC"

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/picacomic/fregata/DemoLoginActivity;->a(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 137
    array-length p1, p3

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/picacomic/fregata/DemoLoginActivity;->bs()V

    :cond_0
    return-void
.end method
