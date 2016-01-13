.class Lcom/android/server/wifi/WifiService$14;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiService;->registerWifiStateReceiver()V
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
    .line 3991
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$14;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 3994
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3995
    const-string v2, "wifi_state"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3998
    .local v0, "wifiState":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$14;->this$0:Lcom/android/server/wifi/WifiService;

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    :goto_0
    # setter for: Lcom/android/server/wifi/WifiService;->mWifiEnabled:Z
    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiService;->access$3602(Lcom/android/server/wifi/WifiService;Z)Z

    .line 3999
    iget-object v1, p0, Lcom/android/server/wifi/WifiService$14;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiEnabled:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiService;->access$3600(Lcom/android/server/wifi/WifiService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4001
    iget-object v1, p0, Lcom/android/server/wifi/WifiService$14;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v1, v1, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x25065

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 4004
    iget-object v1, p0, Lcom/android/server/wifi/WifiService$14;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiService;->isSupportHS20()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4005
    iget-object v1, p0, Lcom/android/server/wifi/WifiService$14;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v1, v1, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x25068

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 4006
    iget-object v1, p0, Lcom/android/server/wifi/WifiService$14;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiService;->getAutoInterworkingState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4007
    iget-object v1, p0, Lcom/android/server/wifi/WifiService$14;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v1, v1, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x25067

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 4013
    .end local v0    # "wifiState":I
    :cond_0
    return-void

    .line 3998
    .restart local v0    # "wifiState":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
