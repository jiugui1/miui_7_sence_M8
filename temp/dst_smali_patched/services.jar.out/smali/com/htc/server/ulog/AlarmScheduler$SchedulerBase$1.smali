.class Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$1;
.super Landroid/content/BroadcastReceiver;
.source "AlarmScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;


# direct methods
.method constructor <init>(Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$1;->this$0:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$1;->this$0:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;

    iget-boolean v0, v0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mIsShutdown:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$1;->this$0:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;

    const-string v1, "NLARA_onReceive"

    invoke-virtual {v0, v1}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->notifyListenerAndResetAlarm(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$1;->this$0:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;

    # getter for: Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mOnPassiveScheduleListener:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$OnPassiveScheduleListener;
    invoke-static {v0}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->access$000(Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;)Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$OnPassiveScheduleListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$1;->this$0:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;

    # getter for: Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mOnPassiveScheduleListener:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$OnPassiveScheduleListener;
    invoke-static {v0}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->access$000(Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;)Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$OnPassiveScheduleListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$OnPassiveScheduleListener;->onPassiveScheduleArrival()V

    :cond_2
    # getter for: Lcom/htc/server/ulog/AlarmScheduler;->VERBOSE:Z
    invoke-static {}, Lcom/htc/server/ulog/AlarmScheduler;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$1;->this$0:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;

    iget-object v0, v0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->mLogcatTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onReceive] end\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
