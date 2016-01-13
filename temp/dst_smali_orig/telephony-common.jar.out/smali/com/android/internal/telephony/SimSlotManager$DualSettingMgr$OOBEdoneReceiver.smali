.class Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$OOBEdoneReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimSlotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OOBEdoneReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$OOBEdoneReceiver;->this$1:Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;Lcom/android/internal/telephony/SimSlotManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;
    .param p2, "x1"    # Lcom/android/internal/telephony/SimSlotManager$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$OOBEdoneReceiver;-><init>(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v5, "com.htc.intent.action.SETUP_WIZARD_FINISHED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "SetupWizardLaunchedBy"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "mOOBEDone":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$OOBEdoneReceiver;->this$1:Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;

    iget-object v5, v5, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "key_oobe_status"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_0

    move v3, v4

    :cond_0
    # setter for: Lcom/android/internal/telephony/SimSlotManager;->mOobeFinish:Z
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager;->access$1302(Z)Z

    const-string v3, "SSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOOBEDone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mOobeFinish: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mOobeFinish:Z
    invoke-static {}, Lcom/android/internal/telephony/SimSlotManager;->access$1300()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "LaunchedBySystem"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mOobeFinish:Z
    invoke-static {}, Lcom/android/internal/telephony/SimSlotManager;->access$1300()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$OOBEdoneReceiver;->this$1:Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;

    # getter for: Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mCdmaReady:Z
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->access$1400(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$OOBEdoneReceiver;->this$1:Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;

    # getter for: Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mGsmReady:Z
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->access$1500(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$OOBEdoneReceiver;->this$1:Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;

    # getter for: Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mSysReady:Z
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->access$1600(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$OOBEdoneReceiver;->this$1:Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;

    iget-object v3, v3, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "key_oobe_status"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    .local v1, "mIsOobeFinish":Z
    const-string v3, "SSM"

    const-string v4, "mOOBEDone startDualSetting "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$OOBEdoneReceiver;->this$1:Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;

    # invokes: Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->startDualSetting()V
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->access$1700(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;)V

    .end local v1    # "mIsOobeFinish":Z
    .end local v2    # "mOOBEDone":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .restart local v2    # "mOOBEDone":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$OOBEdoneReceiver;->this$1:Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;

    iget-object v3, v3, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "key_oobe_status"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    .restart local v1    # "mIsOobeFinish":Z
    const-string v3, "SSM"

    const-string v4, "mOOBEDone, do NOT  startDualSetting "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
