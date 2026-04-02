.class Lcom/picacomic/fregata/DemoLoginActivity$3;
.super Ljava/lang/Object;
.source "DemoLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/DemoLoginActivity;->bt()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hf:Lcom/picacomic/fregata/DemoLoginActivity;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/DemoLoginActivity;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/picacomic/fregata/DemoLoginActivity$3;->hf:Lcom/picacomic/fregata/DemoLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 121
    iget-object p1, p0, Lcom/picacomic/fregata/DemoLoginActivity$3;->hf:Lcom/picacomic/fregata/DemoLoginActivity;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_CONTACTS"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0, v2}, Lcom/picacomic/fregata/DemoLoginActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method
