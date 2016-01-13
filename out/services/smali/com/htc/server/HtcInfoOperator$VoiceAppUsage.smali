.class Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;
.super Ljava/lang/Object;
.source "HtcInfoOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcInfoOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VoiceAppUsage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;
    }
.end annotation


# static fields
.field static final DEFAULT_MEDIA_INSTANCE_HASH_CODE:I


# instance fields
.field private app_map:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;

.field private isPhoneCalling:Z

.field private mOperatorInstance:Lcom/htc/server/HtcInfoOperator;

.field private startTime:J


# direct methods
.method public constructor <init>(Lcom/htc/server/HtcInfoOperator;)V
    .locals 2
    .param p1, "instance"    # Lcom/htc/server/HtcInfoOperator;

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    new-instance v0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;-><init>(Lcom/htc/server/HtcInfoOperator$1;)V

    iput-object v0, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->app_map:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->isPhoneCalling:Z

    .line 253
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    .line 234
    iput-object p1, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->mOperatorInstance:Lcom/htc/server/HtcInfoOperator;

    .line 235
    return-void
.end method


# virtual methods
.method public declared-synchronized isVoiceInUse()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 239
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/htc/server/HtcInfoOperator;->USAGE_TIME_LOG:Z

    if-eqz v2, :cond_0

    .line 240
    iget-object v3, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->mOperatorInstance:Lcom/htc/server/HtcInfoOperator;

    const-string v4, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVoiceInUse, isPhoneCalling: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->isPhoneCalling:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", app_map not empty: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->app_map:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;

    invoke-virtual {v2}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v1

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/htc/server/HtcInfoOperator;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_0
    iget-boolean v2, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->isPhoneCalling:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->app_map:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;

    invoke-virtual {v2}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    monitor-exit p0

    return v0

    :cond_3
    move v2, v0

    .line 240
    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setLastDeviceUseUpdateTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 247
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->mOperatorInstance:Lcom/htc/server/HtcInfoOperator;

    iget-object v0, v0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->mOperatorInstance:Lcom/htc/server/HtcInfoOperator;

    iget-object v0, v0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iput-wide p1, v0, Landroid/app/HtcDeviceInfo;->lastDeviceUseUpdateTime:J

    .line 250
    :cond_0
    return-void
.end method

.method public declared-synchronized start(III)V
    .locals 5
    .param p1, "pid"    # I
    .param p2, "type"    # I
    .param p3, "hashCode"    # I

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/htc/server/HtcInfoOperator;->USAGE_TIME_LOG:Z

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->mOperatorInstance:Lcom/htc/server/HtcInfoOperator;

    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VoiceAppUsage.start] pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hashCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", startTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/HtcInfoOperator;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->app_map:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;->add(III)V

    .line 290
    iget-wide v0, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 291
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    .line 294
    :cond_1
    sget-boolean v0, Lcom/htc/server/HtcInfoOperator;->USAGE_TIME_LOG:Z

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->mOperatorInstance:Lcom/htc/server/HtcInfoOperator;

    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VoiceAppUsage.start] app_map:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->app_map:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/HtcInfoOperator;->printLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :cond_2
    monitor-exit p0

    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startPhoneCall()V
    .locals 5

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->isPhoneCalling:Z

    if-nez v0, :cond_0

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->isPhoneCalling:Z

    .line 273
    iget-wide v0, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 274
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    .line 277
    :cond_0
    sget-boolean v0, Lcom/htc/server/HtcInfoOperator;->USAGE_TIME_LOG:Z

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->mOperatorInstance:Lcom/htc/server/HtcInfoOperator;

    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VoiceAppUsage.startPhoneCall] isPhoneCalling: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->isPhoneCalling:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", startTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/HtcInfoOperator;->printLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :cond_1
    monitor-exit p0

    return-void

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop(III)V
    .locals 11
    .param p1, "pid"    # I
    .param p2, "type"    # I
    .param p3, "hashCode"    # I

    .prologue
    const-wide/16 v9, 0x0

    .line 321
    monitor-enter p0

    :try_start_0
    sget-boolean v4, Lcom/htc/server/HtcInfoOperator;->USAGE_TIME_LOG:Z

    if-eqz v4, :cond_0

    .line 322
    iget-object v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->mOperatorInstance:Lcom/htc/server/HtcInfoOperator;

    const-string v5, "HtcDeviceInfoManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[VoiceAppUsage.stop] pid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", hashCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", startTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", currentTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/server/HtcInfoOperator;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_0
    iget-object v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->app_map:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;

    invoke-virtual {v4, p1, p2, p3}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;->remove(III)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 328
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 329
    .local v2, "time":J
    const-wide/16 v0, 0x0

    .line 331
    .local v0, "duration":J
    invoke-virtual {p0}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->isVoiceInUse()Z

    move-result v4

    if-nez v4, :cond_1

    iget-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    iget-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    cmp-long v4, v4, v9

    if-lez v4, :cond_1

    .line 332
    iget-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    sub-long v0, v2, v4

    .line 333
    iget-object v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->mOperatorInstance:Lcom/htc/server/HtcInfoOperator;

    const-string v5, "stop"

    # invokes: Lcom/htc/server/HtcInfoOperator;->addDeviceUseTime(JLjava/lang/String;)V
    invoke-static {v4, v0, v1, v5}, Lcom/htc/server/HtcInfoOperator;->access$100(Lcom/htc/server/HtcInfoOperator;JLjava/lang/String;)V

    .line 334
    invoke-virtual {p0, v2, v3}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->setLastDeviceUseUpdateTime(J)V

    .line 335
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    .line 338
    .end local v0    # "duration":J
    .end local v2    # "time":J
    :cond_1
    sget-boolean v4, Lcom/htc/server/HtcInfoOperator;->USAGE_TIME_LOG:Z

    if-eqz v4, :cond_2

    .line 339
    iget-object v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->mOperatorInstance:Lcom/htc/server/HtcInfoOperator;

    const-string v5, "HtcDeviceInfoManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[VoiceAppUsage.stop] app_map:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->app_map:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/server/HtcInfoOperator;->printLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :cond_2
    monitor-exit p0

    return-void

    .line 321
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized stopAll()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 344
    monitor-enter p0

    :try_start_0
    sget-boolean v4, Lcom/htc/server/HtcInfoOperator;->USAGE_TIME_LOG:Z

    if-eqz v4, :cond_0

    .line 345
    iget-object v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->mOperatorInstance:Lcom/htc/server/HtcInfoOperator;

    const-string v5, "HtcDeviceInfoManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[VoiceAppUsage.stopAll] startTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/server/HtcInfoOperator;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->isPhoneCalling:Z

    .line 348
    iget-object v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->app_map:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;

    invoke-virtual {v4}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;->clear()V

    .line 350
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 351
    .local v2, "time":J
    const-wide/16 v0, 0x0

    .line 354
    .local v0, "duration":J
    iget-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    iget-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    cmp-long v4, v4, v9

    if-lez v4, :cond_1

    .line 355
    iget-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    sub-long v0, v2, v4

    .line 356
    iget-object v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->mOperatorInstance:Lcom/htc/server/HtcInfoOperator;

    const-string v5, "stopAll"

    # invokes: Lcom/htc/server/HtcInfoOperator;->addDeviceUseTime(JLjava/lang/String;)V
    invoke-static {v4, v0, v1, v5}, Lcom/htc/server/HtcInfoOperator;->access$100(Lcom/htc/server/HtcInfoOperator;JLjava/lang/String;)V

    .line 357
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    .line 360
    :cond_1
    sget-boolean v4, Lcom/htc/server/HtcInfoOperator;->USAGE_TIME_LOG:Z

    if-eqz v4, :cond_2

    .line 361
    iget-object v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->mOperatorInstance:Lcom/htc/server/HtcInfoOperator;

    const-string v5, "HtcDeviceInfoManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[VoiceAppUsage.stopAll] app_map:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->app_map:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/server/HtcInfoOperator;->printLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    :cond_2
    monitor-exit p0

    return-void

    .line 344
    .end local v0    # "duration":J
    .end local v2    # "time":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized stopPhoneCall()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 300
    monitor-enter p0

    :try_start_0
    sget-boolean v4, Lcom/htc/server/HtcInfoOperator;->USAGE_TIME_LOG:Z

    if-eqz v4, :cond_0

    .line 301
    iget-object v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->mOperatorInstance:Lcom/htc/server/HtcInfoOperator;

    const-string v5, "HtcDeviceInfoManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[VoiceAppUsage.stopPhoneCall] startTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/server/HtcInfoOperator;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_0
    iget-boolean v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->isPhoneCalling:Z

    if-eqz v4, :cond_1

    .line 303
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->isPhoneCalling:Z

    .line 305
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 306
    .local v2, "time":J
    const-wide/16 v0, 0x0

    .line 308
    .local v0, "duration":J
    invoke-virtual {p0}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->isVoiceInUse()Z

    move-result v4

    if-nez v4, :cond_1

    iget-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    iget-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    cmp-long v4, v4, v9

    if-lez v4, :cond_1

    .line 309
    iget-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    sub-long v0, v2, v4

    .line 310
    iget-object v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->mOperatorInstance:Lcom/htc/server/HtcInfoOperator;

    const-string v5, "stopPhoneCall"

    # invokes: Lcom/htc/server/HtcInfoOperator;->addDeviceUseTime(JLjava/lang/String;)V
    invoke-static {v4, v0, v1, v5}, Lcom/htc/server/HtcInfoOperator;->access$100(Lcom/htc/server/HtcInfoOperator;JLjava/lang/String;)V

    .line 311
    invoke-virtual {p0, v2, v3}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->setLastDeviceUseUpdateTime(J)V

    .line 312
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    .line 315
    .end local v0    # "duration":J
    .end local v2    # "time":J
    :cond_1
    sget-boolean v4, Lcom/htc/server/HtcInfoOperator;->USAGE_TIME_LOG:Z

    if-eqz v4, :cond_2

    .line 316
    iget-object v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->mOperatorInstance:Lcom/htc/server/HtcInfoOperator;

    const-string v5, "HtcDeviceInfoManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[VoiceAppUsage.stopPhoneCall] startTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/server/HtcInfoOperator;->printLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :cond_2
    monitor-exit p0

    return-void

    .line 300
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized updateTime()V
    .locals 8

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 259
    .local v2, "time":J
    const-wide/16 v0, 0x0

    .line 261
    .local v0, "duration":J
    iget-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->isVoiceInUse()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 262
    iget-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    sub-long v0, v2, v4

    .line 263
    iget-object v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->mOperatorInstance:Lcom/htc/server/HtcInfoOperator;

    const-string v5, "auto update"

    # invokes: Lcom/htc/server/HtcInfoOperator;->addDeviceUseTime(JLjava/lang/String;)V
    invoke-static {v4, v0, v1, v5}, Lcom/htc/server/HtcInfoOperator;->access$100(Lcom/htc/server/HtcInfoOperator;JLjava/lang/String;)V

    .line 264
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :cond_0
    monitor-exit p0

    return-void

    .line 258
    .end local v0    # "duration":J
    .end local v2    # "time":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
