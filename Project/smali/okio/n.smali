.class final Lokio/n;
.super Ljava/lang/Object;
.source "Segment.java"


# instance fields
.field AG:Z

.field AH:Z

.field AI:Lokio/n;

.field AJ:Lokio/n;

.field final data:[B

.field limit:I

.field pos:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 63
    new-array v0, v0, [B

    iput-object v0, p0, Lokio/n;->data:[B

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lokio/n;->AH:Z

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lokio/n;->AG:Z

    return-void
.end method

.method constructor <init>(Lokio/n;)V
    .locals 3

    .line 69
    iget-object v0, p1, Lokio/n;->data:[B

    iget v1, p1, Lokio/n;->pos:I

    iget v2, p1, Lokio/n;->limit:I

    invoke-direct {p0, v0, v1, v2}, Lokio/n;-><init>([BII)V

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p1, Lokio/n;->AG:Z

    return-void
.end method

.method constructor <init>([BII)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lokio/n;->data:[B

    .line 75
    iput p2, p0, Lokio/n;->pos:I

    .line 76
    iput p3, p0, Lokio/n;->limit:I

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lokio/n;->AH:Z

    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lokio/n;->AG:Z

    return-void
.end method


# virtual methods
.method public a(Lokio/n;)Lokio/n;
    .locals 1

    .line 99
    iput-object p0, p1, Lokio/n;->AJ:Lokio/n;

    .line 100
    iget-object v0, p0, Lokio/n;->AI:Lokio/n;

    iput-object v0, p1, Lokio/n;->AI:Lokio/n;

    .line 101
    iget-object v0, p0, Lokio/n;->AI:Lokio/n;

    iput-object p1, v0, Lokio/n;->AJ:Lokio/n;

    .line 102
    iput-object p1, p0, Lokio/n;->AI:Lokio/n;

    return-object p1
.end method

.method public a(Lokio/n;I)V
    .locals 5

    .line 153
    iget-boolean v0, p1, Lokio/n;->AH:Z

    if-eqz v0, :cond_3

    .line 154
    iget v0, p1, Lokio/n;->limit:I

    add-int/2addr v0, p2

    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 156
    iget-boolean v0, p1, Lokio/n;->AG:Z

    if-nez v0, :cond_1

    .line 157
    iget v0, p1, Lokio/n;->limit:I

    add-int/2addr v0, p2

    iget v2, p1, Lokio/n;->pos:I

    sub-int/2addr v0, v2

    if-gt v0, v1, :cond_0

    .line 158
    iget-object v0, p1, Lokio/n;->data:[B

    iget v1, p1, Lokio/n;->pos:I

    iget-object v2, p1, Lokio/n;->data:[B

    iget v3, p1, Lokio/n;->limit:I

    iget v4, p1, Lokio/n;->pos:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    iget v0, p1, Lokio/n;->limit:I

    iget v1, p1, Lokio/n;->pos:I

    sub-int/2addr v0, v1

    iput v0, p1, Lokio/n;->limit:I

    .line 160
    iput v4, p1, Lokio/n;->pos:I

    goto :goto_0

    .line 157
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 156
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 163
    :cond_2
    :goto_0
    iget-object v0, p0, Lokio/n;->data:[B

    iget v1, p0, Lokio/n;->pos:I

    iget-object v2, p1, Lokio/n;->data:[B

    iget v3, p1, Lokio/n;->limit:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iget v0, p1, Lokio/n;->limit:I

    add-int/2addr v0, p2

    iput v0, p1, Lokio/n;->limit:I

    .line 165
    iget p1, p0, Lokio/n;->pos:I

    add-int/2addr p1, p2

    iput p1, p0, Lokio/n;->pos:I

    return-void

    .line 153
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public au(I)Lokio/n;
    .locals 5

    if-lez p1, :cond_1

    .line 115
    iget v0, p0, Lokio/n;->limit:I

    iget v1, p0, Lokio/n;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    const/16 v0, 0x400

    if-lt p1, v0, :cond_0

    .line 124
    new-instance v0, Lokio/n;

    invoke-direct {v0, p0}, Lokio/n;-><init>(Lokio/n;)V

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {}, Lokio/o;->gf()Lokio/n;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lokio/n;->data:[B

    iget v2, p0, Lokio/n;->pos:I

    iget-object v3, v0, Lokio/n;->data:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    :goto_0
    iget v1, v0, Lokio/n;->pos:I

    add-int/2addr v1, p1

    iput v1, v0, Lokio/n;->limit:I

    .line 131
    iget v1, p0, Lokio/n;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lokio/n;->pos:I

    .line 132
    iget-object p1, p0, Lokio/n;->AJ:Lokio/n;

    invoke-virtual {p1, v0}, Lokio/n;->a(Lokio/n;)Lokio/n;

    return-object v0

    .line 115
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public gd()Lokio/n;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 86
    iget-object v0, p0, Lokio/n;->AI:Lokio/n;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lokio/n;->AI:Lokio/n;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 87
    :goto_0
    iget-object v2, p0, Lokio/n;->AJ:Lokio/n;

    iget-object v3, p0, Lokio/n;->AI:Lokio/n;

    iput-object v3, v2, Lokio/n;->AI:Lokio/n;

    .line 88
    iget-object v2, p0, Lokio/n;->AI:Lokio/n;

    iget-object v3, p0, Lokio/n;->AJ:Lokio/n;

    iput-object v3, v2, Lokio/n;->AJ:Lokio/n;

    .line 89
    iput-object v1, p0, Lokio/n;->AI:Lokio/n;

    .line 90
    iput-object v1, p0, Lokio/n;->AJ:Lokio/n;

    return-object v0
.end method

.method public ge()V
    .locals 3

    .line 141
    iget-object v0, p0, Lokio/n;->AJ:Lokio/n;

    if-eq v0, p0, :cond_3

    .line 142
    iget-object v0, p0, Lokio/n;->AJ:Lokio/n;

    iget-boolean v0, v0, Lokio/n;->AH:Z

    if-nez v0, :cond_0

    return-void

    .line 143
    :cond_0
    iget v0, p0, Lokio/n;->limit:I

    iget v1, p0, Lokio/n;->pos:I

    sub-int/2addr v0, v1

    .line 144
    iget-object v1, p0, Lokio/n;->AJ:Lokio/n;

    iget v1, v1, Lokio/n;->limit:I

    rsub-int v1, v1, 0x2000

    iget-object v2, p0, Lokio/n;->AJ:Lokio/n;

    iget-boolean v2, v2, Lokio/n;->AG:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lokio/n;->AJ:Lokio/n;

    iget v2, v2, Lokio/n;->pos:I

    :goto_0
    add-int/2addr v1, v2

    if-le v0, v1, :cond_2

    return-void

    .line 146
    :cond_2
    iget-object v1, p0, Lokio/n;->AJ:Lokio/n;

    invoke-virtual {p0, v1, v0}, Lokio/n;->a(Lokio/n;I)V

    .line 147
    invoke-virtual {p0}, Lokio/n;->gd()Lokio/n;

    .line 148
    invoke-static {p0}, Lokio/o;->b(Lokio/n;)V

    return-void

    .line 141
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
