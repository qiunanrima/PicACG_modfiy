.class Lcom/picacomic/fregata/utils/views/PopupWebview$2;
.super Landroid/os/CountDownTimer;
.source "PopupWebview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/utils/views/PopupWebview;->show(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picacomic/fregata/utils/views/PopupWebview;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/utils/views/PopupWebview;JJ)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/PopupWebview$2;->this$0:Lcom/picacomic/fregata/utils/views/PopupWebview;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PopupWebview$2;->this$0:Lcom/picacomic/fregata/utils/views/PopupWebview;

    iget-object v0, v0, Lcom/picacomic/fregata/utils/views/PopupWebview;->textView_text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PopupWebview$2;->this$0:Lcom/picacomic/fregata/utils/views/PopupWebview;

    iget-object v0, v0, Lcom/picacomic/fregata/utils/views/PopupWebview;->textView_text:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PopupWebview$2;->this$0:Lcom/picacomic/fregata/utils/views/PopupWebview;

    iget-object v0, v0, Lcom/picacomic/fregata/utils/views/PopupWebview;->imageButton_close:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PopupWebview$2;->this$0:Lcom/picacomic/fregata/utils/views/PopupWebview;

    iget-object v0, v0, Lcom/picacomic/fregata/utils/views/PopupWebview;->imageButton_close:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PopupWebview$2;->this$0:Lcom/picacomic/fregata/utils/views/PopupWebview;

    iget-object v0, v0, Lcom/picacomic/fregata/utils/views/PopupWebview;->textView_text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PopupWebview$2;->this$0:Lcom/picacomic/fregata/utils/views/PopupWebview;

    iget-object v0, v0, Lcom/picacomic/fregata/utils/views/PopupWebview;->textView_text:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5ee3\u544a\u53ef\u65bc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " \u79d2\u5f8c\u95dc\u9589"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/PopupWebview$2;->this$0:Lcom/picacomic/fregata/utils/views/PopupWebview;

    iget-object p1, p1, Lcom/picacomic/fregata/utils/views/PopupWebview;->textView_text:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
