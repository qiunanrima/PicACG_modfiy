.class Lcom/picacomic/fregata/fragments/ChatroomFragment$34;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 626
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$34;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 629
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$34;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->editText_textbox:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$34;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lf:Lcom/picacomic/fregata/adapters/b;

    iget-object p2, p2, Lcom/picacomic/fregata/adapters/b;->jK:[I

    aget p2, p2, p3

    invoke-static {p2}, Lcom/picacomic/fregata/utils/g;->ae(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    return-void
.end method
