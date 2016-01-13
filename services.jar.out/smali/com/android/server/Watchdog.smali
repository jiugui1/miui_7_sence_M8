.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$DumpHeapTask;,
        Lcom/android/server/Watchdog$HeapMonitor;,
        Lcom/android/server/Watchdog$DumpExtraInfoThread;,
        Lcom/android/server/Watchdog$FinalizeTimeoutTask;,
        Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;,
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;,
        Lcom/android/server/Watchdog$HandlerChecker;
    }
.end annotation


# static fields
.field private static final CB:I = 0x1

.field static final CHECK_INTERVAL:J

.field static final COMPLETED:I = 0x0

.field static final DB:Z = false

.field static final DEFAULT_TIMEOUT:J

.field private static final ENG:I = 0x0

.field static final EXTRAS_PID:Ljava/lang/String; = "pid"

.field static final INTENT_WATCHDOG_FINALIZE_TIMEOUT:Ljava/lang/String; = "com.htc.intent.WATCHDOG_FINALIZE_TIMEOUT"

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field static final OVERDUE:I = 0x3

.field private static final RC:I = 0x2

.field static final RECORD_KERNEL_THREADS:Z = true

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field static final WAITED_HALF:I = 0x2

.field static final WAITING:I = 0x1

.field static final localLOGV:Z

.field static sWatchdog:Lcom/android/server/Watchdog;


# instance fields
.field mActivity:Lcom/android/server/am/ActivityManagerService;

.field mAlarm:Lcom/android/server/AlarmManagerService;

.field mAllowRestart:Z

.field mBattery:Lcom/android/server/BatteryService;

.field mController:Landroid/app/IActivityController;

.field private final mDumpExtraRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mHandlerCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation
.end field

.field private mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

.field final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field mPhonePid:I

.field mPower:Lcom/android/server/power/PowerManagerService;

.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 85
    invoke-static {}, Lcom/android/server/Watchdog;->getTimeToResatrt()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/Watchdog;->DEFAULT_TIMEOUT:J

    .line 86
    sget-wide v0, Lcom/android/server/Watchdog;->DEFAULT_TIMEOUT:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/Watchdog;->CHECK_INTERVAL:J

    .line 95
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/bin/mediaserver"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/system/bin/sdcard"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/system/bin/surfaceflinger"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/system/bin/mm-qcamera-daemon"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "zygote"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    .line 247
    const-string v0, "watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 746
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mDumpExtraRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 795
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    .line 255
    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string v3, "foreground thread"

    sget-wide v4, Lcom/android/server/Watchdog;->DEFAULT_TIMEOUT:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    .line 257
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v3, "main thread"

    sget-wide v4, Lcom/android/server/Watchdog;->DEFAULT_TIMEOUT:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string v3, "ui thread"

    sget-wide v4, Lcom/android/server/Watchdog;->DEFAULT_TIMEOUT:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string v3, "i/o thread"

    sget-wide v4, Lcom/android/server/Watchdog;->DEFAULT_TIMEOUT:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 74
    invoke-static {}, Lcom/android/server/Watchdog;->dumpSysrq()V

    return-void
.end method

.method private describeCheckersLocked(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 369
    .local p1, "checkers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 370
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 371
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 372
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private dumpExtraInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 749
    iget-object v1, p0, Lcom/android/server/Watchdog;->mDumpExtraRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    :try_start_0
    new-instance v1, Lcom/android/server/Watchdog$DumpExtraInfoThread;

    iget-object v2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/Watchdog$DumpExtraInfoThread;-><init>(Lcom/android/server/Watchdog;Lcom/android/server/am/ActivityManagerService;)V

    invoke-virtual {v1}, Lcom/android/server/Watchdog$DumpExtraInfoThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    :goto_0
    return-void

    .line 752
    :catch_0
    move-exception v0

    .line 753
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Watchdog"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 754
    iget-object v1, p0, Lcom/android/server/Watchdog;->mDumpExtraRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 757
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v1, "Watchdog"

    const-string v2, "skip dumpExtraInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dumpKernelStackTraces()Ljava/io/File;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 607
    const-string v2, "dalvik.vm.stack-trace-file"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "tracesPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 613
    :cond_0
    :goto_0
    return-object v1

    .line 612
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->native_dumpKernelStacks(Ljava/lang/String;)V

    .line 613
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static dumpSysrq()V
    .locals 5

    .prologue
    .line 728
    const/4 v1, 0x0

    .line 730
    .local v1, "sysrq_trigger":Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/proc/sysrq-trigger"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    .end local v1    # "sysrq_trigger":Ljava/io/FileWriter;
    .local v2, "sysrq_trigger":Ljava/io/FileWriter;
    :try_start_1
    const-string v3, "w"

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 735
    if-eqz v2, :cond_2

    .line 736
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 739
    .end local v2    # "sysrq_trigger":Ljava/io/FileWriter;
    .restart local v1    # "sysrq_trigger":Ljava/io/FileWriter;
    :cond_0
    :goto_0
    return-void

    .line 736
    .end local v1    # "sysrq_trigger":Ljava/io/FileWriter;
    .restart local v2    # "sysrq_trigger":Ljava/io/FileWriter;
    :catch_0
    move-exception v3

    move-object v1, v2

    .end local v2    # "sysrq_trigger":Ljava/io/FileWriter;
    .restart local v1    # "sysrq_trigger":Ljava/io/FileWriter;
    goto :goto_0

    .line 732
    :catch_1
    move-exception v0

    .line 733
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v3, "Watchdog"

    const-string v4, "dumpSysrq fail!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 735
    if-eqz v1, :cond_0

    .line 736
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_0

    .line 735
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 736
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_3
    throw v3

    :catch_3
    move-exception v4

    goto :goto_3

    .line 735
    .end local v1    # "sysrq_trigger":Ljava/io/FileWriter;
    .restart local v2    # "sysrq_trigger":Ljava/io/FileWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "sysrq_trigger":Ljava/io/FileWriter;
    .restart local v1    # "sysrq_trigger":Ljava/io/FileWriter;
    goto :goto_2

    .line 732
    .end local v1    # "sysrq_trigger":Ljava/io/FileWriter;
    .restart local v2    # "sysrq_trigger":Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "sysrq_trigger":Ljava/io/FileWriter;
    .restart local v1    # "sysrq_trigger":Ljava/io/FileWriter;
    goto :goto_1

    .end local v1    # "sysrq_trigger":Ljava/io/FileWriter;
    .restart local v2    # "sysrq_trigger":Ljava/io/FileWriter;
    :cond_2
    move-object v1, v2

    .end local v2    # "sysrq_trigger":Ljava/io/FileWriter;
    .restart local v1    # "sysrq_trigger":Ljava/io/FileWriter;
    goto :goto_0
.end method

.method private evaluateCheckerCompletionLocked()I
    .locals 4

    .prologue
    .line 349
    const/4 v2, 0x0

    .line 350
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 351
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/Watchdog$HandlerChecker;

    .line 352
    .local v0, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v0}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    .end local v0    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_0
    return v2
.end method

.method private getBlockedCheckersLocked()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v0, "checkers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 360
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/Watchdog$HandlerChecker;

    .line 361
    .local v1, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerChecker;->isOverdueLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 362
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 365
    .end local v1    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 243
    :cond_0
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method private static getTimeToResatrt()I
    .locals 7

    .prologue
    .line 623
    const/16 v3, 0x3a98

    .line 624
    .local v3, "result":I
    const/4 v2, -0x1

    .line 625
    .local v2, "modeValue":I
    const-string v1, "DB"

    .line 627
    .local v1, "mode":Ljava/lang/String;
    const-string v4, "htc.build.stage"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 629
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 633
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 636
    const v3, 0xea60

    .line 645
    :goto_1
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    .line 646
    const-string v4, "Watchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_0
    return v3

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_0

    .line 640
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :pswitch_0
    const v3, 0x1d4c0

    goto :goto_1

    .line 633
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private native native_dumpKernelStacks(Ljava/lang/String;)V
.end method

.method private startDropboxThread(Ljava/lang/Thread;J)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "dropboxWaitTime"    # J

    .prologue
    .line 600
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 602
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    :goto_0
    return-void

    .line 603
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .locals 2
    .param p1, "monitor"    # Lcom/android/server/Watchdog$Monitor;

    .prologue
    .line 318
    monitor-enter p0

    .line 319
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Monitors can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 322
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, p1}, Lcom/android/server/Watchdog$HandlerChecker;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 323
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    return-void
.end method

.method public addThread(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2
    .param p1, "thread"    # Landroid/os/Handler;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 327
    sget-wide v0, Lcom/android/server/Watchdog;->DEFAULT_TIMEOUT:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;Ljava/lang/String;J)V

    .line 328
    return-void
.end method

.method public addThread(Landroid/os/Handler;Ljava/lang/String;J)V
    .locals 7
    .param p1, "thread"    # Landroid/os/Handler;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "timeoutMillis"    # J

    .prologue
    .line 331
    monitor-enter p0

    .line 332
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Threads can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 335
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "battery"    # Lcom/android/server/BatteryService;
    .param p3, "power"    # Lcom/android/server/power/PowerManagerService;
    .param p4, "alarm"    # Lcom/android/server/AlarmManagerService;
    .param p5, "activity"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v4, 0x0

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    .line 274
    iput-object p2, p0, Lcom/android/server/Watchdog;->mBattery:Lcom/android/server/BatteryService;

    .line 275
    iput-object p3, p0, Lcom/android/server/Watchdog;->mPower:Lcom/android/server/power/PowerManagerService;

    .line 276
    iput-object p4, p0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    .line 277
    iput-object p5, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 279
    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.REBOOT"

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 283
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    if-eqz v0, :cond_0

    .line 284
    new-instance v1, Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;-><init>(Lcom/android/server/Watchdog;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "com.htc.intent.WATCHDOG_FINALIZE_TIMEOUT"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 290
    :cond_0
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    if-eqz v0, :cond_1

    .line 291
    new-instance v0, Lcom/android/server/Watchdog$HeapMonitor;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/Watchdog$HeapMonitor;-><init>(Lcom/android/server/Watchdog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    .line 292
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    invoke-virtual {v0}, Lcom/android/server/Watchdog$HeapMonitor;->monitor()V

    .line 295
    :cond_1
    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    .line 298
    monitor-enter p0

    .line 299
    :try_start_0
    const-string v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iput p2, p0, Lcom/android/server/Watchdog;->mPhonePid:I

    .line 302
    :cond_0
    monitor-exit p0

    .line 303
    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rebootSystem(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 343
    const-string v1, "Watchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rebooting system because: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService;

    .line 345
    .local v0, "pms":Lcom/android/server/power/PowerManagerService;
    invoke-virtual {v0, v4, p1, v4}, Lcom/android/server/power/PowerManagerService;->reboot(ZLjava/lang/String;Z)V

    .line 346
    return-void
.end method

.method public run()V
    .locals 38

    .prologue
    .line 381
    const/16 v33, 0x0

    .line 386
    .local v33, "waitedHalf":Z
    :goto_0
    monitor-enter p0

    .line 387
    :try_start_0
    sget-wide v30, Lcom/android/server/Watchdog;->CHECK_INTERVAL:J

    .line 390
    .local v30, "timeout":J
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v17

    move/from16 v1, v34

    if-ge v0, v1, :cond_0

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/Watchdog$HandlerChecker;

    .line 392
    .local v16, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked()V

    .line 390
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 399
    .end local v16    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v25

    .line 400
    .local v25, "start":J
    :goto_2
    const-wide/16 v34, 0x0

    cmp-long v34, v30, v34

    if-lez v34, :cond_1

    .line 402
    :try_start_1
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    :goto_3
    :try_start_2
    sget-wide v34, Lcom/android/server/Watchdog;->CHECK_INTERVAL:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v36

    sub-long v36, v36, v25

    sub-long v30, v34, v36

    goto :goto_2

    .line 403
    :catch_0
    move-exception v13

    .line 404
    .local v13, "e":Ljava/lang/InterruptedException;
    const-string v34, "Watchdog"

    move-object/from16 v0, v34

    invoke-static {v0, v13}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 451
    .end local v13    # "e":Ljava/lang/InterruptedException;
    .end local v17    # "i":I
    .end local v25    # "start":J
    .end local v30    # "timeout":J
    :catchall_0
    move-exception v34

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v34

    .line 413
    .restart local v17    # "i":I
    .restart local v25    # "start":J
    .restart local v30    # "timeout":J
    :cond_1
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I

    move-result v32

    .line 414
    .local v32, "waitState":I
    const/16 v34, 0x3

    move/from16 v0, v34

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    if-nez v33, :cond_2

    .line 415
    const-string v34, "Watchdog"

    const-string v35, "No waitedHalf but OVERDUE, force waitedHalf"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/16 v32, 0x2

    .line 419
    :cond_2
    if-nez v32, :cond_3

    .line 421
    const/16 v33, 0x0

    .line 422
    monitor-exit p0

    goto :goto_0

    .line 423
    :cond_3
    const/16 v34, 0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_4

    .line 425
    monitor-exit p0

    goto :goto_0

    .line 426
    :cond_4
    const/16 v34, 0x2

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_7

    .line 427
    if-nez v33, :cond_6

    .line 430
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v21, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    const/16 v34, 0x1

    const/16 v35, 0x0

    const/16 v36, 0x0

    sget-object v37, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    move/from16 v0, v34

    move-object/from16 v1, v21

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    .line 435
    sget-boolean v34, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v34, :cond_5

    .line 436
    invoke-static {}, Lcom/android/server/Watchdog;->dumpSysrq()V

    .line 438
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->dumpExtraInfo()V

    .line 442
    :cond_5
    const/16 v33, 0x1

    .line 444
    .end local v21    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    monitor-exit p0

    goto/16 :goto_0

    .line 448
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v7

    .line 449
    .local v7, "blockedCheckers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v28

    .line 450
    .local v28, "subject":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 451
    .local v5, "allowRestart":Z
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 454
    sget-boolean v34, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v34, :cond_8

    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v34

    if-nez v34, :cond_8

    .line 455
    const-string v34, "htccachedlog"

    invoke-static/range {v34 .. v34}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    check-cast v8, Lcom/htc/server/HtcCachedLogManagerService;

    .line 458
    .local v8, "cachedLogService":Lcom/htc/server/HtcCachedLogManagerService;
    if-eqz v8, :cond_8

    .line 459
    const/16 v34, 0x3

    const/16 v35, 0x0

    move/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v8, v0, v1}, Lcom/htc/server/HtcCachedLogManagerService;->scheduleDumpByEvent(ILandroid/os/Bundle;)V

    .line 464
    .end local v8    # "cachedLogService":Lcom/htc/server/HtcCachedLogManagerService;
    :cond_8
    sget-boolean v34, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v34, :cond_9

    .line 465
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->dumpExtraInfo()V

    .line 472
    :cond_9
    const/16 v34, 0xaf2

    move/from16 v0, v34

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 474
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .restart local v21    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    move/from16 v34, v0

    if-lez v34, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    :cond_a
    if-nez v33, :cond_b

    const/16 v34, 0x1

    :goto_4
    const/16 v35, 0x0

    const/16 v36, 0x0

    sget-object v37, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    move/from16 v0, v34

    move-object/from16 v1, v21

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v23

    .line 484
    .local v23, "stack":Ljava/io/File;
    const-wide/16 v34, 0x7d0

    invoke-static/range {v34 .. v35}, Landroid/os/SystemClock;->sleep(J)V

    .line 488
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->dumpKernelStackTraces()Ljava/io/File;

    .line 493
    :try_start_4
    new-instance v29, Ljava/io/FileWriter;

    const-string v34, "/proc/sysrq-trigger"

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 494
    .local v29, "sysrq_trigger":Ljava/io/FileWriter;
    const-string v34, "w"

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 495
    invoke-virtual/range {v29 .. v29}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 504
    .end local v29    # "sysrq_trigger":Ljava/io/FileWriter;
    :goto_5
    new-instance v10, Lcom/android/server/Watchdog$1;

    const-string v34, "watchdogWriteToDropbox"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v28

    move-object/from16 v3, v23

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 512
    .local v10, "dropboxThread":Ljava/lang/Thread;
    const-wide/16 v11, 0x7d0

    .line 515
    .local v11, "dropboxWaitTime":J
    monitor-enter p0

    .line 516
    :try_start_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    .line 517
    .local v9, "controller":Landroid/app/IActivityController;
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 518
    if-eqz v9, :cond_c

    .line 519
    const-string v34, "Watchdog"

    const-string v35, "Reporting stuck state to activity controller"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :try_start_6
    const-string v34, "Service dumps disabled due to hung system process."

    invoke-static/range {v34 .. v34}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    .line 523
    move-object/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v22

    .line 524
    .local v22, "res":I
    if-ltz v22, :cond_c

    .line 525
    const-string v34, "Watchdog"

    const-string v35, "Activity controller requested to coninue to wait"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 526
    const/16 v33, 0x0

    goto/16 :goto_0

    .line 479
    .end local v9    # "controller":Landroid/app/IActivityController;
    .end local v10    # "dropboxThread":Ljava/lang/Thread;
    .end local v11    # "dropboxWaitTime":J
    .end local v22    # "res":I
    .end local v23    # "stack":Ljava/io/File;
    :cond_b
    const/16 v34, 0x0

    goto :goto_4

    .line 496
    .restart local v23    # "stack":Ljava/io/File;
    :catch_1
    move-exception v13

    .line 497
    .local v13, "e":Ljava/io/IOException;
    const-string v34, "Watchdog"

    const-string v35, "Failed to write to /proc/sysrq-trigger"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const-string v34, "Watchdog"

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 517
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v10    # "dropboxThread":Ljava/lang/Thread;
    .restart local v11    # "dropboxWaitTime":J
    :catchall_1
    move-exception v34

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v34

    .line 529
    .restart local v9    # "controller":Landroid/app/IActivityController;
    :catch_2
    move-exception v34

    .line 534
    :cond_c
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v34

    if-eqz v34, :cond_d

    .line 535
    const-string v34, "Watchdog"

    const-string v35, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12}, Lcom/android/server/Watchdog;->startDropboxThread(Ljava/lang/Thread;J)V

    .line 594
    const/16 v33, 0x0

    .line 595
    goto/16 :goto_0

    .line 536
    :cond_d
    if-nez v5, :cond_e

    .line 537
    const-string v34, "Watchdog"

    const-string v35, "Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 541
    :cond_e
    sget-boolean v34, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v34, :cond_f

    if-eqz v28, :cond_f

    const-string v34, "main thread"

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_f

    .line 542
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->dumpServerThreadLooper()V

    .line 546
    :cond_f
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 547
    .local v27, "strWatchdogMsg":Ljava/lang/String;
    const-string v34, "Watchdog"

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugHungDumpAllProcesses()Z

    move-result v34

    if-nez v34, :cond_10

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugHungDumpSysNative()Z

    move-result v34

    if-nez v34, :cond_10

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugHungDumpMediaNative()Z

    move-result v34

    if-eqz v34, :cond_11

    .line 554
    :cond_10
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v34, "yyyy-MM-dd kk:mm:ss"

    move-object/from16 v0, v34

    invoke-direct {v15, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 555
    .local v15, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v20, Ljava/util/Date;

    invoke-direct/range {v20 .. v20}, Ljava/util/Date;-><init>()V

    .line 556
    .local v20, "now":Ljava/util/Date;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v34, v0

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugHungDumpAllProcesses()Z

    move-result v35

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugHungDumpSysNative()Z

    move-result v36

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugHungDumpMediaNative()Z

    move-result v37

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->DumpAllProcessStack(ZZZLjava/lang/String;)Z

    .line 564
    const-wide/16 v11, 0x4e20

    .line 568
    .end local v15    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v20    # "now":Ljava/util/Date;
    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12}, Lcom/android/server/Watchdog;->startDropboxThread(Ljava/lang/Thread;J)V

    .line 570
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugHungDoBugreport()Z

    move-result v34

    if-eqz v34, :cond_12

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/am/ActivityManagerService;->DoBugreport(Z)V

    .line 573
    :cond_12
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugHungKeepAlive()Z

    move-result v34

    if-eqz v34, :cond_13

    .line 574
    const-string v34, "Watchdog"

    const-string v35, "Keep the device life. Please Pass it to RD"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    return-void

    .line 578
    :cond_13
    const/16 v17, 0x0

    :goto_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v17

    move/from16 v1, v34

    if-ge v0, v1, :cond_15

    .line 579
    const-string v35, "Watchdog"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/Watchdog$HandlerChecker;->getName()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v36, " stack trace:"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v24

    .line 582
    .local v24, "stackTrace":[Ljava/lang/StackTraceElement;
    move-object/from16 v6, v24

    .local v6, "arr$":[Ljava/lang/StackTraceElement;
    array-length v0, v6

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_8
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_14

    aget-object v14, v6, v18

    .line 583
    .local v14, "element":Ljava/lang/StackTraceElement;
    const-string v34, "Watchdog"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "    at "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 578
    .end local v14    # "element":Ljava/lang/StackTraceElement;
    :cond_14
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 586
    .end local v6    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v18    # "i$":I
    .end local v19    # "len$":I
    .end local v24    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_15
    const-string v34, "Watchdog"

    const-string v35, "*** GOODBYE!"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v34

    invoke-static/range {v34 .. v34}, Landroid/os/Process;->killProcess(I)V

    .line 588
    const/16 v34, 0xa

    invoke-static/range {v34 .. v34}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_6
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .locals 1
    .param p1, "controller"    # Landroid/app/IActivityController;

    .prologue
    .line 306
    monitor-enter p0

    .line 307
    :try_start_0
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    .line 308
    monitor-exit p0

    .line 309
    return-void

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowRestart(Z)V
    .locals 1
    .param p1, "allowRestart"    # Z

    .prologue
    .line 312
    monitor-enter p0

    .line 313
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 314
    monitor-exit p0

    .line 315
    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setExtraRunning(Z)V
    .locals 1
    .param p1, "bRunning"    # Z

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/server/Watchdog;->mDumpExtraRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 763
    return-void
.end method