.class Lcom/picacomic/fregata/utils/views/PopupWebview$1;
.super Ljava/lang/Object;
.source "PopupWebview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/utils/views/PopupWebview;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picacomic/fregata/utils/views/PopupWebview;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/utils/views/PopupWebview;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/PopupWebview$1;->this$0:Lcom/picacomic/fregata/utils/views/PopupWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 97
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/PopupWebview$1;->this$0:Lcom/picacomic/fregata/utils/views/PopupWebview;

    invoke-virtual {p1}, Lcom/picacomic/fregata/utils/views/PopupWebview;->hide()V

    return-void
.end method
