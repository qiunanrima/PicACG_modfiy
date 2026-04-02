.class Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ZoomableRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;


# direct methods
.method private constructor <init>(Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView$ScaleListener;->this$0:Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView$1;)V
    .locals 0

    .line 240
    invoke-direct {p0, p1}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView$ScaleListener;-><init>(Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView$ScaleListener;->this$0:Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView$ScaleListener;->this$0:Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;

    invoke-static {v1}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->access$100(Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->access$102(Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;F)F

    .line 244
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView$ScaleListener;->this$0:Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->access$202(Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;F)F

    .line 245
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView$ScaleListener;->this$0:Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-static {v0, p1}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->access$302(Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;F)F

    .line 247
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView$ScaleListener;->this$0:Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;

    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView$ScaleListener;->this$0:Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;

    invoke-static {v0}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->access$400(Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;)F

    move-result v0

    iget-object v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView$ScaleListener;->this$0:Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;

    invoke-static {v1}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->access$100(Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;)F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->access$102(Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;F)F

    .line 249
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView$ScaleListener;->this$0:Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;

    invoke-virtual {p1}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method
