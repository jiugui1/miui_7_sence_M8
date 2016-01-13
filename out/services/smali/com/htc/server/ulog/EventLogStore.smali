.class final Lcom/htc/server/ulog/EventLogStore;
.super Ljava/lang/Object;
.source "EventLogStore.java"

# interfaces
.implements Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;
.implements Lcom/htc/server/ulog/PolicyStore$PolicyListener;
.implements Lcom/htc/server/ulog/SettingObserver$SettingListener;


# static fields
.field private static final LISTENER_TAG:Ljava/lang/String; = "UP"

.field private static final MAX_ULOGDATA_STRING_LENGTH:I = 0x3a98

.field private static final MEM_CAPACITY:I = 0x18000

.field private static final TAG:Ljava/lang/String; = "UserBehaviorLoggingService"


# instance fields
.field private dropboxManager:Landroid/os/DropBoxManager;

.field private mAlarmScheduler:Lcom/htc/server/ulog/AlarmScheduler;

.field private mContext:Landroid/content/Context;

.field private mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

.field private final mExtraUsage:Lcom/htc/server/deviceinfo/ExtraUsageWrapper;

.field private mFeedbackPolicy:Lcom/htc/utils/ulog/UPolicy;

.field private mHandler:Landroid/os/Handler;

.field private mInit:Z

.field private mIsShutdown:Z

.field private final mReportAgentPolicy:Lcom/htc/utils/ulog/UPolicy;

.field private mULogDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/utils/ulog/ULogData;",
            ">;"
        }
    .end annotation
.end field

.field private mULogDataSize:I

.field private mUploadInterval:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/server/ulog/DatabaseHelper;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "dbHelper"    # Lcom/htc/server/ulog/DatabaseHelper;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mULogDataList:Ljava/util/List;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/server/ulog/EventLogStore;->mULogDataSize:I

    .line 47
    iput-object p1, p0, Lcom/htc/server/ulog/EventLogStore;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/htc/server/ulog/EventLogStore;->mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

    .line 49
    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mContext:Landroid/content/Context;

    const-string v1, "dropbox"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    iput-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->dropboxManager:Landroid/os/DropBoxManager;

    .line 50
    new-instance v0, Lcom/htc/utils/ulog/UPolicy;

    const-string v1, "com.htc.feedback"

    invoke-direct {v0, v1}, Lcom/htc/utils/ulog/UPolicy;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mFeedbackPolicy:Lcom/htc/utils/ulog/UPolicy;

    .line 51
    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mExtraUsage:Lcom/htc/server/deviceinfo/ExtraUsageWrapper;

    .line 55
    :goto_0
    new-instance v0, Lcom/htc/utils/ulog/UPolicy;

    const-string v1, "com.htc.reportagent"

    invoke-direct {v0, v1}, Lcom/htc/utils/ulog/UPolicy;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mReportAgentPolicy:Lcom/htc/utils/ulog/UPolicy;

    .line 56
    return-void

    .line 54
    :cond_0
    new-instance v0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;

    iget-object v1, p0, Lcom/htc/server/ulog/EventLogStore;->mContext:Landroid/content/Context;

    const-string v2, "UserBehaviorLoggingService"

    sget-boolean v3, Lcom/htc/server/ulog/Utils;->VERBOSE:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mExtraUsage:Lcom/htc/server/deviceinfo/ExtraUsageWrapper;

    goto :goto_0
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mULogDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/server/ulog/EventLogStore;->mULogDataSize:I

    .line 180
    return-void
.end method

.method private getInitialAlarmTriggerTime()J
    .locals 10

    .prologue
    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 288
    .local v0, "currentTime":J
    invoke-virtual {p0}, Lcom/htc/server/ulog/EventLogStore;->getUploadLogFreq()J

    move-result-wide v6

    .line 289
    .local v6, "uploadLogFreq":J
    invoke-direct {p0, v0, v1}, Lcom/htc/server/ulog/EventLogStore;->getLastTimeOfUploadFromPreference(J)J

    move-result-wide v4

    .line 290
    .local v4, "lastTimeOfUploadUP":J
    const-string v8, "UP"

    invoke-static {v8, v6, v7, v4, v5}, Lcom/htc/server/ulog/Utils;->getInitialScheduleInterval(Ljava/lang/String;JJ)J

    move-result-wide v2

    .line 291
    .local v2, "initialInterval":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long/2addr v8, v2

    return-wide v8
.end method

.method private getLastTimeOfUploadFromPreference(J)J
    .locals 4
    .param p1, "currentTime"    # J

    .prologue
    .line 237
    invoke-static {}, Lcom/htc/server/ulog/UserBehaviorPreference;->getInstance()Lcom/htc/server/ulog/UserBehaviorPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/server/ulog/UserBehaviorPreference;->getLastTimeOfUpload()J

    move-result-wide v0

    .line 238
    .local v0, "lastTimeOfUploadUP":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 239
    move-wide v0, p1

    .line 240
    invoke-static {}, Lcom/htc/server/ulog/UserBehaviorPreference;->getInstance()Lcom/htc/server/ulog/UserBehaviorPreference;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/htc/server/ulog/UserBehaviorPreference;->setLastTimeOfUpload(J)V

    .line 242
    :cond_0
    return-wide v0
.end method

.method private declared-synchronized initialize()V
    .locals 2

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/server/ulog/EventLogStore;->mInit:Z

    if-nez v0, :cond_0

    .line 296
    invoke-static {}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->getInstance()Lcom/htc/server/ulog/UserBehaviorLoggingService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->getAlarmScheduler()Lcom/htc/server/ulog/AlarmScheduler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mAlarmScheduler:Lcom/htc/server/ulog/AlarmScheduler;

    .line 297
    invoke-static {}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->getInstance()Lcom/htc/server/ulog/UserBehaviorLoggingService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->getBGHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mHandler:Landroid/os/Handler;

    .line 298
    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mAlarmScheduler:Lcom/htc/server/ulog/AlarmScheduler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/server/ulog/EventLogStore;->mInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 301
    :cond_1
    :try_start_1
    const-string v0, "UserBehaviorLoggingService"

    const-string v1, "fail to initialize"

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static isExtraUsageEnabled()Z
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->getUBSwitch()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "enableUB":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private logExtraInfo5(Lcom/htc/utils/ulog/ULogData;)V
    .locals 1
    .param p1, "ulogdata"    # Lcom/htc/utils/ulog/ULogData;

    .prologue
    .line 78
    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/server/ulog/EventLogStore;->isExtraUsageEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mExtraUsage:Lcom/htc/server/deviceinfo/ExtraUsageWrapper;

    if-nez v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mExtraUsage:Lcom/htc/server/deviceinfo/ExtraUsageWrapper;

    invoke-virtual {v0, p1}, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->logExtraInfo5(Lcom/htc/utils/ulog/ULogData;)V

    goto :goto_0
.end method


# virtual methods
.method public addLog(Lcom/htc/utils/ulog/ParcelableULogData;)V
    .locals 3
    .param p1, "ulogdata"    # Lcom/htc/utils/ulog/ParcelableULogData;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/server/ulog/EventLogStore;->logExtraInfo5(Lcom/htc/utils/ulog/ULogData;)V

    .line 60
    invoke-virtual {p1}, Lcom/htc/utils/ulog/ParcelableULogData;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/utils/ulog/ParcelableULogData;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/utils/ulog/UPolicy;->canLogUserProfiling(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    invoke-virtual {p1}, Lcom/htc/utils/ulog/ParcelableULogData;->length()I

    move-result v0

    const/16 v1, 0x3a98

    if-ge v0, v1, :cond_1

    .line 62
    iget v0, p0, Lcom/htc/server/ulog/EventLogStore;->mULogDataSize:I

    invoke-virtual {p1}, Lcom/htc/utils/ulog/ParcelableULogData;->size()I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x18000

    if-le v0, v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/htc/server/ulog/EventLogStore;->flush()V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mULogDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget v0, p0, Lcom/htc/server/ulog/EventLogStore;->mULogDataSize:I

    invoke-virtual {p1}, Lcom/htc/utils/ulog/ParcelableULogData;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/server/ulog/EventLogStore;->mULogDataSize:I

    .line 67
    const-string v0, "UserBehaviorLoggingService"

    invoke-virtual {p1}, Lcom/htc/utils/ulog/ParcelableULogData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Utils;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 69
    :cond_1
    const-string v0, "UserBehaviorLoggingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String length of appid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/utils/ulog/ParcelableULogData;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/utils/ulog/ParcelableULogData;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is abnormal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/utils/ulog/ParcelableULogData;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_2
    const-string v0, "UserBehaviorLoggingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EventLogStore::addLog] The policy is disabled. AppId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/utils/ulog/ParcelableULogData;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/utils/ulog/ParcelableULogData;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public flush()V
    .locals 7

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mULogDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mULogDataList:Ljava/util/List;

    invoke-static {v0}, Lcom/htc/server/ulog/Utils;->toBytesEx(Ljava/util/List;)[B

    move-result-object v2

    .line 152
    .local v2, "buffer":[B
    if-eqz v2, :cond_1

    .line 154
    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

    const-string v1, "HTC_ULOGDATA"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/htc/server/ulog/DatabaseHelper;->addEventQueueRecord(Ljava/lang/String;J)V

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->dropboxManager:Landroid/os/DropBoxManager;

    const-string v1, "HTC_ULOGDATA"

    const/16 v3, 0x8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/os/DropBoxManager;->addData(Ljava/lang/String;[BIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    const-string v0, "UserBehaviorLoggingService"

    const-string v1, "[flush4CS] flush to dropbox"

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_1
    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mULogDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/server/ulog/EventLogStore;->mULogDataSize:I

    .line 171
    .end local v2    # "buffer":[B
    :cond_0
    return-void

    .line 158
    .restart local v2    # "buffer":[B
    :catch_0
    move-exception v6

    .line 159
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "UserBehaviorLoggingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[flush4CS] error message: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v0, "UserBehaviorLoggingService"

    const-string v1, "[flush4CS] Not flush to dropbox"

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getUploadLogFreq()J
    .locals 8

    .prologue
    .line 183
    const/high16 v1, 0x41c00000    # 24.0f

    .line 184
    .local v1, "DEFAULT_FREQ_OF_USER_ROM":F
    const/high16 v0, 0x40c00000    # 6.0f

    .line 185
    .local v0, "DEFAULT_FREQ_OF_DEBUG_ROM":F
    const/4 v3, 0x0

    .line 186
    .local v3, "freq":F
    iget-object v5, p0, Lcom/htc/server/ulog/EventLogStore;->mReportAgentPolicy:Lcom/htc/utils/ulog/UPolicy;

    const-string v6, "log"

    const-string v7, "freq"

    invoke-virtual {v5, v6, v7}, Lcom/htc/utils/ulog/UPolicy;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, "strFreq":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 190
    :try_start_0
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 196
    :cond_0
    :goto_0
    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v5

    if-nez v5, :cond_3

    .line 198
    const/4 v5, 0x0

    cmpg-float v5, v3, v5

    if-lez v5, :cond_1

    const/high16 v5, 0x40c00000    # 6.0f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_2

    .line 199
    :cond_1
    const/high16 v3, 0x40c00000    # 6.0f

    .line 207
    :cond_2
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getUploadLogFreq] policy freq : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", returned freq : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;)V

    .line 209
    const/high16 v5, 0x45610000    # 3600.0f

    mul-float/2addr v5, v3

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v6

    float-to-long v5, v5

    return-wide v5

    .line 191
    :catch_0
    move-exception v2

    .line 192
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 203
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v3, v5

    if-gez v5, :cond_2

    .line 204
    const/high16 v3, 0x41c00000    # 24.0f

    goto :goto_1
.end method

.method public onAlarmArrival()V
    .locals 7

    .prologue
    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 215
    .local v0, "currentTime":J
    invoke-direct {p0, v0, v1}, Lcom/htc/server/ulog/EventLogStore;->getLastTimeOfUploadFromPreference(J)J

    move-result-wide v2

    .line 217
    .local v2, "lastTimeOfUpload":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[UP] cur = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", last = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/htc/server/ulog/UserBehaviorPreference;->getInstance()Lcom/htc/server/ulog/UserBehaviorPreference;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/htc/server/ulog/UserBehaviorPreference;->setLastTimeOfUpload(J)V

    .line 219
    invoke-virtual {p0}, Lcom/htc/server/ulog/EventLogStore;->flush()V

    .line 220
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/htc/server/ulog/EventLogStore;->upload(ILjava/lang/String;)V

    .line 221
    return-void
.end method

.method public onBootUp()V
    .locals 8

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/htc/server/ulog/EventLogStore;->initialize()V

    .line 226
    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mAlarmScheduler:Lcom/htc/server/ulog/AlarmScheduler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/htc/server/ulog/EventLogStore;->getUploadLogFreq()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/server/ulog/EventLogStore;->mUploadInterval:J

    .line 231
    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/server/ulog/Utils;->isUserProfilingSettingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mAlarmScheduler:Lcom/htc/server/ulog/AlarmScheduler;

    iget-object v2, p0, Lcom/htc/server/ulog/EventLogStore;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/htc/server/ulog/EventLogStore;->mUploadInterval:J

    invoke-direct {p0}, Lcom/htc/server/ulog/EventLogStore;->getInitialAlarmTriggerTime()J

    move-result-wide v5

    const-string v7, "UP"

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/server/ulog/AlarmScheduler;->registerInexactRepeatingListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;Landroid/os/Handler;JJLjava/lang/String;)Z

    goto :goto_0
.end method

.method public onPolicyChanged(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/htc/server/ulog/EventLogStore;->initialize()V

    .line 248
    const-string v0, "UserBehaviorLoggingService"

    const-string v1, "[onPolicyChanged] begin"

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/server/ulog/Utils;->isUserProfilingSettingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v0

    if-nez v0, :cond_2

    .line 250
    :cond_0
    const-string v0, "isSIE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 251
    .local v8, "isSIE":Z
    invoke-virtual {p0}, Lcom/htc/server/ulog/EventLogStore;->getUploadLogFreq()J

    move-result-wide v9

    .line 252
    .local v9, "uploadLogFreq":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onPolicyChanged] oobe is done! isSIE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", upload freq : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;)V

    .line 254
    if-nez v8, :cond_1

    iget-wide v0, p0, Lcom/htc/server/ulog/EventLogStore;->mUploadInterval:J

    cmp-long v0, v9, v0

    if-eqz v0, :cond_2

    .line 255
    :cond_1
    iput-wide v9, p0, Lcom/htc/server/ulog/EventLogStore;->mUploadInterval:J

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onPolicyProvisioned] upload interval : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/server/ulog/EventLogStore;->mUploadInterval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mAlarmScheduler:Lcom/htc/server/ulog/AlarmScheduler;

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mAlarmScheduler:Lcom/htc/server/ulog/AlarmScheduler;

    invoke-virtual {v0, p0}, Lcom/htc/server/ulog/AlarmScheduler;->unregisterListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;)Z

    .line 259
    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mAlarmScheduler:Lcom/htc/server/ulog/AlarmScheduler;

    iget-object v2, p0, Lcom/htc/server/ulog/EventLogStore;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/htc/server/ulog/EventLogStore;->mUploadInterval:J

    invoke-direct {p0}, Lcom/htc/server/ulog/EventLogStore;->getInitialAlarmTriggerTime()J

    move-result-wide v5

    const-string v7, "UP"

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/server/ulog/AlarmScheduler;->registerInexactRepeatingListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;Landroid/os/Handler;JJLjava/lang/String;)Z

    .line 263
    .end local v8    # "isSIE":Z
    .end local v9    # "uploadLogFreq":J
    :cond_2
    return-void
.end method

.method public onShutdown()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/server/ulog/EventLogStore;->mIsShutdown:Z

    .line 175
    return-void
.end method

.method public onTellHTCSettingChanged(I)V
    .locals 8
    .param p1, "type"    # I

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/htc/server/ulog/EventLogStore;->initialize()V

    .line 269
    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mAlarmScheduler:Lcom/htc/server/ulog/AlarmScheduler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/server/ulog/Utils;->isUserProfilingSettingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mAlarmScheduler:Lcom/htc/server/ulog/AlarmScheduler;

    invoke-virtual {v0, p0}, Lcom/htc/server/ulog/AlarmScheduler;->unregisterListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;)Z

    .line 277
    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mAlarmScheduler:Lcom/htc/server/ulog/AlarmScheduler;

    iget-object v2, p0, Lcom/htc/server/ulog/EventLogStore;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/htc/server/ulog/EventLogStore;->getUploadLogFreq()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/htc/server/ulog/EventLogStore;->getInitialAlarmTriggerTime()J

    move-result-wide v5

    const-string v7, "UP"

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/server/ulog/AlarmScheduler;->registerInexactRepeatingListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;Landroid/os/Handler;JJLjava/lang/String;)Z

    goto :goto_0

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mAlarmScheduler:Lcom/htc/server/ulog/AlarmScheduler;

    invoke-virtual {v0, p0}, Lcom/htc/server/ulog/AlarmScheduler;->unregisterListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;)Z

    goto :goto_0
.end method

.method public upload(ILjava/lang/String;)V
    .locals 13
    .param p1, "type"    # I
    .param p2, "uniqueMsg"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    .line 95
    iget-boolean v7, p0, Lcom/htc/server/ulog/EventLogStore;->mIsShutdown:Z

    if-eqz v7, :cond_0

    .line 144
    :goto_0
    return-void

    .line 97
    :cond_0
    const/4 v1, 0x0

    .line 100
    .local v1, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v7, p0, Lcom/htc/server/ulog/EventLogStore;->mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

    invoke-virtual {v7}, Lcom/htc/server/ulog/DatabaseHelper;->getEventQueueRecords()Landroid/database/Cursor;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_4

    .line 103
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 104
    .local v2, "count":I
    if-lez v2, :cond_4

    .line 105
    const/4 v4, 0x0

    .line 106
    .local v4, "i":I
    new-array v5, v2, [Ljava/lang/String;

    .line 107
    .local v5, "tags":[Ljava/lang/String;
    new-array v6, v2, [J

    .line 108
    .local v6, "times":[J
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 109
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_1

    .line 110
    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    .line 111
    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v6, v4

    .line 112
    const-string v7, "UserBehaviorLoggingService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[User Profiling Log] sync "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-wide v9, v6, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_6

    .line 117
    :cond_1
    const-string v7, "UserBehaviorLoggingService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " trigger type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "unique_msg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.htc.intent.action.USER_PROFILING"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v7, "fromDropBox"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    const-string v7, "tag"

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v7, "time"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 122
    const-string v7, "msg"

    const-string v8, "Sync user behavior logs"

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    if-ne p1, v11, :cond_7

    .line 124
    const-string v7, "triggerType"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    :cond_2
    :goto_2
    if-eqz p2, :cond_3

    .line 128
    const-string v7, "unique_msg"

    invoke-virtual {v0, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    :cond_3
    iget-object v7, p0, Lcom/htc/server/ulog/EventLogStore;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v5    # "tags":[Ljava/lang/String;
    .end local v6    # "times":[J
    :cond_4
    if-eqz v1, :cond_5

    .line 138
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 143
    :cond_5
    :goto_3
    iget-object v7, p0, Lcom/htc/server/ulog/EventLogStore;->mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

    const-string v8, "HTC_ULOGDATA"

    invoke-virtual {v7, v8}, Lcom/htc/server/ulog/DatabaseHelper;->clearEventQueueRecords(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    .restart local v2    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "tags":[Ljava/lang/String;
    .restart local v6    # "times":[J
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 125
    .restart local v0    # "broadcastIntent":Landroid/content/Intent;
    :cond_7
    if-ne p1, v12, :cond_2

    .line 126
    :try_start_2
    const-string v7, "triggerType"

    const/4 v8, 0x3

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 133
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v5    # "tags":[Ljava/lang/String;
    .end local v6    # "times":[J
    :catch_0
    move-exception v3

    .line 134
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    if-eqz v1, :cond_5

    .line 138
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 139
    :catch_1
    move-exception v3

    .line 140
    const-string v7, "UserBehaviorLoggingService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[upload] Closing Cursor Exception, Error msg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-static {v7, v8}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 136
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 137
    if-eqz v1, :cond_8

    .line 138
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 136
    :cond_8
    :goto_5
    throw v7

    .line 139
    :catch_2
    move-exception v3

    .line 140
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v8, "UserBehaviorLoggingService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[upload] Closing Cursor Exception, Error msg: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 139
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 140
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v7, "UserBehaviorLoggingService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[upload] Closing Cursor Exception, Error msg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4
.end method
