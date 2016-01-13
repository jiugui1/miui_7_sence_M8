.class public final Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;
.super Ljava/lang/Object;
.source "AlarmScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ScheduleRequest"
.end annotation


# instance fields
.field public alarmInterval:J

.field public alarmListener:Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;

.field public handler:Landroid/os/Handler;

.field public isPrecise:Z

.field public final isRepeating:Z

.field public logTag:Ljava/lang/String;

.field public final tolerance:J

.field public triggerTime:J


# direct methods
.method public constructor <init>(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;Landroid/os/Handler;JJZZJLjava/lang/String;)V
    .locals 0
    .param p1, "al"    # Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "interval"    # J
    .param p5, "triggerAtMillis"    # J
    .param p7, "_isRepeating"    # Z
    .param p8, "_isPrecise"    # Z
    .param p9, "_tolerance"    # J
    .param p11, "tag"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->alarmListener:Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;

    iput-object p2, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->handler:Landroid/os/Handler;

    iput-wide p3, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->alarmInterval:J

    iput-wide p5, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->triggerTime:J

    iput-boolean p7, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->isRepeating:Z

    iput-boolean p8, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->isPrecise:Z

    iput-wide p9, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->tolerance:J

    iput-object p11, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->logTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public canBeScheduledNow()Z
    .locals 6

    .prologue
    iget-wide v0, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->triggerTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->tolerance:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTriggerTimeFromNow()V
    .locals 4

    .prologue
    iget-wide v0, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->alarmInterval:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->triggerTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->logTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Interval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->alarmInterval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", triggerTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->triggerTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milli-sec) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->triggerTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRepeating: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->isRepeating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPrecise: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$ScheduleRequest;->isPrecise:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
