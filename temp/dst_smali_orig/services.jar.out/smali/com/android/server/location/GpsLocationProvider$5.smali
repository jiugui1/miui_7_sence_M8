.class Lcom/android/server/location/GpsLocationProvider$5;
.super Landroid/content/BroadcastReceiver;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .local v4, "ssid":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$1900(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$WifiState;

    move-result-object v6

    # getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$2000(Lcom/android/server/location/GpsLocationProvider$WifiState;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$1900(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$WifiState;

    move-result-object v6

    # getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->currentSSID:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$2100(Lcom/android/server/location/GpsLocationProvider$WifiState;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-string v6, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$1900(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$WifiState;

    move-result-object v6

    # getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$2300(Lcom/android/server/location/GpsLocationProvider$WifiState;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .local v2, "result":Landroid/net/wifi/ScanResult;
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v7, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/server/location/GpsLocationProvider;->access$2400(Lcom/android/server/location/GpsLocationProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "ssid_result":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "result":Landroid/net/wifi/ScanResult;
    .end local v3    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v5    # "ssid_result":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$1900(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$WifiState;

    move-result-object v6

    # getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$2000(Lcom/android/server/location/GpsLocationProvider$WifiState;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$1900(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$WifiState;

    move-result-object v6

    # getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->originalSSID:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$2200(Lcom/android/server/location/GpsLocationProvider$WifiState;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_3
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$1900(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$WifiState;

    move-result-object v6

    # invokes: Lcom/android/server/location/GpsLocationProvider$WifiState;->handleFailure()V
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$2500(Lcom/android/server/location/GpsLocationProvider$WifiState;)V

    goto :goto_1
.end method
