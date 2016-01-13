.class final Lcom/htc/server/ulog/AlarmScheduler$ExactScheduler;
.super Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;
.source "AlarmScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/ulog/AlarmScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExactScheduler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$OnPassiveScheduleListener;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "actionSurfix"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "onLocalAlarmArrivalListener"    # Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$OnPassiveScheduleListener;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$OnPassiveScheduleListener;)V

    return-void
.end method


# virtual methods
.method protected getTolerance()J
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected declared-synchronized onNotifyAndRemoveListeners()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler$ExactScheduler;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler$ExactScheduler;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    invoke-virtual {p0, v0}, Lcom/htc/server/ulog/AlarmScheduler$ExactScheduler;->notifyAlarmListener(Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;)V

    iget-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler$ExactScheduler;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    iget-boolean v0, v0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->isRepeating:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler$ExactScheduler;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    invoke-virtual {v0}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->setTriggerTimeFromNow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler$ExactScheduler;->mScheduleRequests:Ljava/util/List;

    iget-object v1, p0, Lcom/htc/server/ulog/AlarmScheduler$ExactScheduler;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
