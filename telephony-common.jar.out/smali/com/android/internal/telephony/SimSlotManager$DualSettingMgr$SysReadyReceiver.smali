.class Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$SysReadyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimSlotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SysReadyReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;)V
    .locals 0

    .prologue
    .line 1447
    iput-object p1, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$SysReadyReceiver;->this$1:Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;Lcom/android/internal/telephony/SimSlotManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;
    .param p2, "x1"    # Lcom/android/internal/telephony/SimSlotManager$1;

    .prologue
    .line 1447
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$SysReadyReceiver;-><init>(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1450
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1453
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1454
    iget-object v1, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$SysReadyReceiver;->this$1:Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;

    iget-object v1, v1, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    const/4 v2, 0x1

    # setter for: Lcom/android/internal/telephony/SimSlotManager;->mWMReady:Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/SimSlotManager;->access$102(Lcom/android/internal/telephony/SimSlotManager;Z)Z

    .line 1455
    iget-object v1, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$SysReadyReceiver;->this$1:Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;

    iget-object v1, v1, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1456
    iget-object v1, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$SysReadyReceiver;->this$1:Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;

    # invokes: Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->reportDone()V
    invoke-static {v1}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->access$1200(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;)V

    .line 1458
    :cond_0
    return-void
.end method
