.class Lcom/android/server/HtcActiveEngineManager$3;
.super Landroid/content/BroadcastReceiver;
.source "HtcActiveEngineManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HtcActiveEngineManager;->registerPowerSavingRelatedStatusBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HtcActiveEngineManager;


# direct methods
.method constructor <init>(Lcom/android/server/HtcActiveEngineManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/HtcActiveEngineManager$3;->this$0:Lcom/android/server/HtcActiveEngineManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/server/HtcActiveEngineManager;->HTC_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcActiveEngineManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and takes handle of it"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    if-eq v2, v3, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.intent.action.QUICKBOOT_POWERON"

    if-ne v2, v3, :cond_4

    :cond_1
    iget-object v2, p0, Lcom/android/server/HtcActiveEngineManager$3;->this$0:Lcom/android/server/HtcActiveEngineManager;

    iget-object v2, v2, Lcom/android/server/HtcActiveEngineManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/HtcActiveEngineManager$3;->this$0:Lcom/android/server/HtcActiveEngineManager;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    if-ne v4, v5, :cond_3

    :goto_0
    # invokes: Lcom/android/server/HtcActiveEngineManager;->handleHtcActiveEngineForPowerSavingLocked(Z)V
    invoke-static {v3, v0}, Lcom/android/server/HtcActiveEngineManager;->access$100(Lcom/android/server/HtcActiveEngineManager;Z)V

    monitor-exit v2

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.htcpowermanager.action.ENTER_EPS"

    if-eq v2, v3, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.htcpowermanager.action.LEAVE_EPS"

    if-ne v2, v3, :cond_2

    :cond_5
    iget-object v2, p0, Lcom/android/server/HtcActiveEngineManager$3;->this$0:Lcom/android/server/HtcActiveEngineManager;

    iget-object v2, v2, Lcom/android/server/HtcActiveEngineManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lcom/android/server/HtcActiveEngineManager$3;->this$0:Lcom/android/server/HtcActiveEngineManager;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.htc.htcpowermanager.action.ENTER_EPS"

    if-ne v4, v5, :cond_6

    :goto_2
    # invokes: Lcom/android/server/HtcActiveEngineManager;->handleHtcActiveEngineForPowerSavingLocked(Z)V
    invoke-static {v3, v0}, Lcom/android/server/HtcActiveEngineManager;->access$100(Lcom/android/server/HtcActiveEngineManager;Z)V

    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_6
    move v0, v1

    goto :goto_2
.end method
