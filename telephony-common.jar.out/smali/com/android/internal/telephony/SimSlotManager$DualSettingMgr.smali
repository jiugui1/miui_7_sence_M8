.class Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;
.super Landroid/os/Handler;
.source "SimSlotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SimSlotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DualSettingMgr"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$OOBEdoneReceiver;,
        Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$SysReadyReceiver;
    }
.end annotation


# static fields
.field private static final EVENT_DUALSETTING_ON_RUIM_READY:I = 0x1

.field private static final EVENT_DUALSETTING_ON_SIM_READY:I = 0x2

.field private static final EVENT_DUALSETTING_ON_SUB_SIM_READY:I = 0x5

.field private static final EVENT_DUALSETTING_READY_CDMA_ICCID:I = 0x3

.field private static final EVENT_DUALSETTING_READY_GSM_ICCID:I = 0x4

.field private static final EVENT_DUALSETTING_READY_SUB_GSM_ICCID:I = 0x6

.field private static final SLOT1_ICCID:Ljava/lang/String; = "dualsetting.slot1.iccid"

.field private static final SLOT2_ICCID:Ljava/lang/String; = "dualsetting.slot2.iccid"


# instance fields
.field private mCdmaReady:Z

.field private mDoneFlag:Z

.field private mGsmReady:Z

.field private mIccidSlot1:Ljava/lang/String;

.field private mIccidSlot2:Ljava/lang/String;

.field private mLastIccidSlot1:Ljava/lang/String;

.field private mLastIccidSlot2:Ljava/lang/String;

.field private mSubGsmReady:Z

.field private mSysReady:Z

.field final synthetic this$0:Lcom/android/internal/telephony/SimSlotManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SimSlotManager;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1491
    iput-object p1, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1426
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mCdmaReady:Z

    .line 1427
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mGsmReady:Z

    .line 1428
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mDoneFlag:Z

    .line 1429
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mSysReady:Z

    .line 1430
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mSubGsmReady:Z

    .line 1431
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot1:Ljava/lang/String;

    .line 1432
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot2:Ljava/lang/String;

    .line 1433
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mLastIccidSlot1:Ljava/lang/String;

    .line 1434
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mLastIccidSlot2:Ljava/lang/String;

    .line 1492
    const-string v2, "SSM"

    const-string v3, "Create mDualSettingMgr"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "SimSlotManager"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1494
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "com.basewin.ssm.dualsetting.slot1.iccid"

    const-string v3, "_SLOT1_"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mLastIccidSlot1:Ljava/lang/String;

    .line 1495
    const-string v2, "com.basewin.ssm.dualsetting.slot2.iccid"

    const-string v3, "_SLOT2_"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mLastIccidSlot2:Ljava/lang/String;

    .line 1497
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1498
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1499
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1500
    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$SysReadyReceiver;

    invoke-direct {v3, p0, v5}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$SysReadyReceiver;-><init>(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;Lcom/android/internal/telephony/SimSlotManager$1;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1506
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1507
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v2, "com.htc.intent.action.SETUP_WIZARD_FINISHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1508
    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$OOBEdoneReceiver;

    invoke-direct {v3, p0, v5}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr$OOBEdoneReceiver;-><init>(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;Lcom/android/internal/telephony/SimSlotManager$1;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1511
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1512
    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mCdma:Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-static {p1}, Lcom/android/internal/telephony/SimSlotManager;->access$1000(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v6, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForRUIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1517
    :cond_0
    :goto_1
    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {p1}, Lcom/android/internal/telephony/SimSlotManager;->access$700(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x2

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1518
    return-void

    .line 1502
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iput-boolean v6, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mSysReady:Z

    goto :goto_0

    .line 1513
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1514
    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mSubGsm:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {p1}, Lcom/android/internal/telephony/SimSlotManager;->access$800(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x5

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;

    .prologue
    .line 1425
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->reportDone()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;

    .prologue
    .line 1425
    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mCdmaReady:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;

    .prologue
    .line 1425
    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mGsmReady:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;

    .prologue
    .line 1425
    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mSysReady:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;

    .prologue
    .line 1425
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->startDualSetting()V

    return-void
.end method

.method private reportDone()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1521
    const-string v4, "SSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Report dual setting done, doneFlag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mDoneFlag:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cdmaReady "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mCdmaReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " gsmReady "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mGsmReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sysReady "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mSysReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    iget-object v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I
    invoke-static {v4}, Lcom/android/internal/telephony/SimSlotManager;->access$900(Lcom/android/internal/telephony/SimSlotManager;)I

    move-result v4

    if-ne v4, v2, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mDoneFlag:Z

    if-eqz v4, :cond_1

    .line 1559
    :cond_0
    :goto_0
    return-void

    .line 1527
    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mCdmaReady:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mGsmReady:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mSysReady:Z

    if-eqz v4, :cond_0

    .line 1529
    iget-object v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "SimSlotManager"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1530
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v4, "com.basewin.ssm.dualsetting.slot1.iccid"

    iget-object v5, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot1:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1531
    const-string v4, "com.basewin.ssm.dualsetting.slot2.iccid"

    iget-object v5, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot2:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1532
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1534
    iput-boolean v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mDoneFlag:Z

    .line 1536
    const-string v4, "SSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Last iccid, slot1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mLastIccidSlot1:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " slot2 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mLastIccidSlot2:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    const-string v4, "SSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Curr iccid, slot1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot1:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " slot2 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot2:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    iget-object v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mLastIccidSlot1:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mLastIccidSlot2:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1541
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "key_oobe_status"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 1543
    .local v2, "mIsOobeFinish":Z
    :goto_1
    const-string v3, "SSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportDone_mIsOobeFinish = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    if-eqz v2, :cond_3

    .line 1546
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1547
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.DualSetting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1548
    const-string v3, "autoCloseDuration"

    const/16 v4, 0xf

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1549
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1550
    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1556
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mIsOobeFinish":Z
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mCdma:Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager;->access$1000(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRUIMReady(Landroid/os/Handler;)V

    .line 1557
    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager;->access$700(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    goto/16 :goto_0

    :cond_4
    move v2, v3

    .line 1541
    goto :goto_1
.end method

.method private reportDoneExt()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1563
    const-string v4, "SSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Report dual setting done, doneFlag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mDoneFlag:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " gsmReady "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mGsmReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " subGsmReady"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mSubGsmReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sysReady "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mSysReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    iget-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mDoneFlag:Z

    if-eqz v4, :cond_1

    .line 1600
    :cond_0
    :goto_0
    return-void

    .line 1569
    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mGsmReady:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mSubGsmReady:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mSysReady:Z

    if-eqz v4, :cond_0

    .line 1570
    iget-object v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "SimSlotManager"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1571
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v4, "com.basewin.ssm.dualsetting.slot1.iccid"

    iget-object v5, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot1:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1572
    const-string v4, "com.basewin.ssm.dualsetting.slot2.iccid"

    iget-object v5, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot2:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1573
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1575
    iput-boolean v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mDoneFlag:Z

    .line 1577
    const-string v4, "SSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Last iccid, slot1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mLastIccidSlot1:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " slot2 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mLastIccidSlot2:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    const-string v4, "SSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Curr iccid, slot1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot1:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " slot2 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot2:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    iget-object v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mLastIccidSlot1:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mLastIccidSlot2:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1582
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "key_oobe_status"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 1584
    .local v2, "mIsOobeFinish":Z
    :goto_1
    const-string v3, "SSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportDone_mIsOobeFinish = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    if-eqz v2, :cond_3

    .line 1587
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1588
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.DualSetting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1589
    const-string v3, "autoCloseDuration"

    const/16 v4, 0xf

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1590
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1591
    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1597
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mIsOobeFinish":Z
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager;->access$700(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    .line 1598
    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mSubGsm:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager;->access$800(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    goto/16 :goto_0

    :cond_4
    move v2, v3

    .line 1582
    goto :goto_1
.end method

.method private startDualSetting()V
    .locals 3

    .prologue
    .line 1681
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1682
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.DualSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1683
    const-string v1, "autoCloseDuration"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1684
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1685
    iget-object v1, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1686
    const-string v1, "SSM"

    const-string v2, "startDualSetting, send Intent to PhoneApp! "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x2fe2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1606
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1676
    :cond_0
    :goto_0
    return-void

    .line 1608
    :pswitch_0
    const-string v2, "SSM"

    const-string v3, "EVENT_DUALSETTING_ON_RUIM_READY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I
    invoke-static {v2}, Lcom/android/internal/telephony/SimSlotManager;->access$900(Lcom/android/internal/telephony/SimSlotManager;)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1610
    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mCdma:Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-static {v2}, Lcom/android/internal/telephony/SimSlotManager;->access$1000(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0

    .line 1615
    :pswitch_1
    const-string v2, "SSM"

    const-string v3, "EVENT_DUALSETTING_ON_SIM_READY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I
    invoke-static {v2}, Lcom/android/internal/telephony/SimSlotManager;->access$900(Lcom/android/internal/telephony/SimSlotManager;)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1617
    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v2}, Lcom/android/internal/telephony/SimSlotManager;->access$700(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0

    .line 1622
    :pswitch_2
    const-string v2, "SSM"

    const-string v3, "EVENT_DUALSETTING_READY_CDMA_ICCID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1625
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 1627
    .local v1, "data":[B
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1631
    array-length v2, v1

    invoke-static {v1, v5, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot1:Ljava/lang/String;

    .line 1632
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mCdmaReady:Z

    .line 1633
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->reportDone()V

    goto :goto_0

    .line 1637
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "data":[B
    :pswitch_3
    const-string v2, "SSM"

    const-string v3, "EVENT_DUALSETTING_READY_GSM_ICCID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1639
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 1641
    .restart local v1    # "data":[B
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1645
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1646
    array-length v2, v1

    invoke-static {v1, v5, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot2:Ljava/lang/String;

    .line 1647
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mGsmReady:Z

    .line 1648
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->reportDone()V

    goto/16 :goto_0

    .line 1649
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1650
    array-length v2, v1

    invoke-static {v1, v5, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot1:Ljava/lang/String;

    .line 1651
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mGsmReady:Z

    .line 1652
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->reportDoneExt()V

    goto/16 :goto_0

    .line 1658
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "data":[B
    :pswitch_4
    const-string v2, "SSM"

    const-string v3, "EVENT_DUALSETTING_ON_SUB_SIM_READY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v2}, Lcom/android/internal/telephony/SimSlotManager;->access$700(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1663
    :pswitch_5
    const-string v2, "SSM"

    const-string v3, "EVENT_DUALSETTING_READY_SUB_GSM_ICCID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1665
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 1667
    .restart local v1    # "data":[B
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1671
    array-length v2, v1

    invoke-static {v1, v5, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mIccidSlot2:Ljava/lang/String;

    .line 1672
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->mSubGsmReady:Z

    .line 1673
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;->reportDoneExt()V

    goto/16 :goto_0

    .line 1606
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
