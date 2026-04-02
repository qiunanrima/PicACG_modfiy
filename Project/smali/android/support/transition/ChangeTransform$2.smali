.class Landroid/support/transition/ChangeTransform$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/ChangeTransform;->createTransformAnimator(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field private mTempMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Landroid/support/transition/ChangeTransform;

.field final synthetic val$finalEndMatrix:Landroid/graphics/Matrix;

.field final synthetic val$handleParentChange:Z

.field final synthetic val$transforms:Landroid/support/transition/ChangeTransform$Transforms;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroid/support/transition/ChangeTransform$Transforms;)V
    .locals 0

    .line 286
    iput-object p1, p0, Landroid/support/transition/ChangeTransform$2;->this$0:Landroid/support/transition/ChangeTransform;

    iput-boolean p2, p0, Landroid/support/transition/ChangeTransform$2;->val$handleParentChange:Z

    iput-object p3, p0, Landroid/support/transition/ChangeTransform$2;->val$finalEndMatrix:Landroid/graphics/Matrix;

    iput-object p4, p0, Landroid/support/transition/ChangeTransform$2;->val$view:Landroid/view/View;

    iput-object p5, p0, Landroid/support/transition/ChangeTransform$2;->val$transforms:Landroid/support/transition/ChangeTransform$Transforms;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 288
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroid/support/transition/ChangeTransform$2;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private setCurrentMatrix(Landroid/graphics/Matrix;)V
    .locals 2

    .line 322
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$2;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 323
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$2;->val$view:Landroid/view/View;

    sget v0, Landroid/support/transition/R$id;->transition_transform:I

    iget-object v1, p0, Landroid/support/transition/ChangeTransform$2;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 324
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$2;->val$transforms:Landroid/support/transition/ChangeTransform$Transforms;

    iget-object v0, p0, Landroid/support/transition/ChangeTransform$2;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/transition/ChangeTransform$Transforms;->restore(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 292
    iput-boolean p1, p0, Landroid/support/transition/ChangeTransform$2;->mIsCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 297
    iget-boolean p1, p0, Landroid/support/transition/ChangeTransform$2;->mIsCanceled:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 298
    iget-boolean p1, p0, Landroid/support/transition/ChangeTransform$2;->val$handleParentChange:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/transition/ChangeTransform$2;->this$0:Landroid/support/transition/ChangeTransform;

    invoke-static {p1}, Landroid/support/transition/ChangeTransform;->access$000(Landroid/support/transition/ChangeTransform;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 299
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$2;->val$finalEndMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1}, Landroid/support/transition/ChangeTransform$2;->setCurrentMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 301
    :cond_0
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$2;->val$view:Landroid/view/View;

    sget v1, Landroid/support/transition/R$id;->transition_transform:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 302
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$2;->val$view:Landroid/view/View;

    sget v1, Landroid/support/transition/R$id;->parent_matrix:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 305
    :cond_1
    :goto_0
    invoke-static {}, Landroid/support/transition/ChangeTransform;->access$100()Landroid/util/Property;

    move-result-object p1

    iget-object v1, p0, Landroid/support/transition/ChangeTransform$2;->val$view:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 306
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$2;->val$transforms:Landroid/support/transition/ChangeTransform$Transforms;

    iget-object v0, p0, Landroid/support/transition/ChangeTransform$2;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/transition/ChangeTransform$Transforms;->restore(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 0

    .line 311
    check-cast p1, Landroid/animation/ValueAnimator;

    .line 312
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Matrix;

    .line 313
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeTransform$2;->setCurrentMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 0

    .line 318
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$2;->val$view:Landroid/view/View;

    invoke-static {p1}, Landroid/support/transition/ChangeTransform;->access$200(Landroid/view/View;)V

    return-void
.end method
