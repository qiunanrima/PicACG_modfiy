.class Lcom/picacomic/fregata/fragments/RegisterFragment$2$1;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/RegisterFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rq:Lcom/picacomic/fregata/fragments/RegisterFragment$2;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/RegisterFragment$2;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$2$1;->rq:Lcom/picacomic/fregata/fragments/RegisterFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 4

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-ge p4, v2, :cond_1

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$2$1;->rq:Lcom/picacomic/fregata/fragments/RegisterFragment$2;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/RegisterFragment$2;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/picacomic/fregata/fragments/RegisterFragment;->birthday:Ljava/lang/String;

    .line 173
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$2$1;->rq:Lcom/picacomic/fregata/fragments/RegisterFragment$2;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/RegisterFragment$2;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$2$1;->rq:Lcom/picacomic/fregata/fragments/RegisterFragment$2;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/RegisterFragment$2;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-static {v0}, Lcom/picacomic/fregata/fragments/RegisterFragment;->a(Lcom/picacomic/fregata/fragments/RegisterFragment;)I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {p1, v0}, Lcom/picacomic/fregata/fragments/RegisterFragment;->a(Lcom/picacomic/fregata/fragments/RegisterFragment;I)I

    .line 175
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$2$1;->rq:Lcom/picacomic/fregata/fragments/RegisterFragment$2;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/RegisterFragment$2;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/RegisterFragment;->b(Lcom/picacomic/fregata/fragments/RegisterFragment;)I

    move-result p1

    if-le p3, p1, :cond_2

    .line 176
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$2$1;->rq:Lcom/picacomic/fregata/fragments/RegisterFragment$2;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/RegisterFragment$2;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/RegisterFragment;->c(Lcom/picacomic/fregata/fragments/RegisterFragment;)I

    goto :goto_0

    .line 177
    :cond_2
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$2$1;->rq:Lcom/picacomic/fregata/fragments/RegisterFragment$2;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/RegisterFragment$2;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/RegisterFragment;->b(Lcom/picacomic/fregata/fragments/RegisterFragment;)I

    move-result p1

    if-ne p3, p1, :cond_3

    .line 178
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$2$1;->rq:Lcom/picacomic/fregata/fragments/RegisterFragment$2;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/RegisterFragment$2;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/RegisterFragment;->d(Lcom/picacomic/fregata/fragments/RegisterFragment;)I

    move-result p1

    if-le p4, p1, :cond_3

    .line 179
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$2$1;->rq:Lcom/picacomic/fregata/fragments/RegisterFragment$2;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/RegisterFragment$2;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/RegisterFragment;->c(Lcom/picacomic/fregata/fragments/RegisterFragment;)I

    .line 183
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$2$1;->rq:Lcom/picacomic/fregata/fragments/RegisterFragment$2;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/RegisterFragment$2;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-static {p1, p2}, Lcom/picacomic/fregata/fragments/RegisterFragment;->b(Lcom/picacomic/fregata/fragments/RegisterFragment;I)I

    .line 184
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$2$1;->rq:Lcom/picacomic/fregata/fragments/RegisterFragment$2;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/RegisterFragment$2;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-static {p1, p3}, Lcom/picacomic/fregata/fragments/RegisterFragment;->c(Lcom/picacomic/fregata/fragments/RegisterFragment;I)I

    .line 185
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$2$1;->rq:Lcom/picacomic/fregata/fragments/RegisterFragment$2;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/RegisterFragment$2;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-static {p1, p4}, Lcom/picacomic/fregata/fragments/RegisterFragment;->d(Lcom/picacomic/fregata/fragments/RegisterFragment;I)I

    .line 187
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$2$1;->rq:Lcom/picacomic/fregata/fragments/RegisterFragment$2;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/RegisterFragment$2;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/RegisterFragment;->textView_birthday:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$2$1;->rq:Lcom/picacomic/fregata/fragments/RegisterFragment$2;

    iget-object p3, p3, Lcom/picacomic/fregata/fragments/RegisterFragment$2;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-virtual {p3}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0f0198

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$2$1;->rq:Lcom/picacomic/fregata/fragments/RegisterFragment$2;

    iget-object p3, p3, Lcom/picacomic/fregata/fragments/RegisterFragment$2;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    iget-object p3, p3, Lcom/picacomic/fregata/fragments/RegisterFragment;->birthday:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\uff08"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$2$1;->rq:Lcom/picacomic/fregata/fragments/RegisterFragment$2;

    iget-object p3, p3, Lcom/picacomic/fregata/fragments/RegisterFragment$2;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-static {p3}, Lcom/picacomic/fregata/fragments/RegisterFragment;->e(Lcom/picacomic/fregata/fragments/RegisterFragment;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$2$1;->rq:Lcom/picacomic/fregata/fragments/RegisterFragment$2;

    iget-object p3, p3, Lcom/picacomic/fregata/fragments/RegisterFragment$2;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-virtual {p3}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0f0193

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "\uff09"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
