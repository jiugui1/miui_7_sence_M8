.class abstract Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;
.super Ljava/lang/Object;
.source "AlarmScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/ulog/AlarmScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SchedulerBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$CallbackRunnable;,
        Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;,
        Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$OnPassiveScheduleListener;
    }
.end annotation


# static fields
.field private static final REGULAR_ALARM_ACTION:Ljava/lang/String; = "com.htc.intent.action.UBLS_REGULAR_ALARM"


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field protected mIsShutdown:Z

.field protected final mLogcatTag:Ljava/lang/String;

.field private final mOnPassiveScheduleListener:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$OnPassiveScheduleListener;

.field private mRegularAlarmReceiver:Landroid/content/BroadcastReceiver;

.field protected mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

.field protected mScheduleRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mTolerance:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$OnPassiveScheduleListener;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "actionSurfix"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "onScheduleArrivalListener"    # Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$OnPassiveScheduleListener;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$1;

    invoke-direct {v1, p0}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$1;-><init>(Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;)V

    iput-object v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mRegularAlarmReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context or actionSurfix is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmScheduler_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mLogcatTag:Ljava/lang/String;

    if-nez p3, :cond_2

    iget-object v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mLogcatTag:Ljava/lang/String;

    const-string v2, "AlarmScheduler uses main thread to handle messages"

    invoke-static {v1, v2}, Lcom/htc/server/ulog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mHandler:Landroid/os/Handler;

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mScheduleRequests:Ljava/util/List;

    iput-object p1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.htc.intent.action.UBLS_REGULAR_ALARM_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mAction:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mOnPassiveScheduleListener:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$OnPassiveScheduleListener;

    invoke-virtual {p0}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->getTolerance()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mTolerance:J

    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mRegularAlarmReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.htc.permission.UBLS_PROTECTED_USAGE"

    invoke-virtual {v1, v2, v0, v3, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2
    iput-object p3, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;)Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$OnPassiveScheduleListener;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;

    .prologue
    iget-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mOnPassiveScheduleListener:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$OnPassiveScheduleListener;

    return-object v0
.end method

.method private cancelAlarm(Ljava/lang/String;)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    iget-object v3, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .local v0, "alarm":Landroid/app/AlarmManager;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "broadcastIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x10000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private getNextNearestScheduleRequest()Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;
    .locals 7

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    .local v2, "nextTriggerTime":J
    const/4 v0, 0x0

    .local v0, "canidateSR":Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;
    iget-object v5, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mScheduleRequests:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    .local v4, "sr":Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;
    iget-wide v5, v4, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->triggerTime:J

    cmp-long v5, v5, v2

    if-gez v5, :cond_0

    iget-wide v2, v4, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->triggerTime:J

    move-object v0, v4

    goto :goto_0

    .end local v4    # "sr":Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;
    :cond_1
    return-object v0
.end method

.method private removeListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;)Z
    .locals 5
    .param p1, "listener"    # Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;

    .prologue
    iget-object v2, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mScheduleRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    .local v1, "sr":Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;
    iget-object v2, v1, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->alarmListener:Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;

    if-ne v2, p1, :cond_0

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mLogcatTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[removeListener] sr ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is removed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/server/ulog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mScheduleRequests:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .end local v1    # "sr":Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private resetAlarm(Ljava/lang/String;JZ)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "triggerAtMillis"    # J
    .param p4, "isPrecise"    # Z

    .prologue
    const/4 v6, 0x3

    iget-object v3, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .local v0, "alarm":Landroid/app/AlarmManager;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "broadcastIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    if-eqz p4, :cond_1

    invoke-virtual {v0, v6, p2, p3, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v6, p2, p3, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private setNextAlarmAndRunningRequest(Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;)V
    .locals 4
    .param p1, "targetSR"    # Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    .prologue
    iput-object p1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    iget-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mAction:Ljava/lang/String;

    iget-wide v1, p1, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->triggerTime:J

    iget-boolean v3, p1, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->isPrecise:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->resetAlarm(Ljava/lang/String;JZ)V

    return-void
.end method


# virtual methods
.method protected abstract getTolerance()J
.end method

.method protected notifyAlarmListener(Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;)V
    .locals 2
    .param p1, "sr"    # Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    .prologue
    new-instance v0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$CallbackRunnable;

    iget-object v1, p1, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->alarmListener:Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;

    invoke-direct {v0, v1}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$CallbackRunnable;-><init>(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;)V

    .local v0, "cr":Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$CallbackRunnable;
    iget-object v1, p1, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected declared-synchronized notifyListenerAndResetAlarm(Ljava/lang/String;)Z
    .locals 10
    .param p1, "logTag"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mLogcatTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] Begin, mRunningRequest = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    iget-wide v6, v6, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->triggerTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " milli-sec)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/server/ulog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return v3

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    iget-wide v0, v4, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->triggerTime:J

    .local v0, "registeredTriggerTime":J
    invoke-virtual {p0}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->onNotifyAndRemoveListeners()V

    invoke-direct {p0}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->getNextNearestScheduleRequest()Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    move-result-object v2

    .local v2, "sr":Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;
    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    if-ne v2, v4, :cond_3

    iget-object v4, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    if-ne v2, v4, :cond_5

    iget-wide v4, v2, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->triggerTime:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_5

    :cond_3
    invoke-direct {p0, v2}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->setNextAlarmAndRunningRequest(Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;)V

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mLogcatTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] next sr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    iget-wide v5, v5, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->triggerTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/server/ulog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mLogcatTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] Not set next sr. mRunningRequest: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    iget-wide v6, v6, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->triggerTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " seconds)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/server/ulog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .end local v0    # "registeredTriggerTime":J
    .end local v2    # "sr":Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0    # "registeredTriggerTime":J
    .restart local v2    # "sr":Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;
    :cond_6
    :try_start_2
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mLogcatTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] No next sr, mRunningRequest = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    iget-wide v6, v6, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->triggerTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " seconds)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/server/ulog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v4, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mAction:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->cancelAlarm(Ljava/lang/String;)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method protected abstract onNotifyAndRemoveListeners()V
.end method

.method declared-synchronized onShutdown()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mAction:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->cancelAlarm(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mScheduleRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mIsShutdown:Z

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mLogcatTag:Ljava/lang/String;

    const-string v1, "AlarmScheduler.stop has been called"

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;Landroid/os/Handler;JJZZLjava/lang/String;)Z
    .locals 14
    .param p1, "listener"    # Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "interval"    # J
    .param p5, "triggerAtMillis"    # J
    .param p7, "isRepeating"    # Z
    .param p8, "isPrecise"    # Z
    .param p9, "logTag"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mIsShutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->removeListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;)Z

    move-result v12

    .local v12, "isRemoved":Z
    new-instance v0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    iget-wide v9, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mTolerance:J

    move-object v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;-><init>(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;Landroid/os/Handler;JJZZJLjava/lang/String;)V

    .local v0, "sr":Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;
    iget-object v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mScheduleRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v12, :cond_7

    iget-object v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    iget-object v1, v1, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->alarmListener:Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;

    if-ne v1, p1, :cond_2

    invoke-direct {p0}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->getNextNearestScheduleRequest()Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    move-result-object v13

    .local v13, "targetSR":Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;
    if-eqz v13, :cond_6

    invoke-direct {p0, v13}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->setNextAlarmAndRunningRequest(Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;)V

    .end local v13    # "targetSR":Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;
    :cond_2
    :goto_1
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mLogcatTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[registerListener] registered sr ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") replace old one (isRemoved=true)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/server/ulog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mLogcatTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[registerListener] running request : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    invoke-virtual {v3}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/server/ulog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    # getter for: Lcom/htc/server/ulog/AlarmScheduler;->VERBOSE:Z
    invoke-static {}, Lcom/htc/server/ulog/AlarmScheduler;->access$100()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mLogcatTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[registerListener] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/server/ulog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v1, 0x1

    goto/16 :goto_0

    .restart local v13    # "targetSR":Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;
    :cond_6
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mLogcatTag:Ljava/lang/String;

    const-string v2, "[registerListener] This case shouldn\'t exist (isRemoved=true)"

    invoke-static {v1, v2}, Lcom/htc/server/ulog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "sr":Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;
    .end local v12    # "isRemoved":Z
    .end local v13    # "targetSR":Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .restart local v0    # "sr":Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;
    .restart local v12    # "isRemoved":Z
    :cond_7
    :try_start_2
    iget-object v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    iget-wide v1, v1, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->triggerTime:J

    cmp-long v1, p5, v1

    if-gez v1, :cond_9

    :cond_8
    invoke-direct {p0, v0}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->setNextAlarmAndRunningRequest(Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;)V

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mLogcatTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[registerListener] registered sr ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is the current scheduler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/server/ulog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_9
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mLogcatTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[registerListener] registered sr ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") isn\'t current scheduler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/server/ulog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .local v0, "count":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mScheduleRequests:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    .local v3, "sr":Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    if-ne v4, v3, :cond_0

    const-string v4, " (Running scheduler)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3    # "sr":Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public declared-synchronized unregisterListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;)Z
    .locals 5
    .param p1, "listener"    # Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mIsShutdown:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mScheduleRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gtz v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->removeListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;)Z

    move-result v0

    .local v0, "isRemoval":Z
    iget-object v2, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mScheduleRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_3

    iget-object v2, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mAction:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->cancelAlarm(Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mLogcatTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unregisterListener] the list is empty, isRemoval: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/server/ulog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "isRemoval":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0    # "isRemoval":Z
    :cond_3
    if-eqz v0, :cond_1

    :try_start_2
    iget-object v2, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mRunningRequest:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    iget-object v2, v2, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->alarmListener:Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;

    if-ne v2, p1, :cond_1

    invoke-direct {p0}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->getNextNearestScheduleRequest()Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;

    move-result-object v1

    .local v1, "sr":Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;
    if-eqz v1, :cond_4

    invoke-direct {p0, v1}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->setNextAlarmAndRunningRequest(Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;)V

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mLogcatTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unregisterListener] sr ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is the current scheduler"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/server/ulog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mLogcatTag:Ljava/lang/String;

    const-string v3, "Can\'t find next schedule candidate"

    invoke-static {v2, v3}, Lcom/htc/server/ulog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
