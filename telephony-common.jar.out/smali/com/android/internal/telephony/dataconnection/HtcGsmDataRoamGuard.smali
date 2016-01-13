.class public Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;
.super Landroid/os/Handler;
.source "HtcGsmDataRoamGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard$DataRoamingGuardSettingObserver;
    }
.end annotation


# static fields
.field private static final EVENT_DATA_GUARD_CHANGED:I = 0x4

.field private static final EVENT_DATA_STATE_CHANGED:I = 0x5

.field private static final EVENT_MOBILE_ALLOW_CHANGED:I = 0x2

.field private static final EVENT_REENABLE_GUARD:I = 0x6

.field private static final EVENT_ROAM_ALLOW_CHANGED:I = 0x3

.field private static final EVENT_ROAM_OFF:I = 0x1

.field private static final EVENT_ROAM_ON:I = 0x0

.field private static final LOCAL_TAG:Ljava/lang/String; = "DGRD2"

.field private static final MASK_DATA_ALLOWED:I = -0x80000000

.field private static final MASK_DATA_STATE:I = 0xf00000

.field private static final MASK_DIALOG:I = 0x80000

.field private static final MASK_GUARD_ENABLED:I = 0x40000000

.field private static final MASK_MOBILE_ALLOWED:I = 0xf000000

.field private static final MASK_ROAM:I = 0x20000000

.field public static final MODE_DATA_ALLOWED:I = -0x80000000

.field public static final MODE_DATA_CONNECTED:I = 0x100000

.field public static final MODE_DATA_CONNECTING:I = 0x200000

.field public static final MODE_DATA_NOT_CONNECTED:I = 0x300000

.field public static final MODE_DIALOG_DISPLAY:I = 0x80000

.field public static final MODE_GUARD_ENABLED:I = 0x40000000

.field public static final MODE_MOBILE_ALLOWED_0:I = 0x1000000

.field public static final MODE_MOBILE_ALLOWED_1:I = 0x2000000

.field public static final MODE_MOBILE_ALLOWED_2:I = 0x4000000

.field public static final MODE_ROAM:I = 0x20000000

.field private static final TAG:Ljava/lang/String; = "GSM"

.field private static final URI_DATA_ALLOW:Ljava/lang/String; = "data_roaming"

.field private static final URI_GUARD_ENABLE:Ljava/lang/String; = "gsm"


# instance fields
.field private final LOCAL_DBG:Z

.field private mContext:Landroid/content/Context;

.field private mMode:I

.field private mNofiticationList:Landroid/os/RegistrantList;

.field mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 10
    .param p1, "p"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 151
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 57
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->LOCAL_DBG:Z

    .line 220
    new-instance v5, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard$1;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard$1;-><init>(Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;)V

    iput-object v5, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 630
    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    .line 152
    const-string v5, "initialize HtcGsmDataRoamGuard"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 155
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 158
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 160
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    invoke-virtual {v5, p0, v4, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 164
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    invoke-virtual {v5, p0, v3, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 167
    :cond_0
    iput v4, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    .line 172
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->setRoam(IZ)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    .line 177
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isGsmDataRoamGuardEnabled()Z

    move-result v2

    .line 178
    .local v2, "guardEnable":Z
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v5, v2}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->setGuardEnabled(IZ)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    .line 182
    const/4 v0, 0x0

    .line 184
    .local v0, "dataAllow":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_roaming"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_1

    move v0, v3

    .line 189
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->setDataAllowed(IZ)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    .line 192
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    const/high16 v4, 0x300000

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->setDataState(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    .line 195
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->registerForEnhancedRoamingSettingChange()V

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HtcGsmDataRoamGuard is initialized, mMode=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 198
    return-void

    :cond_1
    move v0, v4

    .line 184
    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v0, 0x0

    .line 187
    const-string v3, "fail to read GSM data allow setting for initialization"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->logE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isGsmDataRoamGuardEnabled()Z

    move-result v0

    return v0
.end method

.method private createNotificationObject(I)[I
    .locals 5
    .param p1, "newMode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 588
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 589
    .local v0, "notifications":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newMode=0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 591
    aput v3, v0, v3

    .line 592
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isDisplayDialog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    aput v1, v0, v2

    .line 593
    const/4 v1, 0x2

    aput v3, v0, v1

    .line 594
    const/4 v1, 0x3

    aput v3, v0, v1

    .line 596
    return-object v0

    :cond_0
    move v1, v3

    .line 592
    goto :goto_0
.end method

.method private handleDataConnectionStateChange(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 481
    const/4 v0, 0x0

    .line 483
    .local v0, "newMode":I
    const/high16 v1, 0x200000

    if-eq p1, v1, :cond_0

    .line 484
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->setDataState(II)I

    move-result v0

    .line 489
    :goto_0
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    .line 490
    return-void

    .line 486
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    goto :goto_0
.end method

.method private handleDataRoamGuardSettingsChange(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    .line 460
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isGuardEnabled(I)Z

    move-result v1

    if-ne v1, p1, :cond_0

    .line 461
    const-string v1, "guard enable setting is not changed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 478
    :goto_0
    return-void

    .line 465
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->setGuardEnabled(IZ)I

    move-result v0

    .line 467
    .local v0, "newMode":I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->shouldShowDialog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 468
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->setDisplayDialog(IZ)I

    move-result v0

    .line 474
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->updateUI(I)V

    .line 475
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->updateDataConnection(ILjava/lang/Boolean;Z)V

    .line 477
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    goto :goto_0

    .line 470
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->setDisplayDialog(IZ)I

    move-result v0

    goto :goto_1
.end method

.method private handleMobileAllowStatusChange(Z)V
    .locals 4
    .param p1, "allowMobileData"    # Z

    .prologue
    const/4 v3, 0x1

    .line 372
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_1

    .line 374
    :cond_0
    const-string v1, "handleMobileAllowStatusChange() is only supported in Sprint world phone"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 403
    :goto_0
    return-void

    .line 380
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    const/high16 v2, 0x1000000

    or-int v0, v1, v2

    .line 382
    .local v0, "newMode":I
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isMobileAllowed(I)Z

    move-result v1

    if-ne v1, p1, :cond_2

    .line 383
    const-string v1, "handleMobileAllowStatusChange(), mobile allow setting is not changed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->shouldShowDialog(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 389
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->setDisplayDialog(IZ)I

    move-result v0

    .line 397
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isMobileAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 398
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->updateUI(I)V

    .line 400
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v3}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->updateDataConnection(ILjava/lang/Boolean;Z)V

    .line 402
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    goto :goto_0

    .line 391
    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->setDisplayDialog(IZ)I

    move-result v0

    goto :goto_1
.end method

.method private handleReEnableGuardDialog()V
    .locals 3

    .prologue
    .line 609
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_1

    .line 611
    :cond_0
    const-string v1, "handleReEnableGuardDialog() is only supported in Sprint world phone"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 625
    :goto_0
    return-void

    .line 615
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    .line 617
    .local v0, "newMode":I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->shouldShowDialog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 618
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->setDisplayDialog(IZ)I

    move-result v0

    .line 621
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->updateUI(I)V

    .line 622
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->updateDataConnection(ILjava/lang/Boolean;Z)V

    .line 624
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    goto :goto_0
.end method

.method private handleRoamAllowSettingChange(Z)V
    .locals 4
    .param p1, "allowRoam"    # Z

    .prologue
    const/4 v3, 0x1

    .line 416
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v2

    if-nez v2, :cond_1

    .line 418
    :cond_0
    const-string v2, "handleRoamAllowSettingChange() is only supported in Sprint world phone"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 456
    :goto_0
    return-void

    .line 422
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->setDataAllowed(IZ)I

    move-result v0

    .line 424
    .local v0, "newMode":I
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isDataAllowed(I)Z

    move-result v2

    if-ne v2, p1, :cond_2

    .line 425
    const-string v2, "handleRoamAllowSettingChange(), data allow setting is not changed"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 429
    :cond_2
    const/4 v1, 0x0

    .line 432
    .local v1, "requestConnectionStatus":Ljava/lang/Boolean;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->shouldShowDialog(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 433
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->setDisplayDialog(IZ)I

    move-result v0

    .line 440
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isRoam(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 441
    if-eqz p1, :cond_5

    .line 442
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 450
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isDataAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 451
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->updateUI(I)V

    .line 453
    :cond_3
    invoke-direct {p0, v0, v1, v3}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->updateDataConnection(ILjava/lang/Boolean;Z)V

    .line 455
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    goto :goto_0

    .line 435
    :cond_4
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->setDisplayDialog(IZ)I

    move-result v0

    goto :goto_1

    .line 444
    :cond_5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 447
    :cond_6
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2
.end method

.method private isDataAllowed(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/high16 v1, -0x80000000

    .line 745
    and-int v0, p1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDataRoaming(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 741
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isDataAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isRoam(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x100000

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isDataStateEqual(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDataStateEqual(II)Z
    .locals 1
    .param p1, "mode"    # I
    .param p2, "dataState"    # I

    .prologue
    .line 761
    const/high16 v0, 0xf00000

    and-int/2addr v0, p1

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDisplayDialog(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/high16 v1, 0x80000

    .line 765
    and-int v0, p1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGsmDataRoamGuardEnabled()Z
    .locals 3

    .prologue
    .line 796
    const/4 v0, 0x0

    .line 798
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gsm"

    invoke-static {v1, v2}, Landroid/provider/Settings$HtcISecure$Agent;->isDataRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 802
    return v0
.end method

.method private isGuardEnabled(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 749
    and-int v0, p1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMobileAllowed(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 757
    const/high16 v0, 0xf000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRoam(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/high16 v1, 0x20000000

    .line 753
    and-int v0, p1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "logStr"    # Ljava/lang/String;

    .prologue
    .line 833
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DGRD2]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    return-void
.end method

.method private logE(Ljava/lang/String;)V
    .locals 3
    .param p1, "logStr"    # Ljava/lang/String;

    .prologue
    .line 837
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DGRD2]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    return-void
.end method

.method private registerForEnhancedRoamingSettingChange()V
    .locals 4

    .prologue
    .line 815
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_1

    .line 817
    :cond_0
    const-string v1, "registerForEnhancedRoamingSettingChange() is only supported in Sprint world phone"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 826
    :goto_0
    return-void

    .line 821
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard$DataRoamingGuardSettingObserver;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard$DataRoamingGuardSettingObserver;-><init>(Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;)V

    .line 822
    .local v0, "mDataRoamingGuardSettingObserver":Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard$DataRoamingGuardSettingObserver;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sprint_gsm_data_guard"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private setDataAllowed(IZ)I
    .locals 2
    .param p1, "mode"    # I
    .param p2, "allow"    # Z

    .prologue
    .line 670
    const v1, 0x7fffffff

    and-int v0, p1, v1

    .line 672
    .local v0, "newMode":I
    if-eqz p2, :cond_0

    .line 673
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 675
    :cond_0
    return v0
.end method

.method private setDataState(II)I
    .locals 2
    .param p1, "mode"    # I
    .param p2, "dataState"    # I

    .prologue
    .line 724
    const v1, -0xf00001

    and-int v0, p1, v1

    .line 726
    .local v0, "newMode":I
    or-int/2addr v0, p2

    .line 728
    return v0
.end method

.method private setDisplayDialog(IZ)I
    .locals 2
    .param p1, "mode"    # I
    .param p2, "show"    # Z

    .prologue
    .line 732
    const v1, -0x80001

    and-int v0, p1, v1

    .line 734
    .local v0, "newMode":I
    if-eqz p2, :cond_0

    .line 735
    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 737
    :cond_0
    return v0
.end method

.method private setGuardEnabled(IZ)I
    .locals 2
    .param p1, "mode"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 679
    const v1, -0x40000001    # -1.9999999f

    and-int v0, p1, v1

    .line 681
    .local v0, "newMode":I
    if-eqz p2, :cond_0

    .line 682
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    .line 684
    :cond_0
    return v0
.end method

.method private setMobileAllowed(IIZ)I
    .locals 2
    .param p1, "mode"    # I
    .param p2, "id"    # I
    .param p3, "allow"    # Z

    .prologue
    .line 697
    const/4 v1, 0x2

    if-le p2, v1, :cond_0

    .line 698
    const-string v1, "index out of bound when trying to store mobile allow setting"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 720
    .end local p1    # "mode":I
    :goto_0
    return p1

    .line 702
    .restart local p1    # "mode":I
    :cond_0
    move v0, p1

    .line 704
    .local v0, "newMode":I
    if-eqz p3, :cond_1

    .line 705
    packed-switch p2, :pswitch_data_0

    :goto_1
    move p1, v0

    .line 720
    goto :goto_0

    .line 706
    :pswitch_0
    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    goto :goto_1

    .line 707
    :pswitch_1
    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    goto :goto_1

    .line 708
    :pswitch_2
    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    goto :goto_1

    .line 712
    :cond_1
    packed-switch p2, :pswitch_data_1

    goto :goto_1

    .line 713
    :pswitch_3
    const v1, -0x1000001

    and-int/2addr v0, v1

    goto :goto_1

    .line 714
    :pswitch_4
    const v1, -0x2000001

    and-int/2addr v0, v1

    goto :goto_1

    .line 715
    :pswitch_5
    const v1, -0x4000001

    and-int/2addr v0, v1

    goto :goto_1

    .line 705
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 712
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setRoam(IZ)I
    .locals 2
    .param p1, "mode"    # I
    .param p2, "roam"    # Z

    .prologue
    .line 688
    const v1, -0x20000001

    and-int v0, p1, v1

    .line 690
    .local v0, "newMode":I
    if-eqz p2, :cond_0

    .line 691
    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    .line 693
    :cond_0
    return v0
.end method

.method private shouldShowDialog(I)Z
    .locals 2
    .param p1, "newMode"    # I

    .prologue
    .line 806
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isRoam(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isGuardEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 809
    .local v0, "showDialog":Z
    :goto_0
    return v0

    .line 806
    .end local v0    # "showDialog":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDataConnection(ILjava/lang/Boolean;Z)V
    .locals 3
    .param p1, "newMode"    # I
    .param p2, "requestConnectionStatus"    # Ljava/lang/Boolean;
    .param p3, "userRequest"    # Z

    .prologue
    .line 555
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_2

    .line 557
    :cond_0
    const-string v1, "updateDataConnection() is only supported in Sprint world phone"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 583
    :cond_1
    :goto_0
    return-void

    .line 561
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataConnection(), newMode=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestConnectionStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_4

    const-string v1, "null"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userRequest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 565
    if-eqz p2, :cond_1

    .line 566
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 567
    .local v0, "requestConnect":Z
    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isMobileAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 577
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2, p3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->controlDataFromRoamGuard(ZZ)V

    goto :goto_0

    .line 561
    .end local v0    # "requestConnect":Z
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private updateUI(I)V
    .locals 4
    .param p1, "newMode"    # I

    .prologue
    .line 515
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v2

    if-nez v2, :cond_2

    .line 517
    :cond_0
    const-string v2, "updateUI() is only supported in Sprint world phone"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 552
    :cond_1
    :goto_0
    return-void

    .line 521
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUI(), newMode=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 523
    const/4 v1, 0x0

    .line 527
    .local v1, "notify":Z
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isDisplayDialog(I)Z

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isDisplayDialog(I)Z

    move-result v3

    if-eq v2, v3, :cond_3

    .line 528
    const/4 v1, 0x1

    .line 531
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isRoam(I)Z

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isRoam(I)Z

    move-result v3

    if-eq v2, v3, :cond_4

    .line 532
    const/4 v1, 0x1

    .line 535
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isRoam(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isGuardEnabled(I)Z

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isGuardEnabled(I)Z

    move-result v3

    if-eq v2, v3, :cond_5

    .line 536
    const/4 v1, 0x1

    .line 539
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isRoam(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isDataAllowed(I)Z

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isDataAllowed(I)Z

    move-result v3

    if-eq v2, v3, :cond_6

    .line 540
    const/4 v1, 0x1

    .line 543
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isRoam(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isMobileAllowed(I)Z

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isMobileAllowed(I)Z

    move-result v3

    if-eq v2, v3, :cond_7

    .line 544
    const/4 v1, 0x1

    .line 546
    :cond_7
    if-eqz v1, :cond_1

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify GSM DRG, show dialog:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isDisplayDialog(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 548
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->createNotificationObject(I)[I

    move-result-object v0

    .line 549
    .local v0, "notification":[I
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public blockedByDataRoamGuard()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 499
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_2

    .line 501
    :cond_0
    const-string v1, "blockedByDataRoamGuard() is only supported in Sprint world phone"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 507
    :cond_1
    :goto_0
    return v0

    .line 505
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMode=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 507
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isRoam(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isDataAllowed(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 250
    const-string v0, "disposing HtcGsmDataRoamGuard..."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->removeMessages(I)V

    .line 252
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->removeMessages(I)V

    .line 253
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->removeMessages(I)V

    .line 254
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->removeMessages(I)V

    .line 255
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->removeMessages(I)V

    .line 256
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->removeMessages(I)V

    .line 257
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->removeMessages(I)V

    .line 259
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForRoamingOn(Landroid/os/Handler;)V

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForRoamingOff(Landroid/os/Handler;)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 266
    :cond_0
    const-string v0, "HtcGsmDataRoamGuard is disposed"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 274
    const-string v0, "HtcGsmDataRoamGuard is finalized"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 283
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive unknown message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 318
    :goto_0
    return-void

    .line 285
    :pswitch_0
    const-string v0, "receive message EVENT_ROAM_ON"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 286
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->handleRoamUpdate(ZLandroid/os/AsyncResult;)V

    goto :goto_0

    .line 289
    :pswitch_1
    const-string v0, "receive message EVENT_ROAM_OFF"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 290
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->handleRoamUpdate(ZLandroid/os/AsyncResult;)V

    goto :goto_0

    .line 294
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive message EVENT_MOBILE_ALLOW_CHANGED, arg1="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 295
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->handleMobileAllowStatusChange(Z)V

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    .line 299
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive message EVENT_ROAM_ALLOW_CHANGED, arg1="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 300
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->handleRoamAllowSettingChange(Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    .line 303
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive message EVENT_DATA_GUARD_CHANGED, arg1="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 304
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_2

    :goto_3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->handleDataRoamGuardSettingsChange(Z)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_3

    .line 307
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive message EVENT_DATA_STATE_CHANGED, arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 308
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->handleDataConnectionStateChange(I)V

    goto/16 :goto_0

    .line 311
    :pswitch_6
    const-string v0, "receive message EVENT_REENABLE_GUARD"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 312
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->handleReEnableGuardDialog()V

    goto/16 :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public handleRoamUpdate(ZLandroid/os/AsyncResult;)V
    .locals 5
    .param p1, "roam"    # Z
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v4, 0x1

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRoamUpdate(), roam status is updated, roam="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 327
    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to get content of EVENT_ROAM, roam="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->logE(Ljava/lang/String;)V

    .line 331
    :cond_0
    const/4 v1, 0x0

    .line 332
    .local v1, "requestConnectionStatus":Ljava/lang/Boolean;
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->setRoam(IZ)I

    move-result v0

    .line 335
    .local v0, "newMode":I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->shouldShowDialog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 336
    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->setDisplayDialog(IZ)I

    move-result v0

    .line 342
    :goto_0
    if-eqz p1, :cond_3

    .line 343
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->isDataAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 344
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 352
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->updateUI(I)V

    .line 353
    invoke-direct {p0, v0, v1, v4}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->updateDataConnection(ILjava/lang/Boolean;Z)V

    .line 355
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    .line 356
    return-void

    .line 338
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->setDisplayDialog(IZ)I

    move-result v0

    goto :goto_0

    .line 346
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 349
    :cond_3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public haveDataNetworkState(Lcom/android/internal/telephony/DctConstants$State;)V
    .locals 3
    .param p1, "dataState"    # Lcom/android/internal/telephony/DctConstants$State;

    .prologue
    .line 202
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    :cond_0
    const-string v1, "haveDataNetworkState() is only supported in Sprint world phone"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 216
    :goto_0
    return-void

    .line 207
    :cond_1
    const/4 v0, 0x0

    .line 208
    .local v0, "mode":I
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne p1, v1, :cond_2

    .line 209
    const/high16 v0, 0x100000

    .line 215
    :goto_1
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 210
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne p1, v1, :cond_3

    .line 211
    const/high16 v0, 0x200000

    goto :goto_1

    .line 213
    :cond_3
    const/high16 v0, 0x300000

    goto :goto_1
.end method

.method public haveMobileAllowStatusChange(Z)V
    .locals 2
    .param p1, "allowMobileData"    # Z

    .prologue
    .line 367
    const/4 v1, 0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->sendMessage(Landroid/os/Message;)Z

    .line 368
    return-void

    .line 367
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public haveRoamAllowSettingChange(Z)V
    .locals 3
    .param p1, "allowRoam"    # Z

    .prologue
    const/4 v1, 0x0

    .line 411
    const/4 v2, 0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->sendMessage(Landroid/os/Message;)Z

    .line 413
    return-void

    :cond_0
    move v0, v1

    .line 411
    goto :goto_0
.end method

.method public reEnableGuardDialog()V
    .locals 1

    .prologue
    .line 604
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->sendMessage(Landroid/os/Message;)Z

    .line 605
    return-void
.end method

.method public registerForNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 638
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_1

    .line 640
    :cond_0
    const-string v1, "registerForNotification() is only supported in Sprint world phone"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 647
    :goto_0
    return-void

    .line 644
    :cond_1
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 645
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 646
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->createNotificationObject(I)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public unregisterForNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 655
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-nez v0, :cond_1

    .line 657
    :cond_0
    const-string v0, "unregisterForNotification() is only supported in Sprint world phone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 662
    :goto_0
    return-void

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/HtcGsmDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    goto :goto_0
.end method
