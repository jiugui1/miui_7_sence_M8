.class final Lcom/htc/server/HtcAppWifiOffload$BroadcastHandler;
.super Landroid/content/BroadcastReceiver;
.source "HtcAppUsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcAppWifiOffload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BroadcastHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/HtcAppWifiOffload;


# direct methods
.method private constructor <init>(Lcom/htc/server/HtcAppWifiOffload;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/htc/server/HtcAppWifiOffload$BroadcastHandler;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/HtcAppWifiOffload;Lcom/htc/server/HtcAppWifiOffload$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/htc/server/HtcAppWifiOffload;
    .param p2, "x1"    # Lcom/htc/server/HtcAppWifiOffload$1;

    .prologue
    .line 584
    invoke-direct {p0, p1}, Lcom/htc/server/HtcAppWifiOffload$BroadcastHandler;-><init>(Lcom/htc/server/HtcAppWifiOffload;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 587
    if-nez p2, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 592
    const-string v2, "HtcAppWifiOffload"

    const-string v3, "Boot compled"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v2, p0, Lcom/htc/server/HtcAppWifiOffload$BroadcastHandler;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # setter for: Lcom/htc/server/HtcAppWifiOffload;->mWaitForLauncher:Z
    invoke-static {v2, v5}, Lcom/htc/server/HtcAppWifiOffload;->access$902(Lcom/htc/server/HtcAppWifiOffload;Z)Z

    .line 595
    iget-object v2, p0, Lcom/htc/server/HtcAppWifiOffload$BroadcastHandler;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # getter for: Lcom/htc/server/HtcAppWifiOffload;->mHandler:Lcom/htc/server/HtcAppWifiOffload$H;
    invoke-static {v2}, Lcom/htc/server/HtcAppWifiOffload;->access$1000(Lcom/htc/server/HtcAppWifiOffload;)Lcom/htc/server/HtcAppWifiOffload$H;

    move-result-object v2

    const/16 v3, 0x1f5

    invoke-virtual {v2, v3}, Lcom/htc/server/HtcAppWifiOffload$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 596
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/server/HtcAppWifiOffload$BroadcastHandler;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # getter for: Lcom/htc/server/HtcAppWifiOffload;->mHandler:Lcom/htc/server/HtcAppWifiOffload$H;
    invoke-static {v2}, Lcom/htc/server/HtcAppWifiOffload;->access$1000(Lcom/htc/server/HtcAppWifiOffload;)Lcom/htc/server/HtcAppWifiOffload$H;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/server/HtcAppWifiOffload$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 600
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    const-string v2, "com.htc.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 601
    const-string v2, "HtcAppWifiOffload"

    const-string v3, "Quick-Boot power on"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v2, p0, Lcom/htc/server/HtcAppWifiOffload$BroadcastHandler;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # setter for: Lcom/htc/server/HtcAppWifiOffload;->mIsFunctionEnable:Z
    invoke-static {v2, v5}, Lcom/htc/server/HtcAppWifiOffload;->access$1102(Lcom/htc/server/HtcAppWifiOffload;Z)Z

    .line 604
    iget-object v2, p0, Lcom/htc/server/HtcAppWifiOffload$BroadcastHandler;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # getter for: Lcom/htc/server/HtcAppWifiOffload;->mHandler:Lcom/htc/server/HtcAppWifiOffload$H;
    invoke-static {v2}, Lcom/htc/server/HtcAppWifiOffload;->access$1000(Lcom/htc/server/HtcAppWifiOffload;)Lcom/htc/server/HtcAppWifiOffload$H;

    move-result-object v2

    const/16 v3, 0x1f7

    invoke-virtual {v2, v3}, Lcom/htc/server/HtcAppWifiOffload$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 605
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/server/HtcAppWifiOffload$BroadcastHandler;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # getter for: Lcom/htc/server/HtcAppWifiOffload;->mHandler:Lcom/htc/server/HtcAppWifiOffload$H;
    invoke-static {v2}, Lcom/htc/server/HtcAppWifiOffload;->access$1000(Lcom/htc/server/HtcAppWifiOffload;)Lcom/htc/server/HtcAppWifiOffload$H;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/server/HtcAppWifiOffload$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 609
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    const-string v2, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 610
    const-string v2, "HtcAppWifiOffload"

    const-string v3, "Quick-Boot power off"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v2, p0, Lcom/htc/server/HtcAppWifiOffload$BroadcastHandler;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # setter for: Lcom/htc/server/HtcAppWifiOffload;->mIsFunctionEnable:Z
    invoke-static {v2, v4}, Lcom/htc/server/HtcAppWifiOffload;->access$1102(Lcom/htc/server/HtcAppWifiOffload;Z)Z

    goto :goto_0

    .line 615
    :cond_4
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 616
    iget-object v2, p0, Lcom/htc/server/HtcAppWifiOffload$BroadcastHandler;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    const-string v3, "state"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    # setter for: Lcom/htc/server/HtcAppWifiOffload;->mIsAirplaneMode:Z
    invoke-static {v2, v3}, Lcom/htc/server/HtcAppWifiOffload;->access$202(Lcom/htc/server/HtcAppWifiOffload;Z)Z

    .line 617
    const-string v2, "HtcAppWifiOffload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Airplane Mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/server/HtcAppWifiOffload$BroadcastHandler;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # getter for: Lcom/htc/server/HtcAppWifiOffload;->mIsAirplaneMode:Z
    invoke-static {v4}, Lcom/htc/server/HtcAppWifiOffload;->access$200(Lcom/htc/server/HtcAppWifiOffload;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
