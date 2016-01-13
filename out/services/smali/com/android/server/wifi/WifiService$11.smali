.class Lcom/android/server/wifi/WifiService$11;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiService;->registerQuickPowerRecevier()V
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
    .line 3545
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$11;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3548
    const-string v2, "WifiService"

    const-string v3, "Quickboot - Intent received: ACTION_QUICKBOOT_POWERON"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3549
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$11;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$700(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v2

    const v3, 0x26064

    invoke-virtual {v2, v3, v5}, Lcom/android/server/wifi/WifiController;->sendMessage(II)V

    .line 3551
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$11;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mEnablingWifiInterrupted:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$3500(Lcom/android/server/wifi/WifiService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3552
    const-string v2, "WifiService"

    const-string v3, "Quickboot - Wifi starting up interrupted, need to restart it"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3553
    const/16 v1, 0xf

    .line 3554
    .local v1, "waitSecond":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$11;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v2, v2, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    if-lez v1, :cond_0

    .line 3555
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Quickboot - Wait for the end of interrupted wifi starting up: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3557
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3560
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3563
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$11;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v2, v2, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 3564
    const-string v2, "WifiService"

    const-string v3, "Quickboot - Wifi enabled, restart wifi again"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3565
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$11;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/WifiService;->setWifiEnabled(Z)Z

    .line 3566
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$11;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v2, v6}, Lcom/android/server/wifi/WifiService;->setWifiEnabled(Z)Z

    .line 3574
    .end local v1    # "waitSecond":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$11;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "wireless_display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .line 3575
    .local v0, "mWDManager":Lcom/htc/service/WirelessDisplayManager;
    if-eqz v0, :cond_2

    .line 3576
    const-string v2, "WifiService"

    const-string v3, "setFingerGestureEnable to true"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3577
    invoke-virtual {v0, v6}, Lcom/htc/service/WirelessDisplayManager;->setFingerGestureEnable(Z)V

    .line 3580
    :cond_2
    return-void

    .line 3558
    .end local v0    # "mWDManager":Lcom/htc/service/WirelessDisplayManager;
    .restart local v1    # "waitSecond":I
    :catch_0
    move-exception v2

    goto :goto_1
.end method
