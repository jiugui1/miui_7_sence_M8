.class Lcom/android/server/wifi/WifiService$7;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiService;->registerGanLiteReceiver()V
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
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$7;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v2, "GanState"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "myString":Ljava/lang/String;
    const-string v2, "DEREGISTERED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "WifiService"

    const-string v3, "Ganlite intent received: DEREGISTERED"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/WifiService$7;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiService;->NotifyWifiPhoneCallEnd()Z

    move-result v0

    .local v0, "bRtn":Z
    if-nez v0, :cond_0

    const-string v2, "WifiService"

    const-string v3, "Ganlite: Notify Wifi driver DEREGISTERED, failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "bRtn":Z
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "REGISTERED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "WifiService"

    const-string v3, "Ganlite intent received: REGISTERED"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/WifiService$7;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiService;->NotifyWifiPhoneCallEnd()Z

    move-result v0

    .restart local v0    # "bRtn":Z
    if-nez v0, :cond_0

    const-string v2, "WifiService"

    const-string v3, "Ganlite: Notify Wifi driver REGISTERED, failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "bRtn":Z
    :cond_2
    const-string v2, "GAN_CS_CALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "WifiService"

    const-string v3, "Ganlite intent received: GAN_CS_CALL"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/WifiService$7;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiService;->NotifyWifiPhoneCallComeIn()Z

    move-result v0

    .restart local v0    # "bRtn":Z
    if-nez v0, :cond_0

    const-string v2, "WifiService"

    const-string v3, "Ganlite: Notify Wifi driver GAN_CS_CALL, failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "bRtn":Z
    :cond_3
    const-string v2, "GAN_PS_CALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "WifiService"

    const-string v3, "Ganlite intent received: GAN_PS_CALL"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v2, "GAN_CS_PS_CALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WifiService"

    const-string v3, "Ganlite intent received: GAN_CS_PS_CALL"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
