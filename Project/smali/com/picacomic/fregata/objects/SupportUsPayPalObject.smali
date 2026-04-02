.class public Lcom/picacomic/fregata/objects/SupportUsPayPalObject;
.super Ljava/lang/Object;
.source "SupportUsPayPalObject.java"


# instance fields
.field public description:Ljava/lang/String;

.field public imageId:I

.field public price:Ljava/lang/String;

.field public priceUnit:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->imageId:I

    .line 19
    iput-object p2, p0, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->title:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->priceUnit:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->price:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImageId()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->imageId:I

    return v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceUnit()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->priceUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->description:Ljava/lang/String;

    return-void
.end method

.method public setImageId(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->imageId:I

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->price:Ljava/lang/String;

    return-void
.end method

.method public setPriceUnit(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->priceUnit:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SupportUsPayPalObject{imageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->imageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", priceUnit=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->priceUnit:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", price=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->price:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/SupportUsPayPalObject;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
