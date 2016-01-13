.class Lcom/android/server/HtcHardwareService$2;
.super Landroid/content/BroadcastReceiver;
.source "HtcHardwareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HtcHardwareService;


# direct methods
.method constructor <init>(Lcom/android/server/HtcHardwareService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/HtcHardwareService$2;->this$0:Lcom/android/server/HtcHardwareService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.htc.intent.action.HTC_BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.htc.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/android/server/HtcHardwareService$2;->this$0:Lcom/android/server/HtcHardwareService;

    # getter for: Lcom/android/server/HtcHardwareService;->mBootCompletedLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/HtcHardwareService;->access$000(Lcom/android/server/HtcHardwareService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/HtcHardwareService$2;->this$0:Lcom/android/server/HtcHardwareService;

    # invokes: Lcom/android/server/HtcHardwareService;->readCurrentSDTrayState()Lcom/android/server/HtcHardwareService$SDTrayState;
    invoke-static {v2}, Lcom/android/server/HtcHardwareService;->access$400(Lcom/android/server/HtcHardwareService;)Lcom/android/server/HtcHardwareService$SDTrayState;

    move-result-object v1

    .local v1, "state":Lcom/android/server/HtcHardwareService$SDTrayState;
    const-string v2, "HtcHardwareService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current SD tray state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/HtcHardwareService$2;->this$0:Lcom/android/server/HtcHardwareService;

    # invokes: Lcom/android/server/HtcHardwareService;->dumpSDTrayState(Lcom/android/server/HtcHardwareService$SDTrayState;)Ljava/lang/String;
    invoke-static {v5, v1}, Lcom/android/server/HtcHardwareService;->access$500(Lcom/android/server/HtcHardwareService;Lcom/android/server/HtcHardwareService$SDTrayState;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/HtcHardwareService$SDTrayState;->SD_TRAY_STATE_INSERTED:Lcom/android/server/HtcHardwareService$SDTrayState;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/HtcHardwareService$2;->this$0:Lcom/android/server/HtcHardwareService;

    const/4 v4, 0x0

    # invokes: Lcom/android/server/HtcHardwareService;->sendSDCardTrayState(Z)V
    invoke-static {v2, v4}, Lcom/android/server/HtcHardwareService;->access$300(Lcom/android/server/HtcHardwareService;Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/HtcHardwareService$2;->this$0:Lcom/android/server/HtcHardwareService;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/HtcHardwareService;->mBootCompleted:Z
    invoke-static {v2, v4}, Lcom/android/server/HtcHardwareService;->access$202(Lcom/android/server/HtcHardwareService;Z)Z

    monitor-exit v3

    .end local v1    # "state":Lcom/android/server/HtcHardwareService$SDTrayState;
    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    const-string v2, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/HtcHardwareService$2;->this$0:Lcom/android/server/HtcHardwareService;

    # getter for: Lcom/android/server/HtcHardwareService;->mBootCompletedLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/HtcHardwareService;->access$000(Lcom/android/server/HtcHardwareService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/android/server/HtcHardwareService$2;->this$0:Lcom/android/server/HtcHardwareService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/HtcHardwareService;->mBootCompleted:Z
    invoke-static {v2, v4}, Lcom/android/server/HtcHardwareService;->access$202(Lcom/android/server/HtcHardwareService;Z)Z

    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2
.end method
