.class Lcom/htc/server/HtcDebugInfoOperator;
.super Lcom/htc/server/HtcInfoOperator;
.source "HtcDebugInfoOperator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcDeviceInfoManager"

.field private static final TELLHTC_CLIENT_BG_MODE_APPID:Ljava/lang/String; = "tellhtc_client_bg_mode"

.field private static final TELLHTC_CLIENT_BG_MODE_ENABLE_KEY:Ljava/lang/String; = "enable"

.field private static final mDebugInfoDiffPath:Ljava/lang/String; = "/data/system/deviceinfo_debug"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExtraUsage:Lcom/htc/server/deviceinfo/ExtraUsageWrapper;

.field private mForegroundProcess:Ljava/lang/String;

.field private mLastForegroundUpdateTime:J

.field private mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field private mProcessInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/HtcDeviceInfo$ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field private mTelephony:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Landroid/os/PowerManager;Landroid/content/Context;)V
    .locals 3
    .param p1, "pm"    # Landroid/os/PowerManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/htc/server/HtcInfoOperator;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mForegroundProcess:Ljava/lang/String;

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastForegroundUpdateTime:J

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    .line 36
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 43
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/deviceinfo_debug"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/htc/server/HtcDebugInfoOperator;->deserilizeFromFile(Ljava/io/File;)Landroid/app/HtcDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 44
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v0}, Landroid/app/HtcDeviceInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo;

    iput-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 47
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastForegroundUpdateTime:J

    .line 48
    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mScreenOn:Z

    .line 50
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    .line 53
    :cond_1
    iput-object p2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;

    const-string v1, "HtcDeviceInfoManager"

    sget-boolean v2, Lcom/htc/server/HtcInfoOperator;->VERBOSE:Z

    invoke-direct {v0, p2, v1, v2}, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mExtraUsage:Lcom/htc/server/deviceinfo/ExtraUsageWrapper;

    .line 55
    return-void
.end method

.method private alignLastDeviceInfoToCurrent()Landroid/app/HtcDeviceInfo;
    .locals 3

    .prologue
    .line 213
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/server/HtcDebugInfoOperator;->updateTimeInfo(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-direct {p0}, Lcom/htc/server/HtcDebugInfoOperator;->getSimState()I

    move-result v2

    iput v2, v1, Landroid/app/HtcDeviceInfo;->simState:I

    .line 215
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v1, v2}, Landroid/app/HtcDeviceInfo;->diff(Landroid/app/HtcDeviceInfo;)Landroid/app/HtcDeviceInfo;

    move-result-object v0

    .line 216
    .local v0, "diffInfo":Landroid/app/HtcDeviceInfo;
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v1}, Landroid/app/HtcDeviceInfo;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/HtcDeviceInfo;

    iput-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 217
    return-object v0
.end method

.method private flushDeviceUsage()V
    .locals 5

    .prologue
    .line 198
    invoke-static {}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->getUBSwitch()Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "enableUB":Ljava/lang/String;
    const-string v2, "HtcDeviceInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flushDeviceUsage(), enableUB = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/htc/server/HtcDebugInfoOperator;->alignLastDeviceInfoToCurrent()Landroid/app/HtcDeviceInfo;

    move-result-object v0

    .line 202
    .local v0, "diffInfo":Landroid/app/HtcDeviceInfo;
    iget-object v3, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    monitor-enter v3

    .line 203
    :try_start_0
    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v2, v0}, Landroid/app/HtcDeviceInfo;->add(Landroid/app/HtcDeviceInfo;)V

    .line 204
    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    const-string v4, "/data/system/deviceinfo_debug"

    invoke-virtual {v2, v4}, Landroid/app/HtcDeviceInfo;->serializeToFile(Ljava/lang/String;)V

    .line 205
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    sget-boolean v2, Lcom/htc/server/HtcInfoOperator;->VERBOSE:Z

    if-eqz v2, :cond_0

    .line 208
    const-string v2, "HtcDeviceInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[mStatisticsDeviceInfo] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v4}, Landroid/app/HtcDeviceInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .end local v0    # "diffInfo":Landroid/app/HtcDeviceInfo;
    :cond_0
    return-void

    .line 205
    .restart local v0    # "diffInfo":Landroid/app/HtcDeviceInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private getSimState()I
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "state":I
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 137
    :cond_0
    return v0
.end method

.method private static isExtraUsageEnabled()Z
    .locals 2

    .prologue
    .line 484
    invoke-static {}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->getUBSwitch()Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "enableUB":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private outputExtraUsage()V
    .locals 4

    .prologue
    .line 170
    invoke-static {}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->getUBSwitch()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "enableUB":Ljava/lang/String;
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "outputExtraUsage(), enableUB = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/htc/server/HtcDebugInfoOperator;->logExtraInfo4()V

    .line 174
    invoke-virtual {p0}, Lcom/htc/server/HtcDebugInfoOperator;->logExtraInfo6()V

    .line 175
    invoke-virtual {p0}, Lcom/htc/server/HtcDebugInfoOperator;->logExtraInfo7()V

    .line 177
    :cond_0
    return-void
.end method

.method private updateTimeInfo(Ljava/lang/String;)V
    .locals 14
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 67
    .local v8, "now":J
    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v10, v10, Landroid/app/HtcDeviceInfo;->lastDeviceAliveUpdateTime:J

    sub-long v3, v8, v10

    .line 68
    .local v3, "duration":J
    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v11, v10, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    add-long/2addr v11, v3

    iput-wide v11, v10, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    .line 69
    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iput-wide v8, v10, Landroid/app/HtcDeviceInfo;->lastDeviceAliveUpdateTime:J

    .line 71
    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v10, v10, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    .line 72
    .local v7, "infos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/HtcDeviceInfo$ProcessInfo;>;"
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 73
    .local v6, "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    iget v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 75
    iget-object v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 77
    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget v11, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    invoke-virtual {v10, v11}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v10

    const-wide/16 v12, 0xa

    mul-long v1, v10, v12

    .line 78
    .local v1, "CPUTime":J
    iget-wide v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastForegroundUpdateTime:J

    sub-long v3, v8, v10

    .line 79
    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-lez v10, :cond_1

    .line 80
    iget-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    add-long/2addr v10, v3

    iput-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    .line 82
    :cond_1
    iput-wide v1, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    .line 100
    .end local v1    # "CPUTime":J
    :goto_1
    iget-object v11, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 101
    :try_start_0
    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    iget-object v12, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    move-object v6, v0

    .line 102
    if-eqz v6, :cond_2

    .line 103
    iget-wide v12, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    add-long/2addr v12, v3

    iput-wide v12, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    .line 105
    :cond_2
    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 83
    :cond_3
    iget-object v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/server/HtcDebugInfoOperator;->mForegroundProcess:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 85
    iget-wide v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastForegroundUpdateTime:J

    sub-long v3, v8, v10

    .line 86
    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-lez v10, :cond_4

    .line 87
    iget-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    add-long/2addr v10, v3

    iput-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    .line 89
    :cond_4
    iput-wide v8, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastForegroundUpdateTime:J

    goto :goto_1

    .line 92
    :cond_5
    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget v11, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    invoke-virtual {v10, v11}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v10

    const-wide/16 v12, 0xa

    mul-long v1, v10, v12

    .line 93
    .restart local v1    # "CPUTime":J
    iget-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    sub-long v3, v1, v10

    .line 94
    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-lez v10, :cond_6

    .line 95
    iget-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    add-long/2addr v10, v3

    iput-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    .line 97
    :cond_6
    iput-wide v1, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    goto :goto_1

    .line 108
    .end local v1    # "CPUTime":J
    .end local v6    # "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    :cond_7
    return-void
.end method


# virtual methods
.method addANR(Ljava/lang/String;)V
    .locals 4
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADD_ANR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v1, v1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 114
    .local v0, "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-eqz v0, :cond_0

    .line 115
    iget v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    .line 116
    :cond_0
    return-void
.end method

.method addCrash(Ljava/lang/String;)V
    .locals 4
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 119
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADD_CRASH "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v1, v1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 122
    .local v0, "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-eqz v0, :cond_0

    .line 123
    iget v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    .line 124
    const/4 v1, -0x1

    iput v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 125
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    monitor-exit v2

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addKernelCrash()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method addRadioCrash()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method addSentErrorCount(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    return-void
.end method

.method addSystemCrash()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method flush()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/htc/server/HtcDebugInfoOperator;->outputExtraUsage()V

    .line 147
    invoke-direct {p0}, Lcom/htc/server/HtcDebugInfoOperator;->flushDeviceUsage()V

    .line 148
    return-void
.end method

.method flushClientStatistic()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method flushUsageTime()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method forceOutput()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/htc/server/HtcDebugInfoOperator;->outputExtraUsage()V

    .line 157
    invoke-virtual {p0}, Lcom/htc/server/HtcDebugInfoOperator;->outputDeviceUsage()V

    .line 158
    return-void
.end method

.method getAppAliveTime(Ljava/lang/String;)J
    .locals 4
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 335
    iget-object v3, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 337
    .local v0, "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-eqz v0, :cond_0

    .line 338
    iget-wide v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    monitor-exit v3

    .line 341
    :goto_0
    return-wide v1

    .line 340
    :cond_0
    monitor-exit v3

    .line 341
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 340
    .end local v0    # "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mExtraUsage:Lcom/htc/server/deviceinfo/ExtraUsageWrapper;

    invoke-virtual {v0}, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method killAllProc()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 284
    sget-boolean v2, Lcom/htc/server/HtcInfoOperator;->VERBOSE:Z

    if-eqz v2, :cond_0

    .line 285
    const-string v2, "HtcDeviceInfoManager"

    const-string v3, "KILL_ALL_PROC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/server/HtcDebugInfoOperator;->update(Ljava/lang/String;)V

    .line 287
    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v2, v2, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 288
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/HtcDeviceInfo$ProcessInfo;>;"
    const/4 v0, 0x0

    .line 289
    .local v0, "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 291
    .restart local v0    # "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    iput v4, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 292
    iput v4, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    .line 293
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    goto :goto_0

    .line 295
    :cond_1
    return-void
.end method

.method killProc(Ljava/lang/String;)V
    .locals 5
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 268
    sget-boolean v1, Lcom/htc/server/HtcInfoOperator;->VERBOSE:Z

    if-eqz v1, :cond_0

    .line 269
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KILL_PROC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v1, v1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 271
    .local v0, "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/server/HtcDebugInfoOperator;->update(Ljava/lang/String;)V

    .line 272
    if-eqz v0, :cond_1

    .line 273
    iput v4, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 274
    iput v4, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    .line 275
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    .line 277
    :cond_1
    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    monitor-exit v2

    .line 280
    return-void

    .line 279
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method logExtraInfo1()V
    .locals 1

    .prologue
    .line 348
    invoke-static {}, Lcom/htc/server/HtcDebugInfoOperator;->isExtraUsageEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mExtraUsage:Lcom/htc/server/deviceinfo/ExtraUsageWrapper;

    invoke-virtual {v0}, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->logExtraInfo1()V

    goto :goto_0
.end method

.method logExtraInfo2()V
    .locals 1

    .prologue
    .line 357
    invoke-static {}, Lcom/htc/server/HtcDebugInfoOperator;->isExtraUsageEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mExtraUsage:Lcom/htc/server/deviceinfo/ExtraUsageWrapper;

    invoke-virtual {v0}, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->logExtraInfo2()V

    goto :goto_0
.end method

.method logExtraInfo3()V
    .locals 1

    .prologue
    .line 366
    invoke-static {}, Lcom/htc/server/HtcDebugInfoOperator;->isExtraUsageEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mExtraUsage:Lcom/htc/server/deviceinfo/ExtraUsageWrapper;

    invoke-virtual {v0}, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->logExtraInfo3()V

    goto :goto_0
.end method

.method logExtraInfo4()V
    .locals 1

    .prologue
    .line 376
    invoke-static {}, Lcom/htc/server/HtcDebugInfoOperator;->isExtraUsageEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mExtraUsage:Lcom/htc/server/deviceinfo/ExtraUsageWrapper;

    invoke-virtual {v0}, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->logExtraInfo4()V

    goto :goto_0
.end method

.method logExtraInfo6()V
    .locals 1

    .prologue
    .line 385
    invoke-static {}, Lcom/htc/server/HtcDebugInfoOperator;->isExtraUsageEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mExtraUsage:Lcom/htc/server/deviceinfo/ExtraUsageWrapper;

    invoke-virtual {v0}, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->logExtraInfo6()V

    goto :goto_0
.end method

.method logExtraInfo7()V
    .locals 1

    .prologue
    .line 394
    invoke-static {}, Lcom/htc/server/HtcDebugInfoOperator;->isExtraUsageEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mExtraUsage:Lcom/htc/server/deviceinfo/ExtraUsageWrapper;

    invoke-virtual {v0}, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->logExtraInfo7()V

    goto :goto_0
.end method

.method logExtraInfo8()V
    .locals 1

    .prologue
    .line 403
    invoke-static {}, Lcom/htc/server/HtcDebugInfoOperator;->isExtraUsageEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mExtraUsage:Lcom/htc/server/deviceinfo/ExtraUsageWrapper;

    invoke-virtual {v0}, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->logExtraInfo8()V

    goto :goto_0
.end method

.method outputDeviceUsage()V
    .locals 5

    .prologue
    .line 180
    invoke-static {}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->getUBSwitch()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "enableUB":Ljava/lang/String;
    const-string v2, "HtcDeviceInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outputDeviceUsage(), enableUB = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    const-string v2, "HtcDeviceInfoManager"

    const-string v3, "outputDeviceUsage(), file path = /data/system/deviceinfo_debug"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0}, Lcom/htc/server/HtcDebugInfoOperator;->alignLastDeviceInfoToCurrent()Landroid/app/HtcDeviceInfo;

    move-result-object v0

    .line 185
    .local v0, "diffInfo":Landroid/app/HtcDeviceInfo;
    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v0, v2}, Landroid/app/HtcDeviceInfo;->add(Landroid/app/HtcDeviceInfo;)V

    .line 186
    sget-wide v2, Lcom/htc/server/HtcDebugInfoOperator;->SETTING_SCREEN_OFF_TIMEOUT:J

    invoke-virtual {v0, v2, v3}, Landroid/app/HtcDeviceInfo;->flush(J)Z

    .line 187
    iget-object v3, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    monitor-enter v3

    .line 188
    :try_start_0
    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v2}, Landroid/app/HtcDeviceInfo;->reset()V

    .line 189
    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    const-string v4, "/data/system/deviceinfo_debug"

    invoke-virtual {v2, v4}, Landroid/app/HtcDeviceInfo;->serializeToFile(Ljava/lang/String;)V

    .line 190
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    sget-boolean v2, Lcom/htc/server/HtcInfoOperator;->VERBOSE:Z

    if-eqz v2, :cond_0

    .line 193
    const-string v2, "HtcDeviceInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[mStatisticsDeviceInfo] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v4}, Landroid/app/HtcDeviceInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local v0    # "diffInfo":Landroid/app/HtcDeviceInfo;
    :cond_0
    return-void

    .line 190
    .restart local v0    # "diffInfo":Landroid/app/HtcDeviceInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method printLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 480
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-void
.end method

.method requestLocationUpdate()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mExtraUsage:Lcom/htc/server/deviceinfo/ExtraUsageWrapper;

    invoke-virtual {v0}, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->requestLocationUpdate()V

    .line 470
    return-void
.end method

.method reset()V
    .locals 2

    .prologue
    .line 299
    sget-boolean v0, Lcom/htc/server/HtcInfoOperator;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 300
    const-string v0, "HtcDeviceInfoManager"

    const-string v1, "RESET "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    invoke-super {p0}, Lcom/htc/server/HtcInfoOperator;->reset()V

    .line 302
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastForegroundUpdateTime:J

    .line 303
    return-void
.end method

.method screenOff()V
    .locals 8

    .prologue
    .line 321
    sget-boolean v4, Lcom/htc/server/HtcInfoOperator;->VERBOSE:Z

    if-eqz v4, :cond_0

    .line 322
    const-string v5, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SCREEN_OFF pre="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mScreenOn:Z

    if-eqz v4, :cond_2

    const-string v4, "on"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " lastOn="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v6, v6, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_0
    iget-boolean v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mScreenOn:Z

    if-eqz v4, :cond_1

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 326
    .local v2, "now_off":J
    iget-object v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v4, v4, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    sub-long v0, v2, v4

    .line 327
    .local v0, "duration":J
    iget-object v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v5, v4, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    .line 329
    .end local v0    # "duration":J
    .end local v2    # "now_off":J
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mScreenOn:Z

    .line 330
    return-void

    .line 322
    :cond_2
    const-string v4, "off"

    goto :goto_0
.end method

.method screenOn()V
    .locals 8

    .prologue
    .line 307
    sget-boolean v4, Lcom/htc/server/HtcInfoOperator;->VERBOSE:Z

    if-eqz v4, :cond_0

    .line 308
    const-string v5, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SCREEN_ON pre="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mScreenOn:Z

    if-eqz v4, :cond_2

    const-string v4, "on"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " lastOn="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v6, v6, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 311
    .local v2, "now_on":J
    iget-boolean v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mScreenOn:Z

    if-eqz v4, :cond_1

    .line 312
    iget-object v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v4, v4, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    sub-long v0, v2, v4

    .line 313
    .local v0, "duration":J
    iget-object v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v5, v4, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    .line 315
    .end local v0    # "duration":J
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mScreenOn:Z

    .line 316
    iget-object v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iput-wide v2, v4, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    .line 317
    return-void

    .line 308
    .end local v2    # "now_on":J
    :cond_2
    const-string v4, "off"

    goto :goto_0
.end method

.method setTop(Ljava/lang/String;)V
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 230
    sget-boolean v0, Lcom/htc/server/HtcInfoOperator;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 231
    const-string v0, "HtcDeviceInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET_TOP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mForegroundProcess:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastForegroundUpdateTime:J

    .line 233
    iput-object p1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mForegroundProcess:Ljava/lang/String;

    .line 234
    return-void
.end method

.method setUIMode(Ljava/lang/String;)V
    .locals 5
    .param p1, "uiMode"    # Ljava/lang/String;

    .prologue
    .line 410
    const-string v2, "HtcDeviceInfoManager"

    const-string v3, "setUIMode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    if-nez p1, :cond_0

    .line 412
    const-string p1, ""

    .line 413
    :cond_0
    invoke-static {}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->getUIMode()Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "uiMode_old":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 415
    const-string v2, "HtcDeviceInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setUIMode, ui_mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string v0, ""

    .line 417
    .local v0, "UBSwitch":Ljava/lang/String;
    const-string v2, "background"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 418
    const-string v0, "0"

    .line 421
    :goto_0
    invoke-static {}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->setUIMode(Ljava/lang/String;)V

    .line 422
    invoke-static {}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->setUBSwitch(Ljava/lang/String;)V

    .line 423
    const-string v2, "HtcDeviceInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setUIMode, ui_mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", UBSwitch = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .end local v0    # "UBSwitch":Ljava/lang/String;
    :goto_1
    return-void

    .line 420
    .restart local v0    # "UBSwitch":Ljava/lang/String;
    :cond_1
    const-string v0, "1"

    goto :goto_0

    .line 426
    .end local v0    # "UBSwitch":Ljava/lang/String;
    :cond_2
    const-string v2, "HtcDeviceInfoManager"

    const-string v3, "Don\'t setUIMode because of uiMode is already set."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method setup(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 463
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mExtraUsage:Lcom/htc/server/deviceinfo/ExtraUsageWrapper;

    invoke-virtual {v0, p1}, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->setup(Landroid/os/Looper;)V

    .line 464
    return-void
.end method

.method shutdown()V
    .locals 0

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/htc/server/HtcDebugInfoOperator;->forceOutput()V

    .line 167
    return-void
.end method

.method startProc(IILjava/lang/String;)V
    .locals 7
    .param p1, "pid"    # I
    .param p2, "group"    # I
    .param p3, "processName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 239
    iget-object v3, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v3, v3, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 240
    .local v1, "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-nez v1, :cond_1

    .line 241
    new-instance v1, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .end local v1    # "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    invoke-direct {v1}, Landroid/app/HtcDeviceInfo$ProcessInfo;-><init>()V

    .line 242
    .restart local v1    # "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    iput-object p3, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 243
    iput p1, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 244
    iput p2, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    .line 245
    iput-wide v4, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    .line 246
    iget-object v3, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v3, v3, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :goto_0
    iget-object v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 253
    :try_start_0
    iget-object v3, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    move-object v1, v0

    .line 254
    if-eqz v1, :cond_0

    .line 255
    const-string v3, "HtcDeviceInfoManager"

    const-string v5, "process info already exist. why?"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    new-instance v2, Landroid/app/HtcDeviceInfo$ProcessInfo;

    invoke-direct {v2}, Landroid/app/HtcDeviceInfo$ProcessInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .end local v1    # "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    .local v2, "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    :try_start_1
    iput-object p3, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 259
    iput p1, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 260
    iput p2, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    .line 261
    const-wide/16 v5, 0x0

    iput-wide v5, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    .line 262
    iget-object v3, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 264
    return-void

    .line 248
    .end local v2    # "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    .restart local v1    # "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    :cond_1
    iput p1, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 249
    iput p2, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    .line 250
    iput-wide v4, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v3

    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .end local v1    # "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    .restart local v2    # "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    .restart local v1    # "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    goto :goto_1
.end method

.method unregisterLocationUpdate()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mExtraUsage:Lcom/htc/server/deviceinfo/ExtraUsageWrapper;

    invoke-virtual {v0}, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->unregisterLocationUpdate()V

    .line 476
    return-void
.end method

.method update(Ljava/lang/String;)V
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 222
    sget-boolean v0, Lcom/htc/server/HtcInfoOperator;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 223
    const-string v0, "HtcDeviceInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mForegroundProcess:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/server/HtcDebugInfoOperator;->updateTimeInfo(Ljava/lang/String;)V

    .line 225
    invoke-super {p0, p1}, Lcom/htc/server/HtcInfoOperator;->update(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method updatePolicy()V
    .locals 9

    .prologue
    .line 431
    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "updatePolicy"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v2, Lcom/htc/utils/ulog/UPolicy;

    const-string v6, "com.htc.feedback"

    invoke-direct {v2, v6}, Lcom/htc/utils/ulog/UPolicy;-><init>(Ljava/lang/String;)V

    .line 433
    .local v2, "feedbackPolicy":Lcom/htc/utils/ulog/UPolicy;
    const-string v6, "1"

    const-string v7, "HTC_UB"

    const-string v8, "enable"

    invoke-virtual {v2, v7, v8}, Lcom/htc/utils/ulog/UPolicy;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 434
    invoke-static {}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->getUIMode()Ljava/lang/String;

    move-result-object v4

    .line 435
    .local v4, "uiMode":Ljava/lang/String;
    const-string v6, "background"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 436
    const-string v0, ""

    .line 437
    .local v0, "UBSwitch":Ljava/lang/String;
    new-instance v3, Lcom/htc/utils/ulog/UPolicy;

    const-string v6, "tellhtc_client_bg_mode"

    invoke-direct {v3, v6}, Lcom/htc/utils/ulog/UPolicy;-><init>(Ljava/lang/String;)V

    .line 438
    .local v3, "policy":Lcom/htc/utils/ulog/UPolicy;
    const-string v6, "error_report"

    const-string v7, "enable"

    invoke-virtual {v3, v6, v7}, Lcom/htc/utils/ulog/UPolicy;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, "error_report":Ljava/lang/String;
    const-string v6, "usage_report"

    const-string v7, "enable"

    invoke-virtual {v3, v6, v7}, Lcom/htc/utils/ulog/UPolicy;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 440
    .local v5, "usage_report":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 441
    :cond_0
    const-string v0, "1"

    .line 444
    :goto_0
    invoke-static {}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->setUBSwitch(Ljava/lang/String;)V

    .line 445
    const-string v6, "HtcDeviceInfoManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Eng+Bg mode: error_report: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", usage_report: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", UBSwitch: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .end local v0    # "UBSwitch":Ljava/lang/String;
    .end local v1    # "error_report":Ljava/lang/String;
    .end local v3    # "policy":Lcom/htc/utils/ulog/UPolicy;
    .end local v4    # "uiMode":Ljava/lang/String;
    .end local v5    # "usage_report":Ljava/lang/String;
    :goto_1
    return-void

    .line 443
    .restart local v0    # "UBSwitch":Ljava/lang/String;
    .restart local v1    # "error_report":Ljava/lang/String;
    .restart local v3    # "policy":Lcom/htc/utils/ulog/UPolicy;
    .restart local v4    # "uiMode":Ljava/lang/String;
    .restart local v5    # "usage_report":Ljava/lang/String;
    :cond_1
    const-string v0, "0"

    goto :goto_0

    .line 447
    .end local v0    # "UBSwitch":Ljava/lang/String;
    .end local v1    # "error_report":Ljava/lang/String;
    .end local v3    # "policy":Lcom/htc/utils/ulog/UPolicy;
    .end local v5    # "usage_report":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->setUBSwitch(Ljava/lang/String;)V

    .line 448
    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "UB log is force turned on by policy!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 451
    .end local v4    # "uiMode":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->setUBSwitch(Ljava/lang/String;)V

    .line 452
    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "UB log is force closed by policy!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
