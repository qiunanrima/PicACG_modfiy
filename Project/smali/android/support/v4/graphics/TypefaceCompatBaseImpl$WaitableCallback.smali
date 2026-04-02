.class final Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;
.super Landroid/support/v4/graphics/TypefaceCompat$FontRequestCallback;
.source "TypefaceCompatBaseImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/TypefaceCompatBaseImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WaitableCallback"
.end annotation


# static fields
.field private static final FINISHED:I = 0x2

.field private static final NOT_STARTED:I = 0x0

.field private static final WAITING:I = 0x1


# instance fields
.field private final mCond:Ljava/util/concurrent/locks/Condition;

.field private final mFontTitle:Ljava/lang/String;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mState:I
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mTypeface:Landroid/graphics/Typeface;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 427
    invoke-direct {p0}, Landroid/support/v4/graphics/TypefaceCompat$FontRequestCallback;-><init>()V

    .line 413
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 414
    iget-object v0, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mCond:Ljava/util/concurrent/locks/Condition;

    const/4 v0, 0x0

    .line 421
    iput v0, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mState:I

    .line 428
    iput-object p1, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mFontTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onTypefaceRequestFailed(I)V
    .locals 3

    const-string v0, "TypefaceCompatBaseImpl"

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote font fetch failed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mFontTitle:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object p1, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 450
    :try_start_0
    iget p1, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 451
    iput-object p1, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mTypeface:Landroid/graphics/Typeface;

    const/4 p1, 0x2

    .line 452
    iput p1, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mState:I

    .line 454
    :cond_0
    iget-object p1, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    iget-object p1, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public onTypefaceRetrieved(Landroid/graphics/Typeface;)V
    .locals 2

    .line 433
    iget-object v0, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 435
    :try_start_0
    iget v0, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 436
    iput-object p1, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mTypeface:Landroid/graphics/Typeface;

    const/4 p1, 0x2

    .line 437
    iput p1, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mState:I

    .line 439
    :cond_0
    iget-object p1, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    iget-object p1, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public waitWithTimeout(J)Landroid/graphics/Typeface;
    .locals 8

    .line 464
    iget-object v0, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 466
    :try_start_0
    iget v0, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 467
    iget-object p1, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    :goto_0
    iget-object p2, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 469
    :cond_0
    :try_start_1
    iget v0, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 493
    :cond_1
    :goto_1
    iget-object p1, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :cond_2
    const/4 v0, 0x1

    .line 472
    :try_start_2
    iput v0, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mState:I

    .line 473
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    .line 474
    :cond_3
    iget v5, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v5, v0, :cond_1

    .line 476
    :try_start_3
    iget-object v5, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5, v3, v4}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v5
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide v3, v5

    .line 479
    :catch_0
    :try_start_4
    iget v5, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mState:I

    if-ne v5, v1, :cond_4

    .line 480
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 481
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const/4 v2, 0x0

    sub-long/2addr p1, v0

    const-string v0, "TypefaceCompatBaseImpl"

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote font fetched in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms :"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mFontTitle:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object p1, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_4
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_3

    const-string p1, "TypefaceCompatBaseImpl"

    .line 486
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Remote font fetch timed out: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mFontTitle:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iput v1, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mState:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 493
    iget-object p2, p0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$WaitableCallback;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
