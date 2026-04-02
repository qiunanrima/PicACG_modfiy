.class public Lcom/just/agentweb/ad;
.super Ljava/lang/Object;
.source "JsCallback.java"


# instance fields
.field private eI:Z

.field private eJ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private eK:Ljava/lang/String;

.field private mIndex:I


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;I)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/just/agentweb/ad;->eI:Z

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/just/agentweb/ad;->eJ:Ljava/lang/ref/WeakReference;

    .line 40
    iput-object p2, p0, Lcom/just/agentweb/ad;->eK:Ljava/lang/String;

    .line 41
    iput p3, p0, Lcom/just/agentweb/ad;->mIndex:I

    return-void
.end method
