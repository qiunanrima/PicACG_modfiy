.class Lcom/picacomic/fregata/fragments/RegisterFragment$2;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/RegisterFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rp:Lcom/picacomic/fregata/fragments/RegisterFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/RegisterFragment;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$2;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 157
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$2;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    .line 158
    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/picacomic/fregata/fragments/RegisterFragment$2$1;

    invoke-direct {v2, p0}, Lcom/picacomic/fregata/fragments/RegisterFragment$2$1;-><init>(Lcom/picacomic/fregata/fragments/RegisterFragment$2;)V

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$2;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    .line 191
    invoke-static {v0}, Lcom/picacomic/fregata/fragments/RegisterFragment;->f(Lcom/picacomic/fregata/fragments/RegisterFragment;)I

    move-result v3

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$2;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    .line 192
    invoke-static {v0}, Lcom/picacomic/fregata/fragments/RegisterFragment;->g(Lcom/picacomic/fregata/fragments/RegisterFragment;)I

    move-result v4

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$2;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    .line 193
    invoke-static {v0}, Lcom/picacomic/fregata/fragments/RegisterFragment;->h(Lcom/picacomic/fregata/fragments/RegisterFragment;)I

    move-result v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 194
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method
