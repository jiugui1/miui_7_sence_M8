.class Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;
.super Ljava/lang/Thread;
.source "HtcBinderDumper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/utils/HtcBinderDumper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeOutNotifier"
.end annotation


# static fields
.field private static final NANOS_PER_MILLI:I = 0xf4240

.field private static final NANOS_PER_SECOND:I = 0x3b9aca00


# instance fields
.field private MAX_TIMEOUT_NANOS:J

.field private mCallback:Lcom/htc/utils/HtcBinderDumper$TimeOutCallback;

.field private mIsCancel:Z

.field private mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/htc/utils/HtcBinderDumper$TimeOutCallback;J)V
    .locals 2
    .param p1, "callback"    # Lcom/htc/utils/HtcBinderDumper$TimeOutCallback;
    .param p2, "timeoutSec"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;->MAX_TIMEOUT_NANOS:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;->mIsCancel:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;->mCallback:Lcom/htc/utils/HtcBinderDumper$TimeOutCallback;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;->mLock:Ljava/lang/Object;

    const-wide/32 v0, 0x3b9aca00

    mul-long/2addr v0, p2

    iput-wide v0, p0, Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;->MAX_TIMEOUT_NANOS:J

    iput-object p1, p0, Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;->mCallback:Lcom/htc/utils/HtcBinderDumper$TimeOutCallback;

    return-void
.end method

.method private sleepFor(JJ)V
    .locals 10
    .param p1, "startNanos"    # J
    .param p3, "durationNanos"    # J

    .prologue
    iget-object v7, p0, Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :goto_0
    :try_start_0
    iget-boolean v6, p0, Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;->mIsCancel:Z

    if-eqz v6, :cond_1

    :cond_0
    monitor-exit v7

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v0, v8, p1

    .local v0, "elapsedNanos":J
    const-wide/16 v8, 0x0

    cmp-long v6, v0, v8

    if-gtz v6, :cond_2

    const-wide/16 v0, 0x0

    :cond_2
    sub-long v4, p3, v0

    .local v4, "sleepNanos":J
    const-wide/32 v8, 0xf4240

    div-long v2, v4, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "sleepMills":J
    const-wide/16 v8, 0x0

    cmp-long v6, v2, v8

    if-lez v6, :cond_0

    :try_start_1
    iget-object v6, p0, Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;->mLock:Ljava/lang/Object;

    invoke-virtual {v6, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_0

    .end local v0    # "elapsedNanos":J
    .end local v2    # "sleepMills":J
    .end local v4    # "sleepNanos":J
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    const-string v0, "HtcBinderDumper"

    const-string v1, "[TimeOutNotifier] cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;->mIsCancel:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;->mCallback:Lcom/htc/utils/HtcBinderDumper$TimeOutCallback;

    iget-object v0, p0, Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 5

    .prologue
    :try_start_0
    const-string v1, "HtcBinderDumper"

    const-string v2, "[TimeOutNotifier] run ++"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;->MAX_TIMEOUT_NANOS:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;->sleepFor(JJ)V

    iget-object v2, p0, Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;->mCallback:Lcom/htc/utils/HtcBinderDumper$TimeOutCallback;

    if-eqz v1, :cond_0

    const-string v1, "HtcBinderDumper"

    const-string v3, "[TimeOutNotifier] timeout notify"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/utils/HtcBinderDumper$TimeOutNotifier;->mCallback:Lcom/htc/utils/HtcBinderDumper$TimeOutCallback;

    invoke-interface {v1}, Lcom/htc/utils/HtcBinderDumper$TimeOutCallback;->timeout()V

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, "HtcBinderDumper"

    const-string v2, "[TimeOutNotifier] run --"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcBinderDumper"

    const-string v2, "[TimeOutNotifier] exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
