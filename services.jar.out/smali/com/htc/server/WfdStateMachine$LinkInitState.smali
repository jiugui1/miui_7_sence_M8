.class Lcom/htc/server/WfdStateMachine$LinkInitState;
.super Lcom/htc/server/State;
.source "WfdStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WfdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LinkInitState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WfdStateMachine;


# direct methods
.method constructor <init>(Lcom/htc/server/WfdStateMachine;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-direct {p0}, Lcom/htc/server/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 383
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$LinkInitState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x3

    const-wide/16 v10, 0xbb8

    const/16 v9, 0xb

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 387
    const-string v5, "WfdStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Processing==> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$LinkInitState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v6, v6, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v6

    iput v6, v5, Lcom/htc/server/WfdStateMachine;->mWifiState:I

    .line 389
    sget-boolean v5, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v5, :cond_4

    .line 390
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v6, v6, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v6}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifidisplayApState(Landroid/net/wifi/WifiManager;)I

    move-result v6

    iput v6, v5, Lcom/htc/server/WfdStateMachine;->mWifiApState:I

    .line 399
    :goto_0
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v5}, Lcom/htc/service/WirelessDisplayManager;->getInterface()Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "iface":Ljava/lang/String;
    const/4 v0, 0x1

    .line 402
    .local v0, "currentIsSta":Z
    if-eqz v1, :cond_0

    .line 403
    const-string v5, "WfdStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current wivu interface is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # getter for: Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/server/WfdStateMachine;->access$000(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v0, v3

    .line 409
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v5, :cond_1

    .line 410
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v6, v6, Lcom/htc/server/WfdStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    iput v6, v5, Lcom/htc/server/WfdStateMachine;->mNetworkType:I

    .line 412
    :cond_1
    const-string v5, "WfdStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wifi state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v7, v7, Lcom/htc/server/WfdStateMachine;->mWifiState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ap state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v7, v7, Lcom/htc/server/WfdStateMachine;->mWifiApState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", network type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v7, v7, Lcom/htc/server/WfdStateMachine;->mNetworkType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    sget-boolean v5, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v5, :cond_6

    const-string v5, "WfdStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wifi enable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v7, v7, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", AP enable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v7, v7, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v7}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifidisplayApEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_2
    :goto_2
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 901
    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$LinkInitState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " drop message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    move v4, v3

    .line 903
    :sswitch_0
    return v4

    .line 394
    .end local v0    # "currentIsSta":Z
    .end local v1    # "iface":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v6, v6, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v6}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifidisplayApState(Landroid/net/wifi/WifiManager;)I

    move-result v6

    iput v6, v5, Lcom/htc/server/WfdStateMachine;->mWifiApState:I

    goto/16 :goto_0

    .restart local v0    # "currentIsSta":Z
    .restart local v1    # "iface":Ljava/lang/String;
    :cond_5
    move v0, v4

    .line 404
    goto/16 :goto_1

    .line 415
    :cond_6
    sget-boolean v5, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v5, :cond_2

    const-string v5, "WfdStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wifi enable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v7, v7, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", AP enable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v7, v7, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v7}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->isWifiApEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 420
    :sswitch_1
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mControlWifiState:Lcom/htc/server/State;

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 421
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_3

    .line 426
    :sswitch_2
    sget-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v4, :cond_7

    if-nez v0, :cond_7

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v4}, Lcom/htc/server/WfdStateMachine;->isMirrorModeEnable()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 427
    const-string v4, "WfdStateMachine"

    const-string v5, "CT3 Mirror Enabled: Do not scan"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v4, v9}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 429
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v4}, Lcom/htc/server/WfdStateMachine;->notifyWivuListChanged()V

    goto :goto_3

    .line 432
    :cond_7
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_8

    .line 433
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mControlWifiState:Lcom/htc/server/State;

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 434
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v4, v12}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 436
    :cond_8
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mScanDongleState:Lcom/htc/server/State;

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 437
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 443
    :sswitch_3
    sget-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v4, :cond_9

    if-nez v0, :cond_9

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v4}, Lcom/htc/server/WfdStateMachine;->isMirrorModeEnable()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 444
    const-string v4, "WfdStateMachine"

    const-string v5, "CT3 Mirror Enabled: Do not scan"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v4, v9}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 446
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v4}, Lcom/htc/server/WfdStateMachine;->notifyWivuListChanged()V

    goto/16 :goto_3

    .line 449
    :cond_9
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsScanning:Z

    .line 450
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mScanDongleState:Lcom/htc/server/State;

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 451
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x19

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 455
    :sswitch_4
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x19

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 458
    :sswitch_5
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsWivuTimeout:Z

    .line 459
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 461
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v5, v5, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    if-eqz v5, :cond_a

    .line 462
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v6, 0x47

    invoke-virtual {v5, v6}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 463
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v6, 0x47

    const-wide/32 v7, 0x249f0

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    .line 465
    const-string v5, "WfdStateMachine"

    const-string v6, "CMD_START_CONFIGURE - Set CMD_RETRY_CONFIGURE_WITH_DONGLE_RESET = 150000"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v5, v5, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v5, :cond_c

    .line 468
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v6, 0x30

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v5, v6}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 475
    :cond_a
    :goto_4
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsCancelConfiguring:Z

    .line 476
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v5, v5, Lcom/htc/server/WfdStateMachine;->mIsDeferConfigure:Z

    if-eqz v5, :cond_b

    .line 477
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsDeferConfigure:Z

    .line 478
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->requestWpsOnDemand()V
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$200(Lcom/htc/server/WfdStateMachine;)V

    .line 480
    :cond_b
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v4}, Lcom/htc/service/WirelessDisplayManager;->stopWivuDiscovery()V

    .line 481
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    .line 483
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_f

    .line 484
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mControlWifiState:Lcom/htc/server/State;

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 485
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v4, v12}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 469
    :cond_c
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v5, v5, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-eq v5, v3, :cond_d

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v5, v5, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-ne v5, v12, :cond_e

    .line 470
    :cond_d
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v6, 0x31

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v5, v6}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto :goto_4

    .line 472
    :cond_e
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v6, 0x32

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v5, v6}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto :goto_4

    .line 486
    :cond_f
    sget-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v4}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifidisplayApEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_10
    sget-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v4, :cond_12

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v4}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->isWifiApEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 488
    :cond_11
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mControlApState:Lcom/htc/server/State;

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 489
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 491
    :cond_12
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-nez v4, :cond_13

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->isCommonProfileAPEnabled()Z
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$300(Lcom/htc/server/WfdStateMachine;)Z

    move-result v4

    if-nez v4, :cond_14

    :cond_13
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->isCommonProfileAPEnabled()Z
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$300(Lcom/htc/server/WfdStateMachine;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 494
    :cond_14
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->notifyConcurrentEnabled(Z)V
    invoke-static {v4, v3}, Lcom/htc/server/WfdStateMachine;->access$400(Lcom/htc/server/WfdStateMachine;Z)V

    .line 495
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mControlWpsState:Lcom/htc/server/State;

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 496
    sget-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v4, :cond_15

    .line 497
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v4, v9}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 499
    :cond_15
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v4, v9, v10, v11}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 501
    :cond_16
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mControlApState:Lcom/htc/server/State;

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 502
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 503
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsChangingProfile:Z

    goto/16 :goto_3

    .line 516
    :sswitch_6
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsDfsChannel:Z

    .line 517
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 519
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_17

    .line 520
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 521
    :cond_17
    const-string v4, "WfdStateMachine"

    const-string v5, "Set DISCONNECT_DFS bit."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 525
    :sswitch_7
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 526
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-nez v4, :cond_3

    .line 527
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v4, v3}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 530
    :sswitch_8
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->requestWpsOnDemand()V
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$200(Lcom/htc/server/WfdStateMachine;)V

    .line 531
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x11

    invoke-virtual {v4, v5, v10, v11}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 534
    :sswitch_9
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/NetworkInfo;

    .line 535
    .local v2, "info":Landroid/net/NetworkInfo;
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v5, v5, Lcom/htc/server/WfdStateMachine;->mIsDfsChannel:Z

    if-eqz v5, :cond_1b

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v3, :cond_1b

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v5, v6}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 537
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v5, v5, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    if-eqz v5, :cond_18

    .line 538
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v6, 0x2

    const-wide/16 v7, 0x7d0

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    .line 547
    :goto_5
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsDfsChannel:Z

    goto/16 :goto_3

    .line 539
    :cond_18
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v5, v5, Lcom/htc/server/WfdStateMachine;->mIsUnlockDongle:Z

    if-eqz v5, :cond_19

    .line 540
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v6, 0x40

    const-wide/16 v7, 0x7d0

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_5

    .line 541
    :cond_19
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v5, v5, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    if-eqz v5, :cond_1a

    .line 542
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v6, 0x44

    const-wide/16 v7, 0x7d0

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_5

    .line 544
    :cond_1a
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v3, v6, v7}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    .line 545
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->requestWpsOnDemand()V
    invoke-static {v5}, Lcom/htc/server/WfdStateMachine;->access$200(Lcom/htc/server/WfdStateMachine;)V

    goto :goto_5

    .line 548
    :cond_1b
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v5, v5, Lcom/htc/server/WfdStateMachine;->mIsResettingDongle:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v3, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v5, v6}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v5, v6}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1c
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget v5, v5, Lcom/htc/service/DongleInfo;->status:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1d

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget v5, v5, Lcom/htc/service/DongleInfo;->status:I

    if-ne v5, v3, :cond_3

    .line 555
    :cond_1d
    const-string v5, "WfdStateMachine"

    const-string v6, "Dongle is reset and wifi is just connected."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->clear(I)V

    .line 557
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsResettingDongle:Z

    .line 558
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 559
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    if-nez v4, :cond_1e

    .line 560
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v3, v5, v6}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 562
    :cond_1e
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->requestWpsOnDemand()V
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$200(Lcom/htc/server/WfdStateMachine;)V

    .line 563
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v4, v3, v10, v11}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 568
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :sswitch_a
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsWivuTimeout:Z

    .line 569
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 570
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsCancelConfiguring:Z

    .line 571
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x37

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 573
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_20

    sget-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v4, :cond_20

    if-eqz v0, :cond_20

    .line 576
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mControlWifiState:Lcom/htc/server/State;

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 577
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v4, v12}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 645
    :cond_1f
    :goto_6
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    goto/16 :goto_3

    .line 578
    :cond_20
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mNeedSwitchingAph:Z

    if-nez v4, :cond_1f

    .line 579
    sget-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v4, :cond_21

    if-nez v0, :cond_21

    .line 580
    const-string v4, "WfdStateMachine"

    const-string v5, "CT3 Mirror: Do not turn ON STA for CMD_START_DISCOVERY"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_21
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-eqz v4, :cond_22

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget v4, v4, Lcom/htc/service/DongleInfo;->status:I

    if-ne v4, v12, :cond_22

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-boolean v4, v4, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-eqz v4, :cond_22

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->isAphConnectable(Z)Z
    invoke-static {v4, v3}, Lcom/htc/server/WfdStateMachine;->access$500(Lcom/htc/server/WfdStateMachine;Z)Z

    move-result v4

    if-eqz v4, :cond_22

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->isDglConnToSameAphOrUncfg(Z)Z
    invoke-static {v4, v3}, Lcom/htc/server/WfdStateMachine;->access$600(Lcom/htc/server/WfdStateMachine;Z)Z

    move-result v4

    if-eqz v4, :cond_22

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->isAphSignalPoor()Z
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$700(Lcom/htc/server/WfdStateMachine;)Z

    move-result v4

    if-nez v4, :cond_22

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->isNoisyEnv()Z
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$800(Lcom/htc/server/WfdStateMachine;)Z

    move-result v4

    if-nez v4, :cond_22

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsP2pSet:Z

    if-eqz v4, :cond_23

    :cond_22
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsFixedCT1:Z

    if-eqz v4, :cond_24

    .line 592
    :cond_23
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mDiscoverWivuState:Lcom/htc/server/State;

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 593
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x1c

    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # getter for: Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/server/WfdStateMachine;->access$000(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/server/WfdStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_6

    .line 594
    :cond_24
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-eqz v4, :cond_25

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget v4, v4, Lcom/htc/service/DongleInfo;->status:I

    if-eq v4, v12, :cond_25

    if-eqz v0, :cond_25

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-boolean v4, v4, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-eqz v4, :cond_25

    .line 596
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mDiscoverWivuState:Lcom/htc/server/State;

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 597
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x1c

    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # getter for: Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/server/WfdStateMachine;->access$000(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/server/WfdStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 600
    :cond_25
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-nez v4, :cond_26

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-boolean v4, v4, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-eqz v4, :cond_26

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->isAphConnectable(Z)Z
    invoke-static {v4, v3}, Lcom/htc/server/WfdStateMachine;->access$500(Lcom/htc/server/WfdStateMachine;Z)Z

    move-result v4

    if-eqz v4, :cond_26

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->isDglConnToSameAphOrUncfg(Z)Z
    invoke-static {v4, v3}, Lcom/htc/server/WfdStateMachine;->access$600(Lcom/htc/server/WfdStateMachine;Z)Z

    move-result v4

    if-eqz v4, :cond_26

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->isAphSignalPoor()Z
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$700(Lcom/htc/server/WfdStateMachine;)Z

    move-result v4

    if-nez v4, :cond_26

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->isNoisyEnv()Z
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$800(Lcom/htc/server/WfdStateMachine;)Z

    move-result v4

    if-nez v4, :cond_26

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsP2pSet:Z

    if-eqz v4, :cond_27

    :cond_26
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsFixedCT1:Z

    if-eqz v4, :cond_28

    .line 606
    :cond_27
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mDiscoverWivuState:Lcom/htc/server/State;

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 607
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x1c

    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # getter for: Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/server/WfdStateMachine;->access$000(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/server/WfdStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 608
    :cond_28
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->isConnectToDfsChannels()Z
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$900(Lcom/htc/server/WfdStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_29

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->checkIfDfsAvailable()Z
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$1000(Lcom/htc/server/WfdStateMachine;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 609
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x34

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_6

    .line 611
    :cond_29
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsP2pSet:Z

    if-eqz v4, :cond_2a

    .line 613
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->saveLimitedApInfo()V
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$1100(Lcom/htc/server/WfdStateMachine;)V

    .line 616
    :cond_2a
    sget-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v4, :cond_2b

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v4}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifidisplayApEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v4

    if-eqz v4, :cond_2c

    :cond_2b
    sget-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v4, :cond_2d

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v4}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->isWifiApEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 618
    :cond_2c
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->requestCT2OnDemand()V
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$1200(Lcom/htc/server/WfdStateMachine;)V

    .line 619
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->preloadDlnaService()V
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$1300(Lcom/htc/server/WfdStateMachine;)V

    .line 620
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mControlApState:Lcom/htc/server/State;

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 621
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_6

    .line 623
    :cond_2d
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mDiscoverWivuState:Lcom/htc/server/State;

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 625
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsConnectionRequest:Z

    if-eqz v4, :cond_2e

    .line 626
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x3b

    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # getter for: Lcom/htc/server/WfdStateMachine;->mSoftapInterface:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/server/WfdStateMachine;->access$1400(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/server/WfdStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 632
    :cond_2e
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->isCommonProfileAPEnabled()Z
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$300(Lcom/htc/server/WfdStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_2f

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-eqz v4, :cond_30

    :cond_2f
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->isCommonProfileAPEnabled()Z
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$300(Lcom/htc/server/WfdStateMachine;)Z

    move-result v4

    if-nez v4, :cond_31

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-eqz v4, :cond_31

    .line 634
    :cond_30
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x1c

    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # getter for: Lcom/htc/server/WfdStateMachine;->mSoftapInterface:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/server/WfdStateMachine;->access$1400(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/server/WfdStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 636
    :cond_31
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mControlApState:Lcom/htc/server/State;

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 637
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 638
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsChangingProfile:Z

    goto/16 :goto_6

    .line 648
    :sswitch_b
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v6, 0x25

    invoke-virtual {v5, v6}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 649
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v5, Lcom/htc/server/WfdStateMachine;->mIsScanComplete:Z

    .line 650
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v5, v5, Lcom/htc/server/WfdStateMachine;->mIsDeferConfigure:Z

    if-eqz v5, :cond_33

    .line 651
    sget-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v4, :cond_32

    .line 652
    const-string v4, "WfdStateMachine"

    const-string v5, "Last scan is complete, ready to configure."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v4, v3}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 656
    :cond_32
    const-string v4, "WfdStateMachine"

    const-string v5, "Last scan is complete, send delay msg for WPSOnDemand."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x11

    invoke-virtual {v4, v5, v10, v11}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 660
    :cond_33
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v5, v5, Lcom/htc/server/WfdStateMachine;->mIsDeferDiscovery:Z

    if-eqz v5, :cond_3

    .line 661
    const-string v5, "WfdStateMachine"

    const-string v6, "Last scan is complete, ready to discovery."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 663
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsDeferDiscovery:Z

    goto/16 :goto_3

    .line 667
    :sswitch_c
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mNeedSwitchingAph:Z

    .line 668
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 671
    :sswitch_d
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v5, v5, Lcom/htc/server/WfdStateMachine;->mIsSwitchingDongles:Z

    if-eqz v5, :cond_3

    .line 672
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v6, 0x2

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    .line 673
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsSwitchingDongles:Z

    goto/16 :goto_3

    .line 681
    :sswitch_e
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v5, v5, Lcom/htc/server/WfdStateMachine;->mNotificationState:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_34

    .line 682
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->finish()V
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$1500(Lcom/htc/server/WfdStateMachine;)V

    goto/16 :goto_3

    .line 683
    :cond_34
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v5, v5, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    if-ne v5, v9, :cond_39

    .line 684
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v5, v9}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 686
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v5, v5, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-nez v5, :cond_35

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v5, v5, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    if-nez v5, :cond_35

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v5, v5, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    if-eqz v5, :cond_36

    .line 687
    :cond_35
    const-string v5, "WfdStateMachine"

    const-string v6, "Enable scan....@LinkInit - Cancel Configuring/Reconfiguring/Reconnecting"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v5, v4}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiDisplayUnscan(Landroid/net/wifi/WifiManager;Z)Z

    .line 690
    :cond_36
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    .line 691
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsShowScanning:Z

    .line 692
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsDeferConfigure:Z

    .line 693
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mNeedSwitchingAph:Z

    .line 694
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsSwitchingDongles:Z

    .line 695
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsResettingDongle:Z

    .line 696
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsConnectionRequest:Z

    .line 697
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsUnlockDongle:Z

    .line 698
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    .line 700
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v5, v5, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-nez v5, :cond_37

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v5, v5, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    if-eqz v5, :cond_38

    .line 701
    :cond_37
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v5, Lcom/htc/server/WfdStateMachine;->mIsCancelConfiguring:Z

    .line 702
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput v12, v5, Lcom/htc/server/WfdStateMachine;->mResetDongleCount:I

    .line 703
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 707
    :cond_38
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    .line 708
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    goto/16 :goto_3

    .line 709
    :cond_39
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v5, v5, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const/16 v6, 0x38

    if-eq v5, v6, :cond_3a

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v5, v5, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_3b

    .line 711
    :cond_3a
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v5, v9}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 712
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    .line 713
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    .line 714
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    .line 715
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsShowScanning:Z

    .line 716
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsDeferConfigure:Z

    .line 717
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mNeedSwitchingAph:Z

    .line 718
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsResettingDongle:Z

    .line 719
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsUnlockDongle:Z

    .line 720
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    .line 721
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsConnectionRequest:Z

    goto/16 :goto_3

    .line 723
    :cond_3b
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v4, v4, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const/16 v5, 0x3c

    if-ne v4, v5, :cond_3e

    .line 724
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v4, v4, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v4, :cond_3c

    .line 725
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v4, v9}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_3

    .line 727
    :cond_3c
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v4, v4, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3d

    .line 728
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x25

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v4, v5}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_3

    .line 730
    :cond_3d
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x37

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v4, v5}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_3

    .line 733
    :cond_3e
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v4}, Lcom/htc/server/WfdStateMachine;->resetStateMachine()V

    goto/16 :goto_3

    .line 737
    :sswitch_f
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsResettingDongle:Z

    if-nez v4, :cond_3

    .line 738
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    if-nez v4, :cond_3f

    .line 739
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v4, v4, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v4, :cond_43

    .line 740
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x30

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v4, v5}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 746
    :cond_3f
    :goto_7
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->requestResetOnDemand()V
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$1600(Lcom/htc/server/WfdStateMachine;)V

    .line 747
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v4, v4, Lcom/htc/server/WfdStateMachine;->mNetworkType:I

    if-ne v4, v3, :cond_41

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v4, :cond_41

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v4, v5}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v4, v5}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 750
    :cond_40
    const-string v4, "WfdStateMachine"

    const-string v5, "Wifi is connected before dongle resetting."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 753
    :cond_41
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsResettingDongle:Z

    .line 755
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    if-eqz v4, :cond_46

    .line 756
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsHardReset:Z

    if-eqz v4, :cond_42

    .line 757
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v5, 0x5

    iput v5, v4, Lcom/htc/server/WfdStateMachine;->mResetDongleCount:I

    .line 758
    :cond_42
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mControlWifiState:Lcom/htc/server/State;

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 759
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v5, 0x5

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 741
    :cond_43
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v4, v4, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-eq v4, v3, :cond_44

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v4, v4, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-ne v4, v12, :cond_45

    .line 742
    :cond_44
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x31

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v4, v5}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto :goto_7

    .line 744
    :cond_45
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x32

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v4, v5}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_7

    .line 761
    :cond_46
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mControlWifiState:Lcom/htc/server/State;

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 762
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v5, 0x5

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 767
    :sswitch_10
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->requestResetOnDemand()V
    invoke-static {v5}, Lcom/htc/server/WfdStateMachine;->access$1600(Lcom/htc/server/WfdStateMachine;)V

    .line 768
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v6, 0x3e

    invoke-virtual {v5, v6, v10, v11}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    .line 769
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v5, v5, Lcom/htc/server/WfdStateMachine;->mIsCancelConfiguring:Z

    if-eqz v5, :cond_48

    .line 770
    const-string v5, "WfdStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resetting dongle when canceling...count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v7, v7, Lcom/htc/server/WfdStateMachine;->mResetDongleCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v6, v5, Lcom/htc/server/WfdStateMachine;->mResetDongleCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/htc/server/WfdStateMachine;->mResetDongleCount:I

    .line 772
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v5, v5, Lcom/htc/server/WfdStateMachine;->mResetDongleCount:I

    if-nez v5, :cond_48

    .line 773
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v5, v5, Lcom/htc/server/WfdStateMachine;->mIsRequestScanning:Z

    if-eqz v5, :cond_47

    .line 774
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v6, 0x19

    const-wide/16 v7, 0x1388

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    .line 775
    :cond_47
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 776
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsCancelConfiguring:Z

    .line 777
    const-string v4, "WfdStateMachine"

    const-string v5, "Resetting dongle when canceling...Complete!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 781
    :cond_48
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v5, v5, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v5, v5, Lcom/htc/server/WfdStateMachine;->mIsHardReset:Z

    if-eqz v5, :cond_3

    .line 782
    const-string v5, "WfdStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hard-Resetting dongle when AutoTestConfiguring...count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v7, v7, Lcom/htc/server/WfdStateMachine;->mResetDongleCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v6, v5, Lcom/htc/server/WfdStateMachine;->mResetDongleCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/htc/server/WfdStateMachine;->mResetDongleCount:I

    .line 784
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v5, v5, Lcom/htc/server/WfdStateMachine;->mResetDongleCount:I

    if-nez v5, :cond_3

    .line 785
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v5, v5, Lcom/htc/server/WfdStateMachine;->mIsRequestScanning:Z

    if-eqz v5, :cond_49

    .line 786
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v6, 0x19

    const-wide/16 v7, 0x1388

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    .line 787
    :cond_49
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 788
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsHardReset:Z

    .line 789
    const-string v4, "WfdStateMachine"

    const-string v5, "Hard-Resetting dongle when AutoTestConfiguring...Complete!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const-string v4, "WfdStateMachine"

    const-string v5, "Request Scanning for updating Dongle"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x19

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    .line 792
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v4, v9}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_3

    .line 798
    :sswitch_11
    const-string v5, "WfdStateMachine"

    const-string v6, "Dongle is reset."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 800
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsCancelConfiguring:Z

    .line 801
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 802
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v5, v5, Lcom/htc/server/WfdStateMachine;->mNetworkType:I

    if-ne v5, v3, :cond_3

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v5, v6}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 805
    const-string v5, "WfdStateMachine"

    const-string v6, "Dongle is reset and wifi is already connected."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsResettingDongle:Z

    .line 807
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->clear(I)V

    .line 809
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    if-nez v4, :cond_4a

    .line 810
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v3, v5, v6}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 812
    :cond_4a
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->requestWpsOnDemand()V
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$200(Lcom/htc/server/WfdStateMachine;)V

    .line 813
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v4, v3, v10, v11}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 817
    :cond_4b
    const-string v5, "WfdStateMachine"

    const-string v6, "Dongle is reset and wifi isn\'t connected before."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsResettingDongle:Z

    .line 820
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    if-nez v4, :cond_4c

    .line 821
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v3, v5, v6}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 823
    :cond_4c
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->requestWpsOnDemand()V
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$200(Lcom/htc/server/WfdStateMachine;)V

    .line 824
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v4, v3, v10, v11}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 829
    :sswitch_12
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->isConnectToDfsChannels()Z
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$900(Lcom/htc/server/WfdStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_4d

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->checkIfDfsAvailable()Z
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$1000(Lcom/htc/server/WfdStateMachine;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 830
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x45

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 831
    :cond_4d
    sget-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v4, :cond_4e

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v4}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifidisplayApEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v4

    if-eqz v4, :cond_4f

    :cond_4e
    sget-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v4, :cond_50

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v4}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->isWifiApEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v4

    if-nez v4, :cond_50

    .line 833
    :cond_4f
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mControlApState:Lcom/htc/server/State;

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 834
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 836
    :cond_50
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->requestUnlockOnDemand()V
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$1700(Lcom/htc/server/WfdStateMachine;)V

    .line 837
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x40

    invoke-virtual {v4, v5, v10, v11}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 841
    :sswitch_13
    const-string v5, "WfdStateMachine"

    const-string v6, "[WFD]===>Dongle unlock successful."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 843
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v6, 0x43

    invoke-virtual {v5, v6}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 844
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsUnlockDongle:Z

    .line 846
    :sswitch_14
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    .line 847
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->isConnectToDfsChannels()Z
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$900(Lcom/htc/server/WfdStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_51

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->checkIfDfsAvailable()Z
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$1000(Lcom/htc/server/WfdStateMachine;)Z

    move-result v4

    if-nez v4, :cond_51

    .line 848
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x45

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 849
    :cond_51
    sget-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v4, :cond_52

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v4}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifidisplayApEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v4

    if-eqz v4, :cond_53

    :cond_52
    sget-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v4, :cond_54

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v4}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->isWifiApEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 851
    :cond_53
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mControlApState:Lcom/htc/server/State;

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 852
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 855
    :cond_54
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    # invokes: Lcom/htc/server/WfdStateMachine;->notifyConcurrentEnabled(Z)V
    invoke-static {v4, v3}, Lcom/htc/server/WfdStateMachine;->access$400(Lcom/htc/server/WfdStateMachine;Z)V

    .line 856
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mControlWpsState:Lcom/htc/server/State;

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 857
    sget-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v4, :cond_55

    .line 858
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v4, v9}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 860
    :cond_55
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v4, v9, v10, v11}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 864
    :sswitch_15
    const-string v5, "WfdStateMachine"

    const-string v6, "[WFD]===>Dongle unlock failed."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 866
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v6, 0x43

    invoke-virtual {v5, v6}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 867
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    .line 868
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsUnlockDongle:Z

    .line 869
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x40

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v4, v5}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_3

    .line 872
    :sswitch_16
    const-string v5, "WfdStateMachine"

    const-string v6, "[WFD]===>Dongle unlock timeout."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 874
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    .line 875
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v4, v5, Lcom/htc/server/WfdStateMachine;->mIsUnlockDongle:Z

    .line 876
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x41

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v4, v5}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_3

    .line 879
    :sswitch_17
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0xd

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v4, v5}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_3

    .line 882
    :sswitch_18
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x38

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v4, v5}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 883
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x19

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    goto/16 :goto_3

    .line 886
    :sswitch_19
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x3a

    # invokes: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v4, v5}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 887
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x19

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    goto/16 :goto_3

    .line 890
    :sswitch_1a
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v5, v4}, Lcom/htc/service/WirelessDisplayManager;->mirrorModeStartStop(Z)Z

    .line 891
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v4}, Lcom/htc/server/WfdStateMachine;->retryConfigure()V

    goto/16 :goto_3

    .line 897
    :sswitch_1b
    const-string v4, "WfdStateMachine"

    const-string v5, "[0619] ====>>> @LinkInit: Finish service, NOT quit state machine. <<<===="

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const-string v4, "WfdStateMachine"

    const-string v5, "[0619] ====>>> @LinkInit: Defer to WfdService OnDestroy() <<<===="

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 417
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_5
        0x2 -> :sswitch_a
        0x3 -> :sswitch_1
        0x11 -> :sswitch_8
        0x18 -> :sswitch_2
        0x19 -> :sswitch_3
        0x1f -> :sswitch_9
        0x21 -> :sswitch_d
        0x25 -> :sswitch_b
        0x27 -> :sswitch_17
        0x28 -> :sswitch_e
        0x2c -> :sswitch_4
        0x2e -> :sswitch_18
        0x2f -> :sswitch_19
        0x32 -> :sswitch_1b
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x37 -> :sswitch_c
        0x38 -> :sswitch_0
        0x3a -> :sswitch_7
        0x3d -> :sswitch_f
        0x3e -> :sswitch_10
        0x3f -> :sswitch_11
        0x40 -> :sswitch_12
        0x41 -> :sswitch_13
        0x42 -> :sswitch_15
        0x43 -> :sswitch_16
        0x44 -> :sswitch_14
        0x45 -> :sswitch_6
        0x47 -> :sswitch_1a
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
