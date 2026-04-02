.class Lcom/soundcloud/android/crop/CropImageActivity$a$1;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soundcloud/android/crop/CropImageActivity$a;->en()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic vs:Lcom/soundcloud/android/crop/CropImageActivity$a;


# direct methods
.method constructor <init>(Lcom/soundcloud/android/crop/CropImageActivity$a;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/soundcloud/android/crop/CropImageActivity$a$1;->vs:Lcom/soundcloud/android/crop/CropImageActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 254
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity$a$1;->vs:Lcom/soundcloud/android/crop/CropImageActivity$a;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity$a;->a(Lcom/soundcloud/android/crop/CropImageActivity$a;)V

    .line 255
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity$a$1;->vs:Lcom/soundcloud/android/crop/CropImageActivity$a;

    iget-object v0, v0, Lcom/soundcloud/android/crop/CropImageActivity$a;->vo:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->b(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/CropImageView;->invalidate()V

    .line 256
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity$a$1;->vs:Lcom/soundcloud/android/crop/CropImageActivity$a;

    iget-object v0, v0, Lcom/soundcloud/android/crop/CropImageActivity$a;->vo:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->b(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/soundcloud/android/crop/CropImageView;->vt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity$a$1;->vs:Lcom/soundcloud/android/crop/CropImageActivity$a;

    iget-object v0, v0, Lcom/soundcloud/android/crop/CropImageActivity$a;->vo:Lcom/soundcloud/android/crop/CropImageActivity;

    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity$a$1;->vs:Lcom/soundcloud/android/crop/CropImageActivity$a;

    iget-object v2, v2, Lcom/soundcloud/android/crop/CropImageActivity$a;->vo:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v2}, Lcom/soundcloud/android/crop/CropImageActivity;->b(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v2

    iget-object v2, v2, Lcom/soundcloud/android/crop/CropImageView;->vt:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/soundcloud/android/crop/HighlightView;

    invoke-static {v0, v2}, Lcom/soundcloud/android/crop/CropImageActivity;->a(Lcom/soundcloud/android/crop/CropImageActivity;Lcom/soundcloud/android/crop/HighlightView;)Lcom/soundcloud/android/crop/HighlightView;

    .line 258
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity$a$1;->vs:Lcom/soundcloud/android/crop/CropImageActivity$a;

    iget-object v0, v0, Lcom/soundcloud/android/crop/CropImageActivity$a;->vo:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->g(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/HighlightView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/soundcloud/android/crop/HighlightView;->G(Z)V

    :cond_0
    return-void
.end method
