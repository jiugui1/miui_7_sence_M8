.class Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;
.super Lcom/android/internal/util/State;
.source "PPPoE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)V
    .locals 0

    .prologue
    .line 687
    iput-object p1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 691
    const-string v0, "PPPoE"

    const-string v1, "ENTER ConnectedState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v0, v0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;
    invoke-static {v0}, Lcom/android/server/connectivity/PPPoE;->access$700(Lcom/android/server/connectivity/PPPoE;)Landroid/net/wifi/PPPOEInfo;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/PPPOEInfo$Status;->ONLINE:Landroid/net/wifi/PPPOEInfo$Status;

    iput-object v1, v0, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    .line 693
    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    const/4 v1, 0x2

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->setPPPoEState(I)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$900(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;I)V

    .line 694
    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v0, v0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;
    invoke-static {v0}, Lcom/android/server/connectivity/PPPoE;->access$700(Lcom/android/server/connectivity/PPPoE;)Landroid/net/wifi/PPPOEInfo;

    move-result-object v0

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/net/wifi/PPPOEInfo;->online_time:J

    .line 695
    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v0, v0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/android/server/connectivity/PPPoE;->monline_start_time:J
    invoke-static {v0, v1, v2}, Lcom/android/server/connectivity/PPPoE;->access$802(Lcom/android/server/connectivity/PPPoE;J)J

    .line 696
    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    const-string v1, "SUCCESS"

    const-string v2, "0"

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->feedbackCMDState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1800(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const-string v0, "net.pppoe.interface"

    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v1, v1, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/connectivity/PPPoE;->access$500(Lcom/android/server/connectivity/PPPoE;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->modifyRoutesAndDns()Z
    invoke-static {v0}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$100(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)Z

    .line 703
    return-void
.end method

.method public exit()V
    .locals 6

    .prologue
    .line 707
    const-string v2, "PPPoE"

    const-string v3, "EXIT ConnectedState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-boolean v2, v2, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->route_metched:Z

    if-nez v2, :cond_0

    .line 750
    :goto_0
    return-void

    .line 734
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v2, v2, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/connectivity/PPPoE;->access$300(Lcom/android/server/connectivity/PPPoE;)Landroid/os/INetworkManagementService;

    move-result-object v2

    const-string v3, "wlan0"

    const-string v4, "dhcp.wlan0.gateway"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const-string v5, "wlan0"

    invoke-static {v4, v5}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->addRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 736
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v2, v2, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/connectivity/PPPoE;->access$300(Lcom/android/server/connectivity/PPPoE;)Landroid/os/INetworkManagementService;

    move-result-object v2

    const-string v3, "wlan0"

    new-instance v4, Landroid/net/RouteInfo;

    const-string v5, "dhcp.wlan0.gateway"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->addRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 739
    const-string v2, "net.dns1"

    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v3, v3, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->original_dns1:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-string v2, "net.dns2"

    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v3, v3, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->original_dns2:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 742
    .local v0, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v2, v2, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->original_dns1:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 743
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v2, v2, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->original_dns2:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 744
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v2, v2, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/connectivity/PPPoE;->access$300(Lcom/android/server/connectivity/PPPoE;)Landroid/os/INetworkManagementService;

    move-result-object v2

    const-string v3, "wlan0"

    invoke-static {v0}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v2, v2, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/connectivity/PPPoE;->access$300(Lcom/android/server/connectivity/PPPoE;)Landroid/os/INetworkManagementService;

    move-result-object v2

    const-string v3, "wlan0"

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setDefaultInterfaceForDns(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 746
    .end local v0    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    :catch_0
    move-exception v1

    .line 747
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PPPoE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ROUTE] recover wifi_route error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mErrorOcurred:Z
    invoke-static {v2, v3}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1002(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Z)Z

    goto/16 :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 754
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 802
    const/4 v1, 0x0

    .line 804
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 756
    :sswitch_1
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    const-string v3, "ALREADY_ONLINE"

    const-string v4, "0"

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->feedbackCMDState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1800(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 760
    :sswitch_2
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v2, v2, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/connectivity/PPPoE;->access$300(Lcom/android/server/connectivity/PPPoE;)Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->stopPPPoE()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    :goto_1
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # getter for: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1500(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$2600(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 761
    :catch_0
    move-exception v0

    .line 762
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PPPoE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in stopPPPoE() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 769
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eq v2, v1, :cond_0

    .line 772
    const-string v2, "PPPoE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed for iface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v4, v4, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/PPPoE;->access$500(Lcom/android/server/connectivity/PPPoE;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reomved in ConnectedState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v2, v2, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/connectivity/PPPoE;->access$300(Lcom/android/server/connectivity/PPPoE;)Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->stopPPPoE()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 779
    :goto_2
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    const-string v3, "FAILURE"

    const-string v4, "691"

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->feedbackCMDState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1800(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v2, v2, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/connectivity/PPPoE;->access$502(Lcom/android/server/connectivity/PPPoE;Ljava/lang/String;)Ljava/lang/String;

    .line 781
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # setter for: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mErrorOcurred:Z
    invoke-static {v2, v1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1002(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Z)Z

    .line 782
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # getter for: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mDefaultState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$2000(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$2700(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 775
    :catch_1
    move-exception v0

    .line 776
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "PPPoE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in stopPPPoE() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 787
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_1

    .line 788
    const-string v2, "PPPoE"

    const-string v3, "already connected while interface come up, again!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 791
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v2, v2, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/connectivity/PPPoE;->access$300(Lcom/android/server/connectivity/PPPoE;)Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->stopPPPoE()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 795
    :goto_3
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # setter for: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mErrorOcurred:Z
    invoke-static {v2, v1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1002(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Z)Z

    .line 796
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # getter for: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1500(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$2800(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 792
    :catch_2
    move-exception v0

    .line 793
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "PPPoE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in stopPPPoE() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 754
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0x65 -> :sswitch_4
        0x66 -> :sswitch_3
        0x67 -> :sswitch_4
        0x68 -> :sswitch_0
    .end sparse-switch
.end method
