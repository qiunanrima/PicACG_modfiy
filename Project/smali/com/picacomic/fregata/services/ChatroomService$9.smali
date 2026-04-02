.class Lcom/picacomic/fregata/services/ChatroomService$9;
.super Ljava/lang/Object;
.source "ChatroomService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/services/ChatroomService;->bF()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tI:Lcom/picacomic/fregata/services/ChatroomService;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/services/ChatroomService;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService$9;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 428
    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService$9;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    iget-boolean p1, p1, Lcom/picacomic/fregata/services/ChatroomService;->tG:Z

    if-eqz p1, :cond_0

    .line 429
    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService$9;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/picacomic/fregata/services/ChatroomService;->tG:Z

    .line 430
    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService$9;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/services/ChatroomService;->D(Z)V

    goto :goto_0

    .line 432
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService$9;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/picacomic/fregata/services/ChatroomService;->tG:Z

    .line 433
    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService$9;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/services/ChatroomService;->D(Z)V

    :goto_0
    return-void
.end method
