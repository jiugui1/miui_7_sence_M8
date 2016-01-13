.class Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;
.super Ljava/lang/Object;
.source "HtcDeviceInfoManager.java"

# interfaces
.implements Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HtcCommonInfoScheduler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler$DeviceInfoManagerHandler;
    }
.end annotation


# instance fields
.field private UPDATE_THRESHOLD:J

.field private locationUpdateTime:J

.field private final mClientInfoAL:Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;

.field protected mContext:Landroid/content/Context;

.field private final mDelayFlushAL:Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;

.field protected final mHandler:Landroid/os/Handler;

.field protected final mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

.field private mIsWaitingDelayFlushAlarm:Z

.field protected final mPowerManager:Landroid/os/PowerManager;

.field protected mReceiverHandler:Landroid/os/Handler;

.field private final mThread:Landroid/os/HandlerThread;

.field private final mUsageTimeAL:Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->locationUpdateTime:J

    const-wide/32 v0, 0x6cf2a0

    iput-wide v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->UPDATE_THRESHOLD:J

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UDove_3"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    .local v10, "looper":Landroid/os/Looper;
    if-eqz v10, :cond_1

    new-instance v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler$DeviceInfoManagerHandler;

    invoke-direct {v0, p0, v10}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler$DeviceInfoManagerHandler;-><init>(Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    :goto_0
    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/htc/server/ulog/ReceiverThreadUtil;->getInstance()Lcom/htc/server/ulog/ReceiverThreadUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/server/ulog/ReceiverThreadUtil;->createReceiverHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mReceiverHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mReceiverHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string v0, "HtcDeviceInfoManager"

    const-string v1, "HDIM mReceiverHandler uses main thread to handle messages"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mReceiverHandler:Landroid/os/Handler;

    :cond_0
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    .local v9, "b":Landroid/os/IBinder;
    invoke-static {v9}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v11

    .local v11, "service":Landroid/os/IPowerManager;
    new-instance v0, Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v11, v2}, Landroid/os/PowerManager;-><init>(Landroid/content/Context;Landroid/os/IPowerManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->createInfoOperators(Landroid/content/Context;)[Lcom/htc/server/HtcInfoOperator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    new-instance v0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    sget-object v3, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->KEY_LAST_TIME_OF_CLIENT_STAT_LOG_OUTPUT:Ljava/lang/String;

    # getter for: Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_CLIENT_INFO_INTERVAL:J
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->access$400()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "ClientInfoAL"

    invoke-direct/range {v0 .. v8}, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;-><init>(Landroid/os/Handler;ILjava/lang/String;JZZLjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mClientInfoAL:Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;

    new-instance v0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/htc/server/deviceinfo/HtcDeviceInfoPreference;->KEY_LAST_TIME_OF_USE_TIME_LOG_OUTPUT:Ljava/lang/String;

    # getter for: Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_USAGE_TIME_INTERVAL:J
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->access$500()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "UsageTimeAL"

    invoke-direct/range {v0 .. v8}, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;-><init>(Landroid/os/Handler;ILjava/lang/String;JZZLjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mUsageTimeAL:Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;

    new-instance v0, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x20

    const/4 v3, 0x0

    const-wide/32 v4, 0xea60

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "DelayFlushAL"

    invoke-direct/range {v0 .. v8}, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;-><init>(Landroid/os/Handler;ILjava/lang/String;JZZLjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mDelayFlushAL:Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .end local v9    # "b":Landroid/os/IBinder;
    .end local v11    # "service":Landroid/os/IPowerManager;
    :cond_1
    const-string v0, "HtcDeviceInfoManager"

    const-string v1, "Attention!! DeviceInfoManagerHandler uses main thread to handle task."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler$DeviceInfoManagerHandler;

    invoke-direct {v0, p0}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler$DeviceInfoManagerHandler;-><init>(Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;)V

    iput-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    goto/16 :goto_0
.end method

.method private doFlush()V
    .locals 8

    .prologue
    iget-object v5, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mPowerManager:Landroid/os/PowerManager;

    const/4 v6, 0x1

    const-string v7, "HtcDeviceInfoWakeLock_5"

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    .local v4, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .local v0, "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v3}, Lcom/htc/server/HtcInfoOperator;->flush()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "op":Lcom/htc/server/HtcInfoOperator;
    :cond_0
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method


# virtual methods
.method public addANR(Ljava/lang/String;)V
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public addCrash(Ljava/lang/String;)V
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public addSysCrash()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public appDied(I)V
    .locals 4
    .param p1, "pid"    # I

    .prologue
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "pid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected createInfoOperators(Landroid/content/Context;)[Lcom/htc/server/HtcInfoOperator;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/htc/server/HtcInfoOperator;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/server/HtcReleaseInfoOperator;

    invoke-direct {v2}, Lcom/htc/server/HtcReleaseInfoOperator;-><init>()V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public flush()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public killAllProcess()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public killProcess(Ljava/lang/String;)V
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected onHandleMessage(Landroid/os/Message;)V
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    packed-switch v15, :pswitch_data_0

    :pswitch_0
    const-string v15, "HtcDeviceInfoManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[onHandleMessage] Unhandled message id: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v15

    if-nez v15, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->locationUpdateTime:J

    move-wide/from16 v17, v0

    sub-long v12, v15, v17

    .local v12, "updateDiffTime":J
    const-string v15, "HtcDeviceInfoManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Update diff time: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mIsWaitingDelayFlushAlarm:Z

    if-nez v15, :cond_2

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->UPDATE_THRESHOLD:J

    cmp-long v15, v12, v15

    if-lez v15, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .local v3, "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v7, v3

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_1

    aget-object v8, v3, v5

    .local v8, "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v8}, Lcom/htc/server/HtcInfoOperator;->requestLocationUpdate()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->locationUpdateTime:J

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mDelayFlushAL:Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;

    invoke-virtual {v15}, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->reset()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mDelayFlushAL:Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;

    invoke-virtual {v15}, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->registerToAlarmScheduler()V

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mIsWaitingDelayFlushAlarm:Z

    goto :goto_0

    .end local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->doFlush()V

    goto :goto_0

    .end local v12    # "updateDiffTime":J
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->doFlush()V

    goto :goto_0

    :pswitch_2
    # getter for: Lcom/htc/server/HtcDeviceInfoManager;->DEBUG:Z
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v15

    if-eqz v15, :cond_4

    const-string v15, "HtcDeviceInfoManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "DELAY_FLUSH, Sense: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    # getter for: Lcom/htc/server/HtcDeviceInfoManager;->sSense:D
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$100()D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v15

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_2
    if-ge v5, v7, :cond_5

    aget-object v8, v3, v5

    .restart local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v8}, Lcom/htc/server/HtcInfoOperator;->unregisterLocationUpdate()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->doFlush()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mDelayFlushAL:Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;

    invoke-virtual {v15}, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->unregisterFromAlarmScheduler()V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mIsWaitingDelayFlushAlarm:Z

    goto/16 :goto_0

    .end local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    :pswitch_3
    # getter for: Lcom/htc/server/HtcDeviceInfoManager;->DEBUG:Z
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v15

    if-eqz v15, :cond_6

    const-string v15, "HtcDeviceInfoManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SYNCHRONIZED_FLUSH, Sense: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    # getter for: Lcom/htc/server/HtcDeviceInfoManager;->sSense:D
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$100()D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mPowerManager:Landroid/os/PowerManager;

    const/16 v16, 0x1

    const-string v17, "HtcDeviceInfoWakeLock_5"

    invoke-virtual/range {v15 .. v17}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    .local v14, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_3
    if-ge v5, v7, :cond_7

    aget-object v8, v3, v5

    .restart local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v8}, Lcom/htc/server/HtcInfoOperator;->forceOutput()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .end local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    :cond_7
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .end local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v14    # "wl":Landroid/os/PowerManager$WakeLock;
    :pswitch_4
    # getter for: Lcom/htc/server/HtcDeviceInfoManager;->DEBUG:Z
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v15

    if-eqz v15, :cond_8

    const-string v15, "HtcDeviceInfoManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SHUTDOWN, Sense: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    # getter for: Lcom/htc/server/HtcDeviceInfoManager;->sSense:D
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$100()D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mPowerManager:Landroid/os/PowerManager;

    const/16 v16, 0x1

    const-string v17, "HtcDeviceInfoWakeLock_5"

    invoke-virtual/range {v15 .. v17}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    .restart local v14    # "wl":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_4
    if-ge v5, v7, :cond_9

    aget-object v8, v3, v5

    .restart local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v8}, Lcom/htc/server/HtcInfoOperator;->shutdown()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .end local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    :cond_9
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .end local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v14    # "wl":Landroid/os/PowerManager$WakeLock;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mPowerManager:Landroid/os/PowerManager;

    const/16 v16, 0x1

    const-string v17, "HtcDeviceInfoWakeLock_5"

    invoke-virtual/range {v15 .. v17}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    .restart local v14    # "wl":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_5
    if-ge v5, v7, :cond_a

    aget-object v8, v3, v5

    .restart local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v8}, Lcom/htc/server/HtcInfoOperator;->flushUsageTime()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .end local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    :cond_a
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .end local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v14    # "wl":Landroid/os/PowerManager$WakeLock;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mPowerManager:Landroid/os/PowerManager;

    const/16 v16, 0x1

    const-string v17, "HtcDeviceInfoWakeLock_5"

    invoke-virtual/range {v15 .. v17}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    .restart local v14    # "wl":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_6
    if-ge v5, v7, :cond_b

    aget-object v8, v3, v5

    .restart local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v8}, Lcom/htc/server/HtcInfoOperator;->flushClientStatistic()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .end local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    :cond_b
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .end local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v14    # "wl":Landroid/os/PowerManager$WakeLock;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .local v10, "processName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_7
    if-ge v5, v7, :cond_c

    aget-object v8, v3, v5

    .restart local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v8, v10}, Lcom/htc/server/HtcInfoOperator;->update(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .end local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v15

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x3

    # getter for: Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->UPDATE_INTERVAL:J
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->access$700()J

    move-result-wide v17

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .end local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v10    # "processName":Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .restart local v10    # "processName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_8
    if-ge v5, v7, :cond_0

    aget-object v8, v3, v5

    .restart local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v8, v10}, Lcom/htc/server/HtcInfoOperator;->setTop(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .end local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    .end local v10    # "processName":Ljava/lang/String;
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .restart local v10    # "processName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_9
    if-ge v5, v7, :cond_0

    aget-object v8, v3, v5

    .restart local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v8, v10}, Lcom/htc/server/HtcInfoOperator;->addCrash(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .end local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    .end local v10    # "processName":Ljava/lang/String;
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .restart local v10    # "processName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_a
    if-ge v5, v7, :cond_0

    aget-object v8, v3, v5

    .restart local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v8, v10}, Lcom/htc/server/HtcInfoOperator;->addANR(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .end local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    .end local v10    # "processName":Ljava/lang/String;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_b
    if-ge v5, v7, :cond_0

    aget-object v8, v3, v5

    .restart local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v8}, Lcom/htc/server/HtcInfoOperator;->addSystemCrash()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .end local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_c
    if-ge v5, v7, :cond_0

    aget-object v8, v3, v5

    .restart local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v8}, Lcom/htc/server/HtcInfoOperator;->addKernelCrash()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .end local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_d
    if-ge v5, v7, :cond_0

    aget-object v8, v3, v5

    .restart local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v8}, Lcom/htc/server/HtcInfoOperator;->addRadioCrash()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .end local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .restart local v10    # "processName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_e
    if-ge v5, v7, :cond_0

    aget-object v8, v3, v5

    .restart local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0, v10}, Lcom/htc/server/HtcInfoOperator;->startProc(IILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .end local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    .end local v10    # "processName":Ljava/lang/String;
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .restart local v10    # "processName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_f
    if-ge v5, v7, :cond_0

    aget-object v8, v3, v5

    .restart local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v8, v10}, Lcom/htc/server/HtcInfoOperator;->killProc(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .end local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    .end local v10    # "processName":Ljava/lang/String;
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_10
    if-ge v5, v7, :cond_0

    aget-object v8, v3, v5

    .restart local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v8}, Lcom/htc/server/HtcInfoOperator;->killAllProc()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .end local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_11
    if-ge v5, v7, :cond_0

    aget-object v8, v3, v5

    .restart local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v8}, Lcom/htc/server/HtcInfoOperator;->reset()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .end local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    :pswitch_12
    # getter for: Lcom/htc/server/HtcDeviceInfoManager;->DEBUG:Z
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v15

    if-eqz v15, :cond_d

    const-string v15, "HtcDeviceInfoManager"

    const-string v16, "STOP "

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mReceiverHandler:Landroid/os/Handler;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x5

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x6

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x7

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x9

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeMessages(I)V

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v15

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    :pswitch_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_12
    if-ge v5, v7, :cond_0

    aget-object v8, v3, v5

    .restart local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v8}, Lcom/htc/server/HtcInfoOperator;->screenOn()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .end local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_13
    if-ge v5, v7, :cond_0

    aget-object v8, v3, v5

    .restart local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v8}, Lcom/htc/server/HtcInfoOperator;->screenOff()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .end local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_14
    if-ge v5, v7, :cond_0

    aget-object v8, v3, v5

    .restart local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/htc/server/HtcInfoOperator;->userActivity(Landroid/os/Bundle;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .end local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_15
    if-ge v5, v7, :cond_0

    aget-object v8, v3, v5

    .restart local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/htc/server/HtcInfoOperator;->appDied(Landroid/os/Bundle;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .end local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_16
    if-ge v5, v7, :cond_0

    aget-object v8, v3, v5

    .restart local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v8}, Lcom/htc/server/HtcInfoOperator;->startPhoneCall()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .end local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_17
    if-ge v5, v7, :cond_0

    aget-object v8, v3, v5

    .restart local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v8}, Lcom/htc/server/HtcInfoOperator;->stopPhoneCall()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .end local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    :pswitch_19
    const/4 v6, 0x0

    .local v6, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v15, v15, Landroid/content/Intent;

    if-eqz v15, :cond_e

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v6    # "intent":Landroid/content/Intent;
    check-cast v6, Landroid/content/Intent;

    .restart local v6    # "intent":Landroid/content/Intent;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_18
    if-ge v5, v7, :cond_0

    aget-object v8, v3, v5

    .restart local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v8, v6}, Lcom/htc/server/HtcInfoOperator;->addSentErrorCount(Landroid/content/Intent;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .end local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    .end local v5    # "i$":I
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "len$":I
    .end local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    :pswitch_1a
    const/4 v6, 0x0

    .restart local v6    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v15, :cond_f

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v15, v15, Landroid/content/Intent;

    if-eqz v15, :cond_f

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v6    # "intent":Landroid/content/Intent;
    check-cast v6, Landroid/content/Intent;

    .restart local v6    # "intent":Landroid/content/Intent;
    :cond_f
    const/4 v11, -0x1

    .local v11, "type":I
    const/4 v2, -0x1

    .local v2, "act":I
    const/4 v9, -0x1

    .local v9, "pid":I
    const/4 v4, 0x0

    .local v4, "hashCode":I
    if-eqz v6, :cond_10

    const-string v15, "type"

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string v15, "act"

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v15, "pid"

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v15, "hashCode"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    :cond_10
    const-string v15, "HtcDeviceInfoManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "act="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", pid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", type="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", hashCode="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v3    # "arr$":[Lcom/htc/server/HtcInfoOperator;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_19
    if-ge v5, v7, :cond_0

    aget-object v8, v3, v5

    .restart local v8    # "op":Lcom/htc/server/HtcInfoOperator;
    const/4 v15, 0x1

    if-ne v2, v15, :cond_11

    invoke-virtual {v8}, Lcom/htc/server/HtcInfoOperator;->getVoiceAppUsage()Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    move-result-object v15

    invoke-virtual {v15, v9, v11, v4}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->start(III)V

    :goto_1a
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_11
    invoke-virtual {v8}, Lcom/htc/server/HtcInfoOperator;->getVoiceAppUsage()Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    move-result-object v15

    invoke-virtual {v15, v9, v11, v4}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->stop(III)V

    goto :goto_1a

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public reset()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    # getter for: Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_INFO_INTERVAL:J
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->access$600()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public setNewTopApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "topProcessName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setup(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    # getter for: Lcom/htc/server/HtcDeviceInfoManager;->sSense:D
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$100()D

    move-result-wide v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mClientInfoAL:Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;

    invoke-virtual {v0}, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->registerToAlarmScheduler()V

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mUsageTimeAL:Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;

    invoke-virtual {v0}, Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;->registerToAlarmScheduler()V

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerPhoneReceiver(Landroid/content/Context;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mReceiverHandler:Landroid/os/Handler;

    invoke-static {p1, v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerMediaReceiver(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mReceiverHandler:Landroid/os/Handler;

    invoke-static {p1, v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerSystemErrorReceiver(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    invoke-static {p1, v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerContentReceiver(Landroid/content/Context;Landroid/os/Handler;[Lcom/htc/server/HtcInfoOperator;)V

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mReceiverHandler:Landroid/os/Handler;

    invoke-static {p1, v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerErrorInfoReceiver(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    :cond_0
    const-string v0, "HtcDeviceInfoManager"

    const-string v1, "setup at 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startProcess(Ljava/lang/String;II)V
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "group"    # I

    .prologue
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-enter p0

    const-wide/16 v1, 0x1388

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synchronizedFlush()V
    .locals 0

    .prologue
    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public userActivity(J)V
    .locals 4
    .param p1, "time"    # J

    .prologue
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "time"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
