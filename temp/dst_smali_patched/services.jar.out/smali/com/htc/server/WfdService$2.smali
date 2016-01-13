.class Lcom/htc/server/WfdService$2;
.super Lcom/htc/wfdservice/IWfdService$Stub;
.source "WfdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WfdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WfdService;


# direct methods
.method constructor <init>(Lcom/htc/server/WfdService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    invoke-direct {p0}, Lcom/htc/wfdservice/IWfdService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public attemptToConfigure(Lcom/htc/service/DongleInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/htc/service/DongleInfo;

    .prologue
    const-string v0, "WfdService"

    const-string v1, "attemptToConfigure()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->synchronize_lock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$100(Lcom/htc/server/WfdService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/server/WfdStateMachine;->attemptToConfigure(Lcom/htc/service/DongleInfo;)V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public attemptToReConfigure(Lcom/htc/service/DongleInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/htc/service/DongleInfo;

    .prologue
    const-string v0, "WfdService"

    const-string v1, "attemptToReConfigure()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/server/WfdStateMachine;->attemptToReConfigure(Lcom/htc/service/DongleInfo;)V

    :cond_0
    return-void
.end method

.method public attemptToRequestDongleToAPM(Lcom/htc/service/DongleInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/htc/service/DongleInfo;

    .prologue
    const-string v0, "WfdService"

    const-string v1, "attemptToRequestDongleToAPM()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/server/WfdStateMachine;->attemptToRequestDongleToAPM(Lcom/htc/service/DongleInfo;)V

    :cond_0
    return-void
.end method

.method public attemptToUnlock(Lcom/htc/service/DongleInfo;[B)V
    .locals 1
    .param p1, "info"    # Lcom/htc/service/DongleInfo;
    .param p2, "pattern"    # [B

    .prologue
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/htc/server/WfdStateMachine;->attemptToUnlock(Lcom/htc/service/DongleInfo;[B)V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 2

    .prologue
    const-string v0, "WfdService"

    const-string v1, "cancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->synchronize_lock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$100(Lcom/htc/server/WfdService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine;->cancel()V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public finishService()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine;->finishService()V

    :cond_0
    return-void
.end method

.method public getCurrentState()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine;->getNotificationState()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public registerCallback(Lcom/htc/wfdservice/IWfdServiceCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/htc/wfdservice/IWfdServiceCallback;

    .prologue
    const-string v0, "WfdService"

    const-string v1, "registerCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/server/WfdStateMachine;->addCallback(Lcom/htc/wfdservice/IWfdServiceCallback;)V

    :cond_0
    return-void
.end method

.method public retryConfigure()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine;->retryConfigure()V

    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const-string v0, "WfdService"

    const-string v1, "setMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/server/WfdStateMachine;->setMode(I)V

    :cond_0
    return-void
.end method

.method public setWhdmiForeground(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/server/WfdStateMachine;->setWhdmiForeground(Z)V

    :cond_0
    return-void
.end method

.method public startScanDongles(Z)V
    .locals 2
    .param p1, "singleChannelScan"    # Z

    .prologue
    const-string v0, "WfdService"

    const-string v1, "startScanDongles()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/server/WfdStateMachine;->startScanDongles(Z)V

    :cond_0
    return-void
.end method

.method public stopScanDongles()V
    .locals 2

    .prologue
    const-string v0, "WfdService"

    const-string v1, "stopScanDongles()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine;->stopScanDongles()V

    :cond_0
    return-void
.end method

.method public switchOnOffMirrorMode(Z)V
    .locals 1
    .param p1, "autoEnable"    # Z

    .prologue
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/server/WfdStateMachine;->switchOnOffMirrorMode(Z)V

    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/htc/wfdservice/IWfdServiceCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/htc/wfdservice/IWfdServiceCallback;

    .prologue
    const-string v0, "WfdService"

    const-string v1, "unregisterCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/server/WfdStateMachine;->removeCallback(Lcom/htc/wfdservice/IWfdServiceCallback;)V

    :cond_0
    return-void
.end method

.method public wpsTimeout()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine;->wpsTimeout()V

    :cond_0
    return-void
.end method
