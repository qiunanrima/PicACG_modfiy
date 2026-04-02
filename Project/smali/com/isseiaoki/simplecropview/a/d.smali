.class public Lcom/isseiaoki/simplecropview/a/d;
.super Ljava/lang/Object;
.source "ValueAnimatorV8.java"

# interfaces
.implements Lcom/isseiaoki/simplecropview/a/a;


# static fields
.field private static final ca:I


# instance fields
.field private bY:Lcom/isseiaoki/simplecropview/a/b;

.field cb:Ljava/util/concurrent/ScheduledExecutorService;

.field cc:J

.field cd:Z

.field ce:J

.field private final cf:Ljava/lang/Runnable;

.field private mInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x42055555

    .line 12
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/isseiaoki/simplecropview/a/d;->ca:I

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/a/d;->cd:Z

    .line 20
    new-instance v0, Lcom/isseiaoki/simplecropview/a/d$1;

    invoke-direct {v0, p0}, Lcom/isseiaoki/simplecropview/a/d$1;-><init>(Lcom/isseiaoki/simplecropview/a/d;)V

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/a/d;->bY:Lcom/isseiaoki/simplecropview/a/b;

    .line 38
    new-instance v0, Lcom/isseiaoki/simplecropview/a/d$2;

    invoke-direct {v0, p0}, Lcom/isseiaoki/simplecropview/a/d$2;-><init>(Lcom/isseiaoki/simplecropview/a/d;)V

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/a/d;->cf:Ljava/lang/Runnable;

    .line 54
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/a/d;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic a(Lcom/isseiaoki/simplecropview/a/d;)Lcom/isseiaoki/simplecropview/a/b;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/isseiaoki/simplecropview/a/d;->bY:Lcom/isseiaoki/simplecropview/a/b;

    return-object p0
.end method

.method static synthetic b(Lcom/isseiaoki/simplecropview/a/d;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/isseiaoki/simplecropview/a/d;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method


# virtual methods
.method public a(J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 60
    iput-wide p1, p0, Lcom/isseiaoki/simplecropview/a/d;->ce:J

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x96

    .line 62
    iput-wide p1, p0, Lcom/isseiaoki/simplecropview/a/d;->ce:J

    :goto_0
    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lcom/isseiaoki/simplecropview/a/d;->cd:Z

    .line 65
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/a/d;->bY:Lcom/isseiaoki/simplecropview/a/b;

    invoke-interface {p1}, Lcom/isseiaoki/simplecropview/a/b;->j()V

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/isseiaoki/simplecropview/a/d;->cc:J

    .line 67
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/isseiaoki/simplecropview/a/d;->cb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 68
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/a/d;->cb:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/a/d;->cf:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    sget p1, Lcom/isseiaoki/simplecropview/a/d;->ca:I

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public a(Lcom/isseiaoki/simplecropview/a/b;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 85
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/a/d;->bY:Lcom/isseiaoki/simplecropview/a/b;

    :cond_0
    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/a/d;->cd:Z

    .line 74
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/a/d;->cb:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 75
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/a/d;->bY:Lcom/isseiaoki/simplecropview/a/b;

    invoke-interface {v0}, Lcom/isseiaoki/simplecropview/a/b;->k()V

    return-void
.end method
