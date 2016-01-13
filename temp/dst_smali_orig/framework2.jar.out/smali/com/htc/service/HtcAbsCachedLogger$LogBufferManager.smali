.class final Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;
.super Ljava/lang/Object;
.source "HtcAbsCachedLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/service/HtcAbsCachedLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LogBufferManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager;
    }
.end annotation


# instance fields
.field private final ASSUMED_LOG_LENGTH:I

.field private final TRIM_PERCENT:F

.field private mCache:[Lcom/htc/service/HtcAbsCachedLogger$LogRecord;

.field private mCacheLock:Ljava/lang/Object;

.field private mHead:I

.field private mHighWatermark:J

.field private mLowWatermark:J

.field private mSize:J

.field private mSkipAddLog:Z

.field private mSkipAddLogLock:Ljava/lang/Object;

.field private mTag:Ljava/lang/String;

.field private mTail:I

.field private mTrimHandler:Landroid/os/Handler;

.field private mTrimTask:Ljava/lang/Runnable;

.field private mTrimThread:Landroid/os/HandlerThread;

.field private scheduledTrim:Z

.field final synthetic this$0:Lcom/htc/service/HtcAbsCachedLogger;


# direct methods
.method public constructor <init>(Lcom/htc/service/HtcAbsCachedLogger;Ljava/lang/String;J)V
    .locals 4
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "cacheSize"    # J

    .prologue
    const/4 v2, 0x0

    iput-object p1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->this$0:Lcom/htc/service/HtcAbsCachedLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mCacheLock:Ljava/lang/Object;

    const/16 v1, 0x100

    iput v1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->ASSUMED_LOG_LENGTH:I

    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->TRIM_PERCENT:F

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSkipAddLogLock:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSkipAddLog:Z

    iput-boolean v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->scheduledTrim:Z

    new-instance v1, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$1;

    invoke-direct {v1, p0}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$1;-><init>(Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;)V

    iput-object v1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTrimTask:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTag:Ljava/lang/String;

    new-instance v1, Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTag:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTrimThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTrimThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTrimThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTrimHandler:Landroid/os/Handler;

    invoke-virtual {p0, p3, p4}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->setMaxSize(J)V

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTrimThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcAbsCachedLogger-refer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set thread priority fail, tid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTrimThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    .prologue
    iget-wide v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mHighWatermark:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    .prologue
    iget-wide v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSize:J

    return-wide v0
.end method

.method private createFileIfNotExists(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/16 v4, 0x1fd

    const/4 v3, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .local v1, "fcorelog":Ljava/io/File;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private decreaseSize(J)V
    .locals 4
    .param p1, "value"    # J

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSize:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSize:J

    iget-wide v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSize:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    :goto_1
    iput-wide v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSize:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSize:J

    goto :goto_1
.end method

.method private increaseSize(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSize:J

    goto :goto_0
.end method

.method private isHitHighWatermark(J)Z
    .locals 4
    .param p1, "val"    # J

    .prologue
    iget-wide v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSize:J

    add-long/2addr v0, p1

    iget-wide v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mHighWatermark:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHitLowWatermark()Z
    .locals 4

    .prologue
    iget-wide v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSize:J

    iget-wide v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mLowWatermark:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private printlnInLogcat(Lcom/htc/service/HtcAbsCachedLogger$LogRecord;)V
    .locals 3
    .param p1, "record"    # Lcom/htc/service/HtcAbsCachedLogger$LogRecord;

    .prologue
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/htc/service/HtcAbsCachedLogger$LogRecord;->severity:I

    iget-object v1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/service/HtcAbsCachedLogger$LogRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private revertShiftLogRecords(I)I
    .locals 2
    .param p1, "idx"    # I

    .prologue
    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mCache:[Lcom/htc/service/HtcAbsCachedLogger$LogRecord;

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mCache:[Lcom/htc/service/HtcAbsCachedLogger$LogRecord;

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method

.method private shiftLogRecords(I)I
    .locals 2
    .param p1, "idx"    # I

    .prologue
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mCache:[Lcom/htc/service/HtcAbsCachedLogger$LogRecord;

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->this$0:Lcom/htc/service/HtcAbsCachedLogger;

    const-string v1, "clear() called in LogBufferMgr"

    # invokes: Lcom/htc/service/HtcAbsCachedLogger;->LOG(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/service/HtcAbsCachedLogger;->access$300(Lcom/htc/service/HtcAbsCachedLogger;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mHighWatermark:J

    invoke-virtual {p0, v0, v1}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->setMaxSize(J)V

    return-void
.end method

.method public delete(I)V
    .locals 0
    .param p1, "severity"    # I

    .prologue
    return-void
.end method

.method destory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTrimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTrimTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTrimHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTrimThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTrimThread:Landroid/os/HandlerThread;

    iput-object v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mCache:[Lcom/htc/service/HtcAbsCachedLogger$LogRecord;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mHead:I

    iput v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    return-void
.end method

.method dumpCachedLog()V
    .locals 6

    .prologue
    iget-object v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->this$0:Lcom/htc/service/HtcAbsCachedLogger;

    const-string v3, "dumpCachedLog() called in LogBufferMgr"

    # invokes: Lcom/htc/service/HtcAbsCachedLogger;->LOG(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/service/HtcAbsCachedLogger;->access$300(Lcom/htc/service/HtcAbsCachedLogger;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSkipAddLogLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSkipAddLog:Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mCacheLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    if-gez v2, :cond_0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v3, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSkipAddLogLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSkipAddLog:Z

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    :cond_0
    const/4 v1, 0x0

    .local v1, "record":Lcom/htc/service/HtcAbsCachedLogger$LogRecord;
    :goto_1
    :try_start_5
    iget v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    iget v4, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mHead:I

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mCache:[Lcom/htc/service/HtcAbsCachedLogger$LogRecord;

    iget v4, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    aget-object v1, v2, v4

    invoke-direct {p0, v1}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->printlnInLogcat(Lcom/htc/service/HtcAbsCachedLogger$LogRecord;)V

    iget-object v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->this$0:Lcom/htc/service/HtcAbsCachedLogger;

    # invokes: Lcom/htc/service/HtcAbsCachedLogger;->getRecordSize(Lcom/htc/service/HtcAbsCachedLogger$LogRecord;)J
    invoke-static {v2, v1}, Lcom/htc/service/HtcAbsCachedLogger;->access$200(Lcom/htc/service/HtcAbsCachedLogger;Lcom/htc/service/HtcAbsCachedLogger$LogRecord;)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->decreaseSize(J)V

    iget v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    invoke-direct {p0, v2}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->shiftLogRecords(I)I

    move-result v2

    iput v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    iget-object v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->this$0:Lcom/htc/service/HtcAbsCachedLogger;

    const-string v4, "Dump cached log failed!\n"

    # invokes: Lcom/htc/service/HtcAbsCachedLogger;->LOGE(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v4, v0}, Lcom/htc/service/HtcAbsCachedLogger;->access$400(Lcom/htc/service/HtcAbsCachedLogger;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const/4 v2, -0x1

    :try_start_7
    iput v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mHead:I

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    iget-object v3, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSkipAddLogLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_8
    iput-boolean v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSkipAddLog:Z

    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2

    :cond_1
    :try_start_9
    iget v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mCache:[Lcom/htc/service/HtcAbsCachedLogger$LogRecord;

    iget v4, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    aget-object v1, v2, v4

    invoke-direct {p0, v1}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->printlnInLogcat(Lcom/htc/service/HtcAbsCachedLogger$LogRecord;)V

    iget-object v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->this$0:Lcom/htc/service/HtcAbsCachedLogger;

    # invokes: Lcom/htc/service/HtcAbsCachedLogger;->getRecordSize(Lcom/htc/service/HtcAbsCachedLogger$LogRecord;)J
    invoke-static {v2, v1}, Lcom/htc/service/HtcAbsCachedLogger;->access$200(Lcom/htc/service/HtcAbsCachedLogger;Lcom/htc/service/HtcAbsCachedLogger$LogRecord;)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->decreaseSize(J)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_2
    const/4 v2, -0x1

    :try_start_a
    iput v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mHead:I

    goto :goto_2

    .end local v1    # "record":Lcom/htc/service/HtcAbsCachedLogger$LogRecord;
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v2

    iget-object v3, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSkipAddLogLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    :try_start_c
    iput-boolean v4, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSkipAddLog:Z

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v2

    .restart local v1    # "record":Lcom/htc/service/HtcAbsCachedLogger$LogRecord;
    :catchall_4
    move-exception v2

    const/4 v4, -0x1

    :try_start_d
    iput v4, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mHead:I

    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .end local v1    # "record":Lcom/htc/service/HtcAbsCachedLogger$LogRecord;
    :catchall_5
    move-exception v2

    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v2

    :catchall_6
    move-exception v2

    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v2
.end method

.method dumpSeverityLog(I)V
    .locals 0
    .param p1, "severity"    # I

    .prologue
    return-void
.end method

.method public getSize()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSize:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public pop()Ljava/lang/String;
    .locals 6

    .prologue
    iget-object v3, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mCacheLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    if-gez v2, :cond_0

    const/4 v1, 0x0

    monitor-exit v3

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mCache:[Lcom/htc/service/HtcAbsCachedLogger$LogRecord;

    iget v4, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    aget-object v0, v2, v4

    .local v0, "record":Lcom/htc/service/HtcAbsCachedLogger$LogRecord;
    iget-object v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->this$0:Lcom/htc/service/HtcAbsCachedLogger;

    # invokes: Lcom/htc/service/HtcAbsCachedLogger;->getRecordSize(Lcom/htc/service/HtcAbsCachedLogger$LogRecord;)J
    invoke-static {v2, v0}, Lcom/htc/service/HtcAbsCachedLogger;->access$200(Lcom/htc/service/HtcAbsCachedLogger;Lcom/htc/service/HtcAbsCachedLogger$LogRecord;)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->decreaseSize(J)V

    invoke-virtual {v0}, Lcom/htc/service/HtcAbsCachedLogger$LogRecord;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "strTail":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/htc/service/HtcAbsCachedLogger$LogRecord;->reset()V

    iget v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    iget v4, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mHead:I

    if-ne v2, v4, :cond_1

    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mHead:I

    :goto_1
    monitor-exit v3

    goto :goto_0

    .end local v0    # "record":Lcom/htc/service/HtcAbsCachedLogger$LogRecord;
    .end local v1    # "strTail":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "record":Lcom/htc/service/HtcAbsCachedLogger$LogRecord;
    .restart local v1    # "strTail":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    invoke-direct {p0, v2}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->shiftLogRecords(I)I

    move-result v2

    iput v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public push(ILjava/lang/String;)I
    .locals 5
    .param p1, "severity"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSkipAddLogLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSkipAddLog:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/htc/service/HtcAbsCachedLogger;->isValidSeverity(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mCacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mHead:I

    invoke-direct {p0, v0}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->shiftLogRecords(I)I

    move-result v0

    iput v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mHead:I

    iget v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mHead:I

    iget v3, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->this$0:Lcom/htc/service/HtcAbsCachedLogger;

    iget-object v3, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mCache:[Lcom/htc/service/HtcAbsCachedLogger$LogRecord;

    iget v4, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    aget-object v3, v3, v4

    # invokes: Lcom/htc/service/HtcAbsCachedLogger;->getRecordSize(Lcom/htc/service/HtcAbsCachedLogger$LogRecord;)J
    invoke-static {v0, v3}, Lcom/htc/service/HtcAbsCachedLogger;->access$200(Lcom/htc/service/HtcAbsCachedLogger;Lcom/htc/service/HtcAbsCachedLogger$LogRecord;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->decreaseSize(J)V

    iget v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    invoke-direct {p0, v0}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->shiftLogRecords(I)I

    move-result v0

    iput v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    :cond_2
    iget v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mHead:I

    iput v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    :cond_3
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mCache:[Lcom/htc/service/HtcAbsCachedLogger$LogRecord;

    iget v3, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mHead:I

    aget-object v0, v0, v3

    invoke-virtual {v0, p1, p2}, Lcom/htc/service/HtcAbsCachedLogger$LogRecord;->reset(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->this$0:Lcom/htc/service/HtcAbsCachedLogger;

    iget-object v3, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mCache:[Lcom/htc/service/HtcAbsCachedLogger$LogRecord;

    iget v4, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mHead:I

    aget-object v3, v3, v4

    # invokes: Lcom/htc/service/HtcAbsCachedLogger;->getRecordSize(Lcom/htc/service/HtcAbsCachedLogger$LogRecord;)J
    invoke-static {v0, v3}, Lcom/htc/service/HtcAbsCachedLogger;->access$200(Lcom/htc/service/HtcAbsCachedLogger;Lcom/htc/service/HtcAbsCachedLogger$LogRecord;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->increaseSize(J)V

    const-wide/16 v3, 0x0

    invoke-direct {p0, v3, v4}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->isHitHighWatermark(J)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->scheduleTrimCacheToLWM()V

    :cond_4
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mCache:[Lcom/htc/service/HtcAbsCachedLogger$LogRecord;

    array-length v0, v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method protected scheduleTrimCacheToLWM()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->scheduledTrim:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->scheduledTrim:Z

    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTrimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTrimTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setMaxSize(J)V
    .locals 7
    .param p1, "val"    # J

    .prologue
    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    sget-wide v1, Lcom/htc/service/HtcAbsCachedLogger;->MAX_BUFFER_SIZE:J

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    :cond_0
    const-wide/32 p1, 0x100000

    :cond_1
    iget-object v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mCacheLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mHead:I

    if-ne v1, v3, :cond_2

    monitor-exit v2

    :goto_0
    return-void

    :cond_2
    iput-wide p1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mHighWatermark:J

    iget-wide v3, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mHighWatermark:J

    long-to-float v1, v3

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v1, v3

    float-to-long v3, v1

    iput-wide v3, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mLowWatermark:J

    iget-wide v3, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mHighWatermark:J

    const-wide/16 v5, 0x100

    div-long/2addr v3, v5

    long-to-int v1, v3

    new-array v1, v1, [Lcom/htc/service/HtcAbsCachedLogger$LogRecord;

    iput-object v1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mCache:[Lcom/htc/service/HtcAbsCachedLogger$LogRecord;

    iget-object v1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mCache:[Lcom/htc/service/HtcAbsCachedLogger$LogRecord;

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mCache:[Lcom/htc/service/HtcAbsCachedLogger$LogRecord;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mCache:[Lcom/htc/service/HtcAbsCachedLogger$LogRecord;

    new-instance v3, Lcom/htc/service/HtcAbsCachedLogger$LogRecord;

    iget-object v4, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->this$0:Lcom/htc/service/HtcAbsCachedLogger;

    invoke-direct {v3, v4}, Lcom/htc/service/HtcAbsCachedLogger$LogRecord;-><init>(Lcom/htc/service/HtcAbsCachedLogger;)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    iput v1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mHead:I

    .end local v0    # "i":I
    :cond_4
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSize:J

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public trimCacheToLWM()V
    .locals 4

    .prologue
    :goto_0
    invoke-direct {p0}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->isHitLowWatermark()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->this$0:Lcom/htc/service/HtcAbsCachedLogger;

    iget-object v2, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mCache:[Lcom/htc/service/HtcAbsCachedLogger$LogRecord;

    iget v3, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    aget-object v2, v2, v3

    # invokes: Lcom/htc/service/HtcAbsCachedLogger;->getRecordSize(Lcom/htc/service/HtcAbsCachedLogger$LogRecord;)J
    invoke-static {v0, v2}, Lcom/htc/service/HtcAbsCachedLogger;->access$200(Lcom/htc/service/HtcAbsCachedLogger;Lcom/htc/service/HtcAbsCachedLogger$LogRecord;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->decreaseSize(J)V

    iget v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    invoke-direct {p0, v0}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->shiftLogRecords(I)I

    move-result v0

    iput v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->scheduledTrim:Z

    return-void
.end method

.method public writeToFile(Ljava/lang/String;)V
    .locals 13
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTag:Ljava/lang/String;

    :cond_0
    new-instance v5, Ljava/io/File;

    # getter for: Lcom/htc/service/HtcAbsCachedLogger;->LOGFILE_DIR:Ljava/lang/String;
    invoke-static {}, Lcom/htc/service/HtcAbsCachedLogger;->access$500()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v5, "saveFolder":Ljava/io/File;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyyMMdd-HHmmss"

    invoke-direct {v6, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".log"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "subfix":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v8, "targetFile":Ljava/io/File;
    const-string v9, "HtcAbsCachedLogger-refer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v8}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->createFileIfNotExists(Ljava/io/File;)V

    iget-object v10, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSkipAddLogLock:Ljava/lang/Object;

    monitor-enter v10

    const/4 v9, 0x1

    :try_start_0
    iput-boolean v9, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSkipAddLog:Z

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .local v0, "bufferedOut":Ljava/io/BufferedOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    const/4 v10, 0x1

    invoke-direct {v9, v8, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .end local v0    # "bufferedOut":Ljava/io/BufferedOutputStream;
    .local v1, "bufferedOut":Ljava/io/BufferedOutputStream;
    :try_start_2
    iget-object v10, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mCacheLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :goto_0
    :try_start_3
    iget v9, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    if-ltz v9, :cond_2

    iget v9, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    iget v11, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mHead:I

    if-eq v9, v11, :cond_2

    iget-object v9, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mCache:[Lcom/htc/service/HtcAbsCachedLogger$LogRecord;

    iget v11, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    aget-object v4, v9, v11

    .local v4, "record":Lcom/htc/service/HtcAbsCachedLogger$LogRecord;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/htc/service/HtcAbsCachedLogger$LogRecord;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/BufferedOutputStream;->write([B)V

    iget-object v9, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->this$0:Lcom/htc/service/HtcAbsCachedLogger;

    # invokes: Lcom/htc/service/HtcAbsCachedLogger;->getRecordSize(Lcom/htc/service/HtcAbsCachedLogger$LogRecord;)J
    invoke-static {v9, v4}, Lcom/htc/service/HtcAbsCachedLogger;->access$200(Lcom/htc/service/HtcAbsCachedLogger;Lcom/htc/service/HtcAbsCachedLogger$LogRecord;)J

    move-result-wide v11

    invoke-direct {p0, v11, v12}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->decreaseSize(J)V

    iget v9, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    invoke-direct {p0, v9}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->shiftLogRecords(I)I

    move-result v9

    iput v9, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mTail:I

    goto :goto_0

    .end local v4    # "record":Lcom/htc/service/HtcAbsCachedLogger$LogRecord;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    :catch_0
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferedOut":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bufferedOut":Ljava/io/BufferedOutputStream;
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    iget-object v9, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->this$0:Lcom/htc/service/HtcAbsCachedLogger;

    const-string v10, "Write to file failed!\n"

    # invokes: Lcom/htc/service/HtcAbsCachedLogger;->LOGE(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v9, v10, v2}, Lcom/htc/service/HtcAbsCachedLogger;->access$400(Lcom/htc/service/HtcAbsCachedLogger;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_1

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    iget-object v10, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSkipAddLogLock:Ljava/lang/Object;

    monitor-enter v10

    const/4 v9, 0x0

    :try_start_7
    iput-boolean v9, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSkipAddLog:Z

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :goto_3
    new-instance v3, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager;

    invoke-direct {v3, p0, v5, p1}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager;-><init>(Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;Ljava/io/File;Ljava/lang/String;)V

    .local v3, "fileMgr":Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager;
    invoke-virtual {v3}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager;->fitFiles()V

    return-void

    .end local v0    # "bufferedOut":Ljava/io/BufferedOutputStream;
    .end local v3    # "fileMgr":Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$FileManager;
    :catchall_1
    move-exception v9

    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v9

    .restart local v1    # "bufferedOut":Ljava/io/BufferedOutputStream;
    :cond_2
    :try_start_9
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v1, :cond_3

    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :cond_3
    :goto_4
    iget-object v10, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSkipAddLogLock:Ljava/lang/Object;

    monitor-enter v10

    const/4 v9, 0x0

    :try_start_b
    iput-boolean v9, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSkipAddLog:Z

    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-object v0, v1

    .end local v1    # "bufferedOut":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bufferedOut":Ljava/io/BufferedOutputStream;
    goto :goto_3

    :catchall_2
    move-exception v9

    :goto_5
    if-eqz v0, :cond_4

    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    :cond_4
    :goto_6
    iget-object v10, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSkipAddLogLock:Ljava/lang/Object;

    monitor-enter v10

    const/4 v11, 0x0

    :try_start_d
    iput-boolean v11, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->mSkipAddLog:Z

    monitor-exit v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v9

    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v9

    :try_start_e
    monitor-exit v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v9

    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v9

    :try_start_f
    monitor-exit v10
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw v9

    .end local v0    # "bufferedOut":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bufferedOut":Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v9

    :try_start_10
    monitor-exit v10
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v9

    :catchall_6
    move-exception v9

    move-object v0, v1

    .end local v1    # "bufferedOut":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bufferedOut":Ljava/io/BufferedOutputStream;
    goto :goto_5

    :catch_4
    move-exception v2

    goto :goto_1
.end method
