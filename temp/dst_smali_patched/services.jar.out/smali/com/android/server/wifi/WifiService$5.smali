.class Lcom/android/server/wifi/WifiService$5;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiService;->registerForHtcFeature()V
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
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v8, v8, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->getWifiStatusType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v8, v8, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->setInitialVzwStatus()V

    :cond_2
    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    # invokes: Lcom/android/server/wifi/WifiService;->updateDevicePolicy()V
    invoke-static {v8}, Lcom/android/server/wifi/WifiService;->access$2100(Lcom/android/server/wifi/WifiService;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v8, v8, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->getWifiStatusType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v8, v8, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->sendVzwStatusNotification()I

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.net.hotspot.connecitonrequest"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v8, v8, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_0

    const-string v8, "WifiService"

    const-string v9, "Got HOTSPOT_CONNECTION_REQUEST"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v8, v8, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiStateMachine;->setConnectionReqNotificationVisible(Z)V

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v8, v8, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->CancelNotifyWIFIAPreqtimer()V

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v8, v8, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->SetNotifyWIFIAPreqtimer()V

    const-string v8, "hotspot_block_mac"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "mac":Ljava/lang/String;
    const-string v8, "hotspot_lastest_time_of_request"

    const-wide/16 v9, -0x1

    invoke-virtual {p2, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .local v5, "time":J
    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v8, v8, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, v1, v5, v6}, Landroid/net/wifi/WifiStateMachine;->updateConnectionList(Ljava/lang/String;J)V

    goto/16 :goto_0

    .end local v1    # "mac":Ljava/lang/String;
    .end local v5    # "time":J
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.android.server.HotspotManager.action.DEVICE_IDLE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "WifiService"

    const-string v9, "Got WIFI_AP_IDLE"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v8, v8, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v8, v8, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->getWifiApClients()I

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "WifiService"

    const-string v9, "Got WIFI_AP_IDLE WIFI_AP_STATE_ENABLED and getWifiApClients 0"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiService;->isSupportApSta()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiService;->getWifiEnabledState()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_7

    :cond_6
    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiService;->isSupportApSta()Z

    move-result v8

    if-nez v8, :cond_0

    :cond_7
    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiService;->getWifiEnabledState()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wifi/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    const/4 v7, 0x0

    .local v7, "wifiSavedState":I
    :try_start_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_saved_state"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    :goto_1
    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiService;->setWifiEnabled(Z)Z

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_saved_state"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v8, "WifiService"

    const-string v9, "Restore wifi when hotspot is off"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v7    # "wifiSavedState":I
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.android.server.HotspotManager.action.WIFI_AP_CONN_REQ_TIMEOUT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "WifiService"

    const-string v9, "Got ACTION_WIFI_AP_CONN_REQ_TIMEOUT"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v8, v8, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiStateMachine;->setConnectionReqNotificationVisible(Z)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.wifi.silent_hung"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "WifiService"

    const-string v9, "Got ACTION_WIFI_SILENT_HUNG_TIMEOUT"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v8, v8, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/WifiStateMachine;->setSilentHungEnabled(ZZ)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.HTC_EMERGENCY_MODE_CHANGED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    const-string v9, "EMERGENCY_AND_CALLBACK_STATUS"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    # setter for: Lcom/android/server/wifi/WifiService;->mEmergencyModeChanged:Z
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiService;->access$2202(Lcom/android/server/wifi/WifiService;Z)Z

    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HTC_EMERGENCY_MODE_CHANGED:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mEmergencyModeChanged:Z
    invoke-static {v10}, Lcom/android/server/wifi/WifiService;->access$2200(Lcom/android/server/wifi/WifiService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Previous:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mPreEmergencyModeChanged:Z
    invoke-static {v10}, Lcom/android/server/wifi/WifiService;->access$2300(Lcom/android/server/wifi/WifiService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v8}, Lcom/android/server/wifi/WifiService;->access$700(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiController;->isSupportWifiCalling()Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "WifiService"

    const-string v9, "support Kineto wifi calling, do not disable WiFi, set mEmergencyModeChanged = false"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    const/4 v9, 0x0

    # setter for: Lcom/android/server/wifi/WifiService;->mEmergencyModeChanged:Z
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiService;->access$2202(Lcom/android/server/wifi/WifiService;Z)Z

    :cond_b
    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mEmergencyModeChanged:Z
    invoke-static {v8}, Lcom/android/server/wifi/WifiService;->access$2200(Lcom/android/server/wifi/WifiService;)Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mPreEmergencyModeChanged:Z
    invoke-static {v8}, Lcom/android/server/wifi/WifiService;->access$2300(Lcom/android/server/wifi/WifiService;)Z

    move-result v8

    if-nez v8, :cond_c

    const-string v8, "WifiService"

    const-string v9, "Don\'t have emergency call"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v9, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mEmergencyModeChanged:Z
    invoke-static {v9}, Lcom/android/server/wifi/WifiService;->access$2200(Lcom/android/server/wifi/WifiService;)Z

    move-result v9

    # setter for: Lcom/android/server/wifi/WifiService;->mPreEmergencyModeChanged:Z
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiService;->access$2302(Lcom/android/server/wifi/WifiService;Z)Z

    goto/16 :goto_0

    :cond_c
    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiService;->updateWifiState()V

    goto :goto_2

    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    const-string v8, "ss"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "stateExtra":Ljava/lang/String;
    const-string v8, "LOADED"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    const-string v8, "WifiService"

    const-string v9, "AKA: SIM state is LOADED for EAP-SIM"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v8, v8, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiStateMachine;->setWiFiSIMAuthenticationEnabled(Z)V

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiService;->isSupportHS20()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiService;->getAutoInterworkingState()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v8, v8, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v9, 0x25067

    const-wide/16 v10, 0xbb8

    invoke-virtual {v8, v9, v10, v11}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    :cond_e
    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AKA: SIM state is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", skip EAP-SIM connection"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v8, v8, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiStateMachine;->setWiFiSIMAuthenticationEnabled(Z)V

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiService;->isSupportHS20()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "ABSENT"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v8, v8, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v9, 0x25068

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .end local v4    # "stateExtra":Ljava/lang/String;
    :cond_f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.admin.ALLOW_WIFI_CHANGE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    const-string v8, "com.htc.admin.extra.ALLOW_STATUS"

    const/4 v9, 0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .local v0, "allowStatus":I
    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GOT INTENT_ALLOW_WIFI_CHANGE: status="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_10

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiService;->setWifiEnabled(Z)Z

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wifi/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    const/4 v9, 0x1

    # setter for: Lcom/android/server/wifi/WifiService;->mForbiddenByExchangePolicy:Z
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiService;->access$2402(Lcom/android/server/wifi/WifiService;Z)Z

    goto/16 :goto_0

    :cond_10
    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    const/4 v9, 0x0

    # setter for: Lcom/android/server/wifi/WifiService;->mForbiddenByExchangePolicy:Z
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiService;->access$2402(Lcom/android/server/wifi/WifiService;Z)Z

    goto/16 :goto_0

    .end local v0    # "allowStatus":I
    :cond_11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v8, "WifiService"

    const-string v9, ">>>>>>>>start checkHtcCustomization<<<<<<<<"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v9, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v9

    # invokes: Lcom/android/server/wifi/WifiService;->checkHtcCustomization(Landroid/content/Context;)V
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiService;->access$2500(Lcom/android/server/wifi/WifiService;Landroid/content/Context;)V

    const-string v8, "WifiService"

    const-string v9, ">>>>>>>>end checkHtcCustomization<<<<<<<<"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v8, v8, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->isEnableImeiPassword()Z

    move-result v8

    if-nez v8, :cond_13

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v8, v8, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->isEnableImeiSsid()Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_13
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v2

    .local v2, "ss":Landroid/telephony/ServiceState;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .local v3, "state":I
    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Customize hotspot by IMEI when receive TelephonyIntents.ACTION_SERVICE_STATE_CHANGED state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_14

    const/4 v8, 0x1

    if-eq v3, v8, :cond_14

    const/4 v8, 0x2

    if-ne v3, v8, :cond_0

    :cond_14
    const-string v8, "WifiService"

    const-string v9, "Got TelephonyIntents.ACTION_SERVICE_STATE_CHANGED: state not power off"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v8, v8, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->isEnableImeiPassword()Z

    move-result v8

    if-eqz v8, :cond_15

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v8, v8, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->checkWifiApPassword()V

    :cond_15
    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v8, v8, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->isEnableImeiSsid()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v8, v8, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->checkWifiApSsid()V

    goto/16 :goto_0

    .end local v2    # "ss":Landroid/telephony/ServiceState;
    .end local v3    # "state":I
    .restart local v7    # "wifiSavedState":I
    :catch_0
    move-exception v8

    goto/16 :goto_1
.end method
