.class Landroid/support/transition/PropertyValuesHolderUtilsApi14;
.super Ljava/lang/Object;
.source "PropertyValuesHolderUtilsApi14.java"

# interfaces
.implements Landroid/support/transition/PropertyValuesHolderUtilsImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/PropertyValuesHolderUtilsApi14$PathEvaluator;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ofPointF(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "*",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    .line 32
    new-instance v0, Landroid/support/transition/PropertyValuesHolderUtilsApi14$PathEvaluator;

    invoke-direct {v0, p2}, Landroid/support/transition/PropertyValuesHolderUtilsApi14$PathEvaluator;-><init>(Landroid/graphics/Path;)V

    const/4 p2, 0x0

    new-array p2, p2, [Landroid/graphics/PointF;

    invoke-static {p1, v0, p2}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    return-object p1
.end method
