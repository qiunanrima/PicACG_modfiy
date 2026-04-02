.class Lcom/picacomic/fregata/fragments/ChatroomFragment$2;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V
    .locals 0

    .line 739
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$2;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 743
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$2;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gridView_emojiList:Landroid/widget/GridView;

    if-eqz p1, :cond_0

    .line 744
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$2;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gridView_emojiList:Landroid/widget/GridView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setVisibility(I)V

    .line 746
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$2;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/activities/BaseActivity;

    invoke-virtual {p1}, Lcom/picacomic/fregata/activities/BaseActivity;->requestPermission()V

    .line 748
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$2;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 749
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$2;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    .line 753
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    return v2

    .line 761
    :pswitch_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$2;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->editText_textbox:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 762
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$2;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lc:J

    .line 763
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$2;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-static {p1, v1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->a(Lcom/picacomic/fregata/fragments/ChatroomFragment;Z)V

    return v2

    .line 755
    :pswitch_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$2;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->editText_textbox:Landroid/widget/EditText;

    const p2, 0x7f0f00c1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(I)V

    .line 756
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$2;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lb:J

    .line 757
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$2;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-static {p1, v2}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->a(Lcom/picacomic/fregata/fragments/ChatroomFragment;Z)V

    return v2

    .line 769
    :cond_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$2;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "No Permission"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
