.class Lcom/android/server/wifi/WifiService$6;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiService;->registerMhsReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xd

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "WifiService"

    const-string v1, "GOT ConnectivityManager.HTC_PERMITTED_TETHER_ACTION"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "net.frisbee.enabled"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WifiService"

    const-string v1, "ignore MHS for Frisbee"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    # setter for: Lcom/android/server/wifi/WifiService;->mWifiApMhsPermission:Z
    invoke-static {v0, v5}, Lcom/android/server/wifi/WifiService;->access$2602(Lcom/android/server/wifi/WifiService;Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    # setter for: Lcom/android/server/wifi/WifiService;->mProcessingMHS:Z
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiService;->access$2702(Lcom/android/server/wifi/WifiService;Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    # invokes: Lcom/android/server/wifi/WifiService;->checkWifiApRemindDialog()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$2800(Lcom/android/server/wifi/WifiService;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, v1, Lcom/android/server/wifi/WifiService;->mCm:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v1, v1, Lcom/android/server/wifi/WifiService;->mCm:Landroid/net/ConnectivityManager;

    const/16 v2, -0x23

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v7}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    move-result v1

    # setter for: Lcom/android/server/wifi/WifiService;->mMhsStatus:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiService;->access$2902(Lcom/android/server/wifi/WifiService;I)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mProcessingMHS:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$2700(Lcom/android/server/wifi/WifiService;)Z

    move-result v0

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mMhsStatus:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$2900(Lcom/android/server/wifi/WifiService;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "WifiService"

    const-string v1, "MHS HTC_PERMITTED_TETHER_ALLOW"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    # setter for: Lcom/android/server/wifi/WifiService;->mWifiApMhsPermission:Z
    invoke-static {v0, v5}, Lcom/android/server/wifi/WifiService;->access$2602(Lcom/android/server/wifi/WifiService;Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    # setter for: Lcom/android/server/wifi/WifiService;->mProcessingMHS:Z
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiService;->access$2702(Lcom/android/server/wifi/WifiService;Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    # invokes: Lcom/android/server/wifi/WifiService;->checkWifiApRemindDialog()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$2800(Lcom/android/server/wifi/WifiService;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mMhsStatus:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$2900(Lcom/android/server/wifi/WifiService;)I

    move-result v0

    if-ne v0, v5, :cond_0

    const-string v0, "WifiService"

    const-string v1, "MHS HTC_PERMITTED_TETHER_DENY"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    # setter for: Lcom/android/server/wifi/WifiService;->mWifiApMhsPermission:Z
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiService;->access$2602(Lcom/android/server/wifi/WifiService;Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    # setter for: Lcom/android/server/wifi/WifiService;->mProcessingMHS:Z
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiService;->access$2702(Lcom/android/server/wifi/WifiService;Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v0, v0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v0, v0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifidisplayApState()I

    move-result v0

    if-eq v0, v6, :cond_3

    const-string v0, "WifiService"

    const-string v1, "disable wifi ap by HTC_PERMITTED_TETHER_DENY"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v0, v7, v4}, Lcom/android/server/wifi/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v0, v0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiStateMachine;->setMhsUiProcessing(Z)V

    goto/16 :goto_0
.end method
