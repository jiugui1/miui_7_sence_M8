.class public Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;
.super Landroid/os/Handler;
.source "HtcCdmaAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DBG_DETAIL:Z

.field private static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x7

.field private static final EVENT_FORCE_RELOAD:I = 0xa

.field private static final EVENT_GET_CDMA_SUBSCRIPTION_SOURCE:I = 0x8

.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0x9

.field private static final EVENT_ICC_STATUS_CHANGED:I = 0x5

.field private static final EVENT_MDMRST_SIM_HOT_SWAP_STATUS:I = 0xc

.field private static final EVENT_OTA_PROVISION_STATUS_CHANGE:I = 0x4

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_RADIO_ON:I = 0x1

.field private static final EVENT_RADIO_STATE_CHANGED:I = 0x3

.field private static final EVENT_RUIM_REFRESH:I = 0x6

.field private static final EVENT_SIM_HOT_SWAP_STATUS:I = 0xb

.field private static final EVENT_SIM_SWAP_STATUS:I = 0xd

.field public static final ICC_ACCT_IS_PRIMARY:I = 0x1000

.field public static final ICC_ACCT_SLOT_VALID:I = 0x800

.field public static final ICC_AVALIABLE:I = 0x400

.field public static final ICC_BITMASK:I = 0x1f00

.field public static final ICC_DATA_UPDATED:I = 0x100

.field public static final ICC_READY_TO_LOAD:I = 0x200

.field public static final NV_ACCT_IS_PRIMARY:I = 0x10

.field public static final NV_ACCT_SLOT_VALID:I = 0x8

.field public static final NV_AVALIABLE:I = 0x4

.field public static final NV_BITMASK:I = 0x1f

.field public static final NV_DATA_UPDATED:I = 0x1

.field public static final NV_READY_TO_LOAD:I = 0x2

.field private static final SUBSCRIPTION_FROM_NV:I = 0x1

.field private static final SUBSCRIPTION_FROM_RUIM:I = 0x0

.field private static final SUBSCRIPTION_SOURCE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CDMA"

.field private static final TAG_PRE:Ljava/lang/String; = "AccMgr-"

.field private static mLock:Ljava/lang/Object;

.field private static mThisObj:Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;


# instance fields
.field private disposedHandler:Z

.field private mAccountPrimaryFixed:Z

.field private mAnyAccountExisted:Z

.field private mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mIsCheckingSimStatus:Ljava/lang/Boolean;

.field private mIsCheckingSubscribSource:Z

.field private mRadioState:Ljava/lang/Boolean;

.field private mStateChangeNotifier:Landroid/os/RegistrantList;

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->DBG_DETAIL:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;)V
    .locals 7
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStateChangeNotifier:Landroid/os/RegistrantList;

    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAnyAccountExisted:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAccountPrimaryFixed:Z

    invoke-static {}, Lcom/android/internal/telephony/HtcAccountInfos;->getAccountCapability()[Z

    move-result-object v0

    .local v0, "acctCaps":[Z
    aget-boolean v1, v0, v5

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAnyAccountExisted:Z

    aget-boolean v1, v0, v6

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAccountPrimaryFixed:Z

    :cond_0
    aget-boolean v1, v0, v6

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAnyAccountExisted:Z

    aget-boolean v1, v0, v5

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAccountPrimaryFixed:Z

    :cond_1
    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sput-object p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mThisObj:Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAnyAccountExisted:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v6, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x6

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xb

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xc

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForMdmRstSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAnyAccountExisted:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAccountPrimaryFixed:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x7

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaSubscriptionChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getInstance()Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "obj":Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;
    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mThisObj:Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private obtainAsyncResult(I)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x0

    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mThisObj:Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->disposedHandler:Z

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAnyAccountExisted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccStatusChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMHotSwap(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForMdmRstSIMHotSwap(Landroid/os/Handler;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAnyAccountExisted:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAccountPrimaryFixed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaSubscriptionChanged(Landroid/os/Handler;)V

    :cond_2
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public forceDataReload()V
    .locals 1

    .prologue
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-boolean v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->disposedHandler:Z

    if-eqz v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v10, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    .local v10, "updateStatus":I
    const/4 v3, 0x0

    .local v3, "dbgString":Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "dbgDisplay":Z
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    const-string v11, "CDMA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AccMgr-msg "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->what:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " -> x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    if-eq v11, v10, :cond_0

    and-int/lit16 v11, v10, -0x102

    iput v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStateChangeNotifier:Landroid/os/RegistrantList;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->obtainAsyncResult(I)Landroid/os/AsyncResult;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_0
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v11}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    .local v1, "currRadioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    sget-boolean v11, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->DBG_DETAIL:Z

    if-eqz v11, :cond_a

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "rdo:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "->"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", dyn:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAccountPrimaryFixed:Z

    if-nez v11, :cond_9

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", chk:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSubscribSource:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    if-nez v1, :cond_4

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    :cond_4
    sget-object v11, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_1

    and-int/lit8 v11, v10, 0x8

    if-eqz v11, :cond_5

    or-int/lit8 v11, v10, 0x4

    or-int/lit8 v10, v11, 0x2

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_5

    or-int/lit8 v11, v10, 0x4

    or-int/lit8 v11, v11, 0x2

    or-int/lit8 v10, v11, 0x1

    :cond_5
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_2

    :cond_6
    and-int/lit16 v11, v10, 0x800

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    if-nez v11, :cond_7

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v12, 0x9

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    :cond_7
    iget-boolean v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAccountPrimaryFixed:Z

    if-nez v11, :cond_8

    iget-boolean v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSubscribSource:Z

    if-nez v11, :cond_8

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSubscribSource:Z

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v12, 0x8

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaSubscriptionSource(Landroid/os/Message;)V

    :cond_8
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_a
    const/4 v2, 0x0

    goto :goto_3

    :pswitch_1
    and-int/lit16 v10, v10, -0x607

    iget-boolean v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAccountPrimaryFixed:Z

    if-nez v11, :cond_b

    and-int/lit16 v10, v10, -0x1011

    :cond_b
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    goto/16 :goto_1

    :pswitch_2
    and-int/lit16 v10, v10, -0x601

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    if-nez v11, :cond_c

    and-int/lit8 v11, v10, 0x8

    if-eqz v11, :cond_c

    or-int/lit8 v11, v10, 0x4

    or-int/lit8 v10, v11, 0x2

    :cond_c
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    goto/16 :goto_1

    .end local v1    # "currRadioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_f

    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [I

    move-object v5, v11

    check-cast v5, [I

    .local v5, "ints":[I
    const/4 v11, 0x0

    aget v8, v5, v11

    .local v8, "otaStatus":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ota:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x8

    if-eq v8, v11, :cond_d

    const/16 v11, 0xa

    if-ne v8, v11, :cond_2

    :cond_d
    and-int/lit8 v11, v10, 0x2

    if-eqz v11, :cond_e

    or-int/lit8 v10, v10, 0x1

    :cond_e
    and-int/lit16 v11, v10, 0x200

    if-eqz v11, :cond_2

    or-int/lit16 v10, v10, 0x100

    goto/16 :goto_1

    .end local v5    # "ints":[I
    .end local v8    # "otaStatus":I
    :cond_f
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ota:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    and-int/lit16 v11, v11, 0x800

    if-eqz v11, :cond_2

    sget-boolean v11, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->DBG_DETAIL:Z

    if-eqz v11, :cond_10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "rdo:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", chk:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    if-nez v11, :cond_11

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v12, 0x9

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_1

    :cond_10
    const/4 v2, 0x0

    goto :goto_4

    :cond_11
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    goto/16 :goto_1

    :pswitch_5
    iget v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    and-int/lit16 v11, v11, 0x800

    if-eqz v11, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_13

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .local v4, "iccCardStatus":Lcom/android/internal/telephony/uicc/IccCardStatus;
    if-eqz v4, :cond_12

    .end local v4    # "iccCardStatus":Lcom/android/internal/telephony/uicc/IccCardStatus;
    :goto_5
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    if-eqz v11, :cond_15

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_15

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_14

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v12, 0x9

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    sget-boolean v11, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->DBG_DETAIL:Z

    if-nez v11, :cond_2

    iget v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    if-ne v11, v10, :cond_2

    const/4 v2, 0x0

    goto/16 :goto_1

    .restart local v4    # "iccCardStatus":Lcom/android/internal/telephony/uicc/IccCardStatus;
    :cond_12
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "simStt rdo:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", chk:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", noCardStt"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    and-int/lit16 v10, v10, -0x601

    goto :goto_5

    .end local v4    # "iccCardStatus":Lcom/android/internal/telephony/uicc/IccCardStatus;
    :cond_13
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "simStt rdo:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mRadioState:Ljava/lang/Boolean;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", chk:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", err:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    and-int/lit16 v10, v10, -0x601

    goto/16 :goto_5

    :cond_14
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_15
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    iget v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    and-int/lit16 v11, v11, 0x800

    if-eqz v11, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_17

    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .local v9, "resp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "simUpd:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v9, :cond_16

    iget v11, v9, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :goto_6
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v9, :cond_2

    and-int/lit16 v11, v10, 0x200

    if-eqz v11, :cond_2

    or-int/lit16 v10, v10, 0x100

    goto/16 :goto_1

    :cond_16
    const-string v11, "null"

    goto :goto_6

    .end local v9    # "resp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    :cond_17
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "simUpd:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    iget v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    and-int/lit16 v11, v11, 0x800

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    if-nez v11, :cond_1a

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [I

    move-object v6, v11

    check-cast v6, [I

    .local v6, "isSIMRemoved":[I
    if-eqz v6, :cond_19

    array-length v11, v6

    if-lez v11, :cond_18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "simSwp cmd:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v6, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x0

    aget v11, v6, v11

    if-nez v11, :cond_2

    and-int/lit16 v10, v10, -0x601

    goto/16 :goto_1

    :cond_18
    const-string v3, "simSwp len:0"

    goto/16 :goto_1

    :cond_19
    const-string v3, "simSwp len:null"

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "isSIMRemoved":[I
    :cond_1a
    sget-boolean v11, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->DBG_DETAIL:Z

    if-eqz v11, :cond_1b

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "simSwp chk:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_7
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSimStatus:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_1b
    const/4 v2, 0x0

    goto :goto_7

    :pswitch_8
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mIsCheckingSubscribSource:Z

    :pswitch_9
    iget-boolean v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mAccountPrimaryFixed:Z

    if-nez v11, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_1c

    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v11, :cond_1c

    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [I

    check-cast v11, [I

    const/4 v12, 0x0

    aget v7, v11, v12

    .local v7, "newSubscriptionSource":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "src:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    packed-switch v7, :pswitch_data_2

    goto/16 :goto_1

    :pswitch_a
    and-int/lit16 v10, v10, -0x1011

    goto/16 :goto_1

    :pswitch_b
    and-int/lit8 v11, v10, -0x11

    or-int/lit16 v10, v11, 0x1000

    goto/16 :goto_1

    :pswitch_c
    and-int/lit16 v11, v10, -0x1001

    or-int/lit8 v10, v11, 0x10

    goto/16 :goto_1

    .end local v7    # "newSubscriptionSource":I
    :cond_1c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "src:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_d
    and-int/lit8 v11, v10, 0x2

    if-eqz v11, :cond_1d

    or-int/lit8 v10, v10, 0x1

    :cond_1d
    and-int/lit16 v11, v10, 0x200

    if-eqz v11, :cond_2

    or-int/lit16 v10, v10, 0x100

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_d
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public registerForStateChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, "r":Landroid/os/Registrant;
    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->unregisterForStateChange(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStateChangeNotifier:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->obtainAsyncResult(I)Landroid/os/AsyncResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unregisterForStateChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;->mStateChangeNotifier:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
