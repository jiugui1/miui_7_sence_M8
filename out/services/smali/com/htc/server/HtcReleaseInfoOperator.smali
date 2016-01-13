.class Lcom/htc/server/HtcReleaseInfoOperator;
.super Lcom/htc/server/HtcInfoOperator;
.source "HtcReleaseInfoOperator.java"


# static fields
.field private static final DEBUG:Z

.field private static final KEY_REBOOT_TYPE:Ljava/lang/String; = "reboot_type"

.field private static final KEY_TAG:Ljava/lang/String; = "tag"

.field private static final STR_DATA_PATH:Ljava/lang/String; = "/data"

.field private static final TAG:Ljava/lang/String; = "HtcDeviceInfoManager"

.field private static final VALUE_HTC_APP_ANR:Ljava/lang/String; = "HTC_APP_ANR"

.field private static final VALUE_HTC_APP_CRASH:Ljava/lang/String; = "HTC_APP_CRASH"

.field private static final VALUE_KERNEL:Ljava/lang/String; = "kernel"

.field private static final VALUE_LASTKMSG:Ljava/lang/String; = "LASTKMSG"

.field private static final VALUE_RADIO:Ljava/lang/String; = "radio"

.field private static final VALUE_SYSTEM_CRASH:Ljava/lang/String; = "SYSTEM_CRASH"

.field private static final mAppANR:Ljava/lang/String; = "app_anr"

.field private static final mAppCrash:Ljava/lang/String; = "app_crash"

.field private static final mKernelCrash:Ljava/lang/String; = "kernel"

.field private static final mRadioCrash:Ljava/lang/String; = "radio"

.field private static final mReleaseInfoDiffPath:Ljava/lang/String; = "/data/system/deviceinfo_release"

.field private static final mSystemCrash:Ljava/lang/String; = "system"

.field private static mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo; = null

.field private static final mUseTimeDiffPath:Ljava/lang/String; = "/data/system/deviceinfo_use_diff"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/server/HtcReleaseInfoOperator;->DEBUG:Z

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/htc/server/HtcInfoOperator;-><init>()V

    .line 49
    iget-object v0, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/HtcDeviceInfo;->lastDeviceAwakeUpdateTime:J

    .line 50
    iget-object v0, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v0}, Landroid/app/HtcDeviceInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo;

    iput-object v0, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 52
    const-string v0, "app_crash"

    invoke-virtual {p0, v0}, Lcom/htc/server/HtcReleaseInfoOperator;->createCrashCountRecord(Ljava/lang/String;)V

    .line 53
    const-string v0, "app_anr"

    invoke-virtual {p0, v0}, Lcom/htc/server/HtcReleaseInfoOperator;->createCrashCountRecord(Ljava/lang/String;)V

    .line 54
    const-string v0, "system"

    invoke-virtual {p0, v0}, Lcom/htc/server/HtcReleaseInfoOperator;->createCrashCountRecord(Ljava/lang/String;)V

    .line 55
    const-string v0, "kernel"

    invoke-virtual {p0, v0}, Lcom/htc/server/HtcReleaseInfoOperator;->createCrashCountRecord(Ljava/lang/String;)V

    .line 56
    const-string v0, "radio"

    invoke-virtual {p0, v0}, Lcom/htc/server/HtcReleaseInfoOperator;->createCrashCountRecord(Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/deviceinfo_use_diff"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/htc/server/HtcReleaseInfoOperator;->deserilizeFromFile(Ljava/io/File;)Landroid/app/HtcDeviceInfo;

    move-result-object v0

    sput-object v0, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 59
    sget-object v0, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v0}, Landroid/app/HtcDeviceInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo;

    sput-object v0, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 62
    :cond_0
    sget-boolean v0, Lcom/htc/server/HtcReleaseInfoOperator;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 63
    const-string v0, "HtcDeviceInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client statistic:[Init mUsagetimeDiffDeviceInfo]awake_time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v2, v2, Landroid/app/HtcDeviceInfo;->deviceAwakeTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " active_time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v2, v2, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " use_time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v2, v2, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/deviceinfo_release"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/htc/server/HtcReleaseInfoOperator;->deserilizeFromFile(Ljava/io/File;)Landroid/app/HtcDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 66
    iget-object v0, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    if-nez v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v0}, Landroid/app/HtcDeviceInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo;

    iput-object v0, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 69
    :cond_2
    sget-boolean v0, Lcom/htc/server/HtcReleaseInfoOperator;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 70
    const-string v0, "HtcDeviceInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client statistic:[Init mStatisticsDeviceInfo]awake_time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v2, v2, Landroid/app/HtcDeviceInfo;->deviceAwakeTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " active_time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v2, v2, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " use_time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v2, v2, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_3
    return-void
.end method

.method public static getFreeSize(Ljava/lang/String;)J
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 297
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, "dataFs":Landroid/os/StatFs;
    const-wide/16 v1, -0x1

    .line 299
    .local v1, "freeDataSize":J
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long v1, v3, v5

    .line 301
    return-wide v1
.end method

.method private static getStorageAvailableSpace(Ljava/io/File;)J
    .locals 12
    .param p0, "mountPoint"    # Ljava/io/File;

    .prologue
    .line 305
    const-wide/16 v2, -0x1

    .line 306
    .local v2, "availableSpace":J
    const/4 v8, 0x0

    .line 307
    .local v8, "stat":Landroid/os/StatFs;
    if-eqz p0, :cond_0

    .line 308
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 309
    .local v7, "path":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 311
    :try_start_0
    new-instance v9, Landroid/os/StatFs;

    invoke-direct {v9, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8    # "stat":Landroid/os/StatFs;
    .local v9, "stat":Landroid/os/StatFs;
    move-object v8, v9

    .line 315
    .end local v9    # "stat":Landroid/os/StatFs;
    .restart local v8    # "stat":Landroid/os/StatFs;
    :goto_0
    if-eqz v8, :cond_0

    .line 316
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v4, v10

    .line 317
    .local v4, "blockSize":J
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v0, v10

    .line 318
    .local v0, "availableBlocks":J
    mul-long v2, v4, v0

    .line 322
    .end local v0    # "availableBlocks":J
    .end local v4    # "blockSize":J
    .end local v7    # "path":Ljava/lang/String;
    :cond_0
    return-wide v2

    .line 312
    .restart local v7    # "path":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 313
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v10, "HtcDeviceInfoManager"

    const-string v11, "[getStorageTotalSpace]"

    invoke-static {v10, v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private update()V
    .locals 7

    .prologue
    .line 170
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 171
    .local v2, "now":J
    iget-object v4, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v4, v4, Landroid/app/HtcDeviceInfo;->lastDeviceAliveUpdateTime:J

    sub-long v0, v2, v4

    .line 172
    .local v0, "duration":J
    iget-object v4, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v5, v4, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    .line 173
    iget-object v4, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iput-wide v2, v4, Landroid/app/HtcDeviceInfo;->lastDeviceAliveUpdateTime:J

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 176
    iget-object v4, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v4, v4, Landroid/app/HtcDeviceInfo;->lastDeviceAwakeUpdateTime:J

    sub-long v0, v2, v4

    .line 177
    iget-object v4, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v5, v4, Landroid/app/HtcDeviceInfo;->deviceAwakeTime:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Landroid/app/HtcDeviceInfo;->deviceAwakeTime:J

    .line 178
    iget-object v4, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iput-wide v2, v4, Landroid/app/HtcDeviceInfo;->lastDeviceAwakeUpdateTime:J

    .line 179
    return-void
.end method


# virtual methods
.method addANR(Ljava/lang/String;)V
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v1, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v1, v1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    const-string v2, "app_anr"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 190
    .local v0, "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-eqz v0, :cond_0

    .line 191
    iget v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    .line 193
    :cond_0
    return-void
.end method

.method addCrash(Ljava/lang/String;)V
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v1, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v1, v1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    const-string v2, "app_crash"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 183
    .local v0, "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-eqz v0, :cond_0

    .line 184
    iget v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    .line 186
    :cond_0
    return-void
.end method

.method addKernelCrash()V
    .locals 3

    .prologue
    .line 203
    iget-object v1, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v1, v1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    const-string v2, "kernel"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 204
    .local v0, "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-eqz v0, :cond_0

    .line 205
    iget v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    .line 207
    :cond_0
    return-void
.end method

.method addRadioCrash()V
    .locals 3

    .prologue
    .line 210
    iget-object v1, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v1, v1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    const-string v2, "radio"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 211
    .local v0, "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-eqz v0, :cond_0

    .line 212
    iget v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    .line 214
    :cond_0
    return-void
.end method

.method addSentErrorCount(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 217
    const-string v3, ""

    .line 218
    .local v3, "type":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 219
    const-string v4, "tag"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "tag":Ljava/lang/String;
    const-string v4, "HTC_APP_CRASH"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 221
    const-string v3, "app_crash"

    .line 234
    :cond_0
    :goto_0
    sget-boolean v4, Lcom/htc/server/HtcReleaseInfoOperator;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "HtcDeviceInfoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[addSentErrorCount] tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 237
    iget-object v4, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v4, v4, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 238
    .local v0, "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-eqz v0, :cond_2

    .line 239
    iget v4, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numSentToServer:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numSentToServer:I

    .line 243
    .end local v0    # "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    .end local v2    # "tag":Ljava/lang/String;
    :cond_2
    return-void

    .line 222
    .restart local v2    # "tag":Ljava/lang/String;
    :cond_3
    const-string v4, "HTC_APP_ANR"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 223
    const-string v3, "app_anr"

    goto :goto_0

    .line 224
    :cond_4
    const-string v4, "SYSTEM_CRASH"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 225
    const-string v3, "system"

    goto :goto_0

    .line 226
    :cond_5
    const-string v4, "LASTKMSG"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 227
    const-string v4, "reboot_type"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "rebootType":Ljava/lang/String;
    const-string v4, "kernel"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 229
    const-string v3, "kernel"

    goto :goto_0

    .line 230
    :cond_6
    const-string v4, "radio"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 231
    const-string v3, "radio"

    goto :goto_0
.end method

.method addSystemCrash()V
    .locals 3

    .prologue
    .line 196
    iget-object v1, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v1, v1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    const-string v2, "system"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 197
    .local v0, "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-eqz v0, :cond_0

    .line 198
    iget v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    .line 200
    :cond_0
    return-void
.end method

.method createCrashCountRecord(Ljava/lang/String;)V
    .locals 2
    .param p1, "crashType"    # Ljava/lang/String;

    .prologue
    .line 74
    new-instance v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    invoke-direct {v0}, Landroid/app/HtcDeviceInfo$ProcessInfo;-><init>()V

    .line 75
    .local v0, "info":Landroid/app/HtcDeviceInfo$ProcessInfo;
    iput-object p1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v1, v1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method flush()V
    .locals 5

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/htc/server/HtcReleaseInfoOperator;->update()V

    .line 156
    iget-object v1, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v2, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v1, v2}, Landroid/app/HtcDeviceInfo;->diff(Landroid/app/HtcDeviceInfo;)Landroid/app/HtcDeviceInfo;

    move-result-object v0

    .line 157
    .local v0, "diffInfo":Landroid/app/HtcDeviceInfo;
    sget-object v1, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v1, v0}, Landroid/app/HtcDeviceInfo;->add(Landroid/app/HtcDeviceInfo;)V

    .line 158
    sget-object v1, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    const-string v2, "/data/system/deviceinfo_use_diff"

    invoke-virtual {v1, v2}, Landroid/app/HtcDeviceInfo;->serializeToFile(Ljava/lang/String;)V

    .line 159
    sget-boolean v1, Lcom/htc/server/HtcReleaseInfoOperator;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 160
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Usage time]awake_time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v3, v3, Landroid/app/HtcDeviceInfo;->deviceAwakeTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " active_time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v3, v3, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " use_time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v3, v3, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v1, v0}, Landroid/app/HtcDeviceInfo;->add(Landroid/app/HtcDeviceInfo;)V

    .line 162
    iget-object v1, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    const-string v2, "/data/system/deviceinfo_release"

    invoke-virtual {v1, v2}, Landroid/app/HtcDeviceInfo;->serializeToFile(Ljava/lang/String;)V

    .line 163
    sget-boolean v1, Lcom/htc/server/HtcReleaseInfoOperator;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 164
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Statistic info]awake_time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v3, v3, Landroid/app/HtcDeviceInfo;->deviceAwakeTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " active_time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v3, v3, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " use_time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v3, v3, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v1}, Landroid/app/HtcDeviceInfo;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/HtcDeviceInfo;

    iput-object v1, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 167
    return-void
.end method

.method flushClientStatistic()V
    .locals 12

    .prologue
    .line 80
    sget-boolean v8, Lcom/htc/server/HtcReleaseInfoOperator;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "HtcDeviceInfoManager"

    const-string v9, "flushClientStatistic"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/htc/server/HtcReleaseInfoOperator;->update()V

    .line 82
    iget-object v8, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v9, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v8, v9}, Landroid/app/HtcDeviceInfo;->diff(Landroid/app/HtcDeviceInfo;)Landroid/app/HtcDeviceInfo;

    move-result-object v2

    .line 83
    .local v2, "diffInfo":Landroid/app/HtcDeviceInfo;
    sget-object v8, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v8, v2}, Landroid/app/HtcDeviceInfo;->add(Landroid/app/HtcDeviceInfo;)V

    .line 84
    sget-object v8, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    const-string v9, "/data/system/deviceinfo_use_diff"

    invoke-virtual {v8, v9}, Landroid/app/HtcDeviceInfo;->serializeToFile(Ljava/lang/String;)V

    .line 85
    iget-object v8, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v2, v8}, Landroid/app/HtcDeviceInfo;->add(Landroid/app/HtcDeviceInfo;)V

    .line 87
    iget-object v8, v2, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    const-string v9, "app_crash"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 88
    .local v1, "appCrash":Landroid/app/HtcDeviceInfo$ProcessInfo;
    iget-object v8, v2, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    const-string v9, "app_anr"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 89
    .local v0, "appANR":Landroid/app/HtcDeviceInfo$ProcessInfo;
    iget-object v8, v2, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    const-string v9, "system"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 90
    .local v6, "sys":Landroid/app/HtcDeviceInfo$ProcessInfo;
    iget-object v8, v2, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    const-string v9, "kernel"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 91
    .local v4, "kernel":Landroid/app/HtcDeviceInfo$ProcessInfo;
    iget-object v8, v2, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    const-string v9, "radio"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 94
    .local v5, "radio":Landroid/app/HtcDeviceInfo$ProcessInfo;
    :try_start_0
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v7

    .line 95
    .local v7, "uLogData":Lcom/htc/utils/ulog/ReusableULogData;
    const-string v8, "sys_statistics"

    invoke-virtual {v7, v8}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v8

    const-string v9, "device_error_count"

    invoke-interface {v8, v9}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v9

    const-string v10, "app_crash_count"

    if-nez v1, :cond_1

    const-string v8, "0"

    :goto_0
    invoke-interface {v9, v10, v8}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v9

    const-string v10, "system_crash_count"

    if-nez v6, :cond_2

    const-string v8, "0"

    :goto_1
    invoke-interface {v9, v10, v8}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v9

    const-string v10, "anr_count"

    if-nez v0, :cond_3

    const-string v8, "0"

    :goto_2
    invoke-interface {v9, v10, v8}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v9

    const-string v10, "kernel_crash_count"

    if-nez v4, :cond_4

    const-string v8, "0"

    :goto_3
    invoke-interface {v9, v10, v8}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v9

    const-string v10, "radio_crash_count"

    if-nez v5, :cond_5

    const-string v8, "0"

    :goto_4
    invoke-interface {v9, v10, v8}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v8

    const-string v9, "awake_time"

    iget-wide v10, v2, Landroid/app/HtcDeviceInfo;->deviceAwakeTime:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v8

    const-string v9, "active_time"

    iget-wide v10, v2, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v9

    const-string v10, "sent_app_crash_count"

    if-nez v1, :cond_6

    const-string v8, "0"

    :goto_5
    invoke-interface {v9, v10, v8}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v9

    const-string v10, "sent_system_crash_count"

    if-nez v6, :cond_7

    const-string v8, "0"

    :goto_6
    invoke-interface {v9, v10, v8}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v9

    const-string v10, "sent_anr_count"

    if-nez v0, :cond_8

    const-string v8, "0"

    :goto_7
    invoke-interface {v9, v10, v8}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v9

    const-string v10, "sent_kernel_crash_count"

    if-nez v4, :cond_9

    const-string v8, "0"

    :goto_8
    invoke-interface {v9, v10, v8}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v9

    const-string v10, "sent_radio_crash_count"

    if-nez v5, :cond_a

    const-string v8, "0"

    :goto_9
    invoke-interface {v9, v10, v8}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-interface {v8, v9, v10}, Lcom/htc/utils/ulog/ULogDataWritable;->setTimestamp(J)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 112
    invoke-static {v7}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 113
    invoke-virtual {v7}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v7    # "uLogData":Lcom/htc/utils/ulog/ReusableULogData;
    :goto_a
    iget-object v8, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v8}, Landroid/app/HtcDeviceInfo;->reset()V

    .line 118
    iget-object v8, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    const-string v9, "/data/system/deviceinfo_release"

    invoke-virtual {v8, v9}, Landroid/app/HtcDeviceInfo;->serializeToFile(Ljava/lang/String;)V

    .line 119
    iget-object v8, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v8}, Landroid/app/HtcDeviceInfo;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/HtcDeviceInfo;

    iput-object v8, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 120
    return-void

    .line 95
    .restart local v7    # "uLogData":Lcom/htc/utils/ulog/ReusableULogData;
    :cond_1
    :try_start_1
    iget v8, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :cond_2
    iget v8, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    :cond_3
    iget v8, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    :cond_4
    iget v8, v4, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    :cond_5
    iget v8, v5, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    :cond_6
    iget v8, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->numSentToServer:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_7
    iget v8, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->numSentToServer:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_8
    iget v8, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numSentToServer:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :cond_9
    iget v8, v4, Landroid/app/HtcDeviceInfo$ProcessInfo;->numSentToServer:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    :cond_a
    iget v8, v5, Landroid/app/HtcDeviceInfo$ProcessInfo;->numSentToServer:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto :goto_9

    .line 114
    .end local v7    # "uLogData":Lcom/htc/utils/ulog/ReusableULogData;
    :catch_0
    move-exception v3

    .line 115
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "HtcDeviceInfoManager"

    const-string v9, "Flush usage time fail:"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method flushUsageTime()V
    .locals 9

    .prologue
    .line 123
    sget-boolean v5, Lcom/htc/server/HtcReleaseInfoOperator;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "HtcDeviceInfoManager"

    const-string v6, "flushUsageTime"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/htc/server/HtcReleaseInfoOperator;->update()V

    .line 125
    iget-object v5, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v6, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v5, v6}, Landroid/app/HtcDeviceInfo;->diff(Landroid/app/HtcDeviceInfo;)Landroid/app/HtcDeviceInfo;

    move-result-object v2

    .line 126
    .local v2, "diffInfo":Landroid/app/HtcDeviceInfo;
    iget-object v5, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v5, v2}, Landroid/app/HtcDeviceInfo;->add(Landroid/app/HtcDeviceInfo;)V

    .line 127
    iget-object v5, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    const-string v6, "/data/system/deviceinfo_release"

    invoke-virtual {v5, v6}, Landroid/app/HtcDeviceInfo;->serializeToFile(Ljava/lang/String;)V

    .line 128
    sget-object v5, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v2, v5}, Landroid/app/HtcDeviceInfo;->add(Landroid/app/HtcDeviceInfo;)V

    .line 130
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/server/HtcReleaseInfoOperator;->getStorageAvailableSpace(Ljava/io/File;)J

    move-result-wide v0

    .line 131
    .local v0, "dataSize":J
    sget-boolean v5, Lcom/htc/server/HtcReleaseInfoOperator;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "HtcDeviceInfoManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[flushUsageTime] awake_time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v2, Landroid/app/HtcDeviceInfo;->deviceAwakeTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " active_time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v2, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " use_time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v2, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " free_data_storage:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_1
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v4

    .line 133
    .local v4, "uLogData":Lcom/htc/utils/ulog/ReusableULogData;
    const-string v5, "sys_statistics"

    invoke-virtual {v4, v5}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v5

    const-string v6, "device_use_time"

    invoke-interface {v5, v6}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v5

    const-string v6, "awake_time"

    iget-wide v7, v2, Landroid/app/HtcDeviceInfo;->deviceAwakeTime:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v5

    const-string v6, "active_time"

    iget-wide v7, v2, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v5

    const-string v6, "use_time"

    iget-wide v7, v2, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v5

    const-string v6, "free_data_storage"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lcom/htc/utils/ulog/ULogDataWritable;->setTimestamp(J)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 140
    invoke-static {v4}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 141
    invoke-virtual {v4}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v0    # "dataSize":J
    .end local v4    # "uLogData":Lcom/htc/utils/ulog/ReusableULogData;
    :goto_0
    sget-object v5, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v5}, Landroid/app/HtcDeviceInfo;->reset()V

    .line 147
    sget-object v5, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    const-string v6, "/data/system/deviceinfo_use_diff"

    invoke-virtual {v5, v6}, Landroid/app/HtcDeviceInfo;->serializeToFile(Ljava/lang/String;)V

    .line 148
    sget-boolean v5, Lcom/htc/server/HtcReleaseInfoOperator;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 149
    const-string v5, "HtcDeviceInfoManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[flushUsageTime serializeToFile] awake_time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v7, v7, Landroid/app/HtcDeviceInfo;->deviceAwakeTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " active_time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v7, v7, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " use_time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/server/HtcReleaseInfoOperator;->mUsagetimeDiffDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v7, v7, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_2
    iget-object v5, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v5}, Landroid/app/HtcDeviceInfo;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/HtcDeviceInfo;

    iput-object v5, p0, Lcom/htc/server/HtcReleaseInfoOperator;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 151
    return-void

    .line 142
    :catch_0
    move-exception v3

    .line 143
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "HtcDeviceInfoManager"

    const-string v6, "Flush usage time fail:"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method forceOutput()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method getAppAliveTime(Ljava/lang/String;)J
    .locals 2
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 277
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return-object v0
.end method

.method killAllProc()V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method killProc(Ljava/lang/String;)V
    .locals 0
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 273
    return-void
.end method

.method logExtraInfo1()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method logExtraInfo2()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method logExtraInfo3()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method logExtraInfo4()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method logExtraInfo6()V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

.method logExtraInfo7()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method logExtraInfo8()V
    .locals 0

    .prologue
    .line 287
    return-void
.end method

.method outputDeviceUsage()V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method printLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 265
    return-void
.end method

.method requestLocationUpdate()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method screenOff()V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method screenOn()V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method setTop(Ljava/lang/String;)V
    .locals 0
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 271
    return-void
.end method

.method setUIMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "uiMode"    # Ljava/lang/String;

    .prologue
    .line 288
    return-void
.end method

.method setup(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 292
    return-void
.end method

.method shutdown()V
    .locals 1

    .prologue
    .line 252
    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/htc/server/HtcReleaseInfoOperator;->flushUsageTime()V

    .line 254
    invoke-virtual {p0}, Lcom/htc/server/HtcReleaseInfoOperator;->flushClientStatistic()V

    .line 256
    :cond_0
    return-void
.end method

.method startProc(IILjava/lang/String;)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "group"    # I
    .param p3, "processName"    # Ljava/lang/String;

    .prologue
    .line 272
    return-void
.end method

.method unregisterLocationUpdate()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method update(Ljava/lang/String;)V
    .locals 0
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/htc/server/HtcReleaseInfoOperator;->update()V

    .line 261
    invoke-super {p0, p1}, Lcom/htc/server/HtcInfoOperator;->update(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method updatePolicy()V
    .locals 0

    .prologue
    .line 289
    return-void
.end method
