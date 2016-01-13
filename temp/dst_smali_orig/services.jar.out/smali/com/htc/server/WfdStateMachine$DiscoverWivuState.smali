.class Lcom/htc/server/WfdStateMachine$DiscoverWivuState;
.super Lcom/htc/server/State;
.source "WfdStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WfdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DiscoverWivuState"
.end annotation


# instance fields
.field isCt1Timeout:Z

.field isMirrorSucceed:Z

.field final synthetic this$0:Lcom/htc/server/WfdStateMachine;


# direct methods
.method constructor <init>(Lcom/htc/server/WfdStateMachine;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-direct {p0}, Lcom/htc/server/State;-><init>()V

    iput-boolean v0, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->isCt1Timeout:Z

    iput-boolean v0, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->isMirrorSucceed:Z

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->isCt1Timeout:Z

    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->isMirrorSucceed:Z

    return-void
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exit>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine;->isMirrorModeEnable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->isCt1Timeout:Z

    if-nez v0, :cond_0

    const-string v0, "WfdStateMachine"

    const-string v1, "Enable scan....@Wivu end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v0, v0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0, v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiDisplayUnscan(Landroid/net/wifi/WifiManager;Z)Z

    :cond_0
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->isCt1Timeout:Z

    iget-boolean v0, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->isMirrorSucceed:Z

    if-nez v0, :cond_1

    const-string v0, "WfdStateMachine"

    const-string v1, "Mirror isn\'t succeed, notify WDS stop mirror and disable AP."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v0, v0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v0, v3}, Lcom/htc/service/WirelessDisplayManager;->mirrorModeStartStop(Z)Z

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->forceDisableAp()V
    invoke-static {v0}, Lcom/htc/server/WfdStateMachine;->access$1800(Lcom/htc/server/WfdStateMachine;)V

    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const-string v10, "WfdStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Processing==> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    const-string v10, "WfdStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " drop message "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v10, 0x1

    :goto_1
    return v10

    :sswitch_0
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v10, :cond_9

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v10, :cond_1

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "nwif":Ljava/lang/String;
    :goto_2
    :try_start_0
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v10, v7}, Lcom/htc/service/WirelessDisplayManager;->setInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    const-string v10, "WfdStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[WFD]===>Start Wivu discovery, interface = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v10, v10, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_2

    const/4 v0, 0x1

    .local v0, "autoMirroring":Z
    :goto_4
    const-string v10, "WfdStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[WFD]===>Auto Mirroring, select dongle ssid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v12, v12, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v12, v12, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", bssid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v12, v12, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v12, v12, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    iget-object v11, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v11, v11, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v11, v11, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/service/WirelessDisplayManager;->selectDongle(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    # getter for: Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/server/WfdStateMachine;->access$000(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    sget-boolean v10, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/htc/server/WfdStateMachine;->mIsWivuTimeout:Z

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v10, v10, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x3c

    # invokes: Lcom/htc/server/WfdStateMachine;->sendConfiguringProgress(I)V
    invoke-static {v10, v11}, Lcom/htc/server/WfdStateMachine;->access$2200(Lcom/htc/server/WfdStateMachine;I)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x35

    const-wide/16 v12, 0x2710

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x1e

    const-wide/32 v12, 0x9c40

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .end local v0    # "autoMirroring":Z
    .end local v7    # "nwif":Ljava/lang/String;
    :cond_1
    const-string v10, "WfdStateMachine"

    const-string v11, "Empty network interface detect."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    # getter for: Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/server/WfdStateMachine;->access$000(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "nwif":Ljava/lang/String;
    goto/16 :goto_2

    :catch_0
    move-exception v9

    .local v9, "se":Ljava/lang/SecurityException;
    const-string v10, "WfdStateMachine"

    const-string v11, "mWDManager.setInterface occurs SecurityException. "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v9    # "se":Ljava/lang/SecurityException;
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_4

    .restart local v0    # "autoMirroring":Z
    :catch_1
    move-exception v3

    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_3
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v10, v10, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x30

    const-wide/16 v12, 0x4e20

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    :cond_4
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x1e

    const-wide/16 v12, 0x4e20

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    :cond_5
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x3c

    # invokes: Lcom/htc/server/WfdStateMachine;->sendConfiguringProgress(I)V
    invoke-static {v10, v11}, Lcom/htc/server/WfdStateMachine;->access$2200(Lcom/htc/server/WfdStateMachine;I)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x35

    const-wide/16 v12, 0x2710

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x30

    const-wide/32 v12, 0x9c40

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    :cond_6
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    # getter for: Lcom/htc/server/WfdStateMachine;->mSoftapInterface:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/server/WfdStateMachine;->access$1400(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v10, v10, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v10, v10, Lcom/htc/server/WfdStateMachine;->mConfigProgress:I

    const/16 v11, 0x32

    if-ne v10, v11, :cond_8

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x35

    invoke-virtual {v10, v11}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x4b

    # invokes: Lcom/htc/server/WfdStateMachine;->sendConfiguringProgress(I)V
    invoke-static {v10, v11}, Lcom/htc/server/WfdStateMachine;->access$2200(Lcom/htc/server/WfdStateMachine;I)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x35

    const-wide/16 v12, 0x1388

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    :cond_7
    :goto_6
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x30

    const-wide/32 v12, 0x15f90

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v10, v10, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x36

    invoke-virtual {v10, v11}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v10, v10, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v10, v10, Lcom/htc/server/WfdStateMachine;->mConfigProgress:I

    const/16 v11, 0x4b

    if-ne v10, v11, :cond_7

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x50

    # invokes: Lcom/htc/server/WfdStateMachine;->sendConfiguringProgress(I)V
    invoke-static {v10, v11}, Lcom/htc/server/WfdStateMachine;->access$2200(Lcom/htc/server/WfdStateMachine;I)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x35

    const-wide/16 v12, 0x3a98

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_6

    .end local v0    # "autoMirroring":Z
    .end local v7    # "nwif":Ljava/lang/String;
    :cond_9
    const-string v10, "WfdStateMachine"

    const-string v11, "[WFD]===>CMD_START_WIVU_DISCOVERY: mCurrentDongle is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_1
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v10, v10, Lcom/htc/server/WfdStateMachine;->mConfigProgress:I

    const/16 v11, 0x3c

    if-ne v10, v11, :cond_a

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x46

    # invokes: Lcom/htc/server/WfdStateMachine;->sendConfiguringProgress(I)V
    invoke-static {v10, v11}, Lcom/htc/server/WfdStateMachine;->access$2200(Lcom/htc/server/WfdStateMachine;I)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x35

    const-wide/16 v12, 0x2710

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    :cond_a
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v10, v10, Lcom/htc/server/WfdStateMachine;->mConfigProgress:I

    const/16 v11, 0x46

    if-ne v10, v11, :cond_b

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x4b

    # invokes: Lcom/htc/server/WfdStateMachine;->sendConfiguringProgress(I)V
    invoke-static {v10, v11}, Lcom/htc/server/WfdStateMachine;->access$2200(Lcom/htc/server/WfdStateMachine;I)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x35

    const-wide/16 v12, 0x2710

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    :cond_b
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v10, v10, Lcom/htc/server/WfdStateMachine;->mConfigProgress:I

    const/16 v11, 0x5f

    if-ge v10, v11, :cond_0

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v11, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v11, v11, Lcom/htc/server/WfdStateMachine;->mConfigProgress:I

    add-int/lit8 v11, v11, 0x5

    # invokes: Lcom/htc/server/WfdStateMachine;->sendConfiguringProgress(I)V
    invoke-static {v10, v11}, Lcom/htc/server/WfdStateMachine;->access$2200(Lcom/htc/server/WfdStateMachine;I)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x35

    const-wide/16 v12, 0x3a98

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->requestCT2OnDemand()V
    invoke-static {v10}, Lcom/htc/server/WfdStateMachine;->access$1200(Lcom/htc/server/WfdStateMachine;)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x36

    const-wide/16 v12, 0xbb8

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v10, :cond_e

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v10, :cond_c

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "nwif":Ljava/lang/String;
    :goto_7
    :try_start_2
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v10, v7}, Lcom/htc/service/WirelessDisplayManager;->setInterface(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_8
    const-string v10, "WfdStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[WFD]===>Start Wivu discovery, interface = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    # getter for: Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/server/WfdStateMachine;->access$000(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    sget-boolean v10, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v10, :cond_0

    goto/16 :goto_0

    .end local v7    # "nwif":Ljava/lang/String;
    :cond_c
    const-string v10, "WfdStateMachine"

    const-string v11, "Empty network interface detect. Set interface to Softap for Connection Request."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    # getter for: Lcom/htc/server/WfdStateMachine;->mSoftapInterface:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/server/WfdStateMachine;->access$1400(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "nwif":Ljava/lang/String;
    goto :goto_7

    :catch_2
    move-exception v9

    .restart local v9    # "se":Ljava/lang/SecurityException;
    const-string v10, "WfdStateMachine"

    const-string v11, "mWDManager.setInterface occurs SecurityException. "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .end local v9    # "se":Ljava/lang/SecurityException;
    :cond_d
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    # getter for: Lcom/htc/server/WfdStateMachine;->mSoftapInterface:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/server/WfdStateMachine;->access$1400(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x30

    const-wide/32 v12, 0x9c40

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x36

    const-wide/16 v12, 0x7d0

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .end local v7    # "nwif":Ljava/lang/String;
    :cond_e
    const-string v10, "WfdStateMachine"

    const-string v11, "[WFD]===>CMD_WIVU_DISCOVERY_FOR_CONNECTION_REQUEST: mCurrentDongle is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_4
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x36

    invoke-virtual {v10, v11}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    invoke-virtual {v10}, Ljava/util/BitSet;->clear()V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v11, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v11, v11, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v10, v11}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x42

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v10, v11}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/htc/server/WfdStateMachine;->mIsConnectionRequest:Z

    goto/16 :goto_0

    :sswitch_5
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->isMirrorSucceed:Z

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x35

    invoke-virtual {v10, v11}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x1e

    invoke-virtual {v10, v11}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x36

    invoke-virtual {v10, v11}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->notifyDfsReconnect()V
    invoke-static {v10}, Lcom/htc/server/WfdStateMachine;->access$2600(Lcom/htc/server/WfdStateMachine;)V

    :cond_f
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    invoke-virtual {v10}, Ljava/util/BitSet;->clear()V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/htc/server/WfdStateMachine;->mIsUnlockDongle:Z

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v10, v10, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x64

    # invokes: Lcom/htc/server/WfdStateMachine;->sendConfiguringProgress(I)V
    invoke-static {v10, v11}, Lcom/htc/server/WfdStateMachine;->access$2200(Lcom/htc/server/WfdStateMachine;I)V

    :cond_10
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v11, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v11, v11, Lcom/htc/server/WfdStateMachine;->mLinkOnState:Lcom/htc/server/State;

    invoke-virtual {v10, v11}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v10, v10, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .local v8, "prefs":Landroid/content/SharedPreferences;
    const-string v10, "isFirstConfigurationSuccessful"

    const/4 v11, 0x1

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .local v4, "fcsFlag":Z
    const-string v10, "WfdStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Show tutorial = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_11

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v10, "isFirstConfigurationSuccessful"

    const/4 v11, 0x0

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x3c

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v10, v11}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_0

    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_11
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v10, v10, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v10, :cond_12

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x36

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v10, v11}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_0

    :cond_12
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v10, v10, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_13

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x25

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v10, v11}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_0

    :cond_13
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x37

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v10, v11}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_0

    .end local v4    # "fcsFlag":Z
    .end local v8    # "prefs":Landroid/content/SharedPreferences;
    :cond_14
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v10, v10, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const/16 v11, 0x38

    if-ne v10, v11, :cond_15

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x21

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v10, v11}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_0

    :cond_15
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v10, v10, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v10, :cond_16

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x1f

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v10, v11}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_0

    :cond_16
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v10, v10, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_17

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v12, v12, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    # invokes: Lcom/htc/server/WfdStateMachine;->showConnectingDialog(ZLcom/htc/service/DongleInfo;)V
    invoke-static {v10, v11, v12}, Lcom/htc/server/WfdStateMachine;->access$2700(Lcom/htc/server/WfdStateMachine;ZLcom/htc/service/DongleInfo;)V

    :cond_17
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x20

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v10, v11}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_0

    :sswitch_6
    const-string v10, "WfdStateMachine"

    const-string v11, "[WFD]===>Wivu discovery timeout."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/htc/server/WfdStateMachine;->mIsWivuTimeout:Z

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v10, v10, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-nez v10, :cond_18

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v10, v10, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    if-eqz v10, :cond_19

    :cond_18
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->saveLimitedApInfo()V
    invoke-static {v10}, Lcom/htc/server/WfdStateMachine;->access$1100(Lcom/htc/server/WfdStateMachine;)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    :cond_19
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v10}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifidisplayApEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v10

    if-nez v10, :cond_1a

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->isCt1Timeout:Z

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->requestCT2OnDemand()V
    invoke-static {v10}, Lcom/htc/server/WfdStateMachine;->access$1200(Lcom/htc/server/WfdStateMachine;)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->preloadDlnaService()V
    invoke-static {v10}, Lcom/htc/server/WfdStateMachine;->access$1300(Lcom/htc/server/WfdStateMachine;)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v11, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v11, v11, Lcom/htc/server/WfdStateMachine;->mControlApState:Lcom/htc/server/State;

    invoke-virtual {v10, v11}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v11, 0x7

    const-wide/16 v12, 0x3e8

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    :cond_1a
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x1c

    iget-object v12, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    # getter for: Lcom/htc/server/WfdStateMachine;->mSoftapInterface:Ljava/lang/String;
    invoke-static {v12}, Lcom/htc/server/WfdStateMachine;->access$1400(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/htc/server/WfdStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v10, v10, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-nez v10, :cond_1b

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v10, v10, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    const/4 v11, 0x3

    if-eq v10, v11, :cond_1b

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v10, v10, Lcom/htc/server/WfdStateMachine;->mIsConnectionRequest:Z

    if-eqz v10, :cond_1d

    :cond_1b
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v10, v10, Lcom/htc/server/WfdStateMachine;->mIsConnectionRequest:Z

    if-eqz v10, :cond_1c

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x43

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v10, v11}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/htc/server/WfdStateMachine;->mIsConnectionRequest:Z

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v11, 0x4

    const/4 v12, 0x0

    # invokes: Lcom/htc/server/WfdStateMachine;->reportErrorCode(IZ)V
    invoke-static {v10, v11, v12}, Lcom/htc/server/WfdStateMachine;->access$2300(Lcom/htc/server/WfdStateMachine;IZ)V

    :goto_9
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/service/WirelessDisplayManager;->mirrorModeStartStop(Z)Z

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v11, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v11, v11, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v10, v11}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    goto/16 :goto_0

    :cond_1c
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v11, 0x4

    const/4 v12, 0x1

    # invokes: Lcom/htc/server/WfdStateMachine;->reportErrorCode(IZ)V
    invoke-static {v10, v11, v12}, Lcom/htc/server/WfdStateMachine;->access$2300(Lcom/htc/server/WfdStateMachine;IZ)V

    goto :goto_9

    :cond_1d
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v10, v10, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const/16 v11, 0x38

    if-ne v10, v11, :cond_1e

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x3b

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v10, v11}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    :goto_a
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v11, 0x4

    const/4 v12, 0x0

    # invokes: Lcom/htc/server/WfdStateMachine;->reportErrorCode(IZ)V
    invoke-static {v10, v11, v12}, Lcom/htc/server/WfdStateMachine;->access$2300(Lcom/htc/server/WfdStateMachine;IZ)V

    goto :goto_9

    :cond_1e
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v10, v10, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const/16 v11, 0xb

    if-ne v10, v11, :cond_1f

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x22

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v10, v11}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto :goto_a

    :cond_1f
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x24

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v10, v11}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto :goto_a

    :sswitch_8
    const-string v10, "WfdStateMachine"

    const-string v11, "[WFD]===> Receive disabled state in DiscovererWivu state, selectDongle() again"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "WfdStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[WFD]===> select dongle ssid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v12, v12, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v12, v12, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", bssid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v12, v12, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v12, v12, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    iget-object v11, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v11, v11, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v11, v11, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/service/WirelessDisplayManager;->selectDongle(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v3

    .restart local v3    # "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v3    # "ex":Ljava/lang/Exception;
    :sswitch_9
    const-string v10, "WfdStateMachine"

    const-string v11, "[WFD]===> Receive WiFi disabled state in DiscovererWivu state! ResetStateMachine()"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x22

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v10, v11}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v10}, Lcom/htc/server/WfdStateMachine;->resetStateMachine()V

    goto/16 :goto_0

    :sswitch_a
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/NetworkInfo;

    .local v6, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_26

    if-eqz v6, :cond_26

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v10, :cond_26

    const-string v10, "WfdStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Network type = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", info "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v10

    sget-object v11, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v10, v11}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "WfdStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Wifi reconnected, auto Mirroring, select dongle ssid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v12, v12, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v12, v12, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", bssid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v12, v12, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v12, v12, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_4
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    iget-object v11, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v11, v11, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v11, v11, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/service/WirelessDisplayManager;->selectDongle(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_b
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v10}, Lcom/htc/service/WirelessDisplayManager;->getInterface()Ljava/lang/String;

    move-result-object v5

    .local v5, "iface":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "currentIsSta":Z
    if-eqz v5, :cond_20

    const-string v10, "WfdStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Current wivu interface is: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    # getter for: Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/server/WfdStateMachine;->access$000(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    const/4 v1, 0x1

    :cond_20
    :goto_c
    if-eqz v1, :cond_25

    sget-boolean v10, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v10, :cond_24

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x1e

    invoke-virtual {v10, v11}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v10, v10, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-eqz v10, :cond_22

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x1e

    const-wide/32 v12, 0x9c40

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .end local v1    # "currentIsSta":Z
    .end local v5    # "iface":Ljava/lang/String;
    :catch_4
    move-exception v3

    .restart local v3    # "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v1    # "currentIsSta":Z
    .restart local v5    # "iface":Ljava/lang/String;
    :cond_21
    const/4 v1, 0x0

    goto :goto_c

    :cond_22
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v10, v10, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-nez v10, :cond_23

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x30

    const-wide/16 v12, 0x4e20

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    :cond_23
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x1e

    const-wide/16 v12, 0x4e20

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    :cond_24
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x30

    invoke-virtual {v10, v11}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x35

    const-wide/16 v12, 0x2710

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x30

    const-wide/32 v12, 0x9c40

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    :cond_25
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x30

    invoke-virtual {v10, v11}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x30

    const-wide/32 v12, 0x15f90

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .end local v1    # "currentIsSta":Z
    .end local v5    # "iface":Ljava/lang/String;
    :cond_26
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-nez v10, :cond_0

    const-string v10, "WfdStateMachine"

    const-string v11, "[WFD]===>CMD_NOTIFY_NETWORK_CHANGE: mCurrentDongle is null"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v6    # "info":Landroid/net/NetworkInfo;
    :sswitch_b
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v11, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v11, v11, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v10, v11}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0xd

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v10, v11}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_0

    :sswitch_d
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v11, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v11, v11, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v10, v11}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v11, 0x28

    invoke-virtual {v10, v11}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :sswitch_e
    const-string v10, "WfdStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AP is disabled during DiscoverWivu: configure = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v12, v12, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", discover = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v12, v12, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v10, v10, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-eqz v10, :cond_27

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v11, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v11, v11, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v10, v11}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :cond_27
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v10, v10, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v11, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v11, v11, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v10, v11}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :sswitch_f
    const/4 v10, 0x0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_f
        0x1 -> :sswitch_b
        0x6 -> :sswitch_9
        0xa -> :sswitch_e
        0x1c -> :sswitch_0
        0x1e -> :sswitch_6
        0x1f -> :sswitch_a
        0x20 -> :sswitch_5
        0x21 -> :sswitch_8
        0x27 -> :sswitch_c
        0x28 -> :sswitch_d
        0x30 -> :sswitch_7
        0x32 -> :sswitch_f
        0x35 -> :sswitch_1
        0x36 -> :sswitch_2
        0x38 -> :sswitch_f
        0x3b -> :sswitch_3
        0x3c -> :sswitch_4
        0x64 -> :sswitch_f
    .end sparse-switch
.end method
