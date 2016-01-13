.class public final Lcom/htc/server/deviceinfo/ActivityLaunchRecord;
.super Ljava/lang/Object;
.source "ActivityLaunchRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;,
        Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoEntry;,
        Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;
    }
.end annotation


# static fields
.field private static final MAX_ELEMENT_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HtcDeviceInfoManager"

.field private static final VERBOSE:Z


# instance fields
.field private final mActiveTimeInfos:Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/server/deviceinfo/HDIException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;

    invoke-direct {v0}, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord;->mActiveTimeInfos:Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;

    return-void
.end method

.method private addULog(Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;)V
    .locals 7
    .param p1, "info"    # Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;

    .prologue
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;->activityName:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p1, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;->resumeTime:J

    sub-long/2addr v3, v5

    iget-boolean v5, p1, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;->cnt_tag:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/server/deviceinfo/ActivityLaunchRecord;->addULog(Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_0
    return-void
.end method

.method private addULog(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 5
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .param p5, "cnt_tag"    # Z

    .prologue
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x15752a00

    cmp-long v2, p3, v2

    if-lez v2, :cond_2

    :cond_0
    const-string v2, "HtcDeviceInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not reasonable."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v1

    .local v1, "uLogData":Lcom/htc/utils/ulog/ReusableULogData;
    const-string v2, "system_server"

    invoke-virtual {v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "activity_launch_history"

    invoke-interface {v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "activity"

    invoke-interface {v2, v3, p1}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "duration"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "package"

    invoke-interface {v2, v3, p2}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    if-eqz p5, :cond_3

    const-string v2, "cnt_tag"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    :cond_3
    invoke-static {v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    invoke-virtual {v1}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "uLogData":Lcom/htc/utils/ulog/ReusableULogData;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_1

    const-string v2, "HtcDeviceInfoManager"

    const-string v3, "AddULog"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public noteAppDied(I)V
    .locals 5
    .param p1, "pid"    # I

    .prologue
    iget-object v4, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord;->mActiveTimeInfos:Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord;->mActiveTimeInfos:Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;

    invoke-virtual {v3}, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;->size()I

    move-result v2

    .local v2, "size":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord;->mActiveTimeInfos:Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;

    invoke-virtual {v3, v0}, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;->getByIndex(I)Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;

    move-result-object v1

    .local v1, "info":Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;
    if-eqz v1, :cond_0

    iget v3, v1, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;->pid:I

    if-ne v3, p1, :cond_0

    invoke-direct {p0, v1}, Lcom/htc/server/deviceinfo/ActivityLaunchRecord;->addULog(Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;)V

    iget-object v3, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord;->mActiveTimeInfos:Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;

    invoke-virtual {v3, v0}, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;->removeByIndex(I)Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1    # "info":Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;
    :cond_1
    monitor-exit v4

    return-void

    .end local v0    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onHandleActivityPaused(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 4
    .param p1, "activity"    # Lcom/android/server/am/HtcWrapActivityRecord;

    .prologue
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord;->mActiveTimeInfos:Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord;->mActiveTimeInfos:Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;

    iget v3, p1, Lcom/android/server/am/HtcWrapActivityRecord;->hashCode:I

    invoke-virtual {v1, v3}, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;->removeByKey(I)Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;

    move-result-object v0

    .local v0, "info":Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;
    invoke-direct {p0, v0}, Lcom/htc/server/deviceinfo/ActivityLaunchRecord;->addULog(Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;)V

    monitor-exit v2

    .end local v0    # "info":Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;
    :cond_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onHandleActivityResumed(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 8
    .param p1, "activity"    # Lcom/android/server/am/HtcWrapActivityRecord;

    .prologue
    if-eqz p1, :cond_0

    iget-object v7, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord;->mActiveTimeInfos:Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;

    monitor-enter v7

    :try_start_0
    new-instance v0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;

    iget v1, p1, Lcom/android/server/am/HtcWrapActivityRecord;->pid:I

    iget-object v2, p1, Lcom/android/server/am/HtcWrapActivityRecord;->activityName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/HtcWrapActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;-><init>(ILjava/lang/String;Ljava/lang/String;JZ)V

    .local v0, "info":Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;
    iget-object v1, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord;->mActiveTimeInfos:Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;

    iget v2, p1, Lcom/android/server/am/HtcWrapActivityRecord;->hashCode:I

    invoke-virtual {v1, v2, v0}, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;->put(ILcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;)Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;

    iget-object v1, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord;->mActiveTimeInfos:Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfoArrayList;->trim(I)Z

    monitor-exit v7

    .end local v0    # "info":Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "no activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
