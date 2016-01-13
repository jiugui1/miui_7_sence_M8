.class Lcom/android/server/AlarmManagerService$AlarmThread;
.super Ljava/lang/Thread;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 1

    .prologue
    .line 1552
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    .line 1553
    const-string v0, "AlarmManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1554
    return-void
.end method

.method private getAlarmTypeString(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1720
    packed-switch p1, :pswitch_data_0

    .line 1730
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1722
    :pswitch_0
    const-string v0, "ELAPSED_REALTIME"

    goto :goto_0

    .line 1724
    :pswitch_1
    const-string v0, "ELAPSED_REALTIME_WAKEUP"

    goto :goto_0

    .line 1726
    :pswitch_2
    const-string v0, "RTC"

    goto :goto_0

    .line 1728
    :pswitch_3
    const-string v0, "RTC_WAKEUP"

    goto :goto_0

    .line 1720
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 1558
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1562
    .local v2, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :goto_0
    # getter for: Lcom/android/server/AlarmManagerService;->mHibernate:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1564
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v7, 0x1f4

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1566
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1570
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mDescriptor:I
    invoke-static {v7}, Lcom/android/server/AlarmManagerService;->access$300(Lcom/android/server/AlarmManagerService;)I

    move-result v7

    # invokes: Lcom/android/server/AlarmManagerService;->waitForAlarm(I)I
    invoke-static {v1, v7}, Lcom/android/server/AlarmManagerService;->access$400(Lcom/android/server/AlarmManagerService;I)I

    move-result v21

    .line 1571
    .local v21, "result":I
    # getter for: Lcom/android/server/AlarmManagerService;->HTC_DEBUG_NotSync:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$500()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1572
    and-int/lit8 v1, v21, 0x1

    if-eqz v1, :cond_1

    .line 1573
    # getter for: Lcom/android/server/AlarmManagerService;->mDebug_WaitForAlarmClockLastGet:[J
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$600()[J

    move-result-object v1

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    aput-wide v8, v1, v7

    .line 1576
    :cond_1
    and-int/lit8 v1, v21, 0x2

    if-eqz v1, :cond_2

    .line 1577
    # getter for: Lcom/android/server/AlarmManagerService;->mDebug_WaitForAlarmClockLastGet:[J
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$600()[J

    move-result-object v1

    const/4 v7, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    aput-wide v8, v1, v7

    .line 1580
    :cond_2
    and-int/lit8 v1, v21, 0x4

    if-eqz v1, :cond_3

    .line 1581
    # getter for: Lcom/android/server/AlarmManagerService;->mDebug_WaitForAlarmClockLastGet:[J
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$600()[J

    move-result-object v1

    const/4 v7, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    aput-wide v8, v1, v7

    .line 1584
    :cond_3
    and-int/lit8 v1, v21, 0x8

    if-eqz v1, :cond_4

    .line 1585
    # getter for: Lcom/android/server/AlarmManagerService;->mDebug_WaitForAlarmClockLastGet:[J
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$600()[J

    move-result-object v1

    const/4 v7, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    aput-wide v8, v1, v7

    .line 1589
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1591
    const/high16 v1, 0x10000

    and-int v1, v1, v21

    if-eqz v1, :cond_6

    .line 1592
    # getter for: Lcom/android/server/AlarmManagerService;->HTC_DEBUG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$700()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1593
    const-string v1, "AlarmManager"

    const-string v7, "Time changed notification from kernel; rebatching"

    invoke-static {v1, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;
    invoke-static {v7}, Lcom/android/server/AlarmManagerService;->access$800(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 1596
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarms()V

    .line 1597
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ClockReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 1598
    new-instance v20, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    move-object/from16 v0, v20

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1599
    .local v20, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1601
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1000(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v1

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    invoke-virtual {v1, v0, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1604
    .end local v20    # "intent":Landroid/content/Intent;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1100(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v22

    monitor-enter v22

    .line 1605
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1606
    .local v5, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1612
    .local v3, "nowELAPSED":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mNightModeBlockedAlarms:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->isInNightMode()Z
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1300(Lcom/android/server/AlarmManagerService;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1613
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->recoverBlockedAlarmsLocked()V
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)V

    .line 1632
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;JJ)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;JJ)V

    .line 1633
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;)V

    .line 1636
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, v18

    if-ge v0, v1, :cond_12

    .line 1637
    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AlarmManagerService$Alarm;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1640
    .local v14, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_2
    iget-object v7, v14, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1000(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    # getter for: Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1700()Landroid/content/Intent;

    move-result-object v1

    const-string v10, "android.intent.extra.ALARM_COUNT"

    iget v11, v14, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ResultReceiver;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1900(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$AlarmHandler;

    move-result-object v12

    invoke-virtual/range {v7 .. v12}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 1646
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$2000(Lcom/android/server/AlarmManagerService;)I

    move-result v1

    if-nez v1, :cond_8

    .line 1647
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v7, v14, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v8, v14, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 1648
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$2100(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1650
    :cond_8
    new-instance v19, Lcom/android/server/AlarmManagerService$InFlight;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v7, v14, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v8, v14, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v0, v19

    invoke-direct {v0, v1, v7, v8}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 1652
    .local v19, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$2200(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1653
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # operator++ for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$2008(Lcom/android/server/AlarmManagerService;)I

    .line 1655
    move-object/from16 v0, v19

    iget-object v15, v0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1656
    .local v15, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v1, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 1657
    iget v1, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v1, :cond_e

    .line 1658
    const/4 v1, 0x1

    iput v1, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 1659
    iput-wide v3, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 1663
    :goto_2
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    move-object/from16 v17, v0

    .line 1664
    .local v17, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v17

    iput v1, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 1665
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v1, :cond_10

    .line 1666
    const/4 v1, 0x1

    move-object/from16 v0, v17

    iput v1, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 1667
    move-object/from16 v0, v17

    iput-wide v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    .line 1671
    :goto_3
    iget v1, v14, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v7, 0x2

    if-eq v1, v7, :cond_9

    iget v1, v14, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v1, :cond_a

    .line 1673
    :cond_9
    iget v1, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 1674
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v17

    iput v1, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    .line 1675
    iget-object v1, v14, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-static {v1}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;)V

    .line 1683
    :cond_a
    iget-object v1, v14, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v20

    .line 1684
    .restart local v20    # "intent":Landroid/content/Intent;
    if-eqz v20, :cond_11

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 1688
    .local v13, "action":Ljava/lang/String;
    :goto_4
    if-eqz v13, :cond_b

    const-string v1, "@"

    invoke-virtual {v13, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1689
    const-string v13, "encrypted_name"

    .line 1693
    :cond_b
    # getter for: Lcom/android/server/AlarmManagerService;->HTC_DEBUG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$700()Z

    move-result v1

    if-nez v1, :cond_c

    if-eqz v13, :cond_c

    const-string v1, "com.carrieriq.iqagent.service.action.WAKEUP"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1694
    const-string v13, "*****"

    .line 1696
    :cond_c
    const-string v1, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sending alarm "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v14, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", i="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", t="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v14, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cnt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v14, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", w="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v14, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Int="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v14, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    .end local v13    # "action":Ljava/lang/String;
    .end local v15    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v19    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v20    # "intent":Landroid/content/Intent;
    :cond_d
    :goto_5
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 1661
    .restart local v15    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v19    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_e
    iget v1, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 1703
    .end local v15    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v19    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :catch_1
    move-exception v16

    .line 1704
    .local v16, "e":Landroid/app/PendingIntent$CanceledException;
    :try_start_3
    # getter for: Lcom/android/server/AlarmManagerService;->HTC_DEBUG_NotSync:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$500()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cancel sending alarm."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v14}, Lcom/android/server/AlarmManagerService$Alarm;->toHTCString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-static {v1, v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1706
    :cond_f
    iget-wide v7, v14, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-lez v1, :cond_d

    .line 1709
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v7, v14, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1, v7}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    goto :goto_5

    .line 1715
    .end local v3    # "nowELAPSED":J
    .end local v5    # "nowRTC":J
    .end local v14    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v16    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v18    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 1669
    .restart local v3    # "nowELAPSED":J
    .restart local v5    # "nowRTC":J
    .restart local v14    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v15    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v18    # "i":I
    .restart local v19    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_10
    :try_start_4
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v17

    iput v1, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I
    :try_end_4
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 1711
    .end local v15    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v19    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :catch_2
    move-exception v16

    .line 1712
    .local v16, "e":Ljava/lang/RuntimeException;
    :try_start_5
    const-string v1, "AlarmManager"

    const-string v7, "Failure sending alarm."

    move-object/from16 v0, v16

    invoke-static {v1, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1684
    .end local v16    # "e":Ljava/lang/RuntimeException;
    .restart local v15    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v19    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v20    # "intent":Landroid/content/Intent;
    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1715
    .end local v14    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v15    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v19    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v20    # "intent":Landroid/content/Intent;
    :cond_12
    monitor-exit v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method