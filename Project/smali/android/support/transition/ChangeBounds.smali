.class public Landroid/support/transition/ChangeBounds;
.super Landroid/support/transition/Transition;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/ChangeBounds$VerticalOffsetProperty;,
        Landroid/support/transition/ChangeBounds$HorizontalOffsetProperty;,
        Landroid/support/transition/ChangeBounds$OffsetProperty;
    }
.end annotation


# static fields
.field private static final DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeBounds:bounds"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeBounds:parent"

.field private static final PROPNAME_WINDOW_X:Ljava/lang/String; = "android:changeBounds:windowX"

.field private static final PROPNAME_WINDOW_Y:Ljava/lang/String; = "android:changeBounds:windowY"

.field private static sRectEvaluator:Landroid/support/transition/RectEvaluator;

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mReparent:Z

.field private mResizeClip:Z

.field private mTempLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    .line 54
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android:changeBounds:bounds"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android:changeBounds:parent"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "android:changeBounds:windowX"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "android:changeBounds:windowY"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/support/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 61
    new-instance v0, Landroid/support/transition/ChangeBounds$1;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeBounds$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    .line 83
    new-instance v0, Landroid/support/transition/RectEvaluator;

    invoke-direct {v0}, Landroid/support/transition/RectEvaluator;-><init>()V

    sput-object v0, Landroid/support/transition/ChangeBounds;->sRectEvaluator:Landroid/support/transition/RectEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    const/4 v0, 0x2

    .line 79
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Landroid/support/transition/ChangeBounds;->mResizeClip:Z

    .line 81
    iput-boolean v0, p0, Landroid/support/transition/ChangeBounds;->mReparent:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 79
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    const/4 p1, 0x0

    .line 80
    iput-boolean p1, p0, Landroid/support/transition/ChangeBounds;->mResizeClip:Z

    .line 81
    iput-boolean p1, p0, Landroid/support/transition/ChangeBounds;->mReparent:Z

    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .locals 7

    .line 116
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 118
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    :cond_0
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:bounds"

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 119
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeBounds:parent"

    iget-object v2, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-boolean v0, p0, Landroid/support/transition/ChangeBounds;->mReparent:Z

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v1, p0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 124
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeBounds:windowX"

    iget-object v2, p0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object p1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:changeBounds:windowY"

    iget-object v1, p0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private parentMatches(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 142
    iget-boolean v0, p0, Landroid/support/transition/ChangeBounds;->mReparent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {p0, p1, v1}, Landroid/support/transition/ChangeBounds;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 147
    :cond_1
    iget-object p1, v0, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    if-ne p2, p1, :cond_0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 137
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeBounds;->captureValues(Landroid/support/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 132
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeBounds;->captureValues(Landroid/support/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 17
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    if-eqz v0, :cond_1f

    if-nez v1, :cond_0

    goto/16 :goto_d

    .line 160
    :cond_0
    iget-object v3, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    .line 161
    iget-object v4, v1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeBounds:parent"

    .line 162
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const-string v5, "android:changeBounds:parent"

    .line 163
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1e

    if-nez v4, :cond_1

    goto/16 :goto_c

    .line 167
    :cond_1
    iget-object v5, v1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 168
    invoke-direct {v6, v3, v4}, Landroid/support/transition/ChangeBounds;->parentMatches(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1b

    .line 169
    iget-object v0, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeBounds:bounds"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 170
    iget-object v1, v1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeBounds:bounds"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 171
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 172
    iget v9, v1, Landroid/graphics/Rect;->left:I

    .line 173
    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 174
    iget v11, v1, Landroid/graphics/Rect;->top:I

    .line 175
    iget v12, v0, Landroid/graphics/Rect;->right:I

    .line 176
    iget v13, v1, Landroid/graphics/Rect;->right:I

    .line 177
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 178
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v12, v3

    sub-int v15, v0, v10

    sub-int v2, v13, v9

    sub-int v7, v1, v11

    if-eqz v14, :cond_5

    if-eqz v15, :cond_5

    if-eqz v2, :cond_5

    if-eqz v7, :cond_5

    if-eq v3, v9, :cond_2

    const/16 v16, 0x1

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    :goto_0
    if-eq v10, v11, :cond_3

    add-int/lit8 v16, v16, 0x1

    :cond_3
    if-eq v12, v13, :cond_4

    add-int/lit8 v16, v16, 0x1

    :cond_4
    if-eq v0, v1, :cond_6

    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_5
    const/16 v16, 0x0

    :cond_6
    :goto_1
    if-lez v16, :cond_1c

    .line 199
    iget-boolean v8, v6, Landroid/support/transition/ChangeBounds;->mResizeClip:Z

    if-nez v8, :cond_11

    if-ne v14, v2, :cond_7

    if-ne v15, v7, :cond_7

    .line 202
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, v3, v0

    invoke-virtual {v5, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 203
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, v10, v0

    invoke-virtual {v5, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 204
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v0

    sub-int/2addr v9, v3

    int-to-float v1, v9

    sub-int/2addr v11, v10

    int-to-float v2, v11

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 206
    new-instance v1, Landroid/support/transition/ChangeBounds$HorizontalOffsetProperty;

    invoke-direct {v1}, Landroid/support/transition/ChangeBounds$HorizontalOffsetProperty;-><init>()V

    new-instance v2, Landroid/support/transition/ChangeBounds$VerticalOffsetProperty;

    invoke-direct {v2}, Landroid/support/transition/ChangeBounds$VerticalOffsetProperty;-><init>()V

    invoke-static {v5, v1, v2, v0}, Landroid/support/transition/ObjectAnimatorUtils;->ofInt(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_6

    :cond_7
    if-eq v3, v9, :cond_8

    .line 209
    invoke-virtual {v5, v3}, Landroid/view/View;->setLeft(I)V

    :cond_8
    if-eq v10, v11, :cond_9

    .line 210
    invoke-virtual {v5, v10}, Landroid/view/View;->setTop(I)V

    :cond_9
    if-eq v12, v13, :cond_a

    .line 211
    invoke-virtual {v5, v12}, Landroid/view/View;->setRight(I)V

    :cond_a
    if-eq v0, v1, :cond_b

    .line 212
    invoke-virtual {v5, v0}, Landroid/view/View;->setBottom(I)V

    :cond_b
    if-ne v3, v9, :cond_d

    if-eq v10, v11, :cond_c

    goto :goto_2

    :cond_c
    const/4 v2, 0x0

    goto :goto_3

    .line 215
    :cond_d
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v2

    int-to-float v3, v3

    int-to-float v4, v10

    int-to-float v7, v9

    int-to-float v8, v11

    invoke-virtual {v2, v3, v4, v7, v8}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v2

    const-string v3, "left"

    const-string v4, "top"

    .line 218
    invoke-static {v5, v3, v4, v2}, Landroid/support/transition/ObjectAnimatorUtils;->ofInt(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    :goto_3
    if-ne v12, v13, :cond_f

    if-eq v0, v1, :cond_e

    goto :goto_4

    :cond_e
    const/4 v0, 0x0

    goto :goto_5

    .line 222
    :cond_f
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v3

    int-to-float v4, v12

    int-to-float v0, v0

    int-to-float v7, v13

    int-to-float v1, v1

    invoke-virtual {v3, v4, v0, v7, v1}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    const-string v1, "right"

    const-string v3, "bottom"

    .line 224
    invoke-static {v5, v1, v3, v0}, Landroid/support/transition/ObjectAnimatorUtils;->ofInt(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 227
    :goto_5
    invoke-static {v2, v0}, Landroid/support/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    .line 230
    :goto_6
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_10

    .line 231
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    .line 232
    invoke-static {v1, v2}, Landroid/support/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    .line 233
    new-instance v2, Landroid/support/transition/ChangeBounds$2;

    invoke-direct {v2, v6, v1}, Landroid/support/transition/ChangeBounds$2;-><init>(Landroid/support/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    .line 259
    invoke-virtual {v6, v2}, Landroid/support/transition/ChangeBounds;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    :cond_10
    return-object v0

    :cond_11
    if-eq v14, v2, :cond_12

    .line 264
    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v9

    invoke-virtual {v5, v0}, Landroid/view/View;->setRight(I)V

    :cond_12
    if-eq v15, v7, :cond_13

    .line 267
    invoke-static {v15, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v11

    invoke-virtual {v5, v0}, Landroid/view/View;->setBottom(I)V

    :cond_13
    if-eq v3, v9, :cond_14

    sub-int v0, v3, v9

    int-to-float v0, v0

    .line 271
    invoke-virtual {v5, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_14
    if-eq v10, v11, :cond_15

    sub-int v0, v10, v11

    int-to-float v0, v0

    .line 274
    invoke-virtual {v5, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_15
    sub-int/2addr v9, v3

    int-to-float v0, v9

    sub-int/2addr v11, v10

    int-to-float v1, v11

    sub-int v3, v2, v14

    sub-int v8, v7, v15

    cmpl-float v9, v0, v4

    if-nez v9, :cond_17

    cmpl-float v9, v1, v4

    if-eqz v9, :cond_16

    goto :goto_7

    :cond_16
    const/4 v0, 0x0

    goto :goto_8

    .line 283
    :cond_17
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v9

    invoke-virtual {v9, v4, v4, v0, v1}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 284
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {v5, v1, v4, v0}, Landroid/support/transition/ObjectAnimatorUtils;->ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_8
    if-nez v3, :cond_19

    if-eqz v8, :cond_18

    goto :goto_9

    :cond_18
    const/4 v1, 0x1

    const/4 v2, 0x0

    goto :goto_a

    .line 289
    :cond_19
    :goto_9
    new-instance v1, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 290
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3, v3, v2, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 291
    sget-object v2, Landroid/support/transition/ViewUtils;->CLIP_BOUNDS:Landroid/util/Property;

    sget-object v7, Landroid/support/transition/ChangeBounds;->sRectEvaluator:Landroid/support/transition/RectEvaluator;

    const/4 v8, 0x2

    new-array v8, v8, [Landroid/graphics/Rect;

    aput-object v1, v8, v3

    const/4 v1, 0x1

    aput-object v4, v8, v1

    invoke-static {v5, v2, v7, v8}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 294
    :goto_a
    invoke-static {v0, v2}, Landroid/support/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    .line 296
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1a

    .line 297
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 298
    invoke-static {v2, v1}, Landroid/support/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    .line 299
    new-instance v1, Landroid/support/transition/ChangeBounds$3;

    invoke-direct {v1, v6, v2}, Landroid/support/transition/ChangeBounds$3;-><init>(Landroid/support/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    .line 325
    invoke-virtual {v6, v1}, Landroid/support/transition/ChangeBounds;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 327
    :cond_1a
    new-instance v1, Landroid/support/transition/ChangeBounds$4;

    invoke-direct {v1, v6, v5}, Landroid/support/transition/ChangeBounds$4;-><init>(Landroid/support/transition/ChangeBounds;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    .line 337
    :cond_1b
    iget-object v2, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeBounds:windowX"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 338
    iget-object v0, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeBounds:windowY"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 339
    iget-object v3, v1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeBounds:windowX"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 340
    iget-object v1, v1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeBounds:windowY"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v2, v3, :cond_1d

    if-eq v0, v1, :cond_1c

    goto :goto_b

    :cond_1c
    const/4 v0, 0x0

    return-object v0

    .line 343
    :cond_1d
    :goto_b
    iget-object v7, v6, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    move-object/from16 v8, p1

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 344
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 346
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 347
    invoke-virtual {v5, v9}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 349
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 350
    invoke-static {v5}, Landroid/support/transition/ViewUtils;->getTransitionAlpha(Landroid/view/View;)F

    move-result v7

    .line 351
    invoke-static {v5, v4}, Landroid/support/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 352
    invoke-static/range {p1 .. p1}, Landroid/support/transition/ViewUtils;->getOverlay(Landroid/view/View;)Landroid/support/transition/ViewOverlayImpl;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/support/transition/ViewOverlayImpl;->add(Landroid/graphics/drawable/Drawable;)V

    .line 353
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v4

    iget-object v10, v6, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-int/2addr v2, v10

    int-to-float v2, v2

    iget-object v10, v6, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    const/4 v12, 0x1

    aget v10, v10, v12

    sub-int/2addr v0, v10

    int-to-float v0, v0

    iget-object v10, v6, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    aget v10, v10, v11

    sub-int/2addr v3, v10

    int-to-float v3, v3

    iget-object v10, v6, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    aget v10, v10, v12

    sub-int/2addr v1, v10

    int-to-float v1, v1

    invoke-virtual {v4, v2, v0, v3, v1}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 356
    sget-object v1, Landroid/support/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    invoke-static {v1, v0}, Landroid/support/transition/PropertyValuesHolderUtils;->ofPointF(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 358
    new-array v1, v12, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v11

    invoke-static {v9, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 359
    new-instance v11, Landroid/support/transition/ChangeBounds$5;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v9

    move-object v4, v5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Landroid/support/transition/ChangeBounds$5;-><init>(Landroid/support/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v10

    :cond_1e
    :goto_c
    const/4 v0, 0x0

    return-object v0

    :cond_1f
    :goto_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 95
    sget-object v0, Landroid/support/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setResizeClip(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Landroid/support/transition/ChangeBounds;->mResizeClip:Z

    return-void
.end method
