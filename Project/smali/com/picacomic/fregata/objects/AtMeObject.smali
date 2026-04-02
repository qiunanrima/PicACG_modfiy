.class public Lcom/picacomic/fregata/objects/AtMeObject;
.super Ljava/lang/Object;
.source "AtMeObject.java"


# instance fields
.field index:I

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/picacomic/fregata/objects/AtMeObject;->name:Ljava/lang/String;

    .line 12
    iput p2, p0, Lcom/picacomic/fregata/objects/AtMeObject;->index:I

    return-void
.end method


# virtual methods
.method public addIndex()V
    .locals 1

    .line 32
    iget v0, p0, Lcom/picacomic/fregata/objects/AtMeObject;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/picacomic/fregata/objects/AtMeObject;->index:I

    return-void
.end method

.method public getIndex()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/picacomic/fregata/objects/AtMeObject;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/picacomic/fregata/objects/AtMeObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setIndex(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/picacomic/fregata/objects/AtMeObject;->index:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/picacomic/fregata/objects/AtMeObject;->name:Ljava/lang/String;

    return-void
.end method
