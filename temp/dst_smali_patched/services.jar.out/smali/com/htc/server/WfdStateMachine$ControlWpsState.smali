.class Lcom/htc/server/WfdStateMachine$ControlWpsState;
.super Lcom/htc/server/State;
.source "WfdStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WfdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControlWpsState"
.end annotation


# instance fields
.field isL2PESucceed:Z

.field isWpsSucceed:Z

.field final synthetic this$0:Lcom/htc/server/WfdStateMachine;


# direct methods
.method constructor <init>(Lcom/htc/server/WfdStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-direct {p0}, Lcom/htc/server/State;-><init>()V

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

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$ControlWpsState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v0, Lcom/htc/server/WfdStateMachine;->mIsWpsStart:Z

    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->isWpsSucceed:Z

    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->isL2PESucceed:Z

    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exit>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$ControlWpsState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v0, v0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->stopWpsRegistrar(Landroid/net/wifi/WifiManager;)V

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/server/WfdStateMachine;->mIsWpsStart:Z

    iget-boolean v0, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->isL2PESucceed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v0, v0, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->forceDisableAp()V
    invoke-static {v0}, Lcom/htc/server/WfdStateMachine;->access$1800(Lcom/htc/server/WfdStateMachine;)V

    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0x1c

    const/16 v7, 0x11

    const/4 v1, 0x0

    const/16 v6, 0xd

    const/4 v2, 0x1

    const-string v3, "WfdStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Processing==> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$ControlWpsState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    const-string v1, "WfdStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$ControlWpsState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " drop message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    move v1, v2

    :sswitch_0
    return v1

    :sswitch_1
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->setL2peApInfo()V
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$1900(Lcom/htc/server/WfdStateMachine;)V

    const-string v3, "WfdStateMachine"

    const-string v4, "[WFD]===>Start WPS pairing..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0xe

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v3, v4}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    new-instance v0, Landroid/net/wifi/WpsInfo;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo;-><init>()V

    .local v0, "wpsConfig":Landroid/net/wifi/WpsInfo;
    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v1, v1, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1, v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->startWpsRegistrar(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WpsInfo;)V

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v1, v1, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v1, v6, v3, v4}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    :goto_1
    sget-boolean v1, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v1, v7}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    const-wide/32 v3, 0xc350

    invoke-virtual {v1, v6, v3, v4}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v3, 0x28

    # invokes: Lcom/htc/server/WfdStateMachine;->sendConfiguringProgress(I)V
    invoke-static {v1, v3}, Lcom/htc/server/WfdStateMachine;->access$2200(Lcom/htc/server/WfdStateMachine;I)V

    goto :goto_1

    .end local v0    # "wpsConfig":Landroid/net/wifi/WpsInfo;
    :sswitch_2
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v1, v6}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v1, v1, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->stopWpsRegistrar(Landroid/net/wifi/WifiManager;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v1, v1, Lcom/htc/server/WfdStateMachine;->mIsWpsStart:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v1, v1, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->requestWpsOnDemand()V
    invoke-static {v1}, Lcom/htc/server/WfdStateMachine;->access$200(Lcom/htc/server/WfdStateMachine;)V

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v7, v3, v4}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v1, v1, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget v1, v1, Lcom/htc/service/DongleInfo;->lockType:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->requestUnlockOnDemand()V
    invoke-static {v1}, Lcom/htc/server/WfdStateMachine;->access$1700(Lcom/htc/server/WfdStateMachine;)V

    goto :goto_2

    :sswitch_4
    const-string v1, "WfdStateMachine"

    const-string v3, "[WFD]===>Receive WPS start event."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v3, 0xa

    # invokes: Lcom/htc/server/WfdStateMachine;->sendConfiguringProgress(I)V
    invoke-static {v1, v3}, Lcom/htc/server/WfdStateMachine;->access$2200(Lcom/htc/server/WfdStateMachine;I)V

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v2, v1, Lcom/htc/server/WfdStateMachine;->mIsWpsStart:Z

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v1, v7}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "WfdStateMachine"

    const-string v3, "[WFD]===>Receive WPS successful event."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v3, 0x28

    # invokes: Lcom/htc/server/WfdStateMachine;->sendConfiguringProgress(I)V
    invoke-static {v1, v3}, Lcom/htc/server/WfdStateMachine;->access$2200(Lcom/htc/server/WfdStateMachine;I)V

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v1, v6}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v1, v1, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->stopWpsRegistrar(Landroid/net/wifi/WifiManager;)V

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v1, v1, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v1, v1, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v3, 0x30

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v1, v3}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v1, v1, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v1, v1, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v3, 0x2b

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v3, v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    :goto_4
    iput-boolean v2, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->isWpsSucceed:Z

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v1, v1, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v3, 0x31

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v1, v3}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v3, 0x32

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v1, v3}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v3, 0x2b

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v3, v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->preloadDlnaService()V
    invoke-static {v1}, Lcom/htc/server/WfdStateMachine;->access$1300(Lcom/htc/server/WfdStateMachine;)V

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mDiscoverWivuState:Lcom/htc/server/State;

    invoke-virtual {v1, v3}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    # getter for: Lcom/htc/server/WfdStateMachine;->mSoftapInterface:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$1400(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, Lcom/htc/server/WfdStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_4

    :sswitch_6
    const-string v3, "WfdStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WFD]===>Receive WPS failure event. WPS success = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->isWpsSucceed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->isWpsSucceed:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v3, v6}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->stopWpsRegistrar(Landroid/net/wifi/WifiManager;)V

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    if-nez v3, :cond_9

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->reportErrorCode(IZ)V
    invoke-static {v1, v2, v2}, Lcom/htc/server/WfdStateMachine;->access$2300(Lcom/htc/server/WfdStateMachine;IZ)V

    :goto_5
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v1, v3}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    goto/16 :goto_0

    :cond_9
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x22

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v3, v4}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x8

    # invokes: Lcom/htc/server/WfdStateMachine;->reportErrorCode(IZ)V
    invoke-static {v3, v4, v1}, Lcom/htc/server/WfdStateMachine;->access$2300(Lcom/htc/server/WfdStateMachine;IZ)V

    goto :goto_5

    :sswitch_7
    const-string v3, "WfdStateMachine"

    const-string v4, "[WFD]===>WPS Timeout!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->stopWpsRegistrar(Landroid/net/wifi/WifiManager;)V

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v4, 0x2

    # invokes: Lcom/htc/server/WfdStateMachine;->reportErrorCode(IZ)V
    invoke-static {v3, v4, v2}, Lcom/htc/server/WfdStateMachine;->access$2300(Lcom/htc/server/WfdStateMachine;IZ)V

    :goto_6
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v1, v3, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x22

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v3, v4}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x8

    # invokes: Lcom/htc/server/WfdStateMachine;->reportErrorCode(IZ)V
    invoke-static {v3, v4, v1}, Lcom/htc/server/WfdStateMachine;->access$2300(Lcom/htc/server/WfdStateMachine;IZ)V

    goto :goto_6

    :sswitch_8
    iget-boolean v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->isWpsSucceed:Z

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v1, v1, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-eqz v1, :cond_b

    const-string v1, "WfdStateMachine"

    const-string v3, "[WFD]===>Drop L2PE successful event."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    iput-boolean v2, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->isL2PESucceed:Z

    const-string v1, "WfdStateMachine"

    const-string v3, "[WFD]===>Receive L2PE successful event."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v3, 0x32

    # invokes: Lcom/htc/server/WfdStateMachine;->sendConfiguringProgress(I)V
    invoke-static {v1, v3}, Lcom/htc/server/WfdStateMachine;->access$2200(Lcom/htc/server/WfdStateMachine;I)V

    sget-boolean v1, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v1, v1, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->isWifiApEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mControlApState:Lcom/htc/server/State;

    invoke-virtual {v1, v3}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v1, v1, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->isAphConnectable(Z)Z
    invoke-static {v1, v2}, Lcom/htc/server/WfdStateMachine;->access$500(Lcom/htc/server/WfdStateMachine;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v1, v1, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifidisplayApEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mControlApState:Lcom/htc/server/State;

    invoke-virtual {v1, v3}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mDiscoverWivuState:Lcom/htc/server/State;

    invoke-virtual {v1, v3}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    # getter for: Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$000(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, Lcom/htc/server/WfdStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v1, v1, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->stopWpsRegistrar(Landroid/net/wifi/WifiManager;)V

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->preloadDlnaService()V
    invoke-static {v1}, Lcom/htc/server/WfdStateMachine;->access$1300(Lcom/htc/server/WfdStateMachine;)V

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mDiscoverWivuState:Lcom/htc/server/State;

    invoke-virtual {v1, v3}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    # getter for: Lcom/htc/server/WfdStateMachine;->mSoftapInterface:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$1400(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, Lcom/htc/server/WfdStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "WfdStateMachine"

    const-string v3, "L2 profile exchange timeout!!"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v1, v1, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v1, v1, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->stopWpsRegistrar(Landroid/net/wifi/WifiManager;)V

    :cond_f
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v3, 0x3

    # invokes: Lcom/htc/server/WfdStateMachine;->reportErrorCode(IZ)V
    invoke-static {v1, v3, v2}, Lcom/htc/server/WfdStateMachine;->access$2300(Lcom/htc/server/WfdStateMachine;IZ)V

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v1, v3}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "WfdStateMachine"

    const-string v3, "[WFD]===> Receive WiFi disabled state in DiscovererWivu state! ResetStateMachine()"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v1}, Lcom/htc/server/WfdStateMachine;->resetStateMachine()V

    goto/16 :goto_0

    :sswitch_b
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v1, v6}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v1, v1, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->stopWpsRegistrar(Landroid/net/wifi/WifiManager;)V

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v1, v3}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlWpsState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v3, 0x28

    invoke-virtual {v1, v3}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x6 -> :sswitch_a
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_7
        0xe -> :sswitch_5
        0xf -> :sswitch_6
        0x10 -> :sswitch_4
        0x11 -> :sswitch_3
        0x23 -> :sswitch_8
        0x28 -> :sswitch_b
        0x2b -> :sswitch_9
        0x32 -> :sswitch_0
        0x38 -> :sswitch_0
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
