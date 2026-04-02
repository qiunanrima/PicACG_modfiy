.class Landroid/support/transition/ObjectAnimatorUtilsApi14$PathProperty;
.super Landroid/util/Property;
.source "ObjectAnimatorUtilsApi14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ObjectAnimatorUtilsApi14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/Property<",
        "TT;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentFraction:F

.field private final mPathLength:F

.field private final mPathMeasure:Landroid/graphics/PathMeasure;

.field private final mPosition:[F

.field private final mXProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mYProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/Path;",
            ")V"
        }
    .end annotation

    .line 113
    const-class v0, Ljava/lang/Float;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 107
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/transition/ObjectAnimatorUtilsApi14$PathProperty;->mPosition:[F

    .line 114
    iput-object p1, p0, Landroid/support/transition/ObjectAnimatorUtilsApi14$PathProperty;->mXProperty:Landroid/util/Property;

    .line 115
    iput-object p2, p0, Landroid/support/transition/ObjectAnimatorUtilsApi14$PathProperty;->mYProperty:Landroid/util/Property;

    .line 116
    new-instance p1, Landroid/graphics/PathMeasure;

    const/4 p2, 0x0

    invoke-direct {p1, p3, p2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object p1, p0, Landroid/support/transition/ObjectAnimatorUtilsApi14$PathProperty;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 117
    iget-object p1, p0, Landroid/support/transition/ObjectAnimatorUtilsApi14$PathProperty;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    iput p1, p0, Landroid/support/transition/ObjectAnimatorUtilsApi14$PathProperty;->mPathLength:F

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 122
    iget p1, p0, Landroid/support/transition/ObjectAnimatorUtilsApi14$PathProperty;->mCurrentFraction:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Landroid/support/transition/ObjectAnimatorUtilsApi14$PathProperty;->get(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Float;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    .line 127
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ObjectAnimatorUtilsApi14$PathProperty;->mCurrentFraction:F

    .line 128
    iget-object v0, p0, Landroid/support/transition/ObjectAnimatorUtilsApi14$PathProperty;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget v1, p0, Landroid/support/transition/ObjectAnimatorUtilsApi14$PathProperty;->mPathLength:F

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float v1, v1, p2

    iget-object p2, p0, Landroid/support/transition/ObjectAnimatorUtilsApi14$PathProperty;->mPosition:[F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 129
    iget-object p2, p0, Landroid/support/transition/ObjectAnimatorUtilsApi14$PathProperty;->mXProperty:Landroid/util/Property;

    iget-object v0, p0, Landroid/support/transition/ObjectAnimatorUtilsApi14$PathProperty;->mPosition:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    iget-object p2, p0, Landroid/support/transition/ObjectAnimatorUtilsApi14$PathProperty;->mYProperty:Landroid/util/Property;

    iget-object v0, p0, Landroid/support/transition/ObjectAnimatorUtilsApi14$PathProperty;->mPosition:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 103
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroid/support/transition/ObjectAnimatorUtilsApi14$PathProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method
