.class Lcom/picacomic/fregata/utils/views/ZoomableListView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ZoomableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picacomic/fregata/utils/views/ZoomableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picacomic/fregata/utils/views/ZoomableListView;


# direct methods
.method private constructor <init>(Lcom/picacomic/fregata/utils/views/ZoomableListView;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView$ScaleListener;->this$0:Lcom/picacomic/fregata/utils/views/ZoomableListView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/picacomic/fregata/utils/views/ZoomableListView;Lcom/picacomic/fregata/utils/views/ZoomableListView$1;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lcom/picacomic/fregata/utils/views/ZoomableListView$ScaleListener;-><init>(Lcom/picacomic/fregata/utils/views/ZoomableListView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView$ScaleListener;->this$0:Lcom/picacomic/fregata/utils/views/ZoomableListView;

    iget-object v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView$ScaleListener;->this$0:Lcom/picacomic/fregata/utils/views/ZoomableListView;

    invoke-static {v1}, Lcom/picacomic/fregata/utils/views/ZoomableListView;->access$100(Lcom/picacomic/fregata/utils/views/ZoomableListView;)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/views/ZoomableListView;->access$102(Lcom/picacomic/fregata/utils/views/ZoomableListView;F)F

    .line 169
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView$ScaleListener;->this$0:Lcom/picacomic/fregata/utils/views/ZoomableListView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/views/ZoomableListView;->access$202(Lcom/picacomic/fregata/utils/views/ZoomableListView;F)F

    .line 170
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView$ScaleListener;->this$0:Lcom/picacomic/fregata/utils/views/ZoomableListView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-static {v0, p1}, Lcom/picacomic/fregata/utils/views/ZoomableListView;->access$302(Lcom/picacomic/fregata/utils/views/ZoomableListView;F)F

    .line 172
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView$ScaleListener;->this$0:Lcom/picacomic/fregata/utils/views/ZoomableListView;

    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView$ScaleListener;->this$0:Lcom/picacomic/fregata/utils/views/ZoomableListView;

    invoke-static {v0}, Lcom/picacomic/fregata/utils/views/ZoomableListView;->access$100(Lcom/picacomic/fregata/utils/views/ZoomableListView;)F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/views/ZoomableListView;->access$102(Lcom/picacomic/fregata/utils/views/ZoomableListView;F)F

    .line 174
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView$ScaleListener;->this$0:Lcom/picacomic/fregata/utils/views/ZoomableListView;

    invoke-virtual {p1}, Lcom/picacomic/fregata/utils/views/ZoomableListView;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method
