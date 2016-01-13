.class final Lcom/htc/server/ulog/AlarmScheduler$InexactScheduler;
.super Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;
.source "AlarmScheduler.java"

# interfaces
.implements Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$OnPassiveScheduleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/ulog/AlarmScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InexactScheduler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$OnPassiveScheduleListener;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "actionSurfix"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "onLocalAlarmArrivalListener"    # Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$OnPassiveScheduleListener;

    .prologue
    .line 397
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$OnPassiveScheduleListener;)V

    .line 398
    return-void
.end method


# virtual methods
.method protected getTolerance()J
    .locals 2

    .prologue
    .line 417
    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method protected declared-synchronized onNotifyAndRemoveListeners()V
    .locals 5

    .prologue
    .line 401
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/server/ulog/AlarmScheduler$InexactScheduler;->mScheduleRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 402
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 403
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    .line 404
    .local v1, "sr":Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->canBeScheduledNow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    invoke-virtual {p0, v1}, Lcom/htc/server/ulog/AlarmScheduler$InexactScheduler;->notifyAlarmListener(Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;)V

    .line 406
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_1

    .line 407
    iget-object v2, p0, Lcom/htc/server/ulog/AlarmScheduler$InexactScheduler;->mLogcatTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Notify & Remove] Inform "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/server/ulog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_1
    iget-boolean v2, v1, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->isRepeating:Z

    if-eqz v2, :cond_2

    .line 409
    invoke-virtual {v1}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->setTriggerTimeFromNow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 401
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;>;"
    .end local v1    # "sr":Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 411
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;>;"
    .restart local v1    # "sr":Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;
    :cond_2
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 414
    .end local v1    # "sr":Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public onPassiveScheduleArrival()V
    .locals 3

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/htc/server/ulog/AlarmScheduler$InexactScheduler;->mIsShutdown:Z

    if-eqz v0, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    const-string v0, "NLARA_passive"

    invoke-virtual {p0, v0}, Lcom/htc/server/ulog/AlarmScheduler$InexactScheduler;->notifyListenerAndResetAlarm(Ljava/lang/String;)Z

    .line 423
    # getter for: Lcom/htc/server/ulog/AlarmScheduler;->VERBOSE:Z
    invoke-static {}, Lcom/htc/server/ulog/AlarmScheduler;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler$InexactScheduler;->mLogcatTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PassiveSchedule] end\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
