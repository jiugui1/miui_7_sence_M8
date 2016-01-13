.class Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;
.super Ljava/lang/Object;
.source "HtcAmsCallbackManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/HtcAmsCallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Watchdog"
.end annotation


# static fields
.field private static final DUMP_ALL_THREADS_CYCLE:I = 0x4

.field private static final MSG_DUMP_WORKING_MESSAGES:I = 0xbb8


# instance fields
.field private mAmsHandler:Landroid/os/Handler;

.field private mCurMsgStartTime:J

.field private mDumpAllThreadsCount:I

.field private mIsDuringHibernate:Z

.field private mIsRunning:Z

.field private mIsWorkingThreadBlocked:Z

.field private mWorkingHandlerResponseTime:J

.field final synthetic this$0:Lcom/android/server/am/HtcAmsCallbackManager;


# direct methods
.method private constructor <init>(Lcom/android/server/am/HtcAmsCallbackManager;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->this$0:Lcom/android/server/am/HtcAmsCallbackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog$1;-><init>(Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;)V

    iput-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mAmsHandler:Landroid/os/Handler;

    iput-wide v2, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mCurMsgStartTime:J

    iput-boolean v1, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mIsRunning:Z

    iput-wide v2, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mWorkingHandlerResponseTime:J

    iput-boolean v1, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mIsDuringHibernate:Z

    iput v1, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mDumpAllThreadsCount:I

    iput-boolean v1, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mIsWorkingThreadBlocked:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/HtcAmsCallbackManager;Lcom/android/server/am/HtcAmsCallbackManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/HtcAmsCallbackManager;
    .param p2, "x1"    # Lcom/android/server/am/HtcAmsCallbackManager$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;-><init>(Lcom/android/server/am/HtcAmsCallbackManager;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mAmsHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public finishMsg(Landroid/os/Message;J)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "timeout"    # J

    .prologue
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, "curTime":J
    iget-wide v3, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mCurMsgStartTime:J

    add-long/2addr v3, p2

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v2

    .local v2, "strBuilder":Ljava/lang/StringBuilder;
    const-string v3, "Slow operation for msg ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mCurMsgStartTime:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "HtcAmsCallbackManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "curTime":J
    .end local v2    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mCurMsgStartTime:J

    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mIsRunning:Z

    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->this$0:Lcom/android/server/am/HtcAmsCallbackManager;

    # getter for: Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;
    invoke-static {v0}, Lcom/android/server/am/HtcAmsCallbackManager;->access$600(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->this$0:Lcom/android/server/am/HtcAmsCallbackManager;

    # getter for: Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;
    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager;->access$600(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mAmsHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public isWorkingThreadBlocked()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mIsWorkingThreadBlocked:Z

    return v0
.end method

.method public responseFromWorkingThread()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mWorkingHandlerResponseTime:J

    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x7530

    iget-boolean v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mIsRunning:Z

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, "curTime":J
    iget-boolean v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mIsDuringHibernate:Z

    if-eqz v4, :cond_2

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->this$0:Lcom/android/server/am/HtcAmsCallbackManager;

    # getter for: Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;
    invoke-static {v4}, Lcom/android/server/am/HtcAmsCallbackManager;->access$600(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->this$0:Lcom/android/server/am/HtcAmsCallbackManager;

    # getter for: Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;
    invoke-static {v5}, Lcom/android/server/am/HtcAmsCallbackManager;->access$600(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mAmsHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x7530

    invoke-virtual {v4, p0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "curTime":J
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "HtcAmsCallbackManager"

    const-string v5, "Failed to dump log"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "curTime":J
    :cond_2
    :try_start_1
    iget-wide v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mWorkingHandlerResponseTime:J

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-lez v4, :cond_4

    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v3

    .local v3, "strBuilder":Ljava/lang/StringBuilder;
    const-string v4, "Working thread was blocked by an external module! ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mWorkingHandlerResponseTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "HtcAmsCallbackManager"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->this$0:Lcom/android/server/am/HtcAmsCallbackManager;

    # getter for: Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;
    invoke-static {v4}, Lcom/android/server/am/HtcAmsCallbackManager;->access$500(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->dump()V

    iget v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mDumpAllThreadsCount:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->this$0:Lcom/android/server/am/HtcAmsCallbackManager;

    # getter for: Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;
    invoke-static {v4}, Lcom/android/server/am/HtcAmsCallbackManager;->access$500(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->dumpAllThreads()V

    :cond_3
    iget v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mDumpAllThreadsCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mDumpAllThreadsCount:I

    iget v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mDumpAllThreadsCount:I

    const/4 v5, 0x4

    if-le v4, v5, :cond_1

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mDumpAllThreadsCount:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mIsWorkingThreadBlocked:Z

    goto :goto_1

    .end local v3    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_4
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mDumpAllThreadsCount:I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mIsWorkingThreadBlocked:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public setHibernateMode(Z)V
    .locals 0
    .param p1, "isDuringHibernate"    # Z

    .prologue
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->responseFromWorkingThread()V

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mIsDuringHibernate:Z

    return-void
.end method

.method public startMsg(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mCurMsgStartTime:J

    return-void
.end method
