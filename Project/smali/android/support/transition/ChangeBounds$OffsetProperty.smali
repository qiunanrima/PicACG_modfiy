.class abstract Landroid/support/transition/ChangeBounds$OffsetProperty;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "OffsetProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mPreviousValue:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 376
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Integer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 372
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/transition/ChangeBounds$OffsetProperty;->get(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected abstract offsetBy(Landroid/view/View;I)V
.end method

.method public set(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 2

    .line 381
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Landroid/support/transition/ChangeBounds$OffsetProperty;->mPreviousValue:I

    sub-int/2addr v0, v1

    .line 382
    invoke-virtual {p0, p1, v0}, Landroid/support/transition/ChangeBounds$OffsetProperty;->offsetBy(Landroid/view/View;I)V

    .line 383
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroid/support/transition/ChangeBounds$OffsetProperty;->mPreviousValue:I

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 372
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroid/support/transition/ChangeBounds$OffsetProperty;->set(Landroid/view/View;Ljava/lang/Integer;)V

    return-void
.end method
