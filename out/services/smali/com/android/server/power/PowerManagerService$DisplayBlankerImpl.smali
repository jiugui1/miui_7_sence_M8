.class final Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/power/DisplayBlanker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayBlankerImpl"
.end annotation


# instance fields
.field private mBlanked:Z

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 5653
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .prologue
    .line 5653
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method

.method private screenStateNotifier(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 5766
    # getter for: Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$6500()Lcom/android/server/power/HtcPMSExtension;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5767
    # getter for: Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$6500()Lcom/android/server/power/HtcPMSExtension;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/power/HtcPMSExtension;->notifyActualScreenState(Z)V

    .line 5772
    :cond_0
    # getter for: Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$6500()Lcom/android/server/power/HtcPMSExtension;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5773
    # getter for: Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$6500()Lcom/android/server/power/HtcPMSExtension;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/power/HtcPMSExtension;->writeScreenState(Z)V

    .line 5778
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$6600(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/HtcWakeLockMonitor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5779
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$6600(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/HtcWakeLockMonitor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/power/HtcWakeLockMonitor;->screenState(Z)V

    .line 5784
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$6700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/DisplayPowerController;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5785
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$6700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/DisplayPowerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/power/DisplayPowerController;->getHtcAutoBrightnessCtrl()Lcom/android/server/power/HtcAutoBrightnessCtrl;

    move-result-object v0

    .line 5786
    .local v0, "habc":Lcom/android/server/power/HtcAutoBrightnessCtrl;
    if-eqz v0, :cond_3

    .line 5787
    invoke-virtual {v0, p1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->screenState(Z)V

    .line 5791
    .end local v0    # "habc":Lcom/android/server/power/HtcAutoBrightnessCtrl;
    :cond_3
    return-void
.end method


# virtual methods
.method public blankAllDisplays()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5658
    monitor-enter p0

    .line 5660
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mActualScreenOn:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$5402(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 5663
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z

    .line 5664
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5500(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/display/DisplayManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->blankAllDisplaysFromPowerManager()V

    .line 5667
    const-string v0, "PMS"

    const-string v1, "nativeSetInteractive:false"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5669
    const/4 v0, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5600(Z)V

    .line 5671
    const-string v0, "PMS"

    const-string v1, "nativeSetInteractive:false done"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5675
    const-string v0, "PMS"

    const-string v1, "nativeSetAutoSuspend:true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5677
    const/4 v0, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5700(Z)V

    .line 5679
    const-string v0, "PMS"

    const-string v1, "nativeSetAutoSuspend:true done"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5682
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5684
    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->screenStateNotifier(Z)V

    .line 5688
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->checkIfOOBEStatusFinished(Z)Z
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$4400(Lcom/android/server/power/PowerManagerService;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5689
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->startMonitorOOBEStatus()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5800(Lcom/android/server/power/PowerManagerService;)V

    .line 5696
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mShutdownLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$6000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5698
    :try_start_1
    # getter for: Lcom/android/server/power/PowerManagerService;->startGoToSleepByShutdown:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$6100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5699
    const/4 v0, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->doneNativeSetAutoSuspend:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$6202(Z)Z

    .line 5701
    # getter for: Lcom/android/server/power/PowerManagerService;->mCondition:Landroid/os/ConditionVariable;
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$6300()Landroid/os/ConditionVariable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5702
    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5703
    const-string v0, "PMS"

    const-string v2, "open condition block"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5705
    :cond_0
    # getter for: Lcom/android/server/power/PowerManagerService;->mCondition:Landroid/os/ConditionVariable;
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$6300()Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 5709
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5712
    return-void

    .line 5682
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 5691
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->clearMonitorOOBEStatus()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5900(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    .line 5709
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5758
    monitor-enter p0

    .line 5759
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blanked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 5760
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unblankAllDisplays()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5716
    monitor-enter p0

    .line 5719
    :try_start_0
    const-string v0, "PMS"

    const-string v1, "nativeSetAutoSuspend:false"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5721
    const/4 v0, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5700(Z)V

    .line 5723
    const-string v0, "PMS"

    const-string v1, "nativeSetAutoSuspend:false done"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5727
    const-string v0, "PMS"

    const-string v1, "nativeSetInteractive:true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5729
    const/4 v0, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5600(Z)V

    .line 5731
    const-string v0, "PMS"

    const-string v1, "nativeSetInteractive:true done"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5734
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5500(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/display/DisplayManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->unblankAllDisplaysFromPowerManager()V

    .line 5735
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z

    .line 5738
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mActualScreenOn:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$5402(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 5742
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->clearTurnOnScreenOnceFlag()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$6400(Lcom/android/server/power/PowerManagerService;)V

    .line 5745
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5747
    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->screenStateNotifier(Z)V

    .line 5751
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->clearMonitorOOBEStatus()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5900(Lcom/android/server/power/PowerManagerService;)V

    .line 5754
    return-void

    .line 5745
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
