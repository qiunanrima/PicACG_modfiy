.class public Lcom/picacomic/fregata/b/c;
.super Ljava/lang/Object;
.source "NetworkErrorHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "c"


# instance fields
.field public code:I

.field public ta:Ljava/lang/String;

.field public tb:Lcom/picacomic/fregata/objects/NetworkErrorObject;

.field public tc:Lcom/picacomic/fregata/a/g;

.field public td:Lcom/picacomic/fregata/a/g;

.field public te:Lcom/picacomic/fregata/a/g;

.field public tf:Lcom/picacomic/fregata/a/g;

.field public tg:Lcom/picacomic/fregata/a/g;

.field public th:Lcom/picacomic/fregata/a/g;

.field public ti:Lcom/picacomic/fregata/a/g;

.field public tj:Lcom/picacomic/fregata/a/g;

.field public tk:Lcom/picacomic/fregata/a/g;

.field public tl:Lcom/picacomic/fregata/a/g;

.field public tm:Lcom/picacomic/fregata/a/g;

.field public tn:Lcom/picacomic/fregata/a/g;

.field public tp:Lcom/picacomic/fregata/a/g;

.field public tq:Lcom/picacomic/fregata/a/g;

.field public tr:Lcom/picacomic/fregata/a/g;

.field public ts:Lcom/picacomic/fregata/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Lcom/picacomic/fregata/b/c$10;

    invoke-direct {v0, p0, p1}, Lcom/picacomic/fregata/b/c$10;-><init>(Lcom/picacomic/fregata/b/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/picacomic/fregata/b/c;->tc:Lcom/picacomic/fregata/a/g;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p2, p0, Lcom/picacomic/fregata/b/c;->code:I

    .line 81
    iput-object p3, p0, Lcom/picacomic/fregata/b/c;->ta:Ljava/lang/String;

    .line 82
    iget-object p2, p0, Lcom/picacomic/fregata/b/c;->ta:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/picacomic/fregata/b/c;->av(Ljava/lang/String;)Lcom/picacomic/fregata/objects/NetworkErrorObject;

    move-result-object p2

    iput-object p2, p0, Lcom/picacomic/fregata/b/c;->tb:Lcom/picacomic/fregata/objects/NetworkErrorObject;

    .line 83
    new-instance p2, Lcom/picacomic/fregata/b/c$1;

    invoke-direct {p2, p0, p1}, Lcom/picacomic/fregata/b/c$1;-><init>(Lcom/picacomic/fregata/b/c;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/picacomic/fregata/b/c;->tc:Lcom/picacomic/fregata/a/g;

    .line 115
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/b/c;->t(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/picacomic/fregata/a/g;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput p2, p0, Lcom/picacomic/fregata/b/c;->code:I

    .line 159
    iput-object p3, p0, Lcom/picacomic/fregata/b/c;->ta:Ljava/lang/String;

    .line 160
    iget-object p2, p0, Lcom/picacomic/fregata/b/c;->ta:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/picacomic/fregata/b/c;->av(Ljava/lang/String;)Lcom/picacomic/fregata/objects/NetworkErrorObject;

    move-result-object p2

    iput-object p2, p0, Lcom/picacomic/fregata/b/c;->tb:Lcom/picacomic/fregata/objects/NetworkErrorObject;

    .line 161
    iput-object p4, p0, Lcom/picacomic/fregata/b/c;->tc:Lcom/picacomic/fregata/a/g;

    .line 162
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/b/c;->t(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/picacomic/fregata/a/g;)V
    .locals 2

    if-nez p1, :cond_0

    .line 373
    iget-object p1, p0, Lcom/picacomic/fregata/b/c;->tc:Lcom/picacomic/fregata/a/g;

    iget v0, p0, Lcom/picacomic/fregata/b/c;->code:I

    iget-object v1, p0, Lcom/picacomic/fregata/b/c;->tb:Lcom/picacomic/fregata/objects/NetworkErrorObject;

    invoke-interface {p1, v0, v1}, Lcom/picacomic/fregata/a/g;->a(ILcom/picacomic/fregata/objects/NetworkErrorObject;)V

    goto :goto_0

    .line 376
    :cond_0
    iget v0, p0, Lcom/picacomic/fregata/b/c;->code:I

    iget-object v1, p0, Lcom/picacomic/fregata/b/c;->tb:Lcom/picacomic/fregata/objects/NetworkErrorObject;

    invoke-interface {p1, v0, v1}, Lcom/picacomic/fregata/a/g;->a(ILcom/picacomic/fregata/objects/NetworkErrorObject;)V

    :goto_0
    return-void
.end method

.method public av(Ljava/lang/String;)Lcom/picacomic/fregata/objects/NetworkErrorObject;
    .locals 2

    if-eqz p1, :cond_0

    .line 276
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 277
    const-class v1, Lcom/picacomic/fregata/objects/NetworkErrorObject;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/NetworkErrorObject;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public dN()V
    .locals 6

    .line 289
    iget v0, p0, Lcom/picacomic/fregata/b/c;->code:I

    const/4 v1, 0x0

    const/16 v2, 0x1bc

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_7

    iget-object v0, p0, Lcom/picacomic/fregata/b/c;->tb:Lcom/picacomic/fregata/objects/NetworkErrorObject;

    if-eqz v0, :cond_7

    .line 290
    iget-object v0, p0, Lcom/picacomic/fregata/b/c;->tb:Lcom/picacomic/fregata/objects/NetworkErrorObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/NetworkErrorObject;->getError()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x170061

    if-eq v4, v5, :cond_4

    const v5, 0x17007e

    if-eq v4, v5, :cond_3

    const v5, 0x170082

    if-eq v4, v5, :cond_2

    const v5, 0x170087

    if-eq v4, v5, :cond_1

    const v5, 0x1700a6

    if-eq v4, v5, :cond_0

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    const-string v4, "1026"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0xd

    goto/16 :goto_0

    :pswitch_1
    const-string v4, "1025"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0xc

    goto/16 :goto_0

    :pswitch_2
    const-string v4, "1024"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0xb

    goto/16 :goto_0

    :pswitch_3
    const-string v4, "1023"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x9

    goto/16 :goto_0

    :pswitch_4
    const-string v4, "1009"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x6

    goto/16 :goto_0

    :pswitch_5
    const-string v4, "1008"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x5

    goto :goto_0

    :pswitch_6
    const-string v4, "1007"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x4

    goto :goto_0

    :pswitch_7
    const-string v4, "1006"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x3

    goto :goto_0

    :pswitch_8
    const-string v4, "1005"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x2

    goto :goto_0

    :pswitch_9
    const-string v4, "1004"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const-string v4, "1029"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0xe

    goto :goto_0

    :cond_1
    const-string v4, "1019"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0xa

    goto :goto_0

    :cond_2
    const-string v4, "1014"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x8

    goto :goto_0

    :cond_3
    const-string v4, "1010"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x7

    goto :goto_0

    :cond_4
    const-string v4, "1002"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x0

    :cond_5
    :goto_0
    packed-switch v3, :pswitch_data_2

    .line 351
    iget v0, p0, Lcom/picacomic/fregata/b/c;->code:I

    const/16 v3, 0x190

    if-ne v0, v3, :cond_6

    .line 352
    iget-object v0, p0, Lcom/picacomic/fregata/b/c;->tc:Lcom/picacomic/fregata/a/g;

    iget-object v1, p0, Lcom/picacomic/fregata/b/c;->tb:Lcom/picacomic/fregata/objects/NetworkErrorObject;

    invoke-interface {v0, v2, v1}, Lcom/picacomic/fregata/a/g;->a(ILcom/picacomic/fregata/objects/NetworkErrorObject;)V

    goto/16 :goto_1

    .line 347
    :pswitch_a
    iget-object v0, p0, Lcom/picacomic/fregata/b/c;->ts:Lcom/picacomic/fregata/a/g;

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/b/c;->a(Lcom/picacomic/fregata/a/g;)V

    goto :goto_1

    .line 344
    :pswitch_b
    iget-object v0, p0, Lcom/picacomic/fregata/b/c;->tr:Lcom/picacomic/fregata/a/g;

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/b/c;->a(Lcom/picacomic/fregata/a/g;)V

    goto :goto_1

    .line 341
    :pswitch_c
    iget-object v0, p0, Lcom/picacomic/fregata/b/c;->tq:Lcom/picacomic/fregata/a/g;

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/b/c;->a(Lcom/picacomic/fregata/a/g;)V

    goto :goto_1

    .line 337
    :pswitch_d
    iget-object v0, p0, Lcom/picacomic/fregata/b/c;->tp:Lcom/picacomic/fregata/a/g;

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/b/c;->a(Lcom/picacomic/fregata/a/g;)V

    goto :goto_1

    .line 333
    :pswitch_e
    iget-object v0, p0, Lcom/picacomic/fregata/b/c;->tm:Lcom/picacomic/fregata/a/g;

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/b/c;->a(Lcom/picacomic/fregata/a/g;)V

    goto :goto_1

    .line 329
    :pswitch_f
    iget-object v0, p0, Lcom/picacomic/fregata/b/c;->tn:Lcom/picacomic/fregata/a/g;

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/b/c;->a(Lcom/picacomic/fregata/a/g;)V

    goto :goto_1

    .line 325
    :pswitch_10
    iget-object v0, p0, Lcom/picacomic/fregata/b/c;->tl:Lcom/picacomic/fregata/a/g;

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/b/c;->a(Lcom/picacomic/fregata/a/g;)V

    goto :goto_1

    .line 321
    :pswitch_11
    iget-object v0, p0, Lcom/picacomic/fregata/b/c;->tk:Lcom/picacomic/fregata/a/g;

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/b/c;->a(Lcom/picacomic/fregata/a/g;)V

    goto :goto_1

    .line 317
    :pswitch_12
    iget-object v0, p0, Lcom/picacomic/fregata/b/c;->tj:Lcom/picacomic/fregata/a/g;

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/b/c;->a(Lcom/picacomic/fregata/a/g;)V

    goto :goto_1

    .line 313
    :pswitch_13
    iget-object v0, p0, Lcom/picacomic/fregata/b/c;->ti:Lcom/picacomic/fregata/a/g;

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/b/c;->a(Lcom/picacomic/fregata/a/g;)V

    goto :goto_1

    .line 309
    :pswitch_14
    iget-object v0, p0, Lcom/picacomic/fregata/b/c;->th:Lcom/picacomic/fregata/a/g;

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/b/c;->a(Lcom/picacomic/fregata/a/g;)V

    goto :goto_1

    .line 305
    :pswitch_15
    iget-object v0, p0, Lcom/picacomic/fregata/b/c;->tg:Lcom/picacomic/fregata/a/g;

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/b/c;->a(Lcom/picacomic/fregata/a/g;)V

    goto :goto_1

    .line 301
    :pswitch_16
    iget-object v0, p0, Lcom/picacomic/fregata/b/c;->tf:Lcom/picacomic/fregata/a/g;

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/b/c;->a(Lcom/picacomic/fregata/a/g;)V

    goto :goto_1

    .line 297
    :pswitch_17
    iget-object v0, p0, Lcom/picacomic/fregata/b/c;->te:Lcom/picacomic/fregata/a/g;

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/b/c;->a(Lcom/picacomic/fregata/a/g;)V

    goto :goto_1

    .line 293
    :pswitch_18
    iget-object v0, p0, Lcom/picacomic/fregata/b/c;->td:Lcom/picacomic/fregata/a/g;

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/b/c;->a(Lcom/picacomic/fregata/a/g;)V

    goto :goto_1

    .line 354
    :cond_6
    iget-object v0, p0, Lcom/picacomic/fregata/b/c;->tc:Lcom/picacomic/fregata/a/g;

    invoke-interface {v0, v2, v1}, Lcom/picacomic/fregata/a/g;->a(ILcom/picacomic/fregata/objects/NetworkErrorObject;)V

    .line 359
    :goto_1
    sget-object v0, Lcom/picacomic/fregata/b/c;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/b/c;->tb:Lcom/picacomic/fregata/objects/NetworkErrorObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/NetworkErrorObject;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/b/c;->tb:Lcom/picacomic/fregata/objects/NetworkErrorObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/NetworkErrorObject;->getError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/b/c;->tb:Lcom/picacomic/fregata/objects/NetworkErrorObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/NetworkErrorObject;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/b/c;->tb:Lcom/picacomic/fregata/objects/NetworkErrorObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/NetworkErrorObject;->getDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 361
    :cond_7
    iget-object v0, p0, Lcom/picacomic/fregata/b/c;->tc:Lcom/picacomic/fregata/a/g;

    invoke-interface {v0, v2, v1}, Lcom/picacomic/fregata/a/g;->a(ILcom/picacomic/fregata/objects/NetworkErrorObject;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x170063
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1700a0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public t(Landroid/content/Context;)V
    .locals 1

    .line 166
    new-instance v0, Lcom/picacomic/fregata/b/c$11;

    invoke-direct {v0, p0, p1}, Lcom/picacomic/fregata/b/c$11;-><init>(Lcom/picacomic/fregata/b/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/picacomic/fregata/b/c;->td:Lcom/picacomic/fregata/a/g;

    .line 172
    new-instance v0, Lcom/picacomic/fregata/b/c$12;

    invoke-direct {v0, p0, p1}, Lcom/picacomic/fregata/b/c$12;-><init>(Lcom/picacomic/fregata/b/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/picacomic/fregata/b/c;->te:Lcom/picacomic/fregata/a/g;

    .line 178
    new-instance v0, Lcom/picacomic/fregata/b/c$13;

    invoke-direct {v0, p0, p1}, Lcom/picacomic/fregata/b/c$13;-><init>(Lcom/picacomic/fregata/b/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/picacomic/fregata/b/c;->tf:Lcom/picacomic/fregata/a/g;

    .line 191
    new-instance v0, Lcom/picacomic/fregata/b/c$14;

    invoke-direct {v0, p0, p1}, Lcom/picacomic/fregata/b/c$14;-><init>(Lcom/picacomic/fregata/b/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/picacomic/fregata/b/c;->tg:Lcom/picacomic/fregata/a/g;

    .line 197
    new-instance v0, Lcom/picacomic/fregata/b/c$15;

    invoke-direct {v0, p0, p1}, Lcom/picacomic/fregata/b/c$15;-><init>(Lcom/picacomic/fregata/b/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/picacomic/fregata/b/c;->th:Lcom/picacomic/fregata/a/g;

    .line 203
    new-instance v0, Lcom/picacomic/fregata/b/c$16;

    invoke-direct {v0, p0, p1}, Lcom/picacomic/fregata/b/c$16;-><init>(Lcom/picacomic/fregata/b/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/picacomic/fregata/b/c;->ti:Lcom/picacomic/fregata/a/g;

    .line 209
    new-instance v0, Lcom/picacomic/fregata/b/c$17;

    invoke-direct {v0, p0, p1}, Lcom/picacomic/fregata/b/c$17;-><init>(Lcom/picacomic/fregata/b/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/picacomic/fregata/b/c;->tj:Lcom/picacomic/fregata/a/g;

    .line 215
    new-instance v0, Lcom/picacomic/fregata/b/c$2;

    invoke-direct {v0, p0, p1}, Lcom/picacomic/fregata/b/c$2;-><init>(Lcom/picacomic/fregata/b/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/picacomic/fregata/b/c;->tk:Lcom/picacomic/fregata/a/g;

    .line 221
    new-instance v0, Lcom/picacomic/fregata/b/c$3;

    invoke-direct {v0, p0, p1}, Lcom/picacomic/fregata/b/c$3;-><init>(Lcom/picacomic/fregata/b/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/picacomic/fregata/b/c;->tl:Lcom/picacomic/fregata/a/g;

    .line 227
    new-instance v0, Lcom/picacomic/fregata/b/c$4;

    invoke-direct {v0, p0, p1}, Lcom/picacomic/fregata/b/c$4;-><init>(Lcom/picacomic/fregata/b/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/picacomic/fregata/b/c;->tm:Lcom/picacomic/fregata/a/g;

    .line 233
    new-instance v0, Lcom/picacomic/fregata/b/c$5;

    invoke-direct {v0, p0, p1}, Lcom/picacomic/fregata/b/c$5;-><init>(Lcom/picacomic/fregata/b/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/picacomic/fregata/b/c;->tn:Lcom/picacomic/fregata/a/g;

    .line 239
    new-instance v0, Lcom/picacomic/fregata/b/c$6;

    invoke-direct {v0, p0, p1}, Lcom/picacomic/fregata/b/c$6;-><init>(Lcom/picacomic/fregata/b/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/picacomic/fregata/b/c;->tp:Lcom/picacomic/fregata/a/g;

    .line 246
    new-instance v0, Lcom/picacomic/fregata/b/c$7;

    invoke-direct {v0, p0, p1}, Lcom/picacomic/fregata/b/c$7;-><init>(Lcom/picacomic/fregata/b/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/picacomic/fregata/b/c;->tq:Lcom/picacomic/fregata/a/g;

    .line 253
    new-instance v0, Lcom/picacomic/fregata/b/c$8;

    invoke-direct {v0, p0, p1}, Lcom/picacomic/fregata/b/c$8;-><init>(Lcom/picacomic/fregata/b/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/picacomic/fregata/b/c;->tr:Lcom/picacomic/fregata/a/g;

    .line 260
    new-instance v0, Lcom/picacomic/fregata/b/c$9;

    invoke-direct {v0, p0, p1}, Lcom/picacomic/fregata/b/c$9;-><init>(Lcom/picacomic/fregata/b/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/picacomic/fregata/b/c;->ts:Lcom/picacomic/fregata/a/g;

    return-void
.end method
