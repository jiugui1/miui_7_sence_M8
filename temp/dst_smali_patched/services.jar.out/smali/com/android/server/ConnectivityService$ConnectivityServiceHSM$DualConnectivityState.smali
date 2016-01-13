.class abstract Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;
.super Lcom/android/internal/util/State;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DualConnectivityState"
.end annotation


# instance fields
.field protected mOtherDefaultConnectionSequence:I

.field protected mOtherDefaultInetCondition:I

.field protected mOtherDefaultInetConditionPublished:I

.field protected mOtherInetConditionChangeInFlight:Z

.field protected myDefaultNet:I

.field protected otherDefaultNet:I

.field protected resetConnections:I

.field final synthetic this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;


# direct methods
.method protected constructor <init>(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    iput v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetCondition:I

    iput v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetConditionPublished:I

    iput v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultConnectionSequence:I

    iput-boolean v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherInetConditionChangeInFlight:Z

    iput v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->resetConnections:I

    const-string v0, "persist.cne.wqe.db"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->resetConnections:I

    return-void
.end method

.method private handleConnectivityChange(Landroid/net/NetworkInfo;ZZ)V
    .locals 28
    .param p1, "replacedInfo"    # Landroid/net/NetworkInfo;
    .param p2, "doReset"    # Z
    .param p3, "doDns"    # Z

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v23

    .local v23, "netType":I
    if-eqz p2, :cond_5

    const/16 v25, 0x3

    .local v25, "resetMask":I
    :goto_0
    invoke-static/range {v23 .. v23}, Landroid/net/ConnectivityManager;->isNetworkTypeExempt(I)Z

    move-result v7

    .local v7, "exempt":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleConnectivityChange: netType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doReset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " resetMask="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v2, v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$21800(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleDnsConfigurationChange(Landroid/net/NetworkInfo;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$21900(Lcom/android/server/ConnectivityService;)[Landroid/net/LinkProperties;

    move-result-object v2

    aget-object v4, v2, v23

    .local v4, "curLp":Landroid/net/LinkProperties;
    const/4 v3, 0x0

    .local v3, "newLp":Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    aget-object v2, v2, v23

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    aget-object v2, v2, v23

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    # getter for: Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$400()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleConnectivityChange: changed linkProperty["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doReset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " resetMask="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n   curLp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n   newLp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v4, :cond_7

    invoke-virtual {v4, v3}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v4, v3}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v9

    .local v9, "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    iget-object v2, v9, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v9, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz v2, :cond_d

    :cond_2
    iget-object v2, v9, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/LinkAddress;

    .local v21, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual/range {v21 .. v21}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_4

    or-int/lit8 v25, v25, 0x1

    :cond_4
    invoke-virtual/range {v21 .. v21}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_3

    or-int/lit8 v25, v25, 0x2

    goto :goto_1

    .end local v3    # "newLp":Landroid/net/LinkProperties;
    .end local v4    # "curLp":Landroid/net/LinkProperties;
    .end local v7    # "exempt":Z
    .end local v9    # "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v21    # "linkAddr":Landroid/net/LinkAddress;
    .end local v25    # "resetMask":I
    :cond_5
    const/16 v25, 0x0

    goto/16 :goto_0

    .restart local v3    # "newLp":Landroid/net/LinkProperties;
    .restart local v4    # "curLp":Landroid/net/LinkProperties;
    .restart local v7    # "exempt":Z
    .restart local v9    # "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v25    # "resetMask":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleConnectivityChange: addresses changed linkProperty["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " resetMask="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n   car="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v2, v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$22000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .end local v9    # "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$21900(Lcom/android/server/ConnectivityService;)[Landroid/net/LinkProperties;

    move-result-object v2

    aput-object v3, v2, v23

    # getter for: Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$400()Z

    move-result v2

    if-eqz v2, :cond_8

    # getter for: Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Type of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v6, v6, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, v6, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v6, v6, v23

    iget-object v6, v6, Landroid/net/NetworkConfig;->mNetType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, v2, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v23

    invoke-virtual {v2}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, v2, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v23

    invoke-virtual {v2}, Landroid/net/NetworkConfig;->isExclusive()Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_9
    const/16 v19, 0x1

    .local v19, "isWan":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, v2, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v23

    invoke-virtual {v2}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$10100(Lcom/android/server/ConnectivityService;)[Lcom/android/server/ConnectivityService$RouteAttributes;

    move-result-object v2

    aget-object v6, v2, v23

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;ZLcom/android/server/ConnectivityService$RouteAttributes;Z)Z

    move-result v24

    .local v24, "resetDns":Z
    if-nez v25, :cond_a

    if-eqz v24, :cond_17

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    const-string v5, "handleConnectivityChange: resetting"

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v2, v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$22300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    if-eqz v4, :cond_17

    # getter for: Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$400()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleConnectivityChange: resetting curLp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_c
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .local v17, "iface":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    if-eqz v25, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetConnections("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v2, v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$22400(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-static {v0, v1}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    and-int/lit8 v2, v25, 0x1

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$16100(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v5

    monitor-enter v5

    const/4 v14, 0x0

    .local v14, "i":I
    :goto_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$16100(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v14, v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$16100(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v6}, Lcom/android/server/connectivity/Vpn;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .end local v14    # "i":I
    .end local v17    # "iface":Ljava/lang/String;
    .end local v19    # "isWan":Z
    .end local v24    # "resetDns":Z
    .restart local v9    # "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleConnectivityChange: address are the same reset per doReset linkProperty["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " resetMask="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v2, v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$22100(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v9    # "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_e
    const/16 v25, 0x3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleConnectivityChange: interface not not equivalent reset both linkProperty["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " resetMask="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v2, v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$22200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    # getter for: Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$400()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleConnectivityChange: changed linkProperty["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doReset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " resetMask="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n  curLp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n  newLp= null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_10
    const/16 v19, 0x0

    goto/16 :goto_3

    .restart local v14    # "i":I
    .restart local v17    # "iface":Ljava/lang/String;
    .restart local v19    # "isWan":Z
    .restart local v24    # "resetDns":Z
    :cond_11
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v14    # "i":I
    :cond_12
    if-eqz v24, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->flushVmDnsCache()V
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$17700(Lcom/android/server/ConnectivityService;)V

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v10

    .local v10, "curIface":Ljava/lang/String;
    const/4 v13, 0x1

    .local v13, "flushCashe":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v8

    .local v8, "arr$":[Landroid/net/NetworkStateTracker;
    array-length v0, v8

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_6
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_15

    aget-object v26, v8, v16

    .local v26, "tracker":Landroid/net/NetworkStateTracker;
    if-nez v26, :cond_14

    :cond_13
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .end local v8    # "arr$":[Landroid/net/NetworkStateTracker;
    .end local v10    # "curIface":Ljava/lang/String;
    .end local v13    # "flushCashe":Z
    .end local v16    # "i$":I
    .end local v20    # "len$":I
    .end local v26    # "tracker":Landroid/net/NetworkStateTracker;
    .restart local v14    # "i":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v14    # "i":I
    .restart local v8    # "arr$":[Landroid/net/NetworkStateTracker;
    .restart local v10    # "curIface":Ljava/lang/String;
    .restart local v13    # "flushCashe":Z
    .restart local v16    # "i$":I
    .restart local v20    # "len$":I
    .restart local v26    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_14
    invoke-interface/range {v26 .. v26}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    .local v12, "face":Ljava/lang/String;
    invoke-interface/range {v26 .. v26}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v18

    .local v18, "isConnected":Z
    if-eqz v12, :cond_13

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v18, :cond_13

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleConnectivityChange: flush DNS cache for net "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,netType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v26 .. v26}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is using "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ignore"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v2, v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$22500(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .end local v12    # "face":Ljava/lang/String;
    .end local v18    # "isConnected":Z
    .end local v26    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_15
    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flush DNS cache for net "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v2, v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$22600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$6900(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/os/INetworkManagementService;->flushInterfaceDnsCache(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception resetting dns cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static {v2, v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$22700(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto/16 :goto_4

    .end local v8    # "arr$":[Landroid/net/NetworkStateTracker;
    .end local v10    # "curIface":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v13    # "flushCashe":Z
    .end local v16    # "i$":I
    .end local v20    # "len$":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t reset connection for type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static {v2, v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$22800(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto/16 :goto_4

    .end local v17    # "iface":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    aget-object v26, v2, v23

    .restart local v26    # "tracker":Landroid/net/NetworkStateTracker;
    invoke-static {v4}, Lcom/android/server/connectivity/Nat464Xlat;->isRunningClat(Landroid/net/LinkProperties;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {v3}, Lcom/android/server/connectivity/Nat464Xlat;->isRunningClat(Landroid/net/LinkProperties;)Z

    move-result v2

    if-nez v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$17800(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Nat464Xlat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/connectivity/Nat464Xlat;->stopClat()V

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$17800(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Nat464Xlat;

    move-result-object v2

    move/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Lcom/android/server/connectivity/Nat464Xlat;->htcCheckClatToStartOrStop(ILandroid/net/NetworkStateTracker;)V

    if-eqz v3, :cond_19

    invoke-static {v3}, Lcom/android/server/connectivity/Nat464Xlat;->isRunningClat(Landroid/net/LinkProperties;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setInterfaceProtocol: clat is running on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v2, v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$22900(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$6900(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-interface {v2, v5, v6, v0}, Landroid/os/INetworkManagementService;->setInterfaceProtocol(Ljava/lang/String;ZZ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_19
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    aget-object v2, v2, v23

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    const-string v5, "linkPropertiesChanged"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v2}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v2

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mWifiManager:Landroid/net/wifi/IWifiManager;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;)Landroid/net/wifi/IWifiManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->getWifidisplayApEnabled()Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Tethering;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v5

    aget-object v5, v5, v23

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/connectivity/Tethering;->handleTetherIfaceChange(Landroid/net/NetworkInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1b
    :goto_8
    return-void

    :catch_1
    move-exception v11

    .restart local v11    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while setInterfaceProtocol: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static {v2, v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$23000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto :goto_7

    .end local v11    # "e":Ljava/lang/Exception;
    :cond_1c
    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v22

    .local v22, "localAddrDiff":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_1d

    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz v2, :cond_19

    :cond_1d
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$6900(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v6

    invoke-virtual {v3}, Landroid/net/LinkProperties;->hasIPv6Address()Z

    move-result v27

    move/from16 v0, v27

    invoke-interface {v2, v5, v6, v0}, Landroid/os/INetworkManagementService;->setInterfaceProtocol(Ljava/lang/String;ZZ)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_7

    :catch_2
    move-exception v11

    .restart local v11    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while setInterfaceProtocol: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static {v2, v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$23100(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto/16 :goto_7

    .end local v11    # "e":Ljava/lang/Exception;
    .end local v22    # "localAddrDiff":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :catch_3
    move-exception v11

    .local v11, "e":Landroid/os/RemoteException;
    const-string v2, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[tether] error to getHotspotEnabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8
.end method

.method private declared-synchronized handleDnsConfigurationChange(Landroid/net/NetworkInfo;)V
    .locals 19
    .param p1, "replacedInfo"    # Landroid/net/NetworkInfo;

    .prologue
    monitor-enter p0

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    .local v13, "replacedNetType":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    const/16 v16, -0x1

    # setter for: Lcom/android/server/ConnectivityService;->mDefaultDnsNet:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/ConnectivityService;->access$17902(Lcom/android/server/ConnectivityService;I)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mPriorityList:[I
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$18000(Lcom/android/server/ConnectivityService;)[I

    move-result-object v15

    array-length v15, v15

    add-int/lit8 v14, v15, -0x1

    .local v14, "x":I
    :goto_1
    if-ltz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mPriorityList:[I
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$18000(Lcom/android/server/ConnectivityService;)[I

    move-result-object v15

    aget v6, v15, v14

    .local v6, "netType":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v15

    aget-object v8, v15, v6

    .local v8, "nt":Landroid/net/NetworkStateTracker;
    if-eqz v8, :cond_2

    if-ne v13, v6, :cond_4

    move-object/from16 v9, p1

    .local v9, "ntNetworkInfo":Landroid/net/NetworkInfo;
    :goto_2
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v15

    if-nez v15, :cond_0

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v15

    sget-object v16, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_2

    :cond_0
    invoke-interface {v8}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v15

    if-nez v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v15, v15, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v15, v15, v6

    invoke-virtual {v15}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v15

    if-nez v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v15, v15, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v15, v15, v6

    invoke-virtual {v15}, Landroid/net/NetworkConfig;->isExclusive()Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v15, v15, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v15, v15, v6

    iget v15, v15, Landroid/net/NetworkConfig;->mExclusiveRadioType:I

    if-gez v15, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # setter for: Lcom/android/server/ConnectivityService;->mDefaultDnsNet:I
    invoke-static {v15, v6}, Lcom/android/server/ConnectivityService;->access$17902(Lcom/android/server/ConnectivityService;I)I

    .end local v9    # "ntNetworkInfo":Landroid/net/NetworkInfo;
    :cond_2
    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    .end local v6    # "netType":I
    .end local v8    # "nt":Landroid/net/NetworkStateTracker;
    .end local v13    # "replacedNetType":I
    .end local v14    # "x":I
    :cond_3
    const/4 v13, -0x1

    goto/16 :goto_0

    .restart local v6    # "netType":I
    .restart local v8    # "nt":Landroid/net/NetworkStateTracker;
    .restart local v13    # "replacedNetType":I
    .restart local v14    # "x":I
    :cond_4
    invoke-interface {v8}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    goto :goto_2

    .end local v6    # "netType":I
    .end local v8    # "nt":Landroid/net/NetworkStateTracker;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mPriorityList:[I
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$18000(Lcom/android/server/ConnectivityService;)[I

    move-result-object v15

    array-length v15, v15

    add-int/lit8 v14, v15, -0x1

    :goto_3
    if-ltz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mPriorityList:[I
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$18000(Lcom/android/server/ConnectivityService;)[I

    move-result-object v15

    aget v6, v15, v14

    .restart local v6    # "netType":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v15

    aget-object v8, v15, v6

    .restart local v8    # "nt":Landroid/net/NetworkStateTracker;
    if-ne v13, v6, :cond_8

    move-object/from16 v9, p1

    .restart local v9    # "ntNetworkInfo":Landroid/net/NetworkInfo;
    :goto_4
    if-eqz v8, :cond_b

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v15

    if-nez v15, :cond_6

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v15

    sget-object v16, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_b

    :cond_6
    invoke-interface {v8}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v15

    if-nez v15, :cond_b

    invoke-interface {v8}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    .local v10, "p":Landroid/net/LinkProperties;
    if-nez v10, :cond_a

    .end local v6    # "netType":I
    .end local v8    # "nt":Landroid/net/NetworkStateTracker;
    .end local v9    # "ntNetworkInfo":Landroid/net/NetworkInfo;
    .end local v10    # "p":Landroid/net/LinkProperties;
    :cond_7
    monitor-exit p0

    return-void

    .restart local v6    # "netType":I
    .restart local v8    # "nt":Landroid/net/NetworkStateTracker;
    :cond_8
    if-eqz v8, :cond_9

    :try_start_1
    invoke-interface {v8}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    goto :goto_4

    :cond_9
    const/4 v9, 0x0

    goto :goto_4

    .restart local v9    # "ntNetworkInfo":Landroid/net/NetworkInfo;
    .restart local v10    # "p":Landroid/net/LinkProperties;
    :cond_a
    invoke-virtual {v10}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v3

    .local v3, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v2, 0x0

    .local v2, "changed":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mDefaultDnsNet:I
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$17900(Lcom/android/server/ConnectivityService;)I

    move-result v15

    if-ne v6, v15, :cond_c

    invoke-interface {v8}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    .local v7, "network":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$6200(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v3, v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->updateDnsLocked(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v7    # "network":Ljava/lang/String;
    :goto_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->flushVmDnsCache()V
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$17700(Lcom/android/server/ConnectivityService;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v2    # "changed":Z
    .end local v3    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v10    # "p":Landroid/net/LinkProperties;
    :cond_b
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_3

    .restart local v2    # "changed":Z
    .restart local v3    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .restart local v7    # "network":Ljava/lang/String;
    .restart local v10    # "p":Landroid/net/LinkProperties;
    :catchall_0
    move-exception v15

    :try_start_4
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v2    # "changed":Z
    .end local v3    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v6    # "netType":I
    .end local v7    # "network":Ljava/lang/String;
    .end local v8    # "nt":Landroid/net/NetworkStateTracker;
    .end local v9    # "ntNetworkInfo":Landroid/net/NetworkInfo;
    .end local v10    # "p":Landroid/net/LinkProperties;
    .end local v13    # "replacedNetType":I
    .end local v14    # "x":I
    :catchall_1
    move-exception v15

    monitor-exit p0

    throw v15

    .restart local v2    # "changed":Z
    .restart local v3    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .restart local v6    # "netType":I
    .restart local v8    # "nt":Landroid/net/NetworkStateTracker;
    .restart local v9    # "ntNetworkInfo":Landroid/net/NetworkInfo;
    .restart local v10    # "p":Landroid/net/LinkProperties;
    .restart local v13    # "replacedNetType":I
    .restart local v14    # "x":I
    :cond_c
    :try_start_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$6900(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v15

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v16

    invoke-static {v3}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v15 .. v18}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_6
    :try_start_7
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$18200(Lcom/android/server/ConnectivityService;)[Ljava/util/List;

    move-result-object v15

    aget-object v12, v15, v6

    .local v12, "pids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .local v11, "pid":Ljava/lang/Integer;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$6900(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v15

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-interface/range {v15 .. v17}, Landroid/os/INetworkManagementService;->setDnsInterfaceForPid(Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_7

    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    :try_start_a
    const-string v15, "ConnectivityService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "exception setting interface for pid: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v11    # "pid":Ljava/lang/Integer;
    .end local v12    # "pids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_2
    move-exception v15

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v15

    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "exception setting dns servers: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$18100(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_6

    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v12    # "pids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_d
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/16 :goto_5
.end method

.method private updateDnsLocked(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 15
    .param p1, "iface"    # Ljava/lang/String;
    .param p3, "domains"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "netDnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v13}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$16200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " updateDns"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$16300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "changed":Z
    const/4 v7, 0x0

    .local v7, "last":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    const/4 v8, 0x0

    .local v8, "mlp":Landroid/net/LinkProperties;
    const/4 v9, 0x0

    .local v9, "olp":Landroid/net/LinkProperties;
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I
    invoke-static {v12}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)I

    move-result v12

    aget-object v11, v11, v12

    invoke-interface {v11}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v8

    if-nez v8, :cond_1

    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    const-string v12, "mlp is NULL"

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$16400(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->otherDefaultDnsNet:I
    invoke-static {v11}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->otherDefaultDnsNet:I
    invoke-static {v12}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)I

    move-result v12

    aget-object v11, v11, v12

    invoke-interface {v11}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    :cond_2
    invoke-virtual {v8}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$16500(Lcom/android/server/ConnectivityService;)Ljava/net/InetAddress;

    move-result-object v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$16500(Lcom/android/server/ConnectivityService;)Ljava/net/InetAddress;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "no dns provided - using "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v13, v13, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$16500(Lcom/android/server/ConnectivityService;)Ljava/net/InetAddress;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$16600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .local v1, "dns":Ljava/net/InetAddress;
    add-int/lit8 v7, v7, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "net.dns"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    .local v10, "value":Ljava/lang/String;
    if-nez v0, :cond_6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    :cond_6
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "adding dns "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$16700(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v6, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "set dns failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$16800(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "dns":Ljava/net/InetAddress;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :cond_7
    add-int/lit8 v4, v7, 0x1

    .local v4, "i":I
    :goto_2
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNumDnsEntries:I
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$16900(Lcom/android/server/ConnectivityService;)I

    move-result v11

    if-gt v4, v11, :cond_8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "net.dns"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "key":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "erasing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$17000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_1
    const-string v11, ""

    invoke-static {v6, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "erase dns failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$17100(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto :goto_3

    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "key":Ljava/lang/String;
    :cond_8
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # setter for: Lcom/android/server/ConnectivityService;->mNumDnsEntries:I
    invoke-static {v11, v7}, Lcom/android/server/ConnectivityService;->access$16902(Lcom/android/server/ConnectivityService;I)I

    if-eqz v0, :cond_0

    :try_start_2
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$6900(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v11

    invoke-virtual {v8}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v13

    invoke-static {v13}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v12, v13, v14}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$6900(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v11

    invoke-virtual {v8}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Landroid/os/INetworkManagementService;->setDefaultInterfaceForDns(Ljava/lang/String;)V

    if-eqz v9, :cond_0

    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$6900(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v11

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v13

    invoke-static {v13}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v12, v13, v14}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exception setting default dns interface: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$17200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;II)Z
    .locals 8
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "r"    # Landroid/net/RouteInfo;
    .param p3, "cycleCount"    # I
    .param p4, "defaultRouteMetric"    # I

    .prologue
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v7}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$23800(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " addRoute"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$23900(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    const/16 v5, 0x400

    if-le p4, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    const-string v6, "not adding V6 default route for non-active default network"

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$24000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    :goto_0
    return v4

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addRoute got unexpected null: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$24100(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    :cond_2
    const/16 v5, 0xa

    if-le p3, v5, :cond_3

    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    const-string v6, "Error adding route - too much recursion"

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$24200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .local v3, "metric":I
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v2

    .local v2, "ifaceName":Ljava/lang/String;
    if-nez v2, :cond_4

    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    const-string v6, "Error adding route - no interface name"

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$24300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/net/RouteInfo;->isHostRoute()Z

    move-result v5

    if-nez v5, :cond_5

    move v3, p4

    :cond_5
    invoke-virtual {p2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v0

    .local v0, "bestRoute":Landroid/net/RouteInfo;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v0

    :goto_1
    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p0, p1, v0, v5, v3}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;II)Z

    .end local v0    # "bestRoute":Landroid/net/RouteInfo;
    :cond_6
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$24400(Lcom/android/server/ConnectivityService;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$24400(Lcom/android/server/ConnectivityService;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Routes in main table - [ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v7, v7, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$24400(Lcom/android/server/ConnectivityService;)Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$24500(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$6900(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v5

    invoke-interface {v5, v2, v3, p2}, Landroid/os/INetworkManagementService;->addRouteWithMetric(Ljava/lang/String;ILandroid/net/RouteInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    goto/16 :goto_0

    .restart local v0    # "bestRoute":Landroid/net/RouteInfo;
    :cond_8
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v0

    goto :goto_1

    .end local v0    # "bestRoute":Landroid/net/RouteInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception trying to add a Metric Route: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$24600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected handleConnect(Landroid/net/NetworkInfo;)I
    .locals 10
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v9}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$20100(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " handleConnect"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$20200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .local v4, "type":I
    iget-object v7, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v7, v7, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v7

    aget-object v3, v7, v4

    .local v3, "thisNet":Landroid/net/NetworkStateTracker;
    iget-object v7, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v7, v7, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v7, v7, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v5, -0x1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v7, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v7}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->contains(I)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->isHigherPriorityNet(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, -0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .local v0, "causedBy":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v7, v7, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    monitor-enter v7

    :try_start_0
    iget-object v8, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v8, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$4000(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    iget-object v7, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NetTransition Wakelock for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " released because of connect"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$20300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    :cond_4
    iget v7, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    if-ne v4, v7, :cond_7

    iget-object v7, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v7, v7, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # setter for: Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I
    invoke-static {v7, v5}, Lcom/android/server/ConnectivityService;->access$15602(Lcom/android/server/ConnectivityService;I)I

    iget-object v7, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v7, v7, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # operator++ for: Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$20408(Lcom/android/server/ConnectivityService;)I

    iget-object v7, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v7, v7, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # setter for: Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z
    invoke-static {v7, v5}, Lcom/android/server/ConnectivityService;->access$20502(Lcom/android/server/ConnectivityService;Z)Z

    :goto_1
    invoke-interface {v3, v5}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    iget v7, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    if-ne v4, v7, :cond_5

    iget-object v7, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v7, v7, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V
    invoke-static {v7, v3}, Lcom/android/server/ConnectivityService;->access$3700(Lcom/android/server/ConnectivityService;Landroid/net/NetworkStateTracker;)V

    :cond_5
    iget v7, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    if-ne v4, v7, :cond_8

    move v1, v6

    .local v1, "doDns":Z
    :goto_2
    invoke-direct {p0, p1, v5, v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleConnectivityChange(Landroid/net/NetworkInfo;ZZ)V

    iget v7, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    if-eq v4, v7, :cond_9

    iget-object v6, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v6, v6, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v7, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v7, v7, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$19100(Lcom/android/server/ConnectivityService;)I

    move-result v7

    # invokes: Lcom/android/server/ConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V
    invoke-static {v6, p1, v7}, Lcom/android/server/ConnectivityService;->access$19300(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;I)V

    :cond_6
    :goto_3
    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .local v2, "iface":Ljava/lang/String;
    if-eqz v2, :cond_0

    :try_start_1
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v6

    invoke-interface {v6, v2, v4}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    goto/16 :goto_0

    .end local v1    # "doDns":Z
    .end local v2    # "iface":Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :cond_7
    iput v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetConditionPublished:I

    iget v7, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultConnectionSequence:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultConnectionSequence:I

    iput-boolean v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherInetConditionChangeInFlight:Z

    goto :goto_1

    :cond_8
    move v1, v5

    goto :goto_2

    .restart local v1    # "doDns":Z
    :cond_9
    if-ne v4, v6, :cond_6

    iget-object v6, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->sendConnectivityUpBroadcast(I)V
    invoke-static {v6, v4}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$20600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;I)V

    goto :goto_3
.end method

.method protected handleConnectivitySwitch(ILjava/lang/String;)Z
    .locals 7
    .param p1, "netType"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    iget-object v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v6}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$15700(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " handleConnectivitySwitch"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$15800(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    const/4 v2, 0x1

    .local v2, "ret":Z
    iget-object v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v4}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->contains(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not supported for default connectivity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->logw(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$15900(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    move v3, v2

    .end local v2    # "ret":Z
    .local v3, "ret":I
    :goto_0
    return v3

    .end local v3    # "ret":I
    .restart local v2    # "ret":Z
    :cond_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v4, v4, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;)I

    move-result v4

    if-ne v4, p1, :cond_1

    iget-object v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Network"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is already default"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->logw(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$16000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    move v3, v2

    .restart local v3    # "ret":I
    goto :goto_0

    .end local v3    # "ret":I
    :cond_1
    iget v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    if-ne v4, p1, :cond_4

    iget-object v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v4, v4, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    iget v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    # setter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v4, v5}, Lcom/android/server/ConnectivityService;->access$1402(Lcom/android/server/ConnectivityService;I)I

    iget v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    invoke-virtual {p0, v4}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->updateDefaultRouteMetric(I)V

    iget-object v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v4, v4, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v4

    iget v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    aget-object v4, v4, v5

    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .local v1, "iface":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v4, v4, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$16100(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v5

    monitor-enter v5

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v4, v4, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$16100(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v4, v4, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$16100(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Vpn;

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6}, Lcom/android/server/connectivity/Vpn;->interfaceStatusChanged(Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v4, v4, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v5

    iget v6, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    aget-object v5, v5, v6

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v5

    # invokes: Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V
    invoke-static {v4, v5}, Lcom/android/server/ConnectivityService;->access$5900(Lcom/android/server/ConnectivityService;Landroid/net/ProxyProperties;)V

    iget-object v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v4, v4, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v5

    iget v6, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    aget-object v5, v5, v6

    # invokes: Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V
    invoke-static {v4, v5}, Lcom/android/server/ConnectivityService;->access$3700(Lcom/android/server/ConnectivityService;Landroid/net/NetworkStateTracker;)V

    iget v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->resetConnections:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const/4 v4, 0x3

    invoke-static {v1, v4}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->sendConnectivitySwitchBroadcast(Ljava/lang/String;)V

    .end local v0    # "i":I
    .end local v1    # "iface":Ljava/lang/String;
    :goto_2
    move v3, v2

    .restart local v3    # "ret":I
    goto/16 :goto_0

    .end local v3    # "ret":I
    .restart local v0    # "i":I
    .restart local v1    # "iface":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .end local v0    # "i":I
    .end local v1    # "iface":Ljava/lang/String;
    :cond_4
    iget v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    invoke-virtual {p0, v4}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->removeDefaultRoutes(I)V

    const/4 v2, 0x0

    goto :goto_2
.end method

.method protected handleDisconnect(Landroid/net/NetworkInfo;)I
    .locals 30
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v29, v0

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v29 .. v29}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$18300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " handleDisconnect"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static/range {v27 .. v28}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$18400(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v26

    .local v26, "type":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v27, v0

    aget-object v27, v27, v26

    invoke-virtual/range {v27 .. v27}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v27

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->contains(I)Z

    move-result v27

    if-nez v27, :cond_1

    :cond_0
    const/16 v27, 0x0

    :goto_0
    return v27

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleDnsReprioritization(II)V

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->removeDefaultRoutes(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/ConnectivityService;->mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$10100(Lcom/android/server/ConnectivityService;)[Lcom/android/server/ConnectivityService$RouteAttributes;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/ConnectivityService$RouteAttributes;->setMetric(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->updateDefaultRouteMetric(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->remove(I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    move/from16 v28, v0

    # setter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v27 .. v28}, Lcom/android/server/ConnectivityService;->access$1402(Lcom/android/server/ConnectivityService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;)I

    move-result v28

    aget-object v27, v27, v28

    invoke-interface/range {v27 .. v27}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v23

    .local v23, "otherInfo":Landroid/net/NetworkInfo;
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v29 .. v29}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;)I

    move-result v29

    aget-object v28, v28, v29

    invoke-interface/range {v28 .. v28}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v28

    # invokes: Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V
    invoke-static/range {v27 .. v28}, Lcom/android/server/ConnectivityService;->access$5900(Lcom/android/server/ConnectivityService;Landroid/net/ProxyProperties;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v29 .. v29}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;)I

    move-result v29

    aget-object v28, v28, v29

    # invokes: Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V
    invoke-static/range {v27 .. v28}, Lcom/android/server/ConnectivityService;->access$3700(Lcom/android/server/ConnectivityService;Landroid/net/NetworkStateTracker;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    const/16 v27, -0x1

    goto/16 :goto_0

    .end local v23    # "otherInfo":Landroid/net/NetworkInfo;
    :cond_3
    const/4 v4, 0x0

    .local v4, "causedBy":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    monitor-enter v28

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v27

    if-eqz v27, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$4000(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v4

    :cond_4
    monitor-exit v28
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "NetTransition Wakelock for "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " released because of disconnect"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static/range {v27 .. v28}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$18500(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v27

    aget-object v27, v27, v26

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    new-instance v9, Landroid/content/Intent;

    const-string v27, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v27

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v9, "intent":Landroid/content/Intent;
    # getter for: Lcom/android/server/ConnectivityService;->mDualPhoneEnable:Z
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$18600()Z

    move-result v27

    if-nez v27, :cond_6

    # getter for: Lcom/android/server/ConnectivityService;->mDualGSMPhoneEnable:Z
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$18700()Z

    move-result v27

    if-eqz v27, :cond_f

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    # invokes: Lcom/android/server/ConnectivityService;->getReplacedNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v24

    .local v24, "replaceInfo":Landroid/net/NetworkInfo;
    const-string v27, "networkInfo"

    new-instance v28, Landroid/net/NetworkInfo;

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v27, "networkType"

    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkInfo;->getType()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .end local v24    # "replaceInfo":Landroid/net/NetworkInfo;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/ConnectivityService;->HTC_CUSTOMIZED_FAIL_OVER:Z
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$18800(Lcom/android/server/ConnectivityService;)Z

    move-result v27

    if-eqz v27, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, p1

    # invokes: Lcom/android/server/ConnectivityService;->htcCustomizedFailOver(ILandroid/net/NetworkInfo;Landroid/content/Intent;)V
    invoke-static {v0, v1, v2, v9}, Lcom/android/server/ConnectivityService;->access$18900(Lcom/android/server/ConnectivityService;ILandroid/net/NetworkInfo;Landroid/content/Intent;)V

    :cond_7
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_8

    const-string v27, "reason"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_9

    const-string v27, "extraInfo"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_9
    const/16 v20, 0x0

    .local v20, "newNet":Landroid/net/NetworkStateTracker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v27, v0

    aget-object v27, v27, v26

    invoke-virtual/range {v27 .. v27}, Landroid/net/NetworkConfig;->isExclusive()Z

    move-result v27

    if-nez v27, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v27, v0

    aget-object v27, v27, v26

    invoke-virtual/range {v27 .. v27}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v27

    if-eqz v27, :cond_d

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v26

    # invokes: Lcom/android/server/ConnectivityService;->tryFailover(I)Landroid/net/NetworkStateTracker;
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$19000(Lcom/android/server/ConnectivityService;I)Landroid/net/NetworkStateTracker;

    move-result-object v20

    if-eqz v20, :cond_12

    invoke-interface/range {v20 .. v20}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v25

    .local v25, "switchTo":Landroid/net/NetworkInfo;
    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v27

    if-nez v27, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    # setter for: Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I
    invoke-static/range {v27 .. v28}, Lcom/android/server/ConnectivityService;->access$15602(Lcom/android/server/ConnectivityService;I)I

    const-string v27, "noConnectivity"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_b
    # getter for: Lcom/android/server/ConnectivityService;->mDualPhoneEnable:Z
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$18600()Z

    move-result v27

    if-nez v27, :cond_c

    # getter for: Lcom/android/server/ConnectivityService;->mDualGSMPhoneEnable:Z
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$18700()Z

    move-result v27

    if-eqz v27, :cond_11

    :cond_c
    const-string v27, "otherNetwork"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    # invokes: Lcom/android/server/ConnectivityService;->getReplacedNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .end local v25    # "switchTo":Landroid/net/NetworkInfo;
    :cond_d
    :goto_3
    const-string v27, "inetCondition"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$15600(Lcom/android/server/ConnectivityService;)I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v6, 0x1

    .local v6, "doReset":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v27

    aget-object v27, v27, v26

    invoke-interface/range {v27 .. v27}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v12

    .local v12, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v12, :cond_14

    invoke-virtual {v12}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v22

    .local v22, "oldIface":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v3

    .local v3, "arr$":[Landroid/net/NetworkStateTracker;
    array-length v11, v3

    .local v11, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_4
    if-ge v7, v11, :cond_14

    aget-object v19, v3, v7

    .local v19, "networkStateTracker":Landroid/net/NetworkStateTracker;
    if-nez v19, :cond_13

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .end local v3    # "arr$":[Landroid/net/NetworkStateTracker;
    .end local v6    # "doReset":Z
    .end local v7    # "i$":I
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v11    # "len$":I
    .end local v12    # "linkProperties":Landroid/net/LinkProperties;
    .end local v19    # "networkStateTracker":Landroid/net/NetworkStateTracker;
    .end local v20    # "newNet":Landroid/net/NetworkStateTracker;
    .end local v22    # "oldIface":Ljava/lang/String;
    :catchall_0
    move-exception v27

    :try_start_1
    monitor-exit v28
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v27

    .restart local v9    # "intent":Landroid/content/Intent;
    :cond_f
    const-string v27, "networkInfo"

    new-instance v28, Landroid/net/NetworkInfo;

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v27, "networkType"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v27

    if-eqz v27, :cond_7

    const-string v27, "isFailover"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    goto/16 :goto_2

    .restart local v20    # "newNet":Landroid/net/NetworkStateTracker;
    .restart local v25    # "switchTo":Landroid/net/NetworkInfo;
    :cond_11
    const-string v27, "otherNetwork"

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_3

    .end local v25    # "switchTo":Landroid/net/NetworkInfo;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    # setter for: Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I
    invoke-static/range {v27 .. v28}, Lcom/android/server/ConnectivityService;->access$15602(Lcom/android/server/ConnectivityService;I)I

    const-string v27, "noConnectivity"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .restart local v3    # "arr$":[Landroid/net/NetworkStateTracker;
    .restart local v6    # "doReset":Z
    .restart local v7    # "i$":I
    .restart local v11    # "len$":I
    .restart local v12    # "linkProperties":Landroid/net/LinkProperties;
    .restart local v19    # "networkStateTracker":Landroid/net/NetworkStateTracker;
    .restart local v22    # "oldIface":Ljava/lang/String;
    :cond_13
    invoke-interface/range {v19 .. v19}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v18

    .local v18, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v27

    if-eqz v27, :cond_e

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getType()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v26

    if-eq v0, v1, :cond_e

    invoke-interface/range {v19 .. v19}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v10

    .local v10, "l":Landroid/net/LinkProperties;
    if-eqz v10, :cond_e

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_e

    const/4 v6, 0x0

    .end local v3    # "arr$":[Landroid/net/NetworkStateTracker;
    .end local v7    # "i$":I
    .end local v10    # "l":Landroid/net/LinkProperties;
    .end local v11    # "len$":I
    .end local v18    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v19    # "networkStateTracker":Landroid/net/NetworkStateTracker;
    .end local v22    # "oldIface":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_19

    const/4 v5, 0x1

    .local v5, "doDns":Z
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleConnectivityChange(Landroid/net/NetworkInfo;ZZ)V

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .local v8, "immediateIntent":Landroid/content/Intent;
    const-string v27, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    # invokes: Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v0, v8}, Lcom/android/server/ConnectivityService;->access$4700(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    # invokes: Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$19100(Lcom/android/server/ConnectivityService;)I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    # invokes: Lcom/android/server/ConnectivityService;->sendStickyBroadcastDelayed(Landroid/content/Intent;I)V
    invoke-static {v0, v9, v1}, Lcom/android/server/ConnectivityService;->access$19200(Lcom/android/server/ConnectivityService;Landroid/content/Intent;I)V

    if-nez v20, :cond_1a

    const/16 v21, 0x0

    .local v21, "ni":Landroid/net/NetworkInfo;
    :goto_6
    if-eqz v21, :cond_16

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v27

    if-nez v27, :cond_15

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v27

    sget-object v28, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    # invokes: Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$19100(Lcom/android/server/ConnectivityService;)I

    move-result v28

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    move/from16 v2, v28

    # invokes: Lcom/android/server/ConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/ConnectivityService;->access$19300(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;I)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "enable_cmcc_userdecided_wifi_mobile_handoff"

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$HtcISystem$Agent;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v16

    .local v16, "mUserEnableNotify":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/ConnectivityService;->mLastState:[Landroid/net/NetworkInfo$State;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkInfo$State;

    move-result-object v27

    aget-object v27, v27, v26

    sget-object v28, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v27

    sget-object v28, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_1b

    const/4 v14, 0x1

    .local v14, "mIsConnectedtoDisconnect":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v27

    if-nez v27, :cond_1c

    const/4 v15, 0x1

    .local v15, "mNullActiveNetwork":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    # invokes: Lcom/android/server/ConnectivityService;->getMobileDataEnabledSettings()Z
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$19400(Lcom/android/server/ConnectivityService;)Z

    move-result v17

    .local v17, "mobiledata":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/ConnectivityService;->notifyWifiDisconnect:Z
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$19500(Lcom/android/server/ConnectivityService;)Z

    move-result v27

    if-eqz v27, :cond_1d

    const/16 v27, 0x1

    move/from16 v0, v27

    move/from16 v1, v26

    if-ne v0, v1, :cond_1d

    if-eqz v15, :cond_1d

    if-eqz v17, :cond_1d

    if-eqz v16, :cond_1d

    if-eqz v14, :cond_1d

    const/4 v13, 0x1

    .local v13, "mCMCCWifiNotify":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "handleDisconnect, type="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", ACC="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/ConnectivityService;->notifyWifiDisconnect:Z
    invoke-static/range {v29 .. v29}, Lcom/android/server/ConnectivityService;->access$19500(Lcom/android/server/ConnectivityService;)Z

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", null active network="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", mobiledata="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ",mActiveDefaultNetwork="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v29 .. v29}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", mUserEnableNotify="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", mIsConnectedtoDisconnect="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static/range {v27 .. v28}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$19600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    if-eqz v13, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/ConnectivityService;->mSystemReady:Z
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$19700(Lcom/android/server/ConnectivityService;)Z

    move-result v27

    if-eqz v27, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    # invokes: Lcom/android/server/ConnectivityService;->sendCustomizeDisconnectNotify(Z)V
    invoke-static/range {v27 .. v28}, Lcom/android/server/ConnectivityService;->access$19800(Lcom/android/server/ConnectivityService;Z)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v26

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleDnsReprioritization(II)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->remove(I)Z

    const/16 v27, -0x2

    goto/16 :goto_0

    .end local v5    # "doDns":Z
    .end local v8    # "immediateIntent":Landroid/content/Intent;
    .end local v13    # "mCMCCWifiNotify":Z
    .end local v14    # "mIsConnectedtoDisconnect":Z
    .end local v15    # "mNullActiveNetwork":Z
    .end local v16    # "mUserEnableNotify":Z
    .end local v17    # "mobiledata":Z
    .end local v21    # "ni":Landroid/net/NetworkInfo;
    :cond_19
    const/4 v5, 0x0

    goto/16 :goto_5

    .restart local v5    # "doDns":Z
    .restart local v8    # "immediateIntent":Landroid/content/Intent;
    :cond_1a
    invoke-interface/range {v20 .. v20}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v21

    goto/16 :goto_6

    .restart local v16    # "mUserEnableNotify":Z
    .restart local v21    # "ni":Landroid/net/NetworkInfo;
    :cond_1b
    const/4 v14, 0x0

    goto/16 :goto_7

    .restart local v14    # "mIsConnectedtoDisconnect":Z
    :cond_1c
    const/4 v15, 0x0

    goto/16 :goto_8

    .restart local v15    # "mNullActiveNetwork":Z
    .restart local v17    # "mobiledata":Z
    :cond_1d
    const/4 v13, 0x0

    goto/16 :goto_9
.end method

.method protected handleDnsReprioritization(II)V
    .locals 4
    .param p1, "netType"    # I
    .param p2, "netTypeSecondary"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$17300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " handleDnsReprioritization"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$17400(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot prioritize dns for unsupported type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->logw(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$17500(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prioritizing Dns for network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$17600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$6200(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # setter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I
    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10202(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;I)I

    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # setter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->otherDefaultDnsNet:I
    invoke-static {v0, p2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10302(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;I)I

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->updateDnsLocked(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->flushVmDnsCache()V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$17700(Lcom/android/server/ConnectivityService;)V

    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$17800(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Nat464Xlat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$17800(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Nat464Xlat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/Nat464Xlat;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$17800(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Nat464Xlat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/Nat464Xlat;->stopClat()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$17800(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Nat464Xlat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/connectivity/Nat464Xlat;->htcCheckClatToStartOrStop(ILandroid/net/NetworkStateTracker;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected handleInetConditionChange(II)Z
    .locals 7
    .param p1, "netType"    # I
    .param p2, "condition"    # I

    .prologue
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$20700(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " handleInetConditionChange"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$20800(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    if-eq p1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleInetConditionChange: net="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", condition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", for other active default Network="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$20900(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    iput p2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetCondition:I

    iget-boolean v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherInetConditionChangeInFlight:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    const-string v3, "handleInetConditionChange: starting a change hold"

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$21000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetCondition:I

    const/16 v3, 0x32

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "inet_condition_debounce_up_delay"

    const/16 v4, 0x1f4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "delay":I
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherInetConditionChangeInFlight:Z

    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    const/4 v4, 0x5

    iget v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    iget v6, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultConnectionSequence:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .end local v0    # "delay":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "inet_condition_debounce_down_delay"

    const/16 v4, 0xbb8

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "delay":I
    goto :goto_1

    .end local v0    # "delay":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    const-string v3, "handleInetConditionChange: currently in hold - not setting new end evt"

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$21100(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected handleInetConditionHoldEnd(II)Z
    .locals 6
    .param p1, "netType"    # I
    .param p2, "sequence"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$21200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handleInetConditionHoldEnd"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$21300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    if-eq p1, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleInetConditionHoldEnd: net="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", condition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetCondition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", published condition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetConditionPublished:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$21400(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherInetConditionChangeInFlight:Z

    iget v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultConnectionSequence:I

    if-eq v1, p2, :cond_1

    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    const-string v3, "handleInetConditionHoldEnd: event hold for obsolete network - ignoring"

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$21500(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v1

    iget v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    aget-object v1, v1, v3

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleInetConditionHoldEnd: default network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not connected - ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$21600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetCondition:I

    iput v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetConditionPublished:I

    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V
    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->access$21700(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    move v1, v2

    goto/16 :goto_0
.end method

.method protected isHigherPriorityNet(I)Z
    .locals 4
    .param p1, "type"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v3}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$19900(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isHigherPriorityNet"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$20000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->isHigherPriorityNetwork(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    aget-object v2, v2, v3

    # invokes: Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z
    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$5000(Lcom/android/server/ConnectivityService;Landroid/net/NetworkStateTracker;)Z

    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->remove(I)Z

    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    aget-object v2, v2, v3

    # invokes: Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z
    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$5000(Lcom/android/server/ConnectivityService;Landroid/net/NetworkStateTracker;)Z

    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->remove(I)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    aget-object v2, v2, p1

    # invokes: Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z
    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$5000(Lcom/android/server/ConnectivityService;Landroid/net/NetworkStateTracker;)Z

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v13}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$13600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".processMessage what="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->what:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$13700(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    const/4 v7, 0x0

    .local v7, "ret":Z
    iget v11, p1, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    const/4 v7, 0x0

    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v13}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$15000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": no handler for message="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->what:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$15100(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    :cond_0
    :goto_0
    :sswitch_0
    return v7

    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/NetworkInfo;

    .local v2, "info":Landroid/net/NetworkInfo;
    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleConnect(Landroid/net/NetworkInfo;)I

    move-result v5

    .local v5, "r":I
    if-nez v5, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, -0x1

    if-ne v5, v11, :cond_2

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->deferMessage(Landroid/os/Message;)V
    invoke-static {v11, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$13800(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v12, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mSmartConnectivityState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;
    invoke-static {v12}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$13900(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;

    move-result-object v12

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v11, v12}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$14000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V

    const/4 v7, 0x1

    goto :goto_0

    .end local v2    # "info":Landroid/net/NetworkInfo;
    .end local v5    # "r":I
    :sswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/NetworkInfo;

    .restart local v2    # "info":Landroid/net/NetworkInfo;
    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleDisconnect(Landroid/net/NetworkInfo;)I

    move-result v5

    .restart local v5    # "r":I
    if-nez v5, :cond_3

    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    const/4 v11, -0x1

    if-ne v5, v11, :cond_4

    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->deferMessage(Landroid/os/Message;)V
    invoke-static {v11, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$14100(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v12, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mSmartConnectivityState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;
    invoke-static {v12}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$13900(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;

    move-result-object v12

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v11, v12}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$14200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V

    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v12, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mSmartConnectivityState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;
    invoke-static {v12}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$13900(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;

    move-result-object v12

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v11, v12}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$14300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V

    const/4 v7, 0x1

    goto :goto_0

    .end local v2    # "info":Landroid/net/NetworkInfo;
    .end local v5    # "r":I
    :sswitch_3
    iget v10, p1, Landroid/os/Message;->arg1:I

    .local v10, "type":I
    iget v11, p1, Landroid/os/Message;->arg2:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    const/4 v1, 0x1

    .local v1, "doReset":Z
    :goto_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/NetworkInfo;

    .restart local v2    # "info":Landroid/net/NetworkInfo;
    const/4 v11, 0x1

    invoke-direct {p0, v2, v1, v11}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleConnectivityChange(Landroid/net/NetworkInfo;ZZ)V

    const/4 v7, 0x1

    goto :goto_0

    .end local v1    # "doReset":Z
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .end local v10    # "type":I
    :sswitch_4
    iget v10, p1, Landroid/os/Message;->arg1:I

    .restart local v10    # "type":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/NetworkInfo;

    .restart local v2    # "info":Landroid/net/NetworkInfo;
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleDnsConfigurationChange(Landroid/net/NetworkInfo;)V

    const/4 v7, 0x1

    goto :goto_0

    .end local v2    # "info":Landroid/net/NetworkInfo;
    .end local v10    # "type":I
    :sswitch_5
    iget v3, p1, Landroid/os/Message;->arg1:I

    .local v3, "netType":I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .local v0, "condition":I
    invoke-virtual {p0, v3, v0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleInetConditionChange(II)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    .end local v0    # "condition":I
    .end local v3    # "netType":I
    :sswitch_6
    iget v3, p1, Landroid/os/Message;->arg1:I

    .restart local v3    # "netType":I
    iget v9, p1, Landroid/os/Message;->arg2:I

    .local v9, "sequence":I
    invoke-virtual {p0, v3, v9}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleInetConditionHoldEnd(II)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v3    # "netType":I
    .end local v9    # "sequence":I
    :sswitch_7
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    const-string v12, "NetTransition wakelock is not needed"

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$14400(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    const/4 v7, 0x1

    goto/16 :goto_0

    :sswitch_8
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    const-string v12, "enforcing network preference not allowed in dual connectivity state"

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$14500(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    const/4 v7, 0x1

    goto/16 :goto_0

    :sswitch_9
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .local v6, "reason":Ljava/lang/String;
    iget v10, p1, Landroid/os/Message;->arg1:I

    .restart local v10    # "type":I
    invoke-virtual {p0, v10, v6}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleConnectivitySwitch(ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->deferMessage(Landroid/os/Message;)V
    invoke-static {v11, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$14600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->transitionToOther()V

    :cond_6
    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v6    # "reason":Ljava/lang/String;
    .end local v10    # "type":I
    :sswitch_a
    iget v4, p1, Landroid/os/Message;->arg1:I

    .local v4, "primary":I
    iget v8, p1, Landroid/os/Message;->arg2:I

    .local v8, "secondary":I
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I
    invoke-static {v11}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)I

    move-result v11

    if-ne v11, v4, :cond_7

    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->otherDefaultDnsNet:I
    invoke-static {v11}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)I

    move-result v11

    if-eq v11, v8, :cond_8

    :cond_7
    invoke-virtual {p0, v4, v8}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleDnsReprioritization(II)V

    :goto_2
    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_8
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Dns is already prioritized for network p "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " s "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->logw(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$14700(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto :goto_2

    .end local v4    # "primary":I
    .end local v8    # "secondary":I
    :sswitch_b
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->deferMessage(Landroid/os/Message;)V
    invoke-static {v11, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$14800(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    const/4 v7, 0x1

    goto/16 :goto_0

    :sswitch_c
    iget v10, p1, Landroid/os/Message;->arg1:I

    .restart local v10    # "type":I
    iget v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    if-ne v10, v11, :cond_9

    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v12, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v12, v12, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v12

    iget v13, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    aget-object v12, v12, v13

    # invokes: Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V
    invoke-static {v11, v12}, Lcom/android/server/ConnectivityService;->access$3700(Lcom/android/server/ConnectivityService;Landroid/net/NetworkStateTracker;)V

    :goto_3
    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_9
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    const-string v12, "ingoring subType change for other default net"

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->logd(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$14900(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f6 -> :sswitch_a
        0x1f7 -> :sswitch_9
        0x1f8 -> :sswitch_b
        0x1389 -> :sswitch_1
        0x138a -> :sswitch_2
        0x138b -> :sswitch_3
        0x138c -> :sswitch_4
        0x138d -> :sswitch_0
        0x138e -> :sswitch_5
        0x138f -> :sswitch_6
        0x1390 -> :sswitch_8
        0x1392 -> :sswitch_7
        0x1393 -> :sswitch_c
    .end sparse-switch
.end method

.method protected removeDefaultRoutes(I)V
    .locals 9
    .param p1, "netType"    # I

    .prologue
    const/4 v8, 0x1

    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v7}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$23400(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " removeDefaultRoutes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$23500(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    const/4 v5, -0x1

    if-ne p1, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    const-string v6, "removing default routes for all networks"

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$23600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->getActiveDefaults()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .local v4, "type":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$21900(Lcom/android/server/ConnectivityService;)[Landroid/net/LinkProperties;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v2, v5, v6

    .local v2, "p":Landroid/net/LinkProperties;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .local v3, "r":Landroid/net/RouteInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    invoke-static {v5, v2, v3, v8}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "p":Landroid/net/LinkProperties;
    .end local v3    # "r":Landroid/net/RouteInfo;
    .end local v4    # "type":Ljava/lang/Integer;
    :cond_2
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removing default routes for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$23700(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$21900(Lcom/android/server/ConnectivityService;)[Landroid/net/LinkProperties;

    move-result-object v5

    aget-object v2, v5, p1

    .restart local v2    # "p":Landroid/net/LinkProperties;
    if-nez v2, :cond_4

    .end local v2    # "p":Landroid/net/LinkProperties;
    :cond_3
    return-void

    .restart local v2    # "p":Landroid/net/LinkProperties;
    :cond_4
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .restart local v3    # "r":Landroid/net/RouteInfo;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    invoke-static {v5, v2, v3, v8}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    goto :goto_1
.end method

.method protected runOnEnter()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$15200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " runOnEnter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$15300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$10100(Lcom/android/server/ConnectivityService;)[Lcom/android/server/ConnectivityService$RouteAttributes;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$RouteAttributes;->setMetric(I)V

    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$10100(Lcom/android/server/ConnectivityService;)[Lcom/android/server/ConnectivityService$RouteAttributes;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    aget-object v0, v0, v1

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$RouteAttributes;->setMetric(I)V

    iget v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->updateDefaultRouteMetric(I)V

    return-void
.end method

.method protected sendConnectivitySwitchBroadcast(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    iget-object v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$15400(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sendConnectivitySwitchBroadcast"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$15500(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v3

    iget v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    aget-object v3, v3, v4

    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .local v2, "newNetInfo":Landroid/net/NetworkInfo;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "networkInfo"

    new-instance v4, Landroid/net/NetworkInfo;

    invoke-direct {v4, v2}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "networkType"

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "reason"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v3, "isFailover"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "inetCondition"

    iget-object v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v4, v4, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$15600(Lcom/android/server/ConnectivityService;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .local v0, "immediateIntent":Landroid/content/Intent;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v3, v0}, Lcom/android/server/ConnectivityService;->access$4700(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v3, v1}, Lcom/android/server/ConnectivityService;->access$4700(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    return-void
.end method

.method protected abstract transitionToOther()V
.end method

.method protected updateDefaultRouteMetric(I)V
    .locals 7
    .param p1, "type"    # I

    .prologue
    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$23200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " updateDefaultRouteMetric"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$23300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$21900(Lcom/android/server/ConnectivityService;)[Landroid/net/LinkProperties;

    move-result-object v3

    aget-object v1, v3, p1

    .local v1, "lp":Landroid/net/LinkProperties;
    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .local v2, "r":Landroid/net/RouteInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/RouteInfo;->isHostRoute()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$10100(Lcom/android/server/ConnectivityService;)[Lcom/android/server/ConnectivityService$RouteAttributes;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/server/ConnectivityService$RouteAttributes;->getV6Metric()I

    move-result v3

    invoke-virtual {p0, v1, v2, v6, v3}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;II)Z

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$10100(Lcom/android/server/ConnectivityService;)[Lcom/android/server/ConnectivityService$RouteAttributes;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/server/ConnectivityService$RouteAttributes;->getMetric()I

    move-result v3

    invoke-virtual {p0, v1, v2, v6, v3}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;II)Z

    goto :goto_0
.end method

.method protected updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;ZLcom/android/server/ConnectivityService$RouteAttributes;Z)Z
    .locals 27
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "curLp"    # Landroid/net/LinkProperties;
    .param p3, "isLinkDefault"    # Z
    .param p4, "ra"    # Lcom/android/server/ConnectivityService$RouteAttributes;
    .param p5, "exempt"    # Z

    .prologue
    const/16 v21, 0x0

    .local v21, "routesToAdd":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    new-instance v6, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v6}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .local v6, "dnsDiff":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Ljava/net/InetAddress;>;"
    new-instance v19, Landroid/net/LinkProperties$CompareResult;

    invoke-direct/range {v19 .. v19}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .local v19, "routeDiff":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/RouteInfo;>;"
    new-instance v13, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v13}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .local v13, "localAddrDiff":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->compareAllRoutes(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->compareDnses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v6

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v13

    :cond_0
    :goto_0
    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    new-instance v22, Ljava/util/ArrayList;

    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v22, "same":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/RouteInfo;

    .local v18, "r":Landroid/net/RouteInfo;
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v18    # "r":Landroid/net/RouteInfo;
    .end local v22    # "same":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/Collection;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v6, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v13, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    goto :goto_0

    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v22    # "same":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    :cond_2
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/RouteInfo;

    .restart local v18    # "r":Landroid/net/RouteInfo;
    if-nez p3, :cond_4

    invoke-virtual/range {v18 .. v18}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v23

    if-nez v23, :cond_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move/from16 v3, v24

    # invokes: Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    invoke-virtual/range {v18 .. v18}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Ljava/net/Inet6Address;

    move/from16 v23, v0

    if-eqz v23, :cond_5

    const/16 v23, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ConnectivityService$RouteAttributes;->getV6Metric()I

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;II)Z

    goto :goto_2

    :cond_5
    const/16 v23, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ConnectivityService$RouteAttributes;->getMetric()I

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;II)Z

    goto :goto_2

    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v18    # "r":Landroid/net/RouteInfo;
    .end local v22    # "same":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    :cond_6
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->size()I

    move-result v23

    if-nez v23, :cond_7

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->size()I

    move-result v23

    if-eqz v23, :cond_b

    :cond_7
    const/16 v20, 0x1

    .local v20, "routesChanged":Z
    :goto_3
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/RouteInfo;

    .restart local v18    # "r":Landroid/net/RouteInfo;
    if-nez p3, :cond_9

    invoke-virtual/range {v18 .. v18}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v23

    if-nez v23, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move/from16 v3, v24

    # invokes: Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    :cond_a
    if-nez p3, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move/from16 v3, v24

    # invokes: Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    goto :goto_4

    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v18    # "r":Landroid/net/RouteInfo;
    .end local v20    # "routesChanged":Z
    :cond_b
    const/16 v20, 0x0

    goto :goto_3

    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v20    # "routesChanged":Z
    :cond_c
    if-eqz v20, :cond_10

    if-eqz p2, :cond_d

    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/net/InetAddress;

    .local v17, "oldDns":Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    # invokes: Lcom/android/server/ConnectivityService;->removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/ConnectivityService;->access$24700(Lcom/android/server/ConnectivityService;Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_5

    .end local v17    # "oldDns":Ljava/net/InetAddress;
    :cond_d
    if-eqz p1, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_e
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/net/InetAddress;

    .local v15, "newDns":Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v24 .. v24}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v23

    if-eqz v23, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v24 .. v24}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;)I

    move-result v24

    aget-object v23, v23, v24

    invoke-interface/range {v23 .. v23}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v14

    .local v14, "lp":Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v24 .. v24}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;)I

    move-result v24

    aget-object v23, v23, v24

    invoke-interface/range {v23 .. v23}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v16

    .local v16, "ni":Landroid/net/NetworkInfo;
    if-eqz v14, :cond_f

    if-eqz v16, :cond_f

    invoke-virtual {v14}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v5

    .local v5, "defaultDnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v5, v15}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/ConnectivityService;->skipAddDnsRoute:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/ConnectivityService;->access$24800(Lcom/android/server/ConnectivityService;)Z

    move-result v23

    if-eqz v23, :cond_f

    # getter for: Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$400()Z

    move-result v23

    if-eqz v23, :cond_e

    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Route not changed: default dnses = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " contains newDns= "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ". Skipped."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .end local v5    # "defaultDnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v14    # "lp":Landroid/net/LinkProperties;
    .end local v16    # "ni":Landroid/net/NetworkInfo;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, p5

    # invokes: Lcom/android/server/ConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;Z)Z
    invoke-static {v0, v1, v15, v2}, Lcom/android/server/ConnectivityService;->access$24900(Lcom/android/server/ConnectivityService;Landroid/net/LinkProperties;Ljava/net/InetAddress;Z)Z

    goto/16 :goto_6

    .end local v15    # "newDns":Ljava/net/InetAddress;
    :cond_10
    iget-object v0, v6, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/net/InetAddress;

    .restart local v17    # "oldDns":Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    # invokes: Lcom/android/server/ConnectivityService;->removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/ConnectivityService;->access$24700(Lcom/android/server/ConnectivityService;Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_7

    .end local v17    # "oldDns":Ljava/net/InetAddress;
    :cond_11
    iget-object v0, v6, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_12
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/net/InetAddress;

    .restart local v15    # "newDns":Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v24 .. v24}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v23

    if-eqz v23, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v24 .. v24}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;)I

    move-result v24

    aget-object v23, v23, v24

    invoke-interface/range {v23 .. v23}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v14

    .restart local v14    # "lp":Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v24 .. v24}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;)I

    move-result v24

    aget-object v23, v23, v24

    invoke-interface/range {v23 .. v23}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v16

    .restart local v16    # "ni":Landroid/net/NetworkInfo;
    if-eqz v14, :cond_13

    if-eqz v16, :cond_13

    invoke-virtual {v14}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v5

    .restart local v5    # "defaultDnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v5, v15}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/ConnectivityService;->skipAddDnsRoute:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/ConnectivityService;->access$24800(Lcom/android/server/ConnectivityService;)Z

    move-result v23

    if-eqz v23, :cond_13

    # getter for: Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$400()Z

    move-result v23

    if-eqz v23, :cond_12

    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Route not changed: default dnses = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " contains newDns= "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ". Skipped."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .end local v5    # "defaultDnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v14    # "lp":Landroid/net/LinkProperties;
    .end local v16    # "ni":Landroid/net/NetworkInfo;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, p5

    # invokes: Lcom/android/server/ConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;Z)Z
    invoke-static {v0, v1, v15, v2}, Lcom/android/server/ConnectivityService;->access$24900(Lcom/android/server/ConnectivityService;Landroid/net/LinkProperties;Ljava/net/InetAddress;Z)Z

    goto/16 :goto_8

    .end local v15    # "newDns":Ljava/net/InetAddress;
    :cond_14
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_19

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/RouteInfo;

    .restart local v18    # "r":Landroid/net/RouteInfo;
    if-nez p3, :cond_15

    invoke-virtual/range {v18 .. v18}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v23

    if-nez v23, :cond_17

    :cond_15
    invoke-virtual/range {v18 .. v18}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Ljava/net/Inet6Address;

    move/from16 v23, v0

    if-eqz v23, :cond_16

    const/16 v23, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ConnectivityService$RouteAttributes;->getV6Metric()I

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;II)Z

    goto :goto_9

    :cond_16
    const/16 v23, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ConnectivityService$RouteAttributes;->getMetric()I

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;II)Z

    goto :goto_9

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, v24

    move/from16 v4, p5

    # invokes: Lcom/android/server/ConnectivityService;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;ZZ)Z
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/ConnectivityService;->access$25000(Lcom/android/server/ConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;ZZ)Z

    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v11

    .local v11, "ifaceName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/ConnectivityService;->mRoutesLock:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/android/server/ConnectivityService;->access$25100(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    :try_start_0
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;
    invoke-static/range {v23 .. v23}, Lcom/android/server/ConnectivityService;->access$24400(Lcom/android/server/ConnectivityService;)Ljava/util/Collection;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Removing "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " for interface "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$25200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static/range {v23 .. v23}, Lcom/android/server/ConnectivityService;->access$6900(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v0, v11, v1}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_18
    :goto_a
    :try_start_2
    monitor-exit v24

    goto/16 :goto_9

    :catchall_0
    move-exception v23

    monitor-exit v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v23

    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception trying to remove a route: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$25300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_a

    .end local v7    # "e":Ljava/lang/Exception;
    .end local v11    # "ifaceName":Ljava/lang/String;
    .end local v18    # "r":Landroid/net/RouteInfo;
    :cond_19
    iget-object v0, v13, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->size()I

    move-result v23

    if-eqz v23, :cond_1b

    iget-object v0, v13, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/LinkAddress;

    .local v12, "la":Landroid/net/LinkAddress;
    # getter for: Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$400()Z

    move-result v23

    if-eqz v23, :cond_1a

    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Removing src route for:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static/range {v23 .. v23}, Lcom/android/server/ConnectivityService;->access$6900(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v23

    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v24

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ConnectivityService$RouteAttributes;->getTableId()I

    move-result v25

    invoke-interface/range {v23 .. v25}, Landroid/os/INetworkManagementService;->delSrcRoute([BI)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_b

    :catch_1
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception while trying to remove src route: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$25400(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto :goto_b

    .end local v7    # "e":Ljava/lang/Exception;
    .end local v12    # "la":Landroid/net/LinkAddress;
    :cond_1b
    iget-object v0, v13, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->size()I

    move-result v23

    if-eqz v23, :cond_20

    const/4 v8, 0x0

    .local v8, "gw4Addr":Ljava/net/InetAddress;
    const/4 v9, 0x0

    .local v9, "gw6Addr":Ljava/net/InetAddress;
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "ifaceName":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_20

    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1c
    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/RouteInfo;

    .restart local v18    # "r":Landroid/net/RouteInfo;
    invoke-virtual/range {v18 .. v18}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v23

    if-eqz v23, :cond_1c

    invoke-virtual/range {v18 .. v18}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Ljava/net/Inet4Address;

    move/from16 v23, v0

    if-eqz v23, :cond_1d

    invoke-virtual/range {v18 .. v18}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v8

    goto :goto_c

    :cond_1d
    invoke-virtual/range {v18 .. v18}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v9

    goto :goto_c

    .end local v18    # "r":Landroid/net/RouteInfo;
    :cond_1e
    iget-object v0, v13, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_20

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/LinkAddress;

    .restart local v12    # "la":Landroid/net/LinkAddress;
    :try_start_5
    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Ljava/net/Inet4Address;

    move/from16 v23, v0

    if-eqz v23, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static/range {v23 .. v23}, Lcom/android/server/ConnectivityService;->access$6900(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v23

    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v24

    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v25

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ConnectivityService$RouteAttributes;->getTableId()I

    move-result v26

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-interface {v0, v11, v1, v2, v3}, Landroid/os/INetworkManagementService;->replaceSrcRoute(Ljava/lang/String;[B[BI)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_d

    :catch_2
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception while trying to add src route: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$25500(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto :goto_d

    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1f
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static/range {v23 .. v23}, Lcom/android/server/ConnectivityService;->access$6900(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v23

    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v24

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v25

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ConnectivityService$RouteAttributes;->getTableId()I

    move-result v26

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-interface {v0, v11, v1, v2, v3}, Landroid/os/INetworkManagementService;->replaceSrcRoute(Ljava/lang/String;[B[BI)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_d

    .end local v8    # "gw4Addr":Ljava/net/InetAddress;
    .end local v9    # "gw6Addr":Ljava/net/InetAddress;
    .end local v11    # "ifaceName":Ljava/lang/String;
    .end local v12    # "la":Landroid/net/LinkAddress;
    :cond_20
    return v20
.end method
