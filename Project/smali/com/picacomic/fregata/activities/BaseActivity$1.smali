.class Lcom/picacomic/fregata/activities/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/activities/BaseActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hp:Lcom/picacomic/fregata/activities/BaseActivity;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/activities/BaseActivity;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/picacomic/fregata/activities/BaseActivity$1;->hp:Lcom/picacomic/fregata/activities/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 116
    iget-object p1, p0, Lcom/picacomic/fregata/activities/BaseActivity$1;->hp:Lcom/picacomic/fregata/activities/BaseActivity;

    invoke-virtual {p1}, Lcom/picacomic/fregata/activities/BaseActivity;->finishAffinity()V

    .line 117
    iget-object p1, p0, Lcom/picacomic/fregata/activities/BaseActivity$1;->hp:Lcom/picacomic/fregata/activities/BaseActivity;

    invoke-virtual {p1}, Lcom/picacomic/fregata/activities/BaseActivity;->finish()V

    const/4 p1, 0x0

    .line 118
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
