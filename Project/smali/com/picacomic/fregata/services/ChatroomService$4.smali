.class Lcom/picacomic/fregata/services/ChatroomService$4;
.super Landroid/os/CountDownTimer;
.source "ChatroomService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/services/ChatroomService;->N(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tI:Lcom/picacomic/fregata/services/ChatroomService;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/services/ChatroomService;JJ)V
    .locals 0

    .line 947
    iput-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService$4;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 956
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService$4;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    invoke-virtual {v0}, Lcom/picacomic/fregata/services/ChatroomService;->cn()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    .line 950
    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService$4;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    iget-object p1, p1, Lcom/picacomic/fregata/services/ChatroomService;->textView_toastMsg:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 951
    iget-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService$4;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    iget-object p1, p1, Lcom/picacomic/fregata/services/ChatroomService;->textView_toastMsg:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
