.class Lcom/picacomic/fregata/fragments/AnonymousChatFragment$1$1;
.super Ljava/lang/Object;
.source "AnonymousChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/AnonymousChatFragment$1;->a([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic kh:Lcom/picacomic/fregata/fragments/AnonymousChatFragment$1;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/AnonymousChatFragment$1;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$1$1;->kh:Lcom/picacomic/fregata/fragments/AnonymousChatFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 158
    sget-object v0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->TAG:Ljava/lang/String;

    const-string v1, "Testing INIT"

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
