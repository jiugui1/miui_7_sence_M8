.class public Lcom/htc/server/ResetService;
.super Landroid/app/IntentService;
.source "ResetService.java"


# static fields
.field private static final DBG:Z = true

.field private static final NOTIFY_STATE_CHANGED:I = 0x0

.field private static final REQUEST_RESET_DONGLE_ON_DEMAND:I = 0x1

.field private static final STA_INTERFACE_NAME:Ljava/lang/String; = "wlan0"

.field private static final TAG:Ljava/lang/String; = "ResetService"


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDongleBssid:Ljava/lang/String;

.field private mFilter:Landroid/content/IntentFilter;

.field mHandler:Landroid/os/Handler;

.field private mHtcCustomizationManager:Lcom/htc/customization/HtcCustomizationManager;

.field private mIsResetComplete:Z

.field private mIsResetting:Z

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetAp:Z

.field private mResetDfs:Z

.field private mResetDongle:Z

.field private mResetDongleCount:I

.field private mResetWifi:Z

.field private mResetWivu:Z

.field private mWDManager:Lcom/htc/service/WirelessDisplayManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private notSupportConcurrent:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "ResetService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/htc/server/ResetService;->mResetWifi:Z

    iput-boolean v1, p0, Lcom/htc/server/ResetService;->mResetAp:Z

    iput-boolean v1, p0, Lcom/htc/server/ResetService;->mResetWivu:Z

    iput-boolean v1, p0, Lcom/htc/server/ResetService;->mResetDfs:Z

    iput-boolean v1, p0, Lcom/htc/server/ResetService;->mIsResetting:Z

    iput-boolean v1, p0, Lcom/htc/server/ResetService;->mResetDongle:Z

    iput-boolean v1, p0, Lcom/htc/server/ResetService;->notSupportConcurrent:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/server/ResetService;->mDongleBssid:Ljava/lang/String;

    new-instance v0, Lcom/htc/server/ResetService$1;

    invoke-direct {v0, p0}, Lcom/htc/server/ResetService$1;-><init>(Lcom/htc/server/ResetService;)V

    iput-object v0, p0, Lcom/htc/server/ResetService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/server/ResetService$2;

    invoke-direct {v0, p0}, Lcom/htc/server/ResetService$2;-><init>(Lcom/htc/server/ResetService;)V

    iput-object v0, p0, Lcom/htc/server/ResetService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/server/ResetService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/ResetService;

    .prologue
    iget-boolean v0, p0, Lcom/htc/server/ResetService;->mResetWifi:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/server/ResetService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/ResetService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/htc/server/ResetService;->mResetWifi:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/server/ResetService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/ResetService;

    .prologue
    iget-boolean v0, p0, Lcom/htc/server/ResetService;->mResetAp:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/server/ResetService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/ResetService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/htc/server/ResetService;->mResetAp:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/server/ResetService;)I
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/ResetService;

    .prologue
    iget v0, p0, Lcom/htc/server/ResetService;->mResetDongleCount:I

    return v0
.end method

.method static synthetic access$210(Lcom/htc/server/ResetService;)I
    .locals 2
    .param p0, "x0"    # Lcom/htc/server/ResetService;

    .prologue
    iget v0, p0, Lcom/htc/server/ResetService;->mResetDongleCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/server/ResetService;->mResetDongleCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/server/ResetService;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/ResetService;

    .prologue
    invoke-direct {p0}, Lcom/htc/server/ResetService;->requestResetOnDemand()V

    return-void
.end method

.method static synthetic access$402(Lcom/htc/server/ResetService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/ResetService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/htc/server/ResetService;->mResetDongle:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/server/ResetService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/ResetService;

    .prologue
    iget-object v0, p0, Lcom/htc/server/ResetService;->mDongleBssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/server/ResetService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/ResetService;

    .prologue
    iget-object v0, p0, Lcom/htc/server/ResetService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private requestResetOnDemand()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/htc/server/ResetService;->mDongleBssid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/ResetService;->mDongleBssid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/htc/server/ResetService$3;

    invoke-direct {v0, p0}, Lcom/htc/server/ResetService$3;-><init>(Lcom/htc/server/ResetService;)V

    invoke-virtual {v0}, Lcom/htc/server/ResetService$3;->start()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "ResetService"

    const-string v1, "[WFD]===>requestResetOnDemand() mCurrentDongle is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "ResetService"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/ResetService;->mHtcCustomizationManager:Lcom/htc/customization/HtcCustomizationManager;

    iget-object v1, p0, Lcom/htc/server/ResetService;->mHtcCustomizationManager:Lcom/htc/customization/HtcCustomizationManager;

    const-string v2, "System"

    invoke-virtual {v1, v2, v5, v4}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    .local v0, "reader":Lcom/htc/customization/HtcCustomizationReader;
    const-string v1, "notSupportConcurrent"

    invoke-interface {v0, v1, v4}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/server/ResetService;->notSupportConcurrent:Z

    const-string v1, "ResetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notSupportConcurrent value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/server/ResetService;->notSupportConcurrent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/htc/server/ResetService;->notSupportConcurrent:Z

    if-eqz v1, :cond_0

    sput-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    const-string v1, "WfdUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WfdUtils.isConcurrentSupport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/htc/server/ResetService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/htc/server/ResetService;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/htc/server/ResetService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/htc/server/ResetService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string v1, "wireless_display"

    invoke-virtual {p0, v1}, Lcom/htc/server/ResetService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/WirelessDisplayManager;

    iput-object v1, p0, Lcom/htc/server/ResetService;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/htc/server/ResetService;->mFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/htc/server/ResetService;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v1, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/server/ResetService;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFIDISPLAY_AP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/htc/server/ResetService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/server/ResetService;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/htc/server/ResetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_0
    sput-boolean v5, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    const-string v1, "WfdUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WfdUtils.isConcurrentSupport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/server/ResetService;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const-string v0, "ResetService"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    iget-object v0, p0, Lcom/htc/server/ResetService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/server/ResetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x3

    iput v4, p0, Lcom/htc/server/ResetService;->mResetDongleCount:I

    const-string v4, "reset_wifi"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/server/ResetService;->mResetWifi:Z

    const-string v4, "reset_ap"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/server/ResetService;->mResetAp:Z

    const-string v4, "reconnect_dfs"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/server/ResetService;->mResetDfs:Z

    const-string v4, "reset_dongle"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/server/ResetService;->mResetDongle:Z

    const-string v4, "dongle_bssid"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/server/ResetService;->mDongleBssid:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/htc/server/ResetService;->mIsResetting:Z

    if-nez v4, :cond_10

    iget-boolean v4, p0, Lcom/htc/server/ResetService;->mResetAp:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/htc/server/ResetService;->mResetWifi:Z

    if-nez v4, :cond_0

    iput-boolean v8, p0, Lcom/htc/server/ResetService;->mResetWivu:Z

    :cond_0
    iput-boolean v8, p0, Lcom/htc/server/ResetService;->mIsResetting:Z

    const-string v4, "ResetService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WFD]===>onHandleIntent(), wifi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/server/ResetService;->mResetWifi:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ap = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/server/ResetService;->mResetAp:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wivu = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/server/ResetService;->mResetWivu:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/htc/server/ResetService;->mIsResetComplete:Z

    if-nez v4, :cond_f

    iget-boolean v4, p0, Lcom/htc/server/ResetService;->mResetAp:Z

    if-eqz v4, :cond_b

    sget-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/server/ResetService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v4}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifidisplayApEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    sget-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/htc/server/ResetService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v4}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->isWifiApEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_3
    sget-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/htc/server/ResetService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v4, v9, v7}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifidisplayApEnabled(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "ResetService"

    const-string v5, "Disable concurrent AP fialed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-boolean v4, p0, Lcom/htc/server/ResetService;->mResetWifi:Z

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/htc/server/ResetService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/htc/server/ResetService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "ResetService"

    const-string v5, "Disable wifi failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-boolean v4, p0, Lcom/htc/server/ResetService;->mResetDfs:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/server/ResetService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->reconnect()Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "ResetService"

    const-string v5, "Reconnect Wifi failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    iget-boolean v4, p0, Lcom/htc/server/ResetService;->mResetWivu:Z

    if-eqz v4, :cond_6

    const-string v4, "wifi.interface"

    const-string v5, "wlan0"

    invoke-static {v4, v5}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "iface":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/htc/server/ResetService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v8, :cond_5

    iget-object v4, p0, Lcom/htc/server/ResetService;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v4, v2}, Lcom/htc/service/WirelessDisplayManager;->setInterface(Ljava/lang/String;)V

    const-string v4, "ResetService"

    const-string v5, "Reset wivu interface to station."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    :cond_5
    :goto_4
    iput-boolean v7, p0, Lcom/htc/server/ResetService;->mResetWivu:Z

    .end local v2    # "iface":Ljava/lang/String;
    :cond_6
    iget-boolean v4, p0, Lcom/htc/server/ResetService;->mResetDongle:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/htc/server/ResetService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/htc/server/ResetService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v4, 0x7d0

    :try_start_2
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    iget-boolean v4, p0, Lcom/htc/server/ResetService;->mResetWifi:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/htc/server/ResetService;->mResetAp:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/htc/server/ResetService;->mResetDfs:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/htc/server/ResetService;->mResetWivu:Z

    if-nez v4, :cond_1

    iput-boolean v8, p0, Lcom/htc/server/ResetService;->mIsResetComplete:Z

    goto/16 :goto_0

    :cond_8
    const-string v4, "ResetService"

    const-string v5, "[WFD]===>Disable concurrent AP..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    iget-object v4, p0, Lcom/htc/server/ResetService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v4, v9, v7}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifidisplayApEnabled(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "ResetService"

    const-string v5, "Disable Wifi AP fialed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    iget-object v4, p0, Lcom/htc/server/ResetService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto/16 :goto_1

    :cond_a
    const-string v4, "ResetService"

    const-string v5, "[WFD]===>Disable Wifi AP..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_b
    iput-boolean v7, p0, Lcom/htc/server/ResetService;->mResetAp:Z

    goto/16 :goto_1

    :cond_c
    const-string v4, "ResetService"

    const-string v5, "[WFD]===>Disable wifi..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_d
    iput-boolean v7, p0, Lcom/htc/server/ResetService;->mResetWifi:Z

    goto/16 :goto_2

    :cond_e
    const-string v4, "ResetService"

    const-string v5, "[WFD]===>Reconnect wifi..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/htc/server/ResetService;->mResetDfs:Z

    goto/16 :goto_3

    .restart local v2    # "iface":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "se":Ljava/lang/SecurityException;
    const-string v4, "ResetService"

    const-string v5, "mWDManager.setInterface occurs SecurityException. "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v2    # "iface":Ljava/lang/String;
    .end local v3    # "se":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_f
    iput-boolean v7, p0, Lcom/htc/server/ResetService;->mIsResetting:Z

    const-string v4, "ResetService"

    const-string v5, "Reset Wifi&Ap complete."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void

    :cond_10
    const-string v4, "ResetService"

    const-string v5, "Already resetting."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method
