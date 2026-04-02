.class Lcom/picacomic/fregata/fragments/ChatroomFragment$12;
.super Landroid/os/CountDownTimer;
.source "ChatroomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment;->b(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

.field final synthetic lZ:I

.field final synthetic ma:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;JJILjava/lang/String;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$12;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iput p6, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$12;->lZ:I

    iput-object p7, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$12;->ma:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 554
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$12;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$12;->lZ:I

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$12;->ma:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->b(ILjava/lang/String;)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
