.class Landroid/support/transition/ObjectAnimatorUtilsApi14;
.super Ljava/lang/Object;
.source "ObjectAnimatorUtilsApi14.java"

# interfaces
.implements Landroid/support/transition/ObjectAnimatorUtilsImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/ObjectAnimatorUtilsApi14$PathProperty;,
        Landroid/support/transition/ObjectAnimatorUtilsApi14$CastIntegerProperty;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .line 59
    new-instance v0, Landroid/support/transition/ObjectAnimatorUtilsApi14$PathProperty;

    invoke-direct {v0, p2, p3, p4}, Landroid/support/transition/ObjectAnimatorUtilsApi14$PathProperty;-><init>(Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)V

    const/4 p2, 0x0

    new-array p2, p2, [F

    invoke-static {p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method public ofInt(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .line 48
    new-instance v0, Landroid/support/transition/ObjectAnimatorUtilsApi14$PathProperty;

    new-instance v1, Landroid/support/transition/ObjectAnimatorUtilsApi14$CastIntegerProperty;

    invoke-direct {v1, p2}, Landroid/support/transition/ObjectAnimatorUtilsApi14$CastIntegerProperty;-><init>(Landroid/util/Property;)V

    new-instance p2, Landroid/support/transition/ObjectAnimatorUtilsApi14$CastIntegerProperty;

    invoke-direct {p2, p3}, Landroid/support/transition/ObjectAnimatorUtilsApi14$CastIntegerProperty;-><init>(Landroid/util/Property;)V

    invoke-direct {v0, v1, p2, p4}, Landroid/support/transition/ObjectAnimatorUtilsApi14$PathProperty;-><init>(Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)V

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public ofInt(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 33
    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1, p2}, Landroid/util/Property;->of(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Landroid/util/Property;

    move-result-object p2

    .line 35
    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1, p3}, Landroid/util/Property;->of(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Landroid/util/Property;

    move-result-object p3

    .line 37
    new-instance v0, Landroid/support/transition/ObjectAnimatorUtilsApi14$PathProperty;

    new-instance v1, Landroid/support/transition/ObjectAnimatorUtilsApi14$CastIntegerProperty;

    invoke-direct {v1, p2}, Landroid/support/transition/ObjectAnimatorUtilsApi14$CastIntegerProperty;-><init>(Landroid/util/Property;)V

    new-instance p2, Landroid/support/transition/ObjectAnimatorUtilsApi14$CastIntegerProperty;

    invoke-direct {p2, p3}, Landroid/support/transition/ObjectAnimatorUtilsApi14$CastIntegerProperty;-><init>(Landroid/util/Property;)V

    invoke-direct {v0, v1, p2, p4}, Landroid/support/transition/ObjectAnimatorUtilsApi14$PathProperty;-><init>(Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)V

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
