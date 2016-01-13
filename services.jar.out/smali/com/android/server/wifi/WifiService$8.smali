.class Lcom/android/server/wifi/WifiService$8;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiService;->registerGanLiteV2Receiver()V
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
    .line 3464
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$8;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3467
    const-string v1, "Event"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3469
    .local v0, "myString":Ljava/lang/String;
    const-string v1, "WFC_DEREGISTERED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3470
    const-string v1, "WifiService"

    const-string v2, "VoWIFI: Ganlite v2.0 intent received: WFC_DEREGISTERED"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3471
    iget-object v1, p0, Lcom/android/server/wifi/WifiService$8;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiService;->enablePowerActiveMode(Z)Z

    .line 3472
    iget-object v1, p0, Lcom/android/server/wifi/WifiService$8;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v1, v1, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiStateMachine;->VoWIFILockCPU(Z)V

    .line 3489
    :cond_0
    :goto_0
    return-void

    .line 3473
    :cond_1
    const-string v1, "WFC_REGISTERED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3474
    const-string v1, "WifiService"

    const-string v2, "VoWIFI: Ganlite v2.0 intent received: WFC_REGISTERED"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3475
    iget-object v1, p0, Lcom/android/server/wifi/WifiService$8;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiService;->enablePowerActiveMode(Z)Z

    goto :goto_0

    .line 3476
    :cond_2
    const-string v1, "WFC_DEDICATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3477
    const-string v1, "WifiService"

    const-string v2, "VoWIFI: Ganlite v2.0 intent received: WFC_DEDICATED"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    iget-object v1, p0, Lcom/android/server/wifi/WifiService$8;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiService;->enablePowerActiveMode(Z)Z

    .line 3479
    iget-object v1, p0, Lcom/android/server/wifi/WifiService$8;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v1, v1, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiStateMachine;->VoWIFILockCPU(Z)V

    goto :goto_0

    .line 3480
    :cond_3
    const-string v1, "WFC_VOICE_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3481
    const-string v1, "WifiService"

    const-string v2, "VoWIFI: Ganlite v2.0 intent received: WFC_VOICE_CALL"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3482
    iget-object v1, p0, Lcom/android/server/wifi/WifiService$8;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiService;->enablePowerActiveMode(Z)Z

    .line 3483
    iget-object v1, p0, Lcom/android/server/wifi/WifiService$8;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v1, v1, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiStateMachine;->VoWIFILockCPU(Z)V

    goto :goto_0

    .line 3484
    :cond_4
    const-string v1, "WFC_BARRED_COUNTRY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3485
    const-string v1, "WifiService"

    const-string v2, "VoWIFI: Ganlite v2.0 intent received: WFC_BARRED_COUNTRY"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3486
    :cond_5
    const-string v1, "WFC_SETTINGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3487
    const-string v1, "WifiService"

    const-string v2, "VoWIFI: Ganlite v2.0 intent received: WFC_SETTINGS"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
