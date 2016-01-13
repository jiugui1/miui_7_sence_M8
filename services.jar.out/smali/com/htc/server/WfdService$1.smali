.class Lcom/htc/server/WfdService$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 76
    iput-object p1, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v11, 0xb

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "action":Ljava/lang/String;
    const-string v6, "WfdService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive()...action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v6, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v6}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v6

    if-nez v6, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 85
    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 86
    .local v5, "state":I
    const-string v6, "WfdService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wifi state changed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v6, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v6}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/server/WfdStateMachine;->notifyWifiStateChanged(I)V

    goto :goto_0

    .line 88
    .end local v5    # "state":I
    :cond_2
    const-string v6, "android.net.hotspot.ASSOCLIST"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 89
    iget-object v6, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v6}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/server/WfdStateMachine;->notifyApClientChanged()V

    goto :goto_0

    .line 90
    :cond_3
    sget-boolean v6, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v6, :cond_4

    const-string v6, "android.net.wifi.WIFIDISPLAY_AP_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 91
    const-string v6, "wifi_state"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 92
    .restart local v5    # "state":I
    const-string v6, "WfdService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WifiDisplay AP state changed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v6, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v6}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/server/WfdStateMachine;->notifyWifiApStateChanged(I)V

    goto :goto_0

    .line 94
    .end local v5    # "state":I
    :cond_4
    sget-boolean v6, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v6, :cond_5

    const-string v6, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 95
    const-string v6, "wifi_state"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 96
    .restart local v5    # "state":I
    const-string v6, "WfdService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wifi AP state changed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v6, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v6}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/server/WfdStateMachine;->notifyWifiApStateChanged(I)V

    goto/16 :goto_0

    .line 98
    .end local v5    # "state":I
    :cond_5
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 99
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 102
    .local v3, "info":Landroid/net/NetworkInfo;
    :try_start_0
    const-string v6, "connectivity"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 103
    .local v1, "connMgr":Landroid/net/IConnectivityManager;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-interface {v1, v6}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 104
    .local v4, "newinfo":Landroid/net/NetworkInfo;
    move-object v3, v4

    .line 108
    .end local v1    # "connMgr":Landroid/net/IConnectivityManager;
    .end local v4    # "newinfo":Landroid/net/NetworkInfo;
    :goto_1
    if-eqz v3, :cond_0

    .line 111
    iget-object v6, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v6}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/htc/server/WfdStateMachine;->notifyNetworkInfoChanged(Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 105
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "WfdService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 112
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "info":Landroid/net/NetworkInfo;
    :cond_6
    const-string v6, "android.net.hotspot.WPS_REGISTRAR_START"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 113
    iget-object v6, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v6}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/htc/server/WfdStateMachine;->notifyWpsEvent(I)V

    goto/16 :goto_0

    .line 114
    :cond_7
    const-string v6, "android.net.hotspot.WPS_REGISTRAR_FAIL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 115
    iget-object v6, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v6}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/htc/server/WfdStateMachine;->notifyWpsEvent(I)V

    goto/16 :goto_0

    .line 116
    :cond_8
    const-string v6, "android.net.hotspot.WPS_REGISTRAR_SUCCESSFUL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 117
    iget-object v6, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v6}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/htc/server/WfdStateMachine;->notifyWpsEvent(I)V

    goto/16 :goto_0

    .line 119
    :cond_9
    const-string v6, "android.net.hotspot.L2PE_SUCCESSFUL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 120
    const-string v6, "WfdService"

    const-string v7, "Receive L2PE_SUCCESSFUL intent!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v6, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v6}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/htc/server/WfdStateMachine;->notifyL2PEChangeEvent(Z)V

    goto/16 :goto_0

    .line 122
    :cond_a
    const-string v6, "android.net.hotspot.L2PE_FAIL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 123
    const-string v6, "WfdService"

    const-string v7, "Receive L2PE_FAIL intent!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v6, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v6}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/htc/server/WfdStateMachine;->notifyL2PEChangeEvent(Z)V

    goto/16 :goto_0

    .line 126
    :cond_b
    const-string v6, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 127
    const-string v6, "mirror_display_state"

    const/4 v7, 0x5

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 129
    .restart local v5    # "state":I
    iget-object v6, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v6}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/server/WfdStateMachine;->notifyMirrorDisplayStateChanged(I)V

    goto/16 :goto_0

    .line 130
    .end local v5    # "state":I
    :cond_c
    const-string v6, "com.htc.MIRROR_DISPLAY_DONGLE_AVAILABLE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 131
    iget-object v6, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v6}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/server/WfdStateMachine;->notifyDongleScanResultsAvailable()V

    goto/16 :goto_0

    .line 132
    :cond_d
    const-string v6, "com.htc.MIRROR_DONGLE_LIST_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 133
    iget-object v6, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v6}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/server/WfdStateMachine;->notifyWivuListChanged()V

    goto/16 :goto_0

    .line 134
    :cond_e
    const-string v6, "com.htc.intent.action.WIRELESS_DISPLAY_DISMISS_DIALOG"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 135
    const-string v6, "WfdService"

    const-string v7, "[WFD]===>Receive dismiss connecting dialog intent!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v6, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    # getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v6}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/server/WfdStateMachine;->cancelConnectingDialog()V

    goto/16 :goto_0
.end method
