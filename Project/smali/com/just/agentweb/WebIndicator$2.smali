.class Lcom/just/agentweb/WebIndicator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WebIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/WebIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fd:Lcom/just/agentweb/WebIndicator;


# direct methods
.method constructor <init>(Lcom/just/agentweb/WebIndicator;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/just/agentweb/WebIndicator$2;->fd:Lcom/just/agentweb/WebIndicator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 278
    iget-object p1, p0, Lcom/just/agentweb/WebIndicator$2;->fd:Lcom/just/agentweb/WebIndicator;

    invoke-static {p1}, Lcom/just/agentweb/WebIndicator;->a(Lcom/just/agentweb/WebIndicator;)V

    return-void
.end method
