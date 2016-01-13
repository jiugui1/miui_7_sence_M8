.class Lcom/android/server/HtcHardwareService$1;
.super Landroid/os/UEventObserver;
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
    iput-object p1, p0, Lcom/android/server/HtcHardwareService$1;->this$0:Lcom/android/server/HtcHardwareService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    iget-object v2, p0, Lcom/android/server/HtcHardwareService$1;->this$0:Lcom/android/server/HtcHardwareService;

    # getter for: Lcom/android/server/HtcHardwareService;->mBootCompletedLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/HtcHardwareService;->access$000(Lcom/android/server/HtcHardwareService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    # getter for: Lcom/android/server/HtcHardwareService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/HtcHardwareService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_0
    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "stateVal":Ljava/lang/String;
    if-nez v1, :cond_1

    monitor-exit v3

    :goto_0
    return-void

    :cond_1
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    .local v0, "state":Z
    # getter for: Lcom/android/server/HtcHardwareService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/HtcHardwareService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v4, "HtcHardwareService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SD tray state has changed to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_4

    const-string v2, "INSERTED"

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/server/HtcHardwareService$1;->this$0:Lcom/android/server/HtcHardwareService;

    # getter for: Lcom/android/server/HtcHardwareService;->mBootCompleted:Z
    invoke-static {v2}, Lcom/android/server/HtcHardwareService;->access$200(Lcom/android/server/HtcHardwareService;)Z

    move-result v2

    if-nez v2, :cond_5

    # getter for: Lcom/android/server/HtcHardwareService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/HtcHardwareService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "HtcHardwareService"

    const-string v4, "Ignore UEvent before boot_completed."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v3

    goto :goto_0

    .end local v0    # "state":Z
    .end local v1    # "stateVal":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "state":Z
    .restart local v1    # "stateVal":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v2, "EJECTED"

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/server/HtcHardwareService$1;->this$0:Lcom/android/server/HtcHardwareService;

    # invokes: Lcom/android/server/HtcHardwareService;->sendSDCardTrayState(Z)V
    invoke-static {v2, v0}, Lcom/android/server/HtcHardwareService;->access$300(Lcom/android/server/HtcHardwareService;Z)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
