.class Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$1;
.super Ljava/lang/Object;
.source "LeaderboardPopularFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$1;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 164
    :pswitch_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$1;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    const-string p2, "D7"

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->jM:Ljava/lang/String;

    .line 165
    sget-object p1, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CALL in 7DAYS "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$1;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    iget-boolean v0, v0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->pM:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$1;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    iget-boolean p1, p1, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->pM:Z

    if-nez p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$1;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->dp()V

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$1;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->pI:Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$1;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->jM:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->H(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :pswitch_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$1;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    const-string p2, "D30"

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->jM:Ljava/lang/String;

    .line 172
    sget-object p1, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CALL in 30DAYS "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$1;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    iget-boolean v0, v0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->pM:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$1;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    iget-boolean p1, p1, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->pM:Z

    if-nez p1, :cond_1

    .line 174
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$1;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->dp()V

    .line 175
    :cond_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$1;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->pI:Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$1;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->jM:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->H(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :pswitch_2
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$1;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    const-string p2, "H24"

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->jM:Ljava/lang/String;

    .line 157
    sget-object p1, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CALL in 24HRS "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$1;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    iget-boolean v0, v0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->pM:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$1;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    iget-boolean p1, p1, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->pM:Z

    if-nez p1, :cond_2

    .line 159
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$1;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->dp()V

    .line 160
    :cond_2
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$1;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->pI:Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$1;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->jM:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->H(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0901e7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
