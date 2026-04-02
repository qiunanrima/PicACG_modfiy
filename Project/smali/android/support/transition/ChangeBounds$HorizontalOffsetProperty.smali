.class Landroid/support/transition/ChangeBounds$HorizontalOffsetProperty;
.super Landroid/support/transition/ChangeBounds$OffsetProperty;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HorizontalOffsetProperty"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "offsetLeftAndRight"

    .line 396
    invoke-direct {p0, v0}, Landroid/support/transition/ChangeBounds$OffsetProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected offsetBy(Landroid/view/View;I)V
    .locals 0

    .line 401
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    return-void
.end method
