.class Lcom/android/server/wifi/WifiService$10;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiService;->registerDockModeReceiver()V
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
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$10;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v1, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .local v0, "dockState":I
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockWifi - dockState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mAutoEnableWifiApInDockMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiService$10;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mAutoEnableWifiApInDockMode:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiService;->access$3300(Lcom/android/server/wifi/WifiService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiService$10;->this$0:Lcom/android/server/wifi/WifiService;

    # setter for: Lcom/android/server/wifi/WifiService;->mInDockMode:Z
    invoke-static {v1, v5}, Lcom/android/server/wifi/WifiService;->access$3102(Lcom/android/server/wifi/WifiService;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v0, v4, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiService$10;->this$0:Lcom/android/server/wifi/WifiService;

    # setter for: Lcom/android/server/wifi/WifiService;->mInDockMode:Z
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiService;->access$3102(Lcom/android/server/wifi/WifiService;Z)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiService$10;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mAutoEnableWifiApInDockMode:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiService;->access$3300(Lcom/android/server/wifi/WifiService;)Z

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiService$10;->this$0:Lcom/android/server/wifi/WifiService;

    # invokes: Lcom/android/server/wifi/WifiService;->setWifiApEnableInDockMode(Z)V
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiService;->access$3400(Lcom/android/server/wifi/WifiService;Z)V

    goto :goto_0
.end method
