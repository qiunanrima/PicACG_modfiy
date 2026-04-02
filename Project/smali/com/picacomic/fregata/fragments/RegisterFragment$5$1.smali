.class Lcom/picacomic/fregata/fragments/RegisterFragment$5$1;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Lcom/picacomic/fregata/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/RegisterFragment$5;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rt:Lcom/picacomic/fregata/fragments/RegisterFragment$5;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/RegisterFragment$5;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$5$1;->rt:Lcom/picacomic/fregata/fragments/RegisterFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/picacomic/fregata/objects/NetworkErrorObject;)V
    .locals 2

    .line 391
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$5$1;->rt:Lcom/picacomic/fregata/fragments/RegisterFragment$5;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/RegisterFragment$5;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 392
    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/NetworkErrorObject;->getError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/NetworkErrorObject;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/NetworkErrorObject;->getDetail()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/picacomic/fregata/fragments/RegisterFragment$5$1$1;

    invoke-direct {p2, p0}, Lcom/picacomic/fregata/fragments/RegisterFragment$5$1$1;-><init>(Lcom/picacomic/fregata/fragments/RegisterFragment$5$1;)V

    const v0, 0x7f0f0176

    .line 394
    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 400
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
