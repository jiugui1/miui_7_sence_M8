.class abstract Lcom/htc/server/HtcInfoOperator;
.super Ljava/lang/Object;
.source "HtcInfoOperator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcInfoOperator$1;,
        Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static SETTING_SCREEN_OFF_TIMEOUT:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "HtcDeviceInfoManager"

.field static final USAGE_TIME_LOG:Z

.field static final VERBOSE:Z


# instance fields
.field mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

.field mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

.field mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

.field mVoiceAppUsage:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 25
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/server/HtcInfoOperator;->DEBUG:Z

    .line 26
    const-string v0, "persist.deviceinfo.verbose"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/server/HtcInfoOperator;->VERBOSE:Z

    .line 29
    const-string v0, "deviceinfo.usage_time_log"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    sput-boolean v1, Lcom/htc/server/HtcInfoOperator;->USAGE_TIME_LOG:Z

    return-void

    :cond_0
    move v0, v2

    .line 26
    goto :goto_0

    :cond_1
    move v1, v2

    .line 29
    goto :goto_1
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 38
    iput-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 39
    iput-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 40
    iput-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mVoiceAppUsage:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    .line 46
    new-instance v0, Landroid/app/HtcDeviceInfo;

    invoke-direct {v0}, Landroid/app/HtcDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 47
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    const-string v1, "ro.build.changelist"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/HtcDeviceInfo;->changeListNo:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    const/4 v1, 0x0

    iput v1, v0, Landroid/app/HtcDeviceInfo;->simState:I

    .line 51
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/HtcDeviceInfo;->lastDeviceAliveUpdateTime:J

    .line 54
    new-instance v0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    invoke-direct {v0, p0}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;-><init>(Lcom/htc/server/HtcInfoOperator;)V

    iput-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mVoiceAppUsage:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    .line 55
    return-void
.end method

.method static synthetic access$100(Lcom/htc/server/HtcInfoOperator;JLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/HtcInfoOperator;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/server/HtcInfoOperator;->addDeviceUseTime(JLjava/lang/String;)V

    return-void
.end method

.method private addDeviceUseTime(JLjava/lang/String;)V
    .locals 4
    .param p1, "duration"    # J
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v1, v0, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    .line 368
    sget-boolean v0, Lcom/htc/server/HtcInfoOperator;->USAGE_TIME_LOG:Z

    if-eqz v0, :cond_0

    .line 369
    const-string v0, "HtcDeviceInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDeviceUseTime, duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", deviceUseTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v2, v2, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/server/HtcInfoOperator;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_0
    return-void
.end method


# virtual methods
.method abstract addANR(Ljava/lang/String;)V
.end method

.method abstract addCrash(Ljava/lang/String;)V
.end method

.method abstract addKernelCrash()V
.end method

.method abstract addRadioCrash()V
.end method

.method abstract addSentErrorCount(Landroid/content/Intent;)V
.end method

.method abstract addSystemCrash()V
.end method

.method appDied(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 410
    sget-boolean v1, Lcom/htc/server/HtcInfoOperator;->USAGE_TIME_LOG:Z

    if-eqz v1, :cond_0

    .line 411
    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "APP_DIED"

    invoke-virtual {p0, v1, v2}, Lcom/htc/server/HtcInfoOperator;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/htc/server/HtcInfoOperator;->mVoiceAppUsage:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    if-nez v1, :cond_2

    .line 424
    :cond_1
    :goto_0
    return-void

    .line 417
    :cond_2
    if-eqz p1, :cond_1

    .line 420
    const-string v1, "pid"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 421
    .local v0, "pid":I
    if-eq v0, v3, :cond_1

    .line 422
    iget-object v1, p0, Lcom/htc/server/HtcInfoOperator;->mVoiceAppUsage:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->stop(III)V

    goto :goto_0
.end method

.method deserilizeFromFile(Ljava/io/File;)Landroid/app/HtcDeviceInfo;
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, "tmp":Landroid/app/HtcDeviceInfo;
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/HtcDeviceInfo;->deserializeFromFile(Ljava/lang/String;)Landroid/app/HtcDeviceInfo;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_0

    .line 62
    iget-object v2, v1, Landroid/app/HtcDeviceInfo;->changeListNo:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v3, v3, Landroid/app/HtcDeviceInfo;->changeListNo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    invoke-virtual {v1}, Landroid/app/HtcDeviceInfo;->reset()V

    .line 65
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    return-object v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "HtcDeviceInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method abstract flush()V
.end method

.method abstract flushClientStatistic()V
.end method

.method abstract flushUsageTime()V
.end method

.method abstract forceOutput()V
.end method

.method abstract getAppAliveTime(Ljava/lang/String;)J
.end method

.method getDeviceAliveTime()J
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v0, v0, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    return-wide v0
.end method

.method getDeviceInfo()Landroid/app/HtcDeviceInfo;
    .locals 2

    .prologue
    .line 127
    iget-object v1, p0, Lcom/htc/server/HtcInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v0}, Landroid/app/HtcDeviceInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo;

    monitor-exit v1

    return-object v0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method abstract getLocation()Landroid/location/Location;
.end method

.method getVoiceAppUsage()Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mVoiceAppUsage:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    return-object v0
.end method

.method abstract killAllProc()V
.end method

.method abstract killProc(Ljava/lang/String;)V
.end method

.method abstract logExtraInfo1()V
.end method

.method abstract logExtraInfo2()V
.end method

.method abstract logExtraInfo3()V
.end method

.method abstract logExtraInfo4()V
.end method

.method abstract logExtraInfo6()V
.end method

.method abstract logExtraInfo7()V
.end method

.method abstract logExtraInfo8()V
.end method

.method abstract outputDeviceUsage()V
.end method

.method abstract printLog(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method abstract requestLocationUpdate()V
.end method

.method reset()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    const-string v1, "ro.build.changelist"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/HtcDeviceInfo;->changeListNo:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    const/4 v1, 0x0

    iput v1, v0, Landroid/app/HtcDeviceInfo;->simState:I

    .line 135
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/HtcDeviceInfo;->lastDeviceAliveUpdateTime:J

    .line 136
    return-void
.end method

.method abstract screenOff()V
.end method

.method abstract screenOn()V
.end method

.method setScreenOffTimeout(J)V
    .locals 0
    .param p1, "timeout"    # J

    .prologue
    .line 76
    sput-wide p1, Lcom/htc/server/HtcInfoOperator;->SETTING_SCREEN_OFF_TIMEOUT:J

    .line 77
    return-void
.end method

.method abstract setTop(Ljava/lang/String;)V
.end method

.method abstract setUIMode(Ljava/lang/String;)V
.end method

.method abstract setup(Landroid/os/Looper;)V
.end method

.method abstract shutdown()V
.end method

.method startPhoneCall()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mVoiceAppUsage:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    if-nez v0, :cond_0

    .line 430
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mVoiceAppUsage:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    invoke-virtual {v0}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startPhoneCall()V

    goto :goto_0
.end method

.method abstract startProc(IILjava/lang/String;)V
.end method

.method stopPhoneCall()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mVoiceAppUsage:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    if-nez v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mVoiceAppUsage:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    invoke-virtual {v0}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->stopPhoneCall()V

    goto :goto_0
.end method

.method abstract unregisterLocationUpdate()V
.end method

.method update(Ljava/lang/String;)V
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mVoiceAppUsage:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mVoiceAppUsage:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    invoke-virtual {v0}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->updateTime()V

    .line 122
    :cond_0
    return-void
.end method

.method abstract updatePolicy()V
.end method

.method userActivity(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v9, 0x0

    .line 378
    iget-object v6, p0, Lcom/htc/server/HtcInfoOperator;->mVoiceAppUsage:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    if-nez v6, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    if-eqz p1, :cond_0

    .line 384
    const-string v6, "time"

    const-wide/16 v7, -0x1

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 385
    .local v4, "time":J
    iget-object v6, p0, Lcom/htc/server/HtcInfoOperator;->mVoiceAppUsage:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    invoke-virtual {v6}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->isVoiceInUse()Z

    move-result v6

    if-nez v6, :cond_4

    .line 386
    iget-object v6, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v2, v6, Landroid/app/HtcDeviceInfo;->lastDeviceUseUpdateTime:J

    .line 387
    .local v2, "last_time":J
    const-wide/16 v0, 0x0

    .line 388
    .local v0, "duration":J
    cmp-long v6, v4, v9

    if-lez v6, :cond_2

    cmp-long v6, v2, v9

    if-lez v6, :cond_2

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    .line 389
    sub-long v0, v4, v2

    .line 390
    sget-wide v6, Lcom/htc/server/HtcInfoOperator;->SETTING_SCREEN_OFF_TIMEOUT:J

    cmp-long v6, v0, v6

    if-gtz v6, :cond_3

    .line 391
    const-string v6, "user activity"

    invoke-direct {p0, v0, v1, v6}, Lcom/htc/server/HtcInfoOperator;->addDeviceUseTime(JLjava/lang/String;)V

    .line 406
    .end local v0    # "duration":J
    .end local v2    # "last_time":J
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iput-wide v4, v6, Landroid/app/HtcDeviceInfo;->lastDeviceUseUpdateTime:J

    goto :goto_0

    .line 394
    .restart local v0    # "duration":J
    .restart local v2    # "last_time":J
    :cond_3
    sget-boolean v6, Lcom/htc/server/HtcInfoOperator;->USAGE_TIME_LOG:Z

    if-eqz v6, :cond_2

    .line 395
    const-string v6, "HtcDeviceInfoManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "userActivity, over max duration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lcom/htc/server/HtcInfoOperator;->SETTING_SCREEN_OFF_TIMEOUT:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/htc/server/HtcInfoOperator;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 402
    .end local v0    # "duration":J
    .end local v2    # "last_time":J
    :cond_4
    sget-boolean v6, Lcom/htc/server/HtcInfoOperator;->USAGE_TIME_LOG:Z

    if-eqz v6, :cond_2

    .line 403
    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "userActivity, voiceInUse!"

    invoke-virtual {p0, v6, v7}, Lcom/htc/server/HtcInfoOperator;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
