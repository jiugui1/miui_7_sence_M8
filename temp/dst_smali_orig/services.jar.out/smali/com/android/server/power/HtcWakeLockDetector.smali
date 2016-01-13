.class final Lcom/android/server/power/HtcWakeLockDetector;
.super Ljava/lang/Object;
.source "HtcWakeLockDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;,
        Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    }
.end annotation


# instance fields
.field private final CONFIG_FILE_PATH:Ljava/lang/String;

.field private final MASTER_ENABLE:Z

.field private final MY_UID:I

.field private final TAG:Ljava/lang/String;

.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

.field private final mSyncLock:Ljava/lang/Object;

.field private final mWLD_Handler:Landroid/os/Handler;

.field private final mWLD_Thread:Landroid/os/HandlerThread;

.field private final mWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;

.field private final mWakeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService$PMSInternalAPI;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pmsInternalAPI"    # Lcom/android/server/power/PowerManagerService$PMSInternalAPI;
    .param p3, "pmsUid"    # I

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HtcWLD"

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->MASTER_ENABLE:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mSyncLock:Ljava/lang/Object;

    const-string v0, "/data/wld_config.xml"

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->CONFIG_FILE_PATH:Ljava/lang/String;

    new-instance v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;

    invoke-direct {v0, p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;-><init>(Lcom/android/server/power/HtcWakeLockDetector;)V

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mWakeLocks:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/power/HtcWakeLockDetector;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    iput p3, p0, Lcom/android/server/power/HtcWakeLockDetector;->MY_UID:I

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mActivityManager:Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/server/power/HtcWakeLockDetector;->mWLD_Thread:Landroid/os/HandlerThread;

    iput-object v2, p0, Lcom/android/server/power/HtcWakeLockDetector;->mWLD_Handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/HtcWakeLockDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;

    .prologue
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockDetector;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/power/HtcWakeLockDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;

    .prologue
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockDetector;->isMusicActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mWakeLocks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;

    .prologue
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockDetector;->readSystemStat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/power/HtcWakeLockDetector;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcWakeLockDetector;->readProcessStat(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/power/HtcWakeLockDetector;Ljava/lang/String;Ljava/lang/String;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/HtcWakeLockDetector;->getSystemCpuUsage(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/power/HtcWakeLockDetector;)Lcom/android/server/power/PowerManagerService$PMSInternalAPI;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockDetector;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mWLD_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method private getSystemCpuUsage(Ljava/lang/String;Ljava/lang/String;)F
    .locals 16
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;

    .prologue
    const-string v11, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, "stat":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/power/HtcWakeLockDetector;->getSystemIdleTime([Ljava/lang/String;)J

    move-result-wide v2

    .local v2, "idle1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/power/HtcWakeLockDetector;->getSystemUptime([Ljava/lang/String;)J

    move-result-wide v7

    .local v7, "up1":J
    const-string v11, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/power/HtcWakeLockDetector;->getSystemIdleTime([Ljava/lang/String;)J

    move-result-wide v4

    .local v4, "idle2":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/power/HtcWakeLockDetector;->getSystemUptime([Ljava/lang/String;)J

    move-result-wide v9

    .local v9, "up2":J
    const/high16 v1, -0x40800000    # -1.0f

    .local v1, "cpu":F
    const-wide/16 v11, 0x0

    cmp-long v11, v2, v11

    if-ltz v11, :cond_0

    const-wide/16 v11, 0x0

    cmp-long v11, v7, v11

    if-ltz v11, :cond_0

    const-wide/16 v11, 0x0

    cmp-long v11, v4, v11

    if-ltz v11, :cond_0

    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-ltz v11, :cond_0

    add-long v11, v9, v4

    add-long v13, v7, v2

    cmp-long v11, v11, v13

    if-lez v11, :cond_0

    cmp-long v11, v9, v7

    if-ltz v11, :cond_0

    sub-long v11, v9, v7

    long-to-float v11, v11

    add-long v12, v9, v4

    add-long v14, v7, v2

    sub-long/2addr v12, v14

    long-to-float v12, v12

    div-float v1, v11, v12

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float/2addr v1, v11

    :cond_0
    return v1
.end method

.method private isMusicActive()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .local v2, "result":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/HtcWakeLockDetector;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "HtcWLD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Exception] isMusicActive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isScreenOn()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .local v2, "result":Z
    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .local v1, "pms":Landroid/os/IPowerManager;
    invoke-interface {v1}, Landroid/os/IPowerManager;->isScreenOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "pms":Landroid/os/IPowerManager;
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "HtcWLD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isScreenOn: Exception caught. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readProcessStat(I)Ljava/lang/String;
    .locals 7
    .param p1, "pid"    # I

    .prologue
    const/4 v2, 0x0

    .local v2, "reader":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    .local v1, "line":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/stat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "r"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "reader":Ljava/io/RandomAccessFile;
    .local v3, "reader":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/RandomAccessFile;
    .restart local v2    # "reader":Ljava/io/RandomAccessFile;
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/io/IOException;
    :goto_1
    const-string v4, "HtcWLD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Exception] Cannot open /proc/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/stat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "ex":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/RandomAccessFile;
    .restart local v3    # "reader":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/RandomAccessFile;
    .restart local v2    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method private readSystemStat()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .local v2, "reader":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    .local v1, "load":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "/proc/stat"

    const-string v5, "r"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "reader":Ljava/io/RandomAccessFile;
    .local v3, "reader":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/RandomAccessFile;
    .restart local v2    # "reader":Ljava/io/RandomAccessFile;
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/io/IOException;
    :goto_1
    const-string v4, "HtcWLD"

    const-string v5, "[Exception] Cannot open /proc/stat"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "ex":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/RandomAccessFile;
    .restart local v3    # "reader":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/RandomAccessFile;
    .restart local v2    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method


# virtual methods
.method protected addWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;II)V
    .locals 2
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "workSource"    # Landroid/os/WorkSource;
    .param p6, "ownerUid"    # I
    .param p7, "ownerPid"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mSyncLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bootCompleted()V
    .locals 0

    .prologue
    return-void
.end method

.method public getProcessCpuUsage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F
    .locals 16
    .param p1, "procStart"    # Ljava/lang/String;
    .param p2, "procEnd"    # Ljava/lang/String;
    .param p3, "sysStart"    # Ljava/lang/String;
    .param p4, "sysEnd"    # Ljava/lang/String;

    .prologue
    const-string v12, " "

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .local v7, "splitStart":[Ljava/lang/String;
    const-string v12, " "

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, "splitEnd":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/power/HtcWakeLockDetector;->getSystemIdleTime([Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/power/HtcWakeLockDetector;->getSystemUptime([Ljava/lang/String;)J

    move-result-wide v14

    add-long v8, v12, v14

    .local v8, "sysTotal1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/power/HtcWakeLockDetector;->getSystemIdleTime([Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/power/HtcWakeLockDetector;->getSystemUptime([Ljava/lang/String;)J

    move-result-wide v14

    add-long v10, v12, v14

    .local v10, "sysTotal2":J
    const-string v12, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/power/HtcWakeLockDetector;->getProcessUptime([Ljava/lang/String;)J

    move-result-wide v1

    .local v1, "procUp1":J
    const-string v12, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/power/HtcWakeLockDetector;->getProcessUptime([Ljava/lang/String;)J

    move-result-wide v3

    .local v3, "procUp2":J
    const/high16 v5, -0x40800000    # -1.0f

    .local v5, "ret":F
    const-wide/16 v12, 0x0

    cmp-long v12, v1, v12

    if-ltz v12, :cond_0

    cmp-long v12, v3, v1

    if-ltz v12, :cond_0

    cmp-long v12, v10, v8

    if-lez v12, :cond_0

    const/high16 v12, 0x42c80000    # 100.0f

    sub-long v13, v3, v1

    long-to-float v13, v13

    mul-float/2addr v12, v13

    sub-long v13, v10, v8

    long-to-float v13, v13

    div-float v5, v12, v13

    :cond_0
    return v5
.end method

.method public getProcessIdleTime([Ljava/lang/String;)J
    .locals 4
    .param p1, "stat"    # [Ljava/lang/String;

    .prologue
    const/16 v0, 0x10

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/16 v2, 0x11

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getProcessUptime([Ljava/lang/String;)J
    .locals 4
    .param p1, "stat"    # [Ljava/lang/String;

    .prologue
    const/16 v0, 0xe

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/16 v2, 0xf

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getSystemIdleTime([Ljava/lang/String;)J
    .locals 3
    .param p1, "stat"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x5

    :try_start_0
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string v1, "HtcWLD"

    const-string v2, "[Exception] Fail to parse long for system idle time!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getSystemUptime([Ljava/lang/String;)J
    .locals 7
    .param p1, "stat"    # [Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .local v2, "l":J
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_1

    const/4 v4, 0x5

    if-eq v1, v4, :cond_0

    :try_start_0
    aget-object v4, p1, v1

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    add-long/2addr v2, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string v4, "HtcWLD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Exception] Fail to parse long: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, -0x1

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v2    # "l":J
    :cond_1
    return-wide v2
.end method

.method public reloadConfiguration()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;

    const-string v1, "/data/wld_config.xml"

    invoke-virtual {v0, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->loadXmlDocument(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;

    invoke-virtual {v0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->loadConfiguration()V

    return-void
.end method

.method protected removeWakeLock(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "lock"    # Landroid/os/IBinder;

    .prologue
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mSyncLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
