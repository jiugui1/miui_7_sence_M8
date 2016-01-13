.class Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;
.super Ljava/lang/Object;
.source "HtcDeviceInfoManager.java"

# interfaces
.implements Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyAlarmListener"
.end annotation


# instance fields
.field private final mAlarmInterval:J

.field private final mHandler:Landroid/os/Handler;

.field private final mIsPrecise:Z

.field private final mIsRepeating:Z

.field private mLastScheduleTime:J

.field private final mLogSubTag:Ljava/lang/String;

.field private final mMessageWhat:I

.field private final mPreferenceKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;ILjava/lang/String;JZZLjava/lang/String;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "messageWhat"    # I
    .param p3, "preferenceKey"    # Ljava/lang/String;
    .param p4, "alarmInterval"    # J
    .param p6, "isRepeating"    # Z
    .param p7, "isPrecise"    # Z
    .param p8, "logSubTag"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mHandler:Landroid/os/Handler;

    .line 149
    iput p2, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mMessageWhat:I

    .line 150
    iput-object p3, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mPreferenceKey:Ljava/lang/String;

    .line 151
    iput-wide p4, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mAlarmInterval:J

    .line 152
    iput-object p8, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mLogSubTag:Ljava/lang/String;

    .line 153
    iput-boolean p6, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mIsRepeating:Z

    .line 154
    iput-boolean p7, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mIsPrecise:Z

    .line 155
    return-void
.end method

.method private getAlarmScheduler()Lcom/htc/server/ulog/AlarmScheduler;
    .locals 2

    .prologue
    .line 199
    invoke-static {}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->getInstance()Lcom/htc/server/ulog/UserBehaviorLoggingService;

    move-result-object v0

    .line 200
    .local v0, "ubls":Lcom/htc/server/ulog/UserBehaviorLoggingService;
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->getAlarmScheduler()Lcom/htc/server/ulog/AlarmScheduler;

    move-result-object v1

    .line 202
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getInitialScheduleInterval(Ljava/lang/String;JJ)J
    .locals 11
    .param p0, "subTag"    # Ljava/lang/String;
    .param p1, "defaultInterval"    # J
    .param p3, "lastScheduleTime"    # J

    .prologue
    .line 239
    const-wide/16 v4, 0x0

    .line 240
    .local v4, "nextScheduleInterval":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 241
    .local v6, "now":J
    const-wide/32 v0, 0xea60

    .line 242
    .local v0, "delayForImmediateAlarm":J
    sub-long v8, v6, p3

    div-long v2, v8, p1

    .line 244
    .local v2, "missingUploadCount":J
    const-wide/16 v8, 0x0

    cmp-long v8, p3, v8

    if-lez v8, :cond_0

    cmp-long v8, p3, v6

    if-lez v8, :cond_2

    .line 245
    :cond_0
    move-wide v4, p1

    .line 251
    :goto_0
    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v8, :cond_1

    const-string v8, "HtcDeviceInfoManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " nextScheduleInterval: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", now: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", lastScheduleTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", interval: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", missing upload count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_1
    return-wide v4

    .line 246
    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_3

    .line 247
    const-wide/32 v4, 0xea60

    goto :goto_0

    .line 249
    :cond_3
    sub-long v8, v6, p3

    rem-long/2addr v8, p1

    sub-long v4, p1, v8

    goto :goto_0
.end method

.method private getLastScheduleTime(J)J
    .locals 2
    .param p1, "defaultTime"    # J

    .prologue
    .line 206
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mPreferenceKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->getLastScheduleTimeFromPreference(J)J

    move-result-wide v0

    .line 209
    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->getLastScheduleTimeFromNonPreference(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private getLastScheduleTimeFromNonPreference(J)J
    .locals 4
    .param p1, "defaultTime"    # J

    .prologue
    .line 222
    iget-wide v0, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mLastScheduleTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 223
    iput-wide p1, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mLastScheduleTime:J

    .line 224
    :cond_0
    iget-wide v0, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mLastScheduleTime:J

    return-wide v0
.end method

.method private getLastScheduleTimeFromPreference(J)J
    .locals 5
    .param p1, "defaultTime"    # J

    .prologue
    .line 213
    invoke-static {}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mPreferenceKey:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 214
    .local v0, "lastScheduleTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 215
    move-wide v0, p1

    .line 216
    invoke-static {}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mPreferenceKey:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_0
    return-wide v0
.end method

.method private setLastScheduleTime(J)V
    .locals 3
    .param p1, "lastScheduleTime"    # J

    .prologue
    .line 228
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mPreferenceKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-static {}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mPreferenceKey:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->setNonPreferenceLastScheduleTime(J)V

    goto :goto_0
.end method

.method private declared-synchronized setNonPreferenceLastScheduleTime(J)V
    .locals 1
    .param p1, "lastScheduleTime"    # J

    .prologue
    .line 235
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mLastScheduleTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onAlarmArrival()V
    .locals 8

    .prologue
    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 160
    .local v0, "currentTime":J
    invoke-direct {p0, v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->getLastScheduleTime(J)J

    move-result-wide v2

    .line 162
    .local v2, "lastScheduleTime":J
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    const-string v4, "HtcDeviceInfoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mLogSubTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] cur = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", last = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", freq = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mAlarmInterval:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->setLastScheduleTime(J)V

    .line 164
    iget-object v4, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mHandler:Landroid/os/Handler;

    iget v5, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mMessageWhat:I

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 165
    return-void
.end method

.method public registerToAlarmScheduler()V
    .locals 14

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->getAlarmScheduler()Lcom/htc/server/ulog/AlarmScheduler;

    move-result-object v0

    .line 172
    .local v0, "alarmScheduler":Lcom/htc/server/ulog/AlarmScheduler;
    if-eqz v0, :cond_0

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 174
    .local v10, "currentTime":J
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mLogSubTag:Ljava/lang/String;

    iget-wide v2, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mAlarmInterval:J

    invoke-direct {p0, v10, v11}, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->getLastScheduleTime(J)J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->getInitialScheduleInterval(Ljava/lang/String;JJ)J

    move-result-wide v12

    .line 175
    .local v12, "initialInterval":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 176
    .local v8, "currentElapsedtime":J
    iget-boolean v1, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mIsRepeating:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mIsPrecise:Z

    if-nez v1, :cond_1

    .line 177
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mAlarmInterval:J

    add-long v5, v8, v12

    iget-object v7, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mLogSubTag:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/server/ulog/AlarmScheduler;->registerInexactRepeatingListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;Landroid/os/Handler;JJLjava/lang/String;)Z

    .line 185
    .end local v8    # "currentElapsedtime":J
    .end local v10    # "currentTime":J
    .end local v12    # "initialInterval":J
    :cond_0
    :goto_0
    return-void

    .line 178
    .restart local v8    # "currentElapsedtime":J
    .restart local v10    # "currentTime":J
    .restart local v12    # "initialInterval":J
    :cond_1
    iget-boolean v1, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mIsRepeating:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mIsPrecise:Z

    if-nez v1, :cond_2

    .line 179
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mAlarmInterval:J

    add-long v5, v8, v12

    iget-object v7, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mLogSubTag:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/server/ulog/AlarmScheduler;->registerInexactListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;Landroid/os/Handler;JJLjava/lang/String;)Z

    goto :goto_0

    .line 180
    :cond_2
    iget-boolean v1, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mIsRepeating:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mIsPrecise:Z

    if-eqz v1, :cond_3

    .line 181
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mAlarmInterval:J

    add-long v5, v8, v12

    iget-object v7, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mLogSubTag:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/server/ulog/AlarmScheduler;->registerExactRepeatingListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;Landroid/os/Handler;JJLjava/lang/String;)Z

    goto :goto_0

    .line 182
    :cond_3
    iget-boolean v1, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mIsRepeating:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mIsPrecise:Z

    if-eqz v1, :cond_0

    .line 183
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mAlarmInterval:J

    add-long v5, v8, v12

    iget-object v7, p0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->mLogSubTag:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/server/ulog/AlarmScheduler;->registerExactListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;Landroid/os/Handler;JJLjava/lang/String;)Z

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->setLastScheduleTime(J)V

    .line 195
    return-void
.end method

.method public unregisterFromAlarmScheduler()V
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->getAlarmScheduler()Lcom/htc/server/ulog/AlarmScheduler;

    move-result-object v0

    .line 189
    .local v0, "alarmScheduler":Lcom/htc/server/ulog/AlarmScheduler;
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0, p0}, Lcom/htc/server/ulog/AlarmScheduler;->unregisterListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;)Z

    .line 191
    :cond_0
    return-void
.end method
