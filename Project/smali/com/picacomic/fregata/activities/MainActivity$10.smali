.class Lcom/picacomic/fregata/activities/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/activities/MainActivity;->i(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic iO:Lcom/picacomic/fregata/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/activities/MainActivity;)V
    .locals 0

    .line 889
    iput-object p1, p0, Lcom/picacomic/fregata/activities/MainActivity$10;->iO:Lcom/picacomic/fregata/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 892
    iget-object p2, p0, Lcom/picacomic/fregata/activities/MainActivity$10;->iO:Lcom/picacomic/fregata/activities/MainActivity;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/picacomic/fregata/activities/MainActivity;->l(Z)V

    .line 893
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
