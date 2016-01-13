.class public Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "CdmaServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;,
        Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;
    }
.end annotation


# static fields
.field static final CDMA_LTE_ENABLED:Z

.field public static DBG_GET_MDN:Ljava/lang/String; = null

.field public static final ERR_NO_RESPONSE:Ljava/lang/String; = "FFFF"

.field private static final ERR_NV_CMD_FAILED:Ljava/lang/String; = "0400"

.field private static final ERR_NV_INTERNAL_DMSS_USE:Ljava/lang/String; = "0100"

.field private static final ERR_NV_LENGTH:I = 0x4

.field private static final ERR_NV_MEMORY_FULL:Ljava/lang/String; = "0300"

.field private static final ERR_NV_NOT_EXIST_OR_BAD_PARAMS:Ljava/lang/String; = "0600"

.field private static final ERR_NV_NOT_RECOGN_CMD:Ljava/lang/String; = "0200"

.field private static final ERR_NV_NOT_SUPPORT:Ljava/lang/String; = "0500"

.field private static final ERR_NV_READ_ONLY:Ljava/lang/String; = "0700"

.field public static final FEATURE_CDMA_DIRECTLY_SIGNAL_STRENGTH:Z = true

.field static IMSI_11_12:Ljava/lang/String; = null

.field static IMSI_MCC:Ljava/lang/String; = null

.field static final LOG_TAG:Ljava/lang/String; = "CdmaSST"

.field static final MCC_COMMAND:Ljava/lang/String; = "C826B00000"

.field private static final MDN_PROVISION_CHECKING:Z

.field static final MNC_COMMAND:Ljava/lang/String; = "C826B10000"

.field private static final NITZ_UPDATE_DIFF_DEFAULT:I = 0x7d0

.field private static final NITZ_UPDATE_SPACING_DEFAULT:I = 0x927c0

.field static final NVITEM_ID_LENGTH:I = 0x8

.field private static final NV_SUCCESS:Ljava/lang/String; = "0000"

.field private static final SKU_ID:I

.field private static final S_DBG:Z = false

.field private static final UNACTIVATED_MIN2_VALUE:Ljava/lang/String; = "000000"

.field private static final UNACTIVATED_MIN_VALUE:Ljava/lang/String; = "1111110111"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "ServiceStateTracker"

.field static htcCurrentOtaspMode:I

.field static isKddiOtaspProvision:Z

.field static final mChinaOpList:Ljava/util/ArrayList;

.field static mImsiReady:Z

.field static mRuimLoaded:Z

.field private static mRuimProvisioned:Z

.field public static performRadioCommandState:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;


# instance fields
.field private bSupportSVEVDO:Z

.field private bSupportSVLTE:Z

.field private mAutoTimeObserver:Landroid/database/ContentObserver;

.field private mAutoTimeZoneObserver:Landroid/database/ContentObserver;

.field protected mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

.field private mCdmaRoaming:Z

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private mCellInfoLte:Landroid/telephony/CellInfoLte;

.field mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

.field private mCr:Landroid/content/ContentResolver;

.field protected mCurPlmn:Ljava/lang/String;

.field private mCurSpn:Ljava/lang/String;

.field private mCurSpnRule:I

.field private mCurrentCarrier:Ljava/lang/String;

.field mCurrentOtaspMode:I

.field private mDataRoaming:Z

.field private mDefaultRoamingIndicator:I

.field mFlightModeBootup:Ljava/lang/Boolean;

.field private mForceSpnUpdate:Z

.field private mGetEventDate:Ljava/util/Date;

.field private mGetEventTime:J

.field private mGetHtcIccCardProxyMethod:Ljava/lang/reflect/Method;

.field protected mGotCountryCode:Z

.field protected mHomeNetworkId:[I

.field protected mHomeSystemId:[I

.field private mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

.field private mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

.field private mHtcContext:Landroid/content/Context;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsEriTextLoaded:Z

.field private mIsInPrl:Z

.field private mIsMccMncChange:Z

.field protected mIsMinInfoReady:Z

.field protected mIsSubscriptionFromRuim:Z

.field private mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

.field private mLocale:Ljava/util/Locale;

.field protected mMdn:Ljava/lang/String;

.field protected mMin:Ljava/lang/String;

.field protected mNeedFixZone:Z

.field private mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

.field mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

.field private mNitzUpdateDiff:I

.field private mNitzUpdateSpacing:I

.field private mOldOperatorNumeric:Ljava/lang/String;

.field mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

.field private mOperatorStringLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalOperatorName:Ljava/lang/String;

.field private mPendingRadioPowerOffAfterDataOff:Z

.field mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mPrevSignalBar:I

.field private mPrevSignalBarTime:J

.field protected mPrlVersion:Ljava/lang/String;

.field public mRDInfo:Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;

.field private mRegistrationDeniedReason:Ljava/lang/String;

.field protected mRegistrationState:I

.field private mRoamingIndicator:I

.field mSavedAtTime:J

.field mSavedTime:J

.field mSavedTimeZone:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoneDst:Z

.field private mZoneOffset:I

.field private mZoneTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    sput v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SKU_ID:I

    sput-boolean v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isKddiOtaspProvision:Z

    sput v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcCurrentOtaspMode:I

    const-string v0, "not response CDMA Subscription"

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->DBG_GET_MDN:Ljava/lang/String;

    sput-object v3, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    sput-object v3, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_11_12:Ljava/lang/String;

    sget-boolean v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v3, "cdma_null_mdn_min_if_ruim_not_provision"

    invoke-static {v0, v3, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->MDN_PROVISION_CHECKING:Z

    sput-boolean v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRuimProvisioned:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "46000"

    aput-object v4, v3, v2

    const-string v2, "46001"

    aput-object v2, v3, v1

    const-string v1, "46002"

    aput-object v1, v3, v5

    const/4 v1, 0x3

    const-string v2, "46003"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "46007"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string v2, "45412"

    aput-object v2, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mChinaOpList:Ljava/util/ArrayList;

    sget v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RAT_CAPABILITIES:I

    invoke-static {v5, v0}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->CDMA_LTE_ENABLED:Z

    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;->IDLE:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->performRadioCommandState:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->CDMA_LTE_ENABLED:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/telephony/CellInfoLte;

    invoke-direct {v0}, Landroid/telephony/CellInfoLte;-><init>()V

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/telephony/CellInfo;)V

    return-void

    :cond_0
    new-instance v0, Landroid/telephony/CellInfoCdma;

    invoke-direct {v0}, Landroid/telephony/CellInfoCdma;-><init>()V

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/telephony/CellInfo;)V
    .locals 12
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;
    .param p2, "cellInfo"    # Landroid/telephony/CellInfo;

    .prologue
    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    iget-object v6, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, p1, v6, p2}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Landroid/telephony/CellInfo;)V

    new-instance v6, Landroid/telephony/CellIdentityLte;

    invoke-direct {v6}, Landroid/telephony/CellIdentityLte;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    new-instance v6, Landroid/telephony/CellIdentityLte;

    invoke-direct {v6}, Landroid/telephony/CellIdentityLte;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    iput v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    const-string v6, "ro.nitz_update_spacing"

    const v9, 0x927c0

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateSpacing:I

    const-string v6, "ro.nitz_update_diff"

    const/16 v9, 0x7d0

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateDiff:I

    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataRoaming:Z

    iput v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    new-instance v6, Landroid/os/RegistrantList;

    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurSpn:Ljava/lang/String;

    iput v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurSpnRule:I

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsEriTextLoaded:Z

    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;

    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentCarrier:Ljava/lang/String;

    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMccMncChange:Z

    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->bSupportSVLTE:Z

    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->bSupportSVEVDO:Z

    new-instance v6, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;

    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v9}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    new-instance v6, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;

    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v9}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    iput v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrevSignalBar:I

    const-wide/16 v9, -0x1

    iput-wide v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrevSignalBarTime:J

    new-instance v6, Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    invoke-direct {v6}, Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-boolean v6, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->CDMA_LTE_ENABLED:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    instance-of v6, v6, Landroid/telephony/CellInfoLte;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v6, Landroid/telephony/CellInfoLte;

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    new-instance v9, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v9}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    invoke-virtual {v6, v9}, Landroid/telephony/CellInfoLte;->setCellSignalStrength(Landroid/telephony/CellSignalStrengthLte;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    new-instance v9, Landroid/telephony/CellIdentityLte;

    invoke-direct {v9}, Landroid/telephony/CellIdentityLte;-><init>()V

    invoke-virtual {v6, v9}, Landroid/telephony/CellInfoLte;->setCellIdentity(Landroid/telephony/CellIdentityLte;)V

    :cond_0
    const/16 v6, 0x46

    invoke-virtual {p1, p0, v6, v11}, Lcom/android/internal/telephony/cdma/CDMAPhone;->registerForIccCardProxyReady(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    new-instance v6, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v6}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    new-instance v6, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v6}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v10, 0x27

    invoke-static {v6, v9, p0, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v6

    if-nez v6, :cond_7

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    new-instance v6, Lcom/android/internal/telephony/gsm/OperatorInfo;

    invoke-direct {v6}, Lcom/android/internal/telephony/gsm/OperatorInfo;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneType()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/telephony/ServiceState;->setPhoneType(I)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneType()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/telephony/ServiceState;->setPhoneType(I)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v8, "power"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .local v4, "powerManager":Landroid/os/PowerManager;
    const-string v6, "ServiceStateTracker"

    invoke-virtual {v4, v7, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0, v7, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x1e

    invoke-interface {v6, p0, v8, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0xb

    invoke-interface {v6, p0, v8, v11}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x28

    invoke-interface {v6, p0, v8, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v6, 0x24

    invoke-virtual {p1, p0, v6, v11}, Lcom/android/internal/telephony/cdma/CDMAPhone;->registerForEriFileLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x25

    invoke-interface {v6, p0, v8, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x47

    invoke-interface {v6, p0, v8, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForModemResetNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x4b

    invoke-interface {v6, p0, v8, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForSilentFlightMode(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-boolean v6, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x33

    invoke-interface {v6, p0, v8, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaCTMccMncChange(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_1
    sget-boolean v6, Lcom/android/internal/telephony/uicc/IccCardProxy;->ENABLED:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x3d

    invoke-interface {v6, p0, v8, v11}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x43

    invoke-interface {v6, p0, v8, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x45

    invoke-interface {v6, p0, v8, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForMdmRstSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->initPowerState()V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v8, "auto_time"

    invoke-static {v8}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v8, "auto_time_zone"

    invoke-static {v8}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v6, "APP_REQUEST_REFRESH_PHONE_INFO"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v6, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->MDN_PROVISION_CHECKING:Z

    if-eqz v6, :cond_3

    const-string v6, "android.intent.action.EXTRA_SIM_STATE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v8, v2, v11, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v8, "com.htc"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleIfLanguageChanged()V

    new-instance v6, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8, p0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/ServiceStateTracker;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/HtcBuildUtils;->isNFCEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v6, v8}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->create(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportKddiOtasp()Z

    move-result v6

    if-eqz v6, :cond_6

    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-ne v6, v7, :cond_5

    const-string v6, "CdmaSST"

    const-string v7, "registerForUimOtaNotify for kddi otasp"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0x41

    invoke-interface {v6, p0, v7, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForUimOtaNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_6
    const/4 v3, 0x0

    .local v3, "manager":Lcom/htc/customization/HtcCustomizationManager;
    const/4 v5, 0x0

    .local v5, "reader":Lcom/htc/customization/HtcCustomizationReader;
    :try_start_1
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v3

    const-string v6, "Android_Ril"

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v5

    const-string v6, "support_sv_evdo"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->bSupportSVEVDO:Z

    const-string v6, "support_sv_lte"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->bSupportSVLTE:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bSupportSVEVDO = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->bSupportSVEVDO:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bSupportSVLTE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->bSupportSVLTE:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-void

    .end local v2    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "manager":Lcom/htc/customization/HtcCustomizationManager;
    .end local v4    # "powerManager":Landroid/os/PowerManager;
    .end local v5    # "reader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_7
    move v6, v8

    goto/16 :goto_0

    .restart local v2    # "filter":Landroid/content/IntentFilter;
    .restart local v4    # "powerManager":Landroid/os/PowerManager;
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    goto/16 :goto_1

    .end local v1    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "manager":Lcom/htc/customization/HtcCustomizationManager;
    .restart local v5    # "reader":Lcom/htc/customization/HtcCustomizationReader;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot read customization value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static DecodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 14
    .param p0, "dwVal"    # Ljava/lang/Long;
    .param p1, "dwDigits"    # Ljava/lang/Long;

    .prologue
    const-wide/16 v12, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v10, 0xa

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .local v3, "i":Ljava/lang/Long;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .local v2, "dwRet":Ljava/lang/Long;
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .local v1, "dwBase":Ljava/lang/Long;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .local v0, "dwBCD":Ljava/lang/Long;
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    rem-long/2addr v4, v10

    add-long/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public static ReverseByte(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_0

    .end local p0    # "val":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "val":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "length":I
    const-string v3, ""

    .local v3, "reverse":Ljava/lang/String;
    move-object v4, p0

    .local v4, "tmp":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    div-int/lit8 v5, v2, 0x2

    if-ge v0, v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "len":I
    :cond_1
    move-object p0, v3

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->revertToNitzTime()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->requestMCC()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->requestMNC()V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->MDN_PROVISION_CHECKING:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRuimProvisioned:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->revertToNitzTimeZone()V

    return-void
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 10
    .param p1, "offset"    # I
    .param p2, "dst"    # Z
    .param p3, "when"    # J

    .prologue
    move v5, p1

    .local v5, "rawOffset":I
    if-eqz p2, :cond_0

    const v9, 0x36ee80

    sub-int/2addr v5, v9

    :cond_0
    invoke-static {v5}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v8

    .local v8, "zones":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "guess":Ljava/util/TimeZone;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p3, p4}, Ljava/util/Date;-><init>(J)V

    .local v1, "d":Ljava/util/Date;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .local v7, "zone":Ljava/lang/String;
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .local v6, "tz":Ljava/util/TimeZone;
    invoke-virtual {v6, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    if-ne v9, p1, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v9

    if-ne v9, p2, :cond_2

    move-object v2, v6

    .end local v6    # "tz":Ljava/util/TimeZone;
    .end local v7    # "zone":Ljava/lang/String;
    :cond_1
    return-object v2

    .restart local v6    # "tz":Ljava/util/TimeZone;
    .restart local v7    # "zone":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private fixOperatorNameForLra(Landroid/telephony/ServiceState;)Z
    .locals 5
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":Z
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Digital Roaming"

    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_1
    :goto_0
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const-string v2, "CdmaSST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fixOperatorNameForLra, operator="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", roaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v2, "CdmaSST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fixOperatorNameForLra, ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    sget-object v2, Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;->CdmaSST:Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getBanner(Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;)Ljava/lang/String;

    move-result-object v0

    .local v0, "banner":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private fixTimeZone(Ljava/lang/String;I)V
    .locals 7
    .param p1, "isoCountryCode"    # Ljava/lang/String;
    .param p2, "updateType"    # I

    .prologue
    const/4 v6, 0x0

    .local v6, "zone":Ljava/util/TimeZone;
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    iget-wide v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->searchSmartTimeZoneForNITZ(Ljava/lang/String;Ljava/lang/Boolean;IJ)Ljava/util/TimeZone;

    move-result-object v6

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    if-eqz v0, :cond_0

    if-nez v6, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    :cond_0
    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTimeZone()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAutoTime()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getAutoTimeZone()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v3, "auto_time_zone"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public static getForcePerformRadioOff()Ljava/lang/Boolean;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->performRadioCommandState:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;->TURNING_OFF:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private getHtcIccCardProxy()Lcom/android/internal/telephony/uicc/IccCardProxy;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .local v3, "proxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    sget-boolean v4, Lcom/android/internal/telephony/uicc/IccCardProxy;->ENABLED:Z

    if-eqz v4, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGetHtcIccCardProxyMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v4, Lcom/android/internal/telephony/BaseCommands;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getHtcIccCardProxy"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGetHtcIccCardProxyMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGetHtcIccCardProxyMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_1

    :try_start_3
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGetHtcIccCardProxyMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v4, Lcom/android/internal/telephony/BaseCommands;

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardProxy;

    move-object v3, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_1
    return-object v3

    :catch_0
    move-exception v1

    .local v1, "eg":Ljava/lang/Exception;
    :try_start_4
    const-string v4, "CdmaSST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No IccCardProxy:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "eg":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    :catch_1
    move-exception v2

    .local v2, "ei":Ljava/lang/Exception;
    const-string v4, "CdmaSST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Access IccCardProxy:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getIMSI_fromIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)Ljava/lang/String;
    .locals 2
    .param p1, "iccRec"    # Lcom/android/internal/telephony/uicc/IccRecords;

    .prologue
    const/4 v0, 0x0

    .local v0, "imsi":Ljava/lang/String;
    sget-boolean v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->ENABLED:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/internal/telephony/uicc/SIMRecords;

    .end local p1    # "iccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    .restart local p1    # "iccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    instance-of v1, p1, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/internal/telephony/uicc/RuimRecords;

    .end local p1    # "iccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 3
    .param p1, "offset"    # I
    .param p2, "dst"    # Z
    .param p3, "when"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .local v0, "guess":Ljava/util/TimeZone;
    if-nez v0, :cond_0

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNitzTimeZone returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_2

    move-object v1, v0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private getSubscriptionInfoAndStartPollingThreads()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    return-void
.end method

.method private handleCdmaSubscriptionSource(I)V
    .locals 3
    .param p1, "newSubscriptionSource"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscription Source : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    .local v0, "oldIsSubscriptionFromRuim":Z
    if-nez p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->saveCdmaSubscriptionSource(I)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez v1, :cond_0

    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleIfLanguageChanged()V
    .locals 9

    .prologue
    const v8, 0x3070148

    const/4 v1, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mLocale:Ljava/util/Locale;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eq v5, v6, :cond_9

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mLocale:Ljava/util/Locale;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mLocale:Ljava/util/Locale;

    sget-object v6, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mLocale:Ljava/util/Locale;

    sget-object v6, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mLocale:Ljava/util/Locale;

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x308001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .local v2, "opStr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_4

    aget-object v5, v2, v0

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "strArray":[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    aget-object v6, v3, v1

    aget-object v7, v3, v4

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v2    # "opStr":[Ljava/lang/String;
    .end local v3    # "strArray":[Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriRoamingIndicator()I

    move-result v5

    if-eq v5, v4, :cond_5

    move v1, v4

    .local v1, "isRoaming":Z
    :cond_5
    if-eqz v1, :cond_7

    sget v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SKU_ID:I

    const/16 v6, 0x1f

    if-ne v5, v6, :cond_7

    const-string v4, "CdmaSST"

    const-string v5, "KDDI and into roaming network"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateNetworkNameDisplay()V

    .end local v1    # "isRoaming":Z
    :cond_6
    :goto_2
    return-void

    .restart local v1    # "isRoaming":Z
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-ne v4, v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOriginalOperatorName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "isRoaming":Z
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    if-nez v4, :cond_a

    const-string v4, "CdmaSST"

    const-string v5, "No HTC Context was loaded!!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    const-string v4, "CdmaSST"

    const-string v5, "Language is not changed, leave as what it was!!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private handleImsRadioReset()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcPowerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private htcClearCacheWhenSimUnavaliable(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    .locals 5
    .param p1, "currRadioState"    # Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    .local v0, "clearTakeAction":Z
    if-eqz p1, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/HtcBuildUtils;->isNFCEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne p1, v3, :cond_2

    move v0, v1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    sput-boolean v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRuimProvisioned:Z

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    const-string v1, "gsm.cdma.pri.version"

    const-string v3, ""

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    sput-object v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    sput-object v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_11_12:Ljava/lang/String;

    sput-boolean v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p1, v3, :cond_4

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne p1, v3, :cond_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isHomeSid(I)Z
    .locals 2
    .param p1, "sid"    # I

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    .end local v0    # "i":I
    :goto_1
    return v1

    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isInHomeSidNid(II)Z
    .locals 5
    .param p1, "sid"    # I
    .param p2, "nid"    # I

    .prologue
    const v4, 0xffff

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSidsAllZeros()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    array-length v3, v3

    if-ne v2, v3, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    aget v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    aget v2, v2, v0

    if-eq v2, v4, :cond_0

    if-eqz p2, :cond_0

    if-eq p2, v4, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    aget v2, v2, v0

    if-eq v2, p2, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRoamIndForHomeSystem(Ljava/lang/String;)Z
    .locals 7
    .param p1, "roamInd"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const-string v6, "ro.cdma.homesystem"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "homeRoamIndicators":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .local v1, "homeRoamInd":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "homeRoamInd":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return v5

    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "homeRoamInd":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 9
    .param p1, "cdmaRoaming"    # Z
    .param p2, "s"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "gsm.sim.operator.alpha"

    const-string v8, "empty"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "spn":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    .local v2, "onsl":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    .local v3, "onss":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v0, v5

    .local v0, "equalsOnsl":Z
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v1, v5

    .local v1, "equalsOnss":Z
    :goto_1
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    :goto_2
    return v5

    .end local v0    # "equalsOnsl":Z
    .end local v1    # "equalsOnss":Z
    :cond_0
    move v0, v6

    goto :goto_0

    .restart local v0    # "equalsOnsl":Z
    :cond_1
    move v1, v6

    goto :goto_1

    .restart local v1    # "equalsOnss":Z
    :cond_2
    move v5, v6

    goto :goto_2
.end method

.method public static pendZero(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "digits"    # I

    .prologue
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 3

    .prologue
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDontPollSignalStrength:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private regCodeIsRoaming(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestMCC()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v1, "C826B00000"

    const/16 v2, 0x38

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private requestMNC()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v1, "C826B10000"

    const/16 v2, 0x39

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private revertToNitzTime()V
    .locals 6

    .prologue
    const-wide/16 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "revertToNitzTime: mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTime(JILjava/lang/String;)V

    goto :goto_0
.end method

.method private revertToNitzTimeZone()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time_zone"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "revertToNitzTimeZone: tz=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveCdmaSubscriptionSource(I)V
    .locals 2
    .param p1, "source"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Storing cdma subscription source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "subscription_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private saveNitzTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    return-void
.end method

.method private setAndBroadcastNetworkSetTime(J)V
    .locals 2
    .param p1, "time"    # J

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAndBroadcastNetworkSetTime: time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTime(JILjava/lang/String;)V

    return-void
.end method

.method private setAndBroadcastNetworkSetTime(JILjava/lang/String;)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "updateType"    # I
    .param p4, "updateZone"    # Ljava/lang/String;

    .prologue
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    invoke-virtual {v1, p3, p1, p2, p4}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->setupNitz(IJLjava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 2
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAndBroadcastNetworkSetTimeZone: setTimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;I)V

    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;I)V
    .locals 4
    .param p1, "zoneId"    # Ljava/lang/String;
    .param p2, "updateType"    # I

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    if-ltz p2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    invoke-virtual {v2, p2, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->setupTimeZone(ILjava/lang/String;)V

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "time-zone"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setOperatorProperties()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    sget v10, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SKU_ID:I

    const/16 v11, 0xa

    if-eq v10, v11, :cond_0

    sget v10, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SKU_ID:I

    const/16 v11, 0x55

    if-eq v10, v11, :cond_0

    sget v10, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SKU_ID:I

    const/16 v11, 0x62

    if-ne v10, v11, :cond_7

    :cond_0
    move v0, v9

    .local v0, "SprintOperNum":Z
    :goto_0
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .local v7, "operatorNumeric":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v6

    .local v6, "operatorName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getCombinedRegState()I

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getCombinedRegState()I

    move-result v10

    if-eq v10, v12, :cond_1

    const-string v7, ""

    const-string v6, ""

    :cond_1
    const/4 v5, 0x0

    .local v5, "notSprintLte":Z
    if-eqz v0, :cond_3

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .local v1, "dataServiceState":Landroid/telephony/ServiceState;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v10

    const/16 v11, 0xe

    if-ne v10, v11, :cond_8

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v10

    if-ne v10, v9, :cond_8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v6

    :cond_2
    const/4 v5, 0x1

    .end local v1    # "dataServiceState":Landroid/telephony/ServiceState;
    :cond_3
    :goto_1
    const-string v9, "CdmaSST"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setOperatorProperties - service state operator numeric: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", operator name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOldOperatorNumeric:Ljava/lang/String;

    if-eqz v9, :cond_4

    if-eqz v7, :cond_4

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOldOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    :cond_4
    const-string v9, "CdmaSST"

    const-string v10, "setOperatorProperties - set operator numeric/alpha to system perties"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v10, "gsm.operator.numeric"

    invoke-virtual {v9, v10, v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v10, "gsm.operator.alpha"

    invoke-virtual {v9, v10, v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOldOperatorNumeric:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0, v7, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOldOperatorNumeric:Ljava/lang/String;

    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_a

    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v10, "gsm.operator.iso-country"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    :goto_2
    return-void

    .end local v0    # "SprintOperNum":Z
    .end local v5    # "notSprintLte":Z
    .end local v6    # "operatorName":Ljava/lang/String;
    .end local v7    # "operatorNumeric":Ljava/lang/String;
    :cond_7
    move v0, v8

    goto/16 :goto_0

    .restart local v0    # "SprintOperNum":Z
    .restart local v1    # "dataServiceState":Landroid/telephony/ServiceState;
    .restart local v5    # "notSprintLte":Z
    .restart local v6    # "operatorName":Ljava/lang/String;
    .restart local v7    # "operatorNumeric":Ljava/lang/String;
    :cond_8
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    if-ne v9, v12, :cond_3

    :cond_9
    sget-object v9, Lcom/android/internal/telephony/cdma/CDMAPhone;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "ro.cdma.home.operator.alpha"

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "CdmaSST"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setOperatorProperties - hardcode operator: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v1    # "dataServiceState":Landroid/telephony/ServiceState;
    :cond_a
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    const-string v4, ""

    .local v4, "isoCountryCode":Ljava/lang/String;
    if-eqz v7, :cond_b

    const/4 v8, 0x0

    const/4 v9, 0x3

    :try_start_0
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    :cond_b
    :goto_3
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->findBestMatching(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/telephony/cdma/HtcCdmaCountry;

    move-result-object v3

    .local v3, "htcCountry":Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    if-eqz v3, :cond_c

    iget-object v8, v3, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->countryIso:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->countryIso:Ljava/lang/String;

    :cond_c
    if-eqz v0, :cond_d

    if-nez v5, :cond_d

    const-string v4, "us"

    :cond_d
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v9, "gsm.operator.iso-country"

    invoke-virtual {v8, v9, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "CdmaSST"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setOperatorProperties - set iso-country: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v3    # "htcCountry":Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pollStateDone: countryCodeForMcc error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_3

    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .local v2, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pollStateDone: countryCodeForMcc error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_3

    .end local v2    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_2
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pollStateDone: countryCodeForMcc error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 38
    .param p1, "nitz"    # Ljava/lang/String;
    .param p2, "nitzReceiveTime"    # J

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    .local v29, "start":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGetEventTime:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGetEventDate:Ljava/util/Date;

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->receiveNitz(Ljava/lang/String;JJLjava/util/Date;)V

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " start="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v29

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " delay="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v6, v29, p2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    :try_start_0
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v9

    .local v9, "c":Ljava/util/Calendar;
    invoke-virtual {v9}, Ljava/util/Calendar;->clear()V

    const/16 v2, 0x10

    const/4 v4, 0x0

    invoke-virtual {v9, v2, v4}, Ljava/util/Calendar;->set(II)V

    const-string v2, "[/:,+-]"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .local v24, "nitzSubs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->getFakeNitz(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    :cond_1
    const/4 v2, 0x0

    aget-object v2, v24, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit16 v0, v2, 0x7d0

    move/from16 v35, v0

    .local v35, "year":I
    const/4 v2, 0x1

    move/from16 v0, v35

    invoke-virtual {v9, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x1

    aget-object v2, v24, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v23, v2, -0x1

    .local v23, "month":I
    const/4 v2, 0x2

    move/from16 v0, v23

    invoke-virtual {v9, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    aget-object v2, v24, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .local v10, "date":I
    const/4 v2, 0x5

    invoke-virtual {v9, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x3

    aget-object v2, v24, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .local v17, "hour":I
    const/16 v2, 0xa

    move/from16 v0, v17

    invoke-virtual {v9, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x4

    aget-object v2, v24, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .local v22, "minute":I
    const/16 v2, 0xc

    move/from16 v0, v22

    invoke-virtual {v9, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    aget-object v2, v24, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .local v27, "second":I
    const/16 v2, 0xd

    move/from16 v0, v27

    invoke-virtual {v9, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0x2d

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_8

    const/16 v28, 0x1

    .local v28, "sign":Z
    :goto_0
    const/4 v2, 0x6

    aget-object v2, v24, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .local v5, "tzOffset":I
    move-object/from16 v0, v24

    array-length v2, v0

    const/16 v4, 0x8

    if-lt v2, v4, :cond_9

    const/4 v2, 0x7

    aget-object v2, v24, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .local v11, "dst":I
    :goto_1
    if-eqz v28, :cond_a

    const/4 v2, 0x1

    :goto_2
    mul-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0xf

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v5, v2, 0x3e8

    const/4 v3, 0x0

    .local v3, "zone":Ljava/util/TimeZone;
    move-object/from16 v0, v24

    array-length v2, v0

    const/16 v4, 0x9

    if-lt v2, v4, :cond_2

    const/16 v2, 0x8

    aget-object v2, v24, v2

    const/16 v4, 0x21

    const/16 v6, 0x2f

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v34

    .local v34, "tzname":Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .end local v34    # "tzname":Ljava/lang/String;
    :cond_2
    const-string v2, "gsm.operator.iso-country"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .local v19, "iso":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    if-eqz v11, :cond_b

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    move-object/from16 v0, v24

    array-length v4, v0

    const/16 v6, 0x8

    if-lt v4, v6, :cond_d

    if-eqz v11, :cond_c

    const/4 v4, 0x1

    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_5
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->searchSmartTimeZoneForNITZ(Ljava/util/TimeZone;Ljava/lang/Boolean;IJ)Ljava/util/TimeZone;

    move-result-object v3

    :cond_3
    :goto_6
    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    if-ne v2, v5, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    if-eqz v11, :cond_12

    const/4 v2, 0x1

    :goto_7
    if-eq v4, v2, :cond_5

    :cond_4
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    if-eqz v11, :cond_13

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    :cond_5
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    .local v31, "strBuf":Ljava/lang/StringBuilder;
    const-string v2, "NITZ: tzOffset="

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dst="

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " zone="

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    const-string v2, " iso="

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mGotCountryCode="

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mNeedFixZone="

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    if-eqz v3, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTimeZone()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    :cond_7
    const-string v2, "gsm.ignore-nitz"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .local v18, "ignore":Ljava/lang/String;
    if-eqz v18, :cond_15

    const-string v2, "yes"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "NITZ: Not setting clock because gsm.ignore-nitz is set"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .end local v3    # "zone":Ljava/util/TimeZone;
    .end local v5    # "tzOffset":I
    .end local v9    # "c":Ljava/util/Calendar;
    .end local v10    # "date":I
    .end local v11    # "dst":I
    .end local v17    # "hour":I
    .end local v18    # "ignore":Ljava/lang/String;
    .end local v19    # "iso":Ljava/lang/String;
    .end local v22    # "minute":I
    .end local v23    # "month":I
    .end local v24    # "nitzSubs":[Ljava/lang/String;
    .end local v27    # "second":I
    .end local v28    # "sign":Z
    .end local v31    # "strBuf":Ljava/lang/StringBuilder;
    .end local v35    # "year":I
    :goto_a
    return-void

    .restart local v9    # "c":Ljava/util/Calendar;
    .restart local v10    # "date":I
    .restart local v17    # "hour":I
    .restart local v22    # "minute":I
    .restart local v23    # "month":I
    .restart local v24    # "nitzSubs":[Ljava/lang/String;
    .restart local v27    # "second":I
    .restart local v35    # "year":I
    :cond_8
    const/16 v28, 0x0

    goto/16 :goto_0

    .restart local v5    # "tzOffset":I
    .restart local v28    # "sign":Z
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_1

    .restart local v11    # "dst":I
    :cond_a
    const/4 v2, -0x1

    goto/16 :goto_2

    .restart local v3    # "zone":Ljava/util/TimeZone;
    .restart local v19    # "iso":Ljava/lang/String;
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_e
    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    if-eqz v2, :cond_3

    if-eqz v19, :cond_10

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_10

    if-eqz v11, :cond_f

    const/4 v2, 0x1

    :goto_b
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    move-object/from16 v0, v19

    invoke-static {v5, v2, v6, v7, v0}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    goto/16 :goto_6

    :cond_f
    const/4 v2, 0x0

    goto :goto_b

    :cond_10
    if-eqz v11, :cond_11

    const/4 v2, 0x1

    :goto_c
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v3

    goto/16 :goto_6

    :cond_11
    const/4 v2, 0x0

    goto :goto_c

    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_8

    .restart local v31    # "strBuf":Ljava/lang/StringBuilder;
    :cond_14
    const-string v2, "<null>"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_9

    .end local v3    # "zone":Ljava/util/TimeZone;
    .end local v5    # "tzOffset":I
    .end local v9    # "c":Ljava/util/Calendar;
    .end local v10    # "date":I
    .end local v11    # "dst":I
    .end local v17    # "hour":I
    .end local v19    # "iso":Ljava/lang/String;
    .end local v22    # "minute":I
    .end local v23    # "month":I
    .end local v24    # "nitzSubs":[Ljava/lang/String;
    .end local v27    # "second":I
    .end local v28    # "sign":Z
    .end local v31    # "strBuf":Ljava/lang/StringBuilder;
    .end local v35    # "year":I
    :catch_0
    move-exception v14

    .local v14, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: Parsing NITZ time "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ex="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_a

    .end local v14    # "ex":Ljava/lang/RuntimeException;
    .restart local v3    # "zone":Ljava/util/TimeZone;
    .restart local v5    # "tzOffset":I
    .restart local v9    # "c":Ljava/util/Calendar;
    .restart local v10    # "date":I
    .restart local v11    # "dst":I
    .restart local v17    # "hour":I
    .restart local v18    # "ignore":Ljava/lang/String;
    .restart local v19    # "iso":Ljava/lang/String;
    .restart local v22    # "minute":I
    .restart local v23    # "month":I
    .restart local v24    # "nitzSubs":[Ljava/lang/String;
    .restart local v27    # "second":I
    .restart local v28    # "sign":Z
    .restart local v31    # "strBuf":Ljava/lang/StringBuilder;
    .restart local v35    # "year":I
    :cond_15
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v20, v6, p2

    .local v20, "millisSinceNitzReceived":J
    const-wide/16 v6, 0x0

    cmp-long v2, v20, v6

    if-gez v2, :cond_16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: not setting time, clock has rolled backwards since NITZ time was received, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .local v12, "end":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: end="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " dur="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v6, v12, v29

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_a

    .end local v12    # "end":J
    :cond_16
    const-wide/32 v6, 0x7fffffff

    cmp-long v2, v20, v6

    if-lez v2, :cond_17

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: not setting time, processing has taken "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/32 v6, 0x5265c00

    div-long v6, v20, v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " days"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .restart local v12    # "end":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: end="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " dur="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v6, v12, v29

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_a

    .end local v12    # "end":J
    :cond_17
    const/16 v2, 0xe

    move-wide/from16 v0, v20

    long-to-int v4, v0

    :try_start_5
    invoke-virtual {v9, v2, v4}, Ljava/util/Calendar;->add(II)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTime()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    sub-long v15, v6, v36

    .local v15, "gained":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    move-wide/from16 v36, v0

    sub-long v32, v6, v36

    .local v32, "timeSinceLastUpdate":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v4, "nitz_update_spacing"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateSpacing:I

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    .local v26, "nitzUpdateSpacing":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v4, "nitz_update_diff"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateDiff:I

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    .local v25, "nitzUpdateDiff":I
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    const-wide/16 v36, 0x0

    cmp-long v2, v6, v36

    if-eqz v2, :cond_18

    move/from16 v0, v26

    int-to-long v6, v0

    cmp-long v2, v32, v6

    if-gtz v2, :cond_18

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v36, v0

    cmp-long v2, v6, v36

    if-lez v2, :cond_1b

    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: Auto updating time of day to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " NITZ receive delay="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ms gained="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ms from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const/4 v4, 0x0

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    :goto_d
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v4, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTime(JILjava/lang/String;)V

    .end local v15    # "gained":J
    .end local v25    # "nitzUpdateDiff":I
    .end local v26    # "nitzUpdateSpacing":I
    .end local v32    # "timeSinceLastUpdate":J
    :cond_19
    const-string v2, "NITZ: update nitz time property"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    const-string v2, "gsm.nitz.time"

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .restart local v12    # "end":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: end="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " dur="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v6, v12, v29

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_a

    .end local v12    # "end":J
    .restart local v15    # "gained":J
    .restart local v25    # "nitzUpdateDiff":I
    .restart local v26    # "nitzUpdateSpacing":I
    .restart local v32    # "timeSinceLastUpdate":J
    :cond_1a
    const/4 v2, 0x0

    goto :goto_d

    :cond_1b
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: ignore, a previous update was "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v32

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ms ago and gained="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .restart local v12    # "end":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: end="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " dur="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v6, v12, v29

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_a

    .end local v12    # "end":J
    .end local v15    # "gained":J
    .end local v20    # "millisSinceNitzReceived":J
    .end local v25    # "nitzUpdateDiff":I
    .end local v26    # "nitzUpdateSpacing":I
    .end local v32    # "timeSinceLastUpdate":J
    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .restart local v12    # "end":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NITZ: end="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " dur="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v6, v12, v29

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
.end method

.method private signalBarLogControl(I)Z
    .locals 9
    .param p1, "signalBar"    # I

    .prologue
    const/4 v2, 0x0

    .local v2, "result":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .local v0, "currentTime":J
    const-wide/16 v3, 0x1388

    .local v3, "timeInterval":J
    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrevSignalBar:I

    if-ne v5, p1, :cond_1

    iget-wide v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrevSignalBarTime:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0x1388

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrevSignalBarTime:J

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrevSignalBar:I

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrevSignalBarTime:J

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private validateStateOfNv(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "errState":Ljava/lang/String;
    const-string v0, ""

    .local v0, "errMsg":Ljava/lang/String;
    const-string v2, "0000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, ""

    :goto_0
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CdmaSST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "command state is error, reason is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    :cond_1
    const-string v2, "0100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "internal dmss used"

    goto :goto_0

    :cond_2
    const-string v2, "0200"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "can\'t recognize command"

    goto :goto_0

    :cond_3
    const-string v2, "0300"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "memory is full"

    goto :goto_0

    :cond_4
    const-string v2, "0400"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "command is fail"

    goto :goto_0

    :cond_5
    const-string v2, "0500"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v0, "not support this command"

    goto :goto_0

    :cond_6
    const-string v2, "0600"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "bad command parameters or not exists"

    goto :goto_0

    :cond_7
    const-string v2, "0700"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "memeory is read only"

    goto :goto_0

    :cond_8
    const-string v2, "FFFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v0, "No respone!!"

    goto :goto_0

    :cond_9
    const-string v0, "command error with non-knowing reason"

    goto :goto_0
.end method


# virtual methods
.method CdmaConcurrentCustomize(I)Z
    .locals 3
    .param p1, "radioTech"    # I

    .prologue
    const/4 v0, 0x1

    .local v0, "bsupport":Z
    const/16 v1, 0xe

    if-ne p1, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->bSupportSVLTE:Z

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RadioTechnology "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_1

    const-string v1, " is concurrent"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->bSupportSVEVDO:Z

    goto :goto_0

    :cond_1
    const-string v1, " is not concurrent"

    goto :goto_1
.end method

.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->checkCorrectThread()V

    const-string v1, "ServiceStateTracker dispose"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceNetworkStateChanged(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaCTMccMncChange(Landroid/os/Handler;)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForEriFileLoaded(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForIccCardProxyReady(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardProxy;

    .local v0, "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .end local v0    # "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMHotSwap(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForMdmRstSIMHotSwap(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNITZTime(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaPrlChanged(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForModemResetNotify(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSilentFlightMode(Landroid/os/Handler;)V

    sget-boolean v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->ENABLED:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/android/internal/telephony/BaseCommands;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/BaseCommands;->unregisterForCdmaSubscriptionSourceChanged(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unsetOnIccRefresh(Landroid/os/Handler;)V

    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGetHtcIccCardProxyMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->dispose()V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportKddiOtasp()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    const-string v1, "CdmaSST"

    const-string v2, "unregisterForUimOtaNotify for kddi otasp"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForUimOtaNotify(Landroid/os/Handler;)V

    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;->dispose()V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    :cond_7
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->dispose()V

    return-void

    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    goto/16 :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const-string v0, "CdmaServiceStateTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurrentOtaspMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRoamingIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsInPrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDefaultRoamingIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRegistrationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNeedFixZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneDst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGotCountryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedTimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWakeLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHomeSystemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHomeNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPrlVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsMinInfoReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsEriTextLoaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsEriTextLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsSubscriptionFromRuim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaSSM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRegistrationDeniedReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurrentCarrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentCarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    const-string v0, "CdmaServiceStateTracker finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected fixTimeZone(Ljava/lang/String;)V
    .locals 1
    .param p1, "isoCountryCode"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "zone":Ljava/util/TimeZone;
    return-void
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    sget-boolean v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->CDMA_LTE_ENABLED:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRilVersion()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->MDN_PROVISION_CHECKING:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRuimProvisioned:Z

    if-nez v0, :cond_0

    const-string v0, "MIN haven\'t been provisioned"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCdmaVoiceCampedOperator(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 12
    .param p1, "objAccountInfos"    # Ljava/lang/Object;

    .prologue
    const/16 v11, 0x9

    const/16 v10, 0x8

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v6, 0x0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/HtcAccountInfos;

    .local v0, "htcAccountInfos":Lcom/android/internal/telephony/HtcAccountInfos;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_4

    const/4 v5, 0x1

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .local v3, "isRoamingNetwork":Ljava/lang/Boolean;
    :goto_1
    const/16 v5, 0xa

    new-array v4, v5, [Ljava/lang/String;

    .local v4, "result":[Ljava/lang/String;
    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    :goto_2
    aput-object v5, v4, v7

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getNetworkId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    aput-object v5, v4, v7

    const/4 v5, 0x2

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    aput-object v6, v4, v8

    aput-object v6, v4, v9

    const/4 v5, 0x6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    aput-object v6, v4, v5

    aput-object v6, v4, v10

    aput-object v6, v4, v11

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_9

    if-eqz v0, :cond_9

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, v5, v6, v6, v7}, Lcom/android/internal/telephony/HtcAccountInfos;->getAccountInfos(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)[Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, [Lcom/android/internal/telephony/HtcIccType;

    move-object v2, v5

    check-cast v2, [Lcom/android/internal/telephony/HtcIccType;

    .local v2, "iccTypes":[Lcom/android/internal/telephony/HtcIccType;
    if-eqz v2, :cond_9

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v5, v2

    if-ge v1, v5, :cond_8

    aget-object v5, v2, v1

    iget v5, v5, Lcom/android/internal/telephony/HtcIccType;->phoneInUse:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    aget-object v5, v4, v8

    if-nez v5, :cond_0

    aget-object v5, v2, v1

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    aput-object v5, v4, v8

    :cond_0
    aget-object v5, v4, v9

    if-nez v5, :cond_1

    aget-object v5, v2, v1

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType;->knownMnc:Ljava/lang/String;

    aput-object v5, v4, v9

    :cond_1
    aget-object v5, v4, v10

    if-nez v5, :cond_2

    aget-object v5, v2, v1

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    if-eqz v5, :cond_2

    aget-object v5, v2, v1

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    :cond_2
    aget-object v5, v4, v11

    if-nez v5, :cond_3

    aget-object v5, v2, v1

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    aput-object v5, v4, v11

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v1    # "i":I
    .end local v2    # "iccTypes":[Lcom/android/internal/telephony/HtcIccType;
    .end local v3    # "isRoamingNetwork":Ljava/lang/Boolean;
    .end local v4    # "result":[Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_5
    move-object v3, v6

    goto/16 :goto_1

    .restart local v3    # "isRoamingNetwork":Ljava/lang/Boolean;
    .restart local v4    # "result":[Ljava/lang/String;
    :cond_6
    move-object v5, v6

    goto/16 :goto_2

    :cond_7
    move-object v5, v6

    goto/16 :goto_3

    .restart local v1    # "i":I
    .restart local v2    # "iccTypes":[Lcom/android/internal/telephony/HtcIccType;
    :cond_8
    const-string v5, "CdmaSST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCdmaVoiceCampedOperator result:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "i":I
    .end local v2    # "iccTypes":[Lcom/android/internal/telephony/HtcIccType;
    :cond_9
    return-object v4
.end method

.method public getCurrentDataConnectionState()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    return v0
.end method

.method protected getHtcEriServiceState(Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 6
    .param p1, "givenServiceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    move-object v0, p1

    .local v0, "eriSs":Landroid/telephony/ServiceState;
    :goto_0
    const/4 v2, 0x0

    .local v2, "updateByHtcEri":Z
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    .local v1, "mHtcRadio":Lcom/android/internal/telephony/cdma/HtcRadio;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriCarrierId()I

    move-result v5

    if-ltz v5, :cond_2

    move v2, v3

    :cond_0
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriRoamingIndicator()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriRoamingIconMode()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    :goto_2
    return-object v0

    .end local v0    # "eriSs":Landroid/telephony/ServiceState;
    .end local v1    # "mHtcRadio":Lcom/android/internal/telephony/cdma/HtcRadio;
    .end local v2    # "updateByHtcEri":Z
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    goto :goto_0

    .restart local v0    # "eriSs":Landroid/telephony/ServiceState;
    .restart local v1    # "mHtcRadio":Lcom/android/internal/telephony/cdma/HtcRadio;
    .restart local v2    # "updateByHtcEri":Z
    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0, v4}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    :goto_3
    invoke-virtual {v0, v4}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v3}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    goto :goto_3
.end method

.method getImsi()Ljava/lang/String;
    .locals 6

    .prologue
    sget-boolean v4, Lcom/android/internal/telephony/uicc/IccCardProxy;->ENABLED:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x0

    .local v2, "imsi":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getHtcIccCardProxy()Lcom/android/internal/telephony/uicc/IccCardProxy;

    move-result-object v0

    .local v0, "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    if-eqz v0, :cond_0

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .local v1, "iccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getIMSI_fromIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)Ljava/lang/String;

    move-result-object v2

    .end local v1    # "iccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    if-eqz v2, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RUIM imsi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .end local v0    # "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    .end local v2    # "imsi":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;->imsi:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RSInfo imsi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;->imsi:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;

    iget-object v2, v4, Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;->imsi:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object v3

    .local v3, "retrieved_Min":Ljava/lang/String;
    if-eqz v3, :cond_3

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_11_12:Ljava/lang/String;

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI_MCC="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_11_12:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->MDN_PROVISION_CHECKING:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRuimProvisioned:Z

    if-nez v0, :cond_0

    const-string v0, "MDN haven\'t been provisioned"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOperatorInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->getOperatorInfo()Lcom/android/internal/telephony/gsm/OperatorInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    goto :goto_0
.end method

.method getOtasp()I
    .locals 3

    .prologue
    const/4 v0, 0x3

    sget v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SKU_ID:I

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportKddiOtasp()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isKddiOtaspProvision:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isKddiOtaspProvision:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isKddiOtaspProvision:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcCurrentOtaspMode:I

    goto :goto_0
.end method

.method public getPRIVersion()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;

    if-eqz v0, :cond_0

    const-string v0, "gsm.cdma.pri.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Not ready"

    goto :goto_0
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    return-object v0
.end method

.method public getPreferredOnly()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;->pre_only:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;

    iget-object v0, v1, Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;->prl_version:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 62
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGetEventTime:J

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGetEventDate:Ljava/util/Date;

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    if-eqz v4, :cond_1

    const-string v4, "CdmaSST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " CdmaServiceTracker drop event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-boolean v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsTheCurrentActivePhone:Z

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " while being destroyed. Ignoring."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :pswitch_1
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    const-string v4, "CdmaSST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled message with number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleCdmaSubscriptionSource(I)V

    goto :goto_0

    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive EVENT_RUIM_READY IccCardProxy.ENABLED:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/internal/telephony/uicc/IccCardProxy;->ENABLED:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    const-string v4, "Receive EVENT_RUIM_READY and Send Request getCDMASubscription."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->prepareEri()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x37

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRadioSysInfo(Landroid/os/Message;)V

    const-string v4, "Receive EVENT_RUIM_READY and Send Request getCDMASubscription + EVENT_RIL_CDMA_RS_INFO."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updatePhoneObject()V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->requestMCC()V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->requestMNC()V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x37

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRadioSysInfo(Landroid/os/Message;)V

    const-string v4, "Receive EVENT_NV_READY and Send Request getCDMASubscription + EVENT_RIL_CDMA_RS_INFO."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_5
    const-string v4, "CdmaSST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_RADIO_STATE_CHANGED, cm.getRadioState()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",performRadioCommandState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->performRadioCommandState:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v4, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleCdmaSubscriptionSource(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x37

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRadioSysInfo(Landroid/os/Message;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->queueNextSignalStrengthPoll()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v26

    .local v26, "currRadioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcClearCacheWhenSimUnavaliable(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/HtcBuildUtils;->isNFCEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->tryUnlockRadioPower(Ljava/lang/String;)Z

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsFlightModeRequest:Z

    if-nez v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setPowerStateToDesired()V

    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    goto/16 :goto_0

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleImsRadioReset()V

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v4, v5, :cond_8

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->performRadioCommandState:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;->TURNING_ON:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    if-eq v4, v5, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v4, v5, :cond_a

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->performRadioCommandState:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;->TURNING_OFF:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    if-ne v4, v5, :cond_a

    :cond_9
    const-string v4, "CdmaSST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "performRadioCommandState change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;->IDLE:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;->IDLE:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    sput-object v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->performRadioCommandState:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    :cond_a
    const/16 v50, 0x1

    .local v50, "normalSetPowerState":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFlightModeBootup:Ljava/lang/Boolean;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFlightModeBootup:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_e

    const/16 v31, 0x1

    .local v31, "firstRadioPowerIsOn":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    move/from16 v0, v31

    if-eq v0, v4, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    move/from16 v31, v0

    :cond_b
    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object/from16 v0, v26

    if-ne v0, v4, :cond_f

    const/16 v55, 0x1

    .local v55, "radioOffOnBoot":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    move-result-object v59

    .local v59, "seqPower":Lcom/android/internal/telephony/HtcSequentialRadioPower;
    if-eqz v59, :cond_10

    const-string v4, "CdmaSST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Change poweron mode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFlightModeBootup:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v5, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v31

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V

    const/16 v50, 0x0

    :cond_c
    :goto_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFlightModeBootup:Ljava/lang/Boolean;

    .end local v31    # "firstRadioPowerIsOn":Z
    .end local v55    # "radioOffOnBoot":Z
    .end local v59    # "seqPower":Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :cond_d
    if-eqz v50, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->tryUnlockRadioPower(Ljava/lang/String;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setPowerStateToDesired()V

    goto/16 :goto_1

    :cond_e
    const/16 v31, 0x0

    goto/16 :goto_2

    .restart local v31    # "firstRadioPowerIsOn":Z
    :cond_f
    const/16 v55, 0x0

    goto :goto_3

    .restart local v55    # "radioOffOnBoot":Z
    .restart local v59    # "seqPower":Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :cond_10
    move/from16 v0, v31

    move/from16 v1, v55

    if-ne v0, v1, :cond_c

    const-string v4, "CdmaSST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Change normal poweron mode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFlightModeBootup:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x0

    move/from16 v0, v55

    invoke-interface {v4, v0, v5}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    const/16 v50, 0x0

    goto :goto_4

    .end local v26    # "currRadioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .end local v31    # "firstRadioPowerIsOn":Z
    .end local v50    # "normalSetPowerState":Z
    .end local v55    # "radioOffOnBoot":Z
    .end local v59    # "seqPower":Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .local v22, "ar":Landroid/os/AsyncResult;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto/16 :goto_0

    .end local v22    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .restart local v22    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_19

    const/16 v60, 0x0

    .local v60, "states":[Ljava/lang/String;
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/internal/telephony/dataconnection/RegStateResponse;

    if-eqz v4, :cond_1a

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/dataconnection/RegStateResponse;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/RegStateResponse;->getRecord(I)[Ljava/lang/String;

    move-result-object v60

    :goto_5
    const/4 v9, -0x1

    .local v9, "baseStationId":I
    const v10, 0x7fffffff

    .local v10, "baseStationLatitude":I
    const v11, 0x7fffffff

    .local v11, "baseStationLongitude":I
    const/4 v12, -0x1

    .local v12, "systemId":I
    const/4 v13, -0x1

    .local v13, "networkId":I
    move-object/from16 v0, v60

    array-length v4, v0

    const/16 v5, 0x9

    if-le v4, v5, :cond_18

    const/4 v4, 0x4

    :try_start_0
    aget-object v4, v60, v4

    if-eqz v4, :cond_11

    const/4 v4, 0x4

    aget-object v4, v60, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    :cond_11
    const/4 v4, 0x5

    aget-object v4, v60, v4

    if-eqz v4, :cond_12

    const/4 v4, 0x5

    aget-object v4, v60, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    :cond_12
    const/4 v4, 0x6

    aget-object v4, v60, v4

    if-eqz v4, :cond_13

    const/4 v4, 0x6

    aget-object v4, v60, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    :cond_13
    if-nez v10, :cond_14

    if-nez v11, :cond_14

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    :cond_14
    const/16 v4, 0x8

    aget-object v4, v60, v4

    if-eqz v4, :cond_15

    const/16 v4, 0x8

    aget-object v4, v60, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    :cond_15
    const/16 v4, 0x9

    aget-object v4, v60, v4

    if-eqz v4, :cond_16

    const/16 v4, 0x9

    aget-object v4, v60, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    :cond_16
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v4, :cond_18

    const/16 v56, 0x4

    .local v56, "registrationState":I
    const/4 v4, 0x0

    :try_start_1
    aget-object v4, v60, v4

    if-eqz v4, :cond_17

    const/4 v4, 0x0

    aget-object v4, v60, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v56

    :cond_17
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeToServiceState(I)I

    move-result v8

    .local v8, "nitzServiceState":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGetEventTime:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGetEventDate:Ljava/util/Date;

    invoke-direct/range {v4 .. v13}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;-><init>(JLjava/util/Date;IIIIII)V

    invoke-virtual {v14, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->updateLocation(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;)Ljava/lang/String;

    move-result-object v43

    .local v43, "nitzIso":Ljava/lang/String;
    if-eqz v43, :cond_18

    packed-switch v8, :pswitch_data_1

    .end local v8    # "nitzServiceState":I
    .end local v43    # "nitzIso":Ljava/lang/String;
    .end local v56    # "registrationState":I
    :cond_18
    :goto_8
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v13

    invoke-virtual/range {v14 .. v19}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyLocationChanged()V

    .end local v9    # "baseStationId":I
    .end local v10    # "baseStationLatitude":I
    .end local v11    # "baseStationLongitude":I
    .end local v12    # "systemId":I
    .end local v13    # "networkId":I
    .end local v60    # "states":[Ljava/lang/String;
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->disableSingleLocationUpdate()V

    goto/16 :goto_0

    .restart local v60    # "states":[Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object/from16 v60, v4

    check-cast v60, [Ljava/lang/String;

    goto/16 :goto_5

    .restart local v9    # "baseStationId":I
    .restart local v10    # "baseStationLatitude":I
    .restart local v11    # "baseStationLongitude":I
    .restart local v12    # "systemId":I
    .restart local v13    # "networkId":I
    :catch_0
    move-exception v30

    .local v30, "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error parsing cell location data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_6

    .end local v30    # "ex":Ljava/lang/NumberFormatException;
    .restart local v8    # "nitzServiceState":I
    .restart local v43    # "nitzIso":Ljava/lang/String;
    .restart local v56    # "registrationState":I
    :pswitch_a
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->fixTimeZone(Ljava/lang/String;I)V

    goto :goto_8

    .end local v8    # "nitzServiceState":I
    .end local v9    # "baseStationId":I
    .end local v10    # "baseStationLatitude":I
    .end local v11    # "baseStationLongitude":I
    .end local v12    # "systemId":I
    .end local v13    # "networkId":I
    .end local v22    # "ar":Landroid/os/AsyncResult;
    .end local v43    # "nitzIso":Ljava/lang/String;
    .end local v56    # "registrationState":I
    .end local v60    # "states":[Ljava/lang/String;
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .restart local v22    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .end local v22    # "ar":Landroid/os/AsyncResult;
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .restart local v22    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    new-instance v32, Ljava/text/SimpleDateFormat;

    const-string v4, "dd/MM/yyyy hh:mm:ss.SSS"

    move-object/from16 v0, v32

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v32, "formatter":Ljava/text/DateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v51

    .local v51, "now":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v24

    .local v24, "calendar":Ljava/util/Calendar;
    move-object/from16 v0, v24

    move-wide/from16 v1, v51

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object/from16 v25, v4

    check-cast v25, [Ljava/lang/String;

    .local v25, "cdmaSubscription":[Ljava/lang/String;
    if-eqz v25, :cond_25

    move-object/from16 v0, v25

    array-length v4, v0

    const/4 v5, 0x4

    if-lt v4, v5, :cond_25

    const/4 v4, 0x0

    aget-object v4, v25, v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v4, v25, v4

    const/4 v5, 0x2

    aget-object v5, v25, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->parseSidNid(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x3

    aget-object v4, v25, v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    move-object/from16 v0, v25

    array-length v4, v0

    const/4 v5, 0x5

    if-lt v4, v5, :cond_22

    const/4 v4, 0x4

    aget-object v4, v25, v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1c

    :cond_1b
    const-string v4, "CdmaSST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No PRL version in RIL_CDMA_SUBSCRIPTION : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    :cond_1c
    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get last GET_CDMA_SUBSCRIPTION MDN response on:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->DBG_GET_MDN:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    if-nez v4, :cond_23

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GET_CDMA_SUBSCRIPTION: MDN=null on"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->DBG_GET_MDN:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    :goto_a
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateOtaspState()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaVoiceMail:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaVoiceMail:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->setNumber(Ljava/lang/String;I)V

    :cond_1d
    sget-boolean v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isReportImsiFromCdma()Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v4

    if-eqz v4, :cond_1f

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v4

    const-string v5, "cdma_disable_nv_cdma_if_no_uicc_lte"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_24

    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v4, v5, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_NOT_INITIALIZED:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v4, v5, :cond_24

    :cond_20
    const-string v4, "RUIM card projects and K2PLC_MPCS SIM not send INTENT_VALUE_ICC_IMSI in CARD_ABSENT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_21
    :goto_b
    sget-boolean v4, Lcom/android/internal/telephony/uicc/IccCardProxy;->ENABLED:Z

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyIMSIReady()V

    goto/16 :goto_0

    :cond_22
    const-string v4, "CdmaSST"

    const-string v5, "No PRL version in RIL_CDMA_SUBSCRIPTION"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GET_CDMA_SUBSCRIPTION: MDN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->DBG_GET_MDN:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/IccCardProxy;

    const-string v5, "IMSI"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get last GET_CDMA_SUBSCRIPTION MDN response: error parsing cdmaSubscription params num="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->DBG_GET_MDN:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GET_CDMA_SUBSCRIPTION: error parsing cdmaSubscription params num="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v22    # "ar":Landroid/os/AsyncResult;
    .end local v24    # "calendar":Ljava/util/Calendar;
    .end local v25    # "cdmaSubscription":[Ljava/lang/String;
    .end local v32    # "formatter":Ljava/text/DateFormat;
    .end local v51    # "now":J
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .restart local v22    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v46, v4, v5

    check-cast v46, Ljava/lang/String;

    .local v46, "nitzString":Ljava/lang/String;
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v44

    .local v44, "nitzReceiveTime":J
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-wide/from16 v2, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    goto/16 :goto_0

    .end local v22    # "ar":Landroid/os/AsyncResult;
    .end local v44    # "nitzReceiveTime":J
    .end local v46    # "nitzString":Ljava/lang/String;
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .restart local v22    # "ar":Landroid/os/AsyncResult;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDontPollSignalStrength:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    goto/16 :goto_0

    .end local v22    # "ar":Landroid/os/AsyncResult;
    :pswitch_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_RUIM_RECORDS_LOADED: what="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updatePhoneObject()V

    sget-boolean v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRuimLoaded:Z

    if-nez v4, :cond_29

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRuimLoaded:Z

    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v4, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    instance-of v4, v4, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v4, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast v4, Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorCatch:Ljava/lang/String;

    :cond_26
    sget-boolean v4, Lcom/android/internal/telephony/uicc/IccCardProxy;->ENABLED:Z

    if-eqz v4, :cond_28

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getHtcIccCardProxy()Lcom/android/internal/telephony/uicc/IccCardProxy;

    move-result-object v33

    .local v33, "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    sget-boolean v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    if-nez v4, :cond_28

    if-eqz v33, :cond_28

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v34

    .local v34, "iccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getIMSI_fromIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_28

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isReportImsiFromCdma()Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/IccCardProxy;

    const-string v5, "IMSI"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .end local v33    # "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    .end local v34    # "iccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateNetworkNameDisplay()V

    goto/16 :goto_0

    :cond_29
    const-string v4, "Receive RUIM refresh reload"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x37

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRadioSysInfo(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    goto/16 :goto_c

    :pswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .restart local v22    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x1f

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v22    # "ar":Landroid/os/AsyncResult;
    :pswitch_12
    const-string v4, "[CdmaServiceStateTracker] ERI file has been loaded, repolling."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    goto/16 :goto_0

    :pswitch_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .restart local v22    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object/from16 v37, v4

    check-cast v37, [I

    .local v37, "ints":[I
    const/4 v4, 0x0

    aget v54, v37, v4

    .local v54, "otaStatus":I
    const/16 v4, 0x8

    move/from16 v0, v54

    if-eq v0, v4, :cond_2a

    const/16 v4, 0xa

    move/from16 v0, v54

    if-ne v0, v4, :cond_0

    :cond_2a
    const-string v4, "EVENT_OTA_PROVISION_STATUS_CHANGE: Complete, Reload MDN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v22    # "ar":Landroid/os/AsyncResult;
    .end local v37    # "ints":[I
    .end local v54    # "otaStatus":I
    :pswitch_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .restart local v22    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object/from16 v37, v4

    check-cast v37, [I

    .restart local v37    # "ints":[I
    const/4 v4, 0x0

    aget v4, v37, v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    goto/16 :goto_0

    .end local v22    # "ar":Landroid/os/AsyncResult;
    .end local v37    # "ints":[I
    :pswitch_15
    sget-boolean v4, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_CT_MCCMNC_CHANGE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMccMncChange:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMccMncChange:Z

    goto/16 :goto_0

    :pswitch_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .restart local v22    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_2b

    const-string v4, "EVENT_RIL_CDMA_RS_INFO:CDMA Info ar.result == null."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2b
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2d

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_RIL_CDMA_RS_INFO:version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mobile_sw_version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;->mobile_sw_version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " esn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;->esn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " prl:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;->prl_version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pre_only:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;

    iget v5, v5, Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;->pre_only:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " imsi:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;->imsi:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " customer_id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;->customer_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;->pri_version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pri2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;->pri_version_2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v39

    .local v39, "mCc":Ljava/lang/String;
    const-string v4, "gsm.cdma.nv.mcc"

    move-object/from16 v0, v39

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "gsm.cdma.nv.mnc"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;->imsi:Ljava/lang/String;

    const/4 v6, 0x3

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "gsm.cdma.nv.home.country"

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v39    # "mCc":Ljava/lang/String;
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;

    iget-object v0, v4, Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;->pri_version:Ljava/lang/String;

    move-object/from16 v61, v0

    .local v61, "unifiedPRIversion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;->pri_version_2:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v61

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;->pri_version_2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    :cond_2c
    const-string v4, "gsm.cdma.pri.version"

    move-object/from16 v0, v61

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v61    # "unifiedPRIversion":Ljava/lang/String;
    :catch_1
    move-exception v29

    .local v29, "e":Ljava/lang/Exception;
    const-string v4, "CdmaSST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .end local v29    # "e":Ljava/lang/Exception;
    :cond_2d
    const-string v4, "EVENT_RIL_CDMA_RS_INFO:No this section!!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v22    # "ar":Landroid/os/AsyncResult;
    :pswitch_17
    const-string v58, ""

    .local v58, "retrieved_IMSI_MCC":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .restart local v22    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_2f

    const-string v4, "EVENT_RESPONSE_MCC:ar.result == null."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    :goto_e
    sput-object v58, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_11_12:Ljava/lang/String;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_11_12:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    sget-boolean v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_2e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isReportImsiFromCdma()Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/IccCardProxy;

    const-string v5, "IMSI"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2f
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_32

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->validateStateOfNv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .local v42, "nValue":Ljava/lang/String;
    const-string v4, ""

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xe

    if-lt v4, v5, :cond_30

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v41

    .local v41, "nCommand":Ljava/lang/String;
    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    .local v35, "id":Ljava/lang/String;
    const/16 v4, 0x8

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .local v21, "NvItemData":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .local v20, "NAM":Ljava/lang/String;
    const/4 v4, 0x2

    const/4 v5, 0x6

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .local v47, "nonDecode":Ljava/lang/String;
    const/16 v4, 0x10

    move-object/from16 v0, v47

    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v48

    .local v48, "nonDecodeVal":J
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/16 v5, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->DecodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    .local v27, "decodeVal":J
    invoke-static/range {v27 .. v28}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v58

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_RESPONSE_MCC:IMSI_MCC:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v58

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    .end local v20    # "NAM":Ljava/lang/String;
    .end local v21    # "NvItemData":Ljava/lang/String;
    .end local v27    # "decodeVal":J
    .end local v35    # "id":Ljava/lang/String;
    .end local v41    # "nCommand":Ljava/lang/String;
    .end local v47    # "nonDecode":Ljava/lang/String;
    .end local v48    # "nonDecodeVal":J
    :cond_30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_RESPONSE_MNC:IMSI_MCC: unexpect nCommand length:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_RESPONSE_MCC:error code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    .end local v42    # "nValue":Ljava/lang/String;
    :cond_32
    const-string v4, "EVENT_RESPONSE_MCC:No this section!!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    .end local v22    # "ar":Landroid/os/AsyncResult;
    .end local v58    # "retrieved_IMSI_MCC":Ljava/lang/String;
    :pswitch_18
    const-string v57, ""

    .local v57, "retrieved_IMSI_11_12":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .restart local v22    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_34

    const-string v4, "EVENT_RESPONSE_MNC:ar.result == null."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    :goto_f
    sput-object v57, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_11_12:Ljava/lang/String;

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    sget-boolean v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_33

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isReportImsiFromCdma()Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/IccCardProxy;

    const-string v5, "IMSI"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_34
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_37

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->validateStateOfNv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .restart local v42    # "nValue":Ljava/lang/String;
    const-string v4, ""

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xc

    if-lt v4, v5, :cond_35

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v41

    .restart local v41    # "nCommand":Ljava/lang/String;
    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    .restart local v35    # "id":Ljava/lang/String;
    const/16 v4, 0x8

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .restart local v21    # "NvItemData":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "NAM":Ljava/lang/String;
    const/4 v4, 0x2

    const/4 v5, 0x4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .restart local v47    # "nonDecode":Ljava/lang/String;
    const/16 v4, 0x10

    move-object/from16 v0, v47

    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v48

    .restart local v48    # "nonDecodeVal":J
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/16 v5, 0x2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->DecodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    .restart local v27    # "decodeVal":J
    invoke-static/range {v27 .. v28}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v57

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_RESPONSE_MNC:IMSI_11_12:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_f

    .end local v20    # "NAM":Ljava/lang/String;
    .end local v21    # "NvItemData":Ljava/lang/String;
    .end local v27    # "decodeVal":J
    .end local v35    # "id":Ljava/lang/String;
    .end local v41    # "nCommand":Ljava/lang/String;
    .end local v47    # "nonDecode":Ljava/lang/String;
    .end local v48    # "nonDecodeVal":J
    :cond_35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_RESPONSE_MNC:IMSI_11_12: unexpect nCommand length:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_RESPONSE_MNC:error code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_f

    .end local v42    # "nValue":Ljava/lang/String;
    :cond_37
    const-string v4, "EVENT_RESPONSE_MNC:No this section!!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_f

    .end local v22    # "ar":Landroid/os/AsyncResult;
    .end local v57    # "retrieved_IMSI_11_12":Ljava/lang/String;
    :pswitch_19
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleIfLanguageChanged()V

    goto/16 :goto_0

    :pswitch_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .restart local v22    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x37

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRadioSysInfo(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaVoiceMail:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaVoiceMail:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->setNumberToDefault(I)V

    goto/16 :goto_0

    .end local v22    # "ar":Landroid/os/AsyncResult;
    :pswitch_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setOperatorProperties()V

    const-string v4, "handleMessage: EVENT_POLL_STATE_DATA"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .restart local v22    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object/from16 v38, v4

    check-cast v38, [I

    .local v38, "isSIMRemoved":[I
    const-string v5, "CdmaSST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event EVENT_SIM_HOT_SWAP_STATUS Received - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v38, :cond_38

    move-object/from16 v0, v38

    array-length v4, v0

    :goto_10
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v38, :cond_0

    move-object/from16 v0, v38

    array-length v4, v0

    if-lez v4, :cond_0

    const/4 v4, 0x0

    aget v4, v38, v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorCatch:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcClearCacheWhenSimUnavaliable(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto/16 :goto_0

    :cond_38
    const/4 v4, -0x1

    goto :goto_10

    .end local v22    # "ar":Landroid/os/AsyncResult;
    .end local v38    # "isSIMRemoved":[I
    :pswitch_1d
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_39

    const-string v4, "CdmaSST"

    const-string v5, "receive EVENT_KDDI_OTASP for kddi otasp"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .restart local v22    # "ar":Landroid/os/AsyncResult;
    if-eqz v22, :cond_3e

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_3d

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    const/4 v5, 0x0

    aget v53, v4, v5

    .local v53, "otaReq":I
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3a

    const-string v5, "CdmaSST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "kddi otasp required: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v4, 0x1

    move/from16 v0, v53

    if-ne v0, v4, :cond_3b

    const-string v4, "true"

    :goto_11
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    const/4 v4, 0x1

    move/from16 v0, v53

    if-ne v0, v4, :cond_3c

    :try_start_3
    const-string v4, "CdmaSST"

    const-string v5, "launch otasp Activity"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v36, Landroid/content/Intent;

    const-string v4, "com.htc.android.uim.otasp.start"

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v36, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.MODIFY_PHONE_STATE"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isKddiOtaspProvision:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .end local v36    # "intent":Landroid/content/Intent;
    :goto_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateOtaspState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isKddiOtaspProvision:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateOtaspState()V

    goto/16 :goto_0

    :cond_3b
    const-string v4, "false"

    goto :goto_11

    :catch_2
    move-exception v29

    .restart local v29    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12

    .end local v29    # "e":Ljava/lang/Exception;
    :cond_3c
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isKddiOtaspProvision:Z

    goto :goto_12

    .end local v53    # "otaReq":I
    :cond_3d
    const-string v4, "CdmaSST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive EVENT_KDDI_OTASP exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3e
    const-string v4, "CdmaSST"

    const-string v5, "receive EVENT_KDDI_OTASP null result"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v22    # "ar":Landroid/os/AsyncResult;
    :pswitch_1e
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3f

    const-string v4, "CdmaSST"

    const-string v5, "receive EVENT_KDDI_SET_OTASP_STATUS_DONE for kddi otsap"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .restart local v22    # "ar":Landroid/os/AsyncResult;
    if-eqz v22, :cond_41

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_40

    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const-string v4, "CdmaSST"

    const-string v5, "kddi otsap required"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_40
    const-string v4, "CdmaSST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive EVENT_KDDI_SET_OTASP_STATUS_DONE exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_41
    const-string v4, "CdmaSST"

    const-string v5, "receive EVENT_KDDI_SET_OTASP_STATUS_DONE null result"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v22    # "ar":Landroid/os/AsyncResult;
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v33

    check-cast v33, Lcom/android/internal/telephony/uicc/IccCardProxy;

    .restart local v33    # "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    if-eqz v33, :cond_0

    const/16 v4, 0x1b

    const/4 v5, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0

    .end local v33    # "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    :pswitch_20
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .restart local v22    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object/from16 v40, v4

    check-cast v40, [I

    .local v40, "modemRestart":[I
    if-eqz v40, :cond_0

    move-object/from16 v0, v40

    array-length v4, v0

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    const/16 v4, 0x47

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    if-ne v4, v5, :cond_45

    new-instance v23, Landroid/content/Intent;

    const-string v4, "com.htc.android.ModemLoggingNotify"

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v23, "bc":Landroid/content/Intent;
    const-string v4, "Status"

    const/4 v5, 0x0

    aget v5, v40, v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "phone_type"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneType()I

    move-result v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "phone_slot"

    const/16 v5, 0xa

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v4, :cond_46

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorCatch:Ljava/lang/String;

    if-eqz v4, :cond_42

    const-string v4, "iccOperator"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorCatch:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_42
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v4, :cond_44

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_43

    const-string v4, "networkOperator"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_43
    const-string v4, "voiceRadioTechnology"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "dataRegState"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .end local v23    # "bc":Landroid/content/Intent;
    :cond_45
    const/4 v4, 0x0

    aget v4, v40, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mModemResetPeriod:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v5, "gsm.modem.reset.period"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x48

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/32 v5, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .restart local v23    # "bc":Landroid/content/Intent;
    :cond_46
    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    if-eqz v4, :cond_42

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_42

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_11_12:Ljava/lang/String;

    if-eqz v4, :cond_42

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_11_12:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_42

    const-string v4, "iccOperator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_11_12:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_13

    .end local v22    # "ar":Landroid/os/AsyncResult;
    .end local v23    # "bc":Landroid/content/Intent;
    .end local v40    # "modemRestart":[I
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v5, "sys.under_silent_reset"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mModemResetPeriod:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .restart local v9    # "baseStationId":I
    .restart local v10    # "baseStationLatitude":I
    .restart local v11    # "baseStationLongitude":I
    .restart local v12    # "systemId":I
    .restart local v13    # "networkId":I
    .restart local v22    # "ar":Landroid/os/AsyncResult;
    .restart local v56    # "registrationState":I
    .restart local v60    # "states":[Ljava/lang/String;
    :catch_3
    move-exception v4

    goto/16 :goto_7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_7
        :pswitch_1
        :pswitch_b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_11
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_b
        :pswitch_b
        :pswitch_3
        :pswitch_10
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_8
        :pswitch_1
        :pswitch_1
        :pswitch_c
        :pswitch_4
        :pswitch_12
        :pswitch_13
        :pswitch_1
        :pswitch_2
        :pswitch_14
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_15
        :pswitch_1
        :pswitch_19
        :pswitch_1
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1a
        :pswitch_0
        :pswitch_1
        :pswitch_1b
        :pswitch_1d
        :pswitch_1e
        :pswitch_1c
        :pswitch_1
        :pswitch_1c
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_1
        :pswitch_1
        :pswitch_20
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 12
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v6, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    if-eq v6, v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_c

    const/4 v1, 0x0

    .local v1, "err":Lcom/android/internal/telephony/CommandException$Error;
    iget-object v6, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v6, v6, Lcom/android/internal/telephony/CommandException;

    if-eqz v6, :cond_2

    iget-object v6, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    :cond_2
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v6, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cancelPollState()V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cancelPollState()V

    goto :goto_0

    :cond_4
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v1, v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handlePollStateResult: RIL returned an error where it must succeed"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    .end local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    aget v9, v6, v8

    add-int/lit8 v9, v9, -0x1

    aput v9, v6, v8

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    aget v6, v6, v8

    if-nez v6, :cond_0

    const/4 v4, 0x0

    .local v4, "namMatch":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSidsAllZeros()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isHomeSid(I)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v4, 0x1

    :cond_6
    sget v6, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SKU_ID:I

    const/16 v9, 0xd

    if-ne v6, v9, :cond_7

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    if-nez v6, :cond_7

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataRoaming:Z

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v6

    const/16 v9, 0xe

    if-ne v6, v9, :cond_d

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    :cond_7
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    :goto_3
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v6, v9}, Landroid/telephony/ServiceState;->setCdmaDefaultRoamingIndicator(I)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v6, v9}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    const/4 v3, 0x1

    .local v3, "isPrlLoaded":Z
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v3, 0x0

    :cond_8
    if-eqz v3, :cond_9

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v6

    if-nez v6, :cond_f

    :cond_9
    const-string v6, "Turn off roaming indicator if !isPrlLoaded or voice RAT is unknown"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v7}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    :cond_a
    :goto_4
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v5

    .local v5, "roamingIndicator":I
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getHtcEriServiceState(Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .local v0, "eriIconInd":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Set CDMA Roaming Indicator to: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ". mCdmaRoaming = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", isPrlLoaded = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ". namMatch = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " , mIsInPrl = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", mRoamingIndicator = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", eriIconInd = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", mDefaultRoamingIndicator= "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v6

    const-string v9, "cdma_disable_nv_cdma_if_no_uicc_lte"

    invoke-static {v6, v9, v8}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v6

    sget-object v8, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v6, v8, :cond_b

    const-string v6, "MPCS SIM set ECC only service in ABSENT"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v7}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v11}, Landroid/telephony/ServiceState;->setState(I)V

    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    .end local v0    # "eriIconInd":I
    .end local v3    # "isPrlLoaded":Z
    .end local v4    # "namMatch":Z
    .end local v5    # "roamingIndicator":I
    :cond_c
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handlePollStateResult: Exception while polling service state. Probably malformed RIL response."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v4    # "namMatch":Z
    :cond_d
    move v6, v8

    goto/16 :goto_2

    :cond_e
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    invoke-virtual {v6, v9}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    goto/16 :goto_3

    .restart local v3    # "isPrlLoaded":Z
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSidsAllZeros()Z

    move-result v6

    if-nez v6, :cond_a

    if-nez v4, :cond_10

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v6, v9}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_4

    :cond_10
    if-eqz v4, :cond_11

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    if-nez v6, :cond_11

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v11}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_4

    :cond_11
    if-nez v4, :cond_12

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v6, v9}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_4

    :cond_12
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    if-gt v6, v11, :cond_13

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v7}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_4

    :cond_13
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v6, v9}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_4
.end method

.method protected handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    .locals 44
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    sparse-switch p1, :sswitch_data_0

    const-string v2, "handlePollStateResultMessage: RIL response handle in wrong phone! Expected CDMA RIL request and get GSM RIL request."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v42, v2

    check-cast v42, [Ljava/lang/String;

    .local v42, "states":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlePollStateResultMessage: EVENT_POLL_STATE_GPRS states.length="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v42

    array-length v8, v0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " states="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    const/16 v38, 0x4

    .local v38, "regState":I
    const/16 v26, 0x0

    .local v26, "dataRadioTechnology":I
    move-object/from16 v0, v42

    array-length v2, v0

    if-lez v2, :cond_2

    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v42, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    move-object/from16 v0, v42

    array-length v2, v0

    const/4 v8, 0x4

    if-lt v2, v8, :cond_1

    const/4 v2, 0x3

    aget-object v2, v42, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    aget-object v2, v42, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v26

    :cond_1
    :goto_1
    sget-boolean v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->CDMA_LTE_ENABLED:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, v42

    array-length v2, v0

    const/16 v8, 0xa

    if-lt v2, v8, :cond_2

    const/16 v35, 0x0

    .local v35, "operatorNumeric":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v35

    const/4 v2, 0x0

    const/4 v8, 0x3

    move-object/from16 v0, v35

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .local v3, "mcc":I
    :goto_2
    const/4 v2, 0x3

    :try_start_2
    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v4

    .local v4, "mnc":I
    :goto_3
    const/4 v2, 0x6

    :try_start_3
    aget-object v2, v42, v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result v7

    .local v7, "tac":I
    :goto_4
    const/4 v2, 0x7

    :try_start_4
    aget-object v2, v42, v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result v6

    .local v6, "pci":I
    :goto_5
    const/16 v2, 0x8

    :try_start_5
    aget-object v2, v42, v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-result v5

    .local v5, "eci":I
    :goto_6
    const/16 v2, 0x9

    :try_start_6
    aget-object v2, v42, v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-result v24

    .local v24, "csgid":I
    :goto_7
    new-instance v2, Landroid/telephony/CellIdentityLte;

    invoke-direct/range {v2 .. v7}, Landroid/telephony/CellIdentityLte;-><init>(IIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .end local v3    # "mcc":I
    .end local v4    # "mnc":I
    .end local v5    # "eci":I
    .end local v6    # "pci":I
    .end local v7    # "tac":I
    .end local v24    # "csgid":I
    .end local v35    # "operatorNumeric":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeToServiceState(I)I

    move-result v27

    .local v27, "dataRegState":I
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataRoaming:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataRoaming:Z

    invoke-virtual {v2, v8}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlPollStateResultMessage: cdma setDataRegState="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " regState="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v38

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " dataRadioTechnology="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v27    # "dataRegState":I
    :catch_0
    move-exception v30

    .local v30, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlePollStateResultMessage: error parsing GprsRegistrationState: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v30    # "ex":Ljava/lang/NumberFormatException;
    .restart local v35    # "operatorNumeric":Ljava/lang/String;
    :catch_1
    move-exception v29

    .local v29, "e":Ljava/lang/Exception;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v35

    const/4 v2, 0x0

    const/4 v8, 0x3

    move-object/from16 v0, v35

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-result v3

    .restart local v3    # "mcc":I
    goto/16 :goto_2

    .end local v3    # "mcc":I
    :catch_2
    move-exception v30

    .local v30, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlePollStateResultMessage: bad mcc operatorNumeric="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " ex="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    const-string v35, ""

    const v3, 0x7fffffff

    .restart local v3    # "mcc":I
    goto/16 :goto_2

    .end local v29    # "e":Ljava/lang/Exception;
    .end local v30    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v29

    .restart local v29    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlePollStateResultMessage: bad mnc operatorNumeric="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " e="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    const v4, 0x7fffffff

    .restart local v4    # "mnc":I
    goto/16 :goto_3

    .end local v29    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v29

    .restart local v29    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlePollStateResultMessage: bad tac states[6]="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v8, 0x6

    aget-object v8, v42, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " e="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    const v7, 0x7fffffff

    .restart local v7    # "tac":I
    goto/16 :goto_4

    .end local v29    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v29

    .restart local v29    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlePollStateResultMessage: bad pci states[7]="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v8, 0x7

    aget-object v8, v42, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " e="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    const v6, 0x7fffffff

    .restart local v6    # "pci":I
    goto/16 :goto_5

    .end local v29    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v29

    .restart local v29    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlePollStateResultMessage: bad eci states[8]="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v8, 0x8

    aget-object v8, v42, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " e="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    const v5, 0x7fffffff

    .restart local v5    # "eci":I
    goto/16 :goto_6

    .end local v29    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v29

    .restart local v29    # "e":Ljava/lang/Exception;
    const v24, 0x7fffffff

    .restart local v24    # "csgid":I
    goto/16 :goto_7

    .end local v3    # "mcc":I
    .end local v4    # "mnc":I
    .end local v5    # "eci":I
    .end local v6    # "pci":I
    .end local v7    # "tac":I
    .end local v24    # "csgid":I
    .end local v26    # "dataRadioTechnology":I
    .end local v29    # "e":Ljava/lang/Exception;
    .end local v35    # "operatorNumeric":Ljava/lang/String;
    .end local v38    # "regState":I
    .end local v42    # "states":[Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/dataconnection/RegStateResponse;

    if-eqz v2, :cond_12

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/dataconnection/RegStateResponse;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/dataconnection/RegStateResponse;->getRecord(I)[Ljava/lang/String;

    move-result-object v42

    .restart local v42    # "states":[Ljava/lang/String;
    :goto_8
    const/16 v39, 0x4

    .local v39, "registrationState":I
    const/16 v36, -0x1

    .local v36, "radioTechnology":I
    const/4 v13, -0x1

    .local v13, "baseStationId":I
    const v14, 0x7fffffff

    .local v14, "baseStationLatitude":I
    const v15, 0x7fffffff

    .local v15, "baseStationLongitude":I
    const/16 v25, 0x0

    .local v25, "cssIndicator":I
    const/16 v16, 0x0

    .local v16, "systemId":I
    const/16 v17, 0x0

    .local v17, "networkId":I
    const/16 v40, -0x1

    .local v40, "roamingIndicator":I
    const/16 v43, 0x0

    .local v43, "systemIsInPrl":I
    const/16 v28, 0x0

    .local v28, "defaultRoamingIndicator":I
    const/16 v37, 0x0

    .local v37, "reasonForDenial":I
    move-object/from16 v0, v42

    array-length v2, v0

    const/16 v8, 0xe

    if-lt v2, v8, :cond_13

    const/4 v2, 0x0

    :try_start_8
    aget-object v2, v42, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    aget-object v2, v42, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    :cond_3
    const/4 v2, 0x3

    aget-object v2, v42, v2

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    aget-object v2, v42, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    :cond_4
    const/4 v2, 0x4

    aget-object v2, v42, v2

    if-eqz v2, :cond_5

    const/4 v2, 0x4

    aget-object v2, v42, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    :cond_5
    const/4 v2, 0x5

    aget-object v2, v42, v2

    if-eqz v2, :cond_6

    const/4 v2, 0x5

    aget-object v2, v42, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    :cond_6
    const/4 v2, 0x6

    aget-object v2, v42, v2

    if-eqz v2, :cond_7

    const/4 v2, 0x6

    aget-object v2, v42, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    :cond_7
    if-nez v14, :cond_8

    if-nez v15, :cond_8

    const v14, 0x7fffffff

    const v15, 0x7fffffff

    :cond_8
    const/4 v2, 0x7

    aget-object v2, v42, v2

    if-eqz v2, :cond_9

    const/4 v2, 0x7

    aget-object v2, v42, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    :cond_9
    const/16 v2, 0x8

    aget-object v2, v42, v2

    if-eqz v2, :cond_a

    const/16 v2, 0x8

    aget-object v2, v42, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    :cond_a
    const/16 v2, 0x9

    aget-object v2, v42, v2

    if-eqz v2, :cond_b

    const/16 v2, 0x9

    aget-object v2, v42, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    :cond_b
    const/16 v2, 0xa

    aget-object v2, v42, v2

    if-eqz v2, :cond_c

    const/16 v2, 0xa

    aget-object v2, v42, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    :cond_c
    const/16 v2, 0xb

    aget-object v2, v42, v2

    if-eqz v2, :cond_d

    const/16 v2, 0xb

    aget-object v2, v42, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    :cond_d
    const/16 v2, 0xc

    aget-object v2, v42, v2

    if-eqz v2, :cond_e

    const/16 v2, 0xc

    aget-object v2, v42, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    :cond_e
    const/16 v2, 0xd

    aget-object v2, v42, v2

    if-eqz v2, :cond_f

    const/16 v2, 0xd

    aget-object v2, v42, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v37

    :cond_f
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeToServiceState(I)I

    move-result v12

    .local v12, "nitzServiceState":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    new-instance v8, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGetEventTime:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGetEventDate:Ljava/util/Date;

    invoke-direct/range {v8 .. v17}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;-><init>(JLjava/util/Date;IIIIII)V

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->updateRegState(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;)Ljava/lang/String;

    move-result-object v32

    .local v32, "nitzIso":Ljava/lang/String;
    if-eqz v32, :cond_10

    packed-switch v12, :pswitch_data_0

    .end local v12    # "nitzServiceState":I
    .end local v32    # "nitzIso":Ljava/lang/String;
    :cond_10
    :goto_a
    :pswitch_0
    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v2

    if-eqz v2, :cond_14

    const/16 v2, 0xa

    aget-object v2, v42, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isRoamIndForHomeSystem(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v2, 0x1

    :goto_b
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeToServiceState(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/telephony/ServiceState;->setState(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move/from16 v0, v36

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->setCssIndicator(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/telephony/ServiceState;->setSystemAndNetworkId(II)V

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    if-nez v43, :cond_15

    const/4 v2, 0x0

    :goto_c
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v18, v0

    move/from16 v19, v13

    move/from16 v20, v14

    move/from16 v21, v15

    move/from16 v22, v16

    move/from16 v23, v17

    invoke-virtual/range {v18 .. v23}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    if-nez v37, :cond_16

    const-string v2, "General"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    :goto_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    const/4 v8, 0x3

    if-ne v2, v8, :cond_11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Registration denied, "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    const/16 v9, 0xfe

    if-ne v2, v9, :cond_18

    const/4 v2, 0x1

    :goto_e
    invoke-virtual {v8, v2}, Landroid/telephony/ServiceState;->htcSetCdmaRadioPowerSaveMode(Z)V

    goto/16 :goto_0

    .end local v13    # "baseStationId":I
    .end local v14    # "baseStationLatitude":I
    .end local v15    # "baseStationLongitude":I
    .end local v16    # "systemId":I
    .end local v17    # "networkId":I
    .end local v25    # "cssIndicator":I
    .end local v28    # "defaultRoamingIndicator":I
    .end local v36    # "radioTechnology":I
    .end local v37    # "reasonForDenial":I
    .end local v39    # "registrationState":I
    .end local v40    # "roamingIndicator":I
    .end local v42    # "states":[Ljava/lang/String;
    .end local v43    # "systemIsInPrl":I
    :cond_12
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v42, v2

    check-cast v42, [Ljava/lang/String;

    .restart local v42    # "states":[Ljava/lang/String;
    goto/16 :goto_8

    .restart local v13    # "baseStationId":I
    .restart local v14    # "baseStationLatitude":I
    .restart local v15    # "baseStationLongitude":I
    .restart local v16    # "systemId":I
    .restart local v17    # "networkId":I
    .restart local v25    # "cssIndicator":I
    .restart local v28    # "defaultRoamingIndicator":I
    .restart local v36    # "radioTechnology":I
    .restart local v37    # "reasonForDenial":I
    .restart local v39    # "registrationState":I
    .restart local v40    # "roamingIndicator":I
    .restart local v43    # "systemIsInPrl":I
    :catch_8
    move-exception v30

    .local v30, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_POLL_STATE_REGISTRATION_CDMA: error parsing: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_9

    .end local v30    # "ex":Ljava/lang/NumberFormatException;
    :cond_13
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Warning! Wrong number of parameters returned from RIL_REQUEST_REGISTRATION_STATE: expected 14 or more strings and got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v42

    array-length v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " strings"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .restart local v12    # "nitzServiceState":I
    .restart local v32    # "nitzIso":Ljava/lang/String;
    :pswitch_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->fixTimeZone(Ljava/lang/String;I)V

    goto/16 :goto_a

    .end local v12    # "nitzServiceState":I
    .end local v32    # "nitzIso":Ljava/lang/String;
    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_15
    const/4 v2, 0x1

    goto/16 :goto_c

    :cond_16
    const/4 v2, 0x1

    move/from16 v0, v37

    if-ne v0, v2, :cond_17

    const-string v2, "Authentication Failure"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    goto/16 :goto_d

    :cond_17
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    goto/16 :goto_d

    :cond_18
    const/4 v2, 0x0

    goto :goto_e

    .end local v13    # "baseStationId":I
    .end local v14    # "baseStationLatitude":I
    .end local v15    # "baseStationLongitude":I
    .end local v16    # "systemId":I
    .end local v17    # "networkId":I
    .end local v25    # "cssIndicator":I
    .end local v28    # "defaultRoamingIndicator":I
    .end local v36    # "radioTechnology":I
    .end local v37    # "reasonForDenial":I
    .end local v39    # "registrationState":I
    .end local v40    # "roamingIndicator":I
    .end local v42    # "states":[Ljava/lang/String;
    .end local v43    # "systemIsInPrl":I
    :sswitch_2
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v34, v2

    check-cast v34, [Ljava/lang/String;

    .local v34, "opNames":[Ljava/lang/String;
    if-eqz v34, :cond_1e

    move-object/from16 v0, v34

    array-length v2, v0

    const/4 v8, 0x3

    if-lt v2, v8, :cond_1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_POLL_STATE_OPERATOR_CDMA - len "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v34

    array-length v8, v0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v8, 0x0

    aget-object v8, v34, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v2, :cond_19

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    const/4 v9, 0x2

    aget-object v9, v34, v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->fakeOperatorNumeric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v34, v2

    :cond_19
    const/16 v33, 0x0

    .local v33, "opLong":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriRoamingIndicator()I

    move-result v2

    const/4 v8, 0x1

    if-eq v2, v8, :cond_1a

    const/16 v31, 0x1

    .local v31, "isRoaming":Z
    :goto_f
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getHtcDeviceSlotType()[Ljava/lang/String;

    move-result-object v41

    .local v41, "slotType":[Ljava/lang/String;
    if-eqz v31, :cond_1b

    sget v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SKU_ID:I

    const/16 v8, 0x1f

    if-ne v2, v8, :cond_1b

    const-string v2, "CdmaSST"

    const-string v8, "KDDI and into roaming network"

    invoke-static {v2, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x3070148

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    :goto_10
    const/4 v2, 0x0

    aget-object v2, v34, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOriginalOperatorName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v8, 0x1

    aget-object v8, v34, v8

    const/4 v9, 0x2

    aget-object v9, v34, v9

    move-object/from16 v0, v33

    invoke-virtual {v2, v0, v8, v9}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v31    # "isRoaming":Z
    .end local v33    # "opLong":Ljava/lang/String;
    .end local v41    # "slotType":[Ljava/lang/String;
    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v34, :cond_1f

    move-object/from16 v0, v34

    array-length v2, v0

    const/4 v9, 0x3

    if-lt v2, v9, :cond_1f

    const/4 v2, 0x2

    aget-object v2, v34, v2

    :goto_12
    invoke-virtual {v8, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->updateOperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .restart local v32    # "nitzIso":Ljava/lang/String;
    if-eqz v32, :cond_0

    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->fixTimeZone(Ljava/lang/String;I)V

    goto/16 :goto_0

    .end local v32    # "nitzIso":Ljava/lang/String;
    .restart local v33    # "opLong":Ljava/lang/String;
    :cond_1a
    const/16 v31, 0x0

    goto :goto_f

    .restart local v31    # "isRoaming":Z
    .restart local v41    # "slotType":[Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    const/4 v8, 0x2

    aget-object v8, v34, v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    const/4 v8, 0x2

    aget-object v8, v34, v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    .end local v33    # "opLong":Ljava/lang/String;
    check-cast v33, Ljava/lang/String;

    .restart local v33    # "opLong":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In mOperatorStringLists:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_10

    :cond_1c
    const/4 v2, 0x0

    aget-object v2, v41, v2

    const-string v8, "NV"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v8, "cdma_get_opname_from_eri_for_nv_sub_source"

    const/4 v9, 0x0

    invoke-static {v2, v8, v9}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriText()Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_10

    :cond_1d
    const/4 v2, 0x0

    aget-object v33, v34, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "opNames[0]:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_10

    .end local v31    # "isRoaming":Z
    .end local v33    # "opLong":Ljava/lang/String;
    .end local v41    # "slotType":[Ljava/lang/String;
    :cond_1e
    const-string v2, "EVENT_POLL_STATE_OPERATOR_CDMA: error parsing opNames"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_1f
    const/4 v2, 0x0

    goto/16 :goto_12

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected hangupAndPowerOff()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcHangupAndPowerOff(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected htcHangupAndPowerOff(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "simRemainActive"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangupIfAlive()V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangupIfAlive()V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangupIfAlive()V

    invoke-static {}, Lcom/android/internal/telephony/ims/ImsUtils;->hangupAllCalls()V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/HtcBuildUtils;->isNFCEnabled(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsFlightModeRequest:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setCellularPower(ZLandroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    move-result-object v0

    .local v0, "seqPower":Lcom/android/internal/telephony/HtcSequentialRadioPower;
    if-eqz v0, :cond_2

    invoke-virtual {v0, v3, p1, v4}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method protected htcPowerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "icsDcTracker"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p2, "simRemainActive"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/HtcBuildUtils;->isNFCEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->htcPowerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/Boolean;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    .local v1, "mHtcRadio":Lcom/android/internal/telephony/cdma/HtcRadio;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    if-nez v0, :cond_2

    const-string v3, "dcTracker pointer is null, turn off radio right away"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4, p2}, Lcom/android/internal/telephony/cdma/HtcRadio;->flightModeRequest(ZLjava/lang/Boolean;)Z

    goto :goto_0

    :cond_2
    const v3, 0x4201d

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .local v2, "msg":Landroid/os/Message;
    const-string v3, "radioTurnedOff"

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    monitor-enter p0

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangupIfAlive()V

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangupIfAlive()V

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangupIfAlive()V

    const/4 v3, 0x1

    invoke-virtual {v1, v3, p2}, Lcom/android/internal/telephony/cdma/HtcRadio;->flightModeRequest(ZLjava/lang/Boolean;)Z

    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_3
    :try_start_1
    sget-boolean v3, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/dataconnection/HtcDataRoamGuard;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/dataconnection/HtcDataRoamGuard;

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/HtcDataRoamGuard;->haveDataNetworkState(Lcom/android/internal/telephony/DctConstants$State;)V

    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcHangupAndPowerOff(Ljava/lang/Boolean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected htcSetPowerStateToDesired(Ljava/lang/Boolean;)V
    .locals 12
    .param p1, "isRequestedByPhoneApp"    # Ljava/lang/Boolean;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    .local v2, "mHtcRadio":Lcom/android/internal/telephony/cdma/HtcRadio;
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/HtcBuildUtils;->isNFCEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v7, v8, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsFlightModeRequest:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, v11, v6}, Lcom/android/internal/telephony/CommandsInterface;->setCellularPower(ZLandroid/os/Message;)V

    .end local p1    # "isRequestedByPhoneApp":Ljava/lang/Boolean;
    :cond_0
    :goto_0
    return-void

    .restart local p1    # "isRequestedByPhoneApp":Ljava/lang/Boolean;
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, v11, v6}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, v11, v6}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    :cond_3
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    if-eqz p1, :cond_4

    .end local p1    # "isRequestedByPhoneApp":Ljava/lang/Boolean;
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcPowerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/Boolean;)V

    goto :goto_0

    .restart local p1    # "isRequestedByPhoneApp":Ljava/lang/Boolean;
    :cond_4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    .local v3, "noRedundantCommand":Z
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFlightModeBootup:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v7, v8, :cond_6

    const-string v7, "CdmaSST"

    const-string v8, "Boot-up with airplane mode is on"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFlightModeBootup:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, v10, v6}, Lcom/android/internal/telephony/CommandsInterface;->setCellularPower(ZLandroid/os/Message;)V

    const/4 v3, 0x1

    :cond_6
    if-nez v3, :cond_0

    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v7, v8, :cond_0

    const-string v7, "sys.shutdown.hibernate.mode"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .local v1, "hibernate":Z
    const-string v7, "CdmaSST"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_RADIO_OFF_OR_NOT_AVAILABLE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->initPowerState()V

    :cond_7
    const-string v7, "CdmaSST"

    const-string v8, "IMS flight mode on, but power off case"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, v10, v6}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .end local v1    # "hibernate":Z
    .end local v3    # "noRedundantCommand":Z
    :cond_8
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;->partialDisableUnderMultiPhone(Landroid/content/Context;)[Z

    move-result-object v4

    .local v4, "partialDisableStatus":[Z
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPowerStateToDesired, mDesiredPowerState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    if-eqz v7, :cond_d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ", pref="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    invoke-virtual {v9, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;->logBooleanArray([Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", requestByPhone="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bootState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFlightModeBootup:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    if-eqz v4, :cond_9

    array-length v7, v4

    if-lez v7, :cond_9

    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    aget-boolean v7, v4, v7

    if-eqz v7, :cond_9

    iput-boolean v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    :cond_9
    if-eqz p1, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "user turn radio to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", performRadioCommandState ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->performRadioCommandState:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    sget-object v7, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->performRadioCommandState:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    sget-object v8, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;->IDLE:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    if-ne v7, v8, :cond_a

    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v7, v8, :cond_e

    const-string v7, "performRadioCommandState NO change ON -> on"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_a
    :goto_4
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v7, v8, :cond_12

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v7}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    move-result-object v5

    .local v5, "seqPower":Lcom/android/internal/telephony/HtcSequentialRadioPower;
    if-eqz v5, :cond_11

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v5, v10, v6, v6}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V

    :cond_b
    invoke-virtual {v5, v11, v6, v6}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V

    :goto_5
    if-eqz v2, :cond_0

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v10, v6}, Lcom/android/internal/telephony/cdma/HtcRadio;->flightModeRequest(ZLjava/lang/Boolean;)Z

    goto/16 :goto_0

    .end local v4    # "partialDisableStatus":[Z
    .end local v5    # "seqPower":Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :cond_c
    move-object v4, v6

    goto/16 :goto_2

    .restart local v4    # "partialDisableStatus":[Z
    :cond_d
    const-string v7, ""

    goto/16 :goto_3

    :cond_e
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    if-nez v7, :cond_f

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v7, v8, :cond_f

    const-string v7, "performRadioCommandState NO change OFF-> off"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v7, :cond_10

    sget-object v7, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;->TURNING_ON:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    :goto_6
    sput-object v7, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->performRadioCommandState:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "performRadioCommandState change to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->performRadioCommandState:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_4

    :cond_10
    sget-object v7, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;->TURNING_OFF:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    goto :goto_6

    .restart local v5    # "seqPower":Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :cond_11
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, v11, v6}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_5

    .end local v5    # "seqPower":Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :cond_12
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    if-nez v6, :cond_14

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    if-eqz p1, :cond_13

    .end local p1    # "isRequestedByPhoneApp":Ljava/lang/Boolean;
    :goto_7
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcPowerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .restart local p1    # "isRequestedByPhoneApp":Ljava/lang/Boolean;
    :cond_13
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_14
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v6, :cond_15

    if-eqz v2, :cond_0

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v10, v6}, Lcom/android/internal/telephony/cdma/HtcRadio;->flightModeRequest(ZLjava/lang/Boolean;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_0

    :cond_15
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    if-nez v6, :cond_16

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v6, v7, :cond_16

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no radio off when radio state is off (performRadioCommandState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->performRadioCommandState:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    if-eqz p1, :cond_17

    .end local p1    # "isRequestedByPhoneApp":Ljava/lang/Boolean;
    :goto_8
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcPowerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .restart local p1    # "isRequestedByPhoneApp":Ljava/lang/Boolean;
    :cond_17
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_8
.end method

.method protected initPowerState()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;->getAirplaneModeSetting(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v0

    .local v0, "airplaneMode":I
    :goto_0
    if-gtz v0, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    if-nez v1, :cond_2

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFlightModeBootup:Ljava/lang/Boolean;

    return-void

    .end local v0    # "airplaneMode":I
    :cond_0
    move v0, v3

    goto :goto_0

    .restart local v0    # "airplaneMode":I
    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    .local v0, "radioTech":I
    invoke-static {v0}, Landroid/telephony/ServiceState;->is3GPP(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->CdmaConcurrentCustomize(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIMSIReady()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    return v0
.end method

.method public isReportImsiFromCdma()Ljava/lang/Boolean;
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->ENABLED:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "cdma_report_imsi_from_usim"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSidsAllZeros()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .end local v0    # "i":I
    :goto_1
    return v1

    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "CdmaSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaServiceStateTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "CdmaSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaServiceStateTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z
    .locals 40
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "isGsm"    # Z

    .prologue
    const/16 v37, 0x0

    .local v37, "result":Z
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mModemResetPeriod:Z

    if-eqz v1, :cond_0

    move/from16 v38, v37

    .end local v37    # "result":Z
    .local v38, "result":I
    :goto_0
    return v38

    .end local v38    # "result":I
    .restart local v37    # "result":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v36, v0

    .local v36, "oldSignalStrength":Landroid/telephony/SignalStrength;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    :goto_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->notifySignalStrength()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v37

    :goto_2
    sget-boolean v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->CDMA_LTE_ENABLED:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    monitor-enter v11

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v12, 0xe

    if-ne v1, v12, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    invoke-virtual {v1, v14, v15}, Landroid/telephony/CellInfoLte;->setTimeStamp(J)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    const/4 v12, 0x4

    invoke-virtual {v1, v12}, Landroid/telephony/CellInfoLte;->setTimeStampType(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    const v14, 0x7fffffff

    invoke-virtual {v1, v12, v14}, Landroid/telephony/CellSignalStrengthLte;->initialize(Landroid/telephony/SignalStrength;I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .local v28, "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    move-object/from16 v0, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v1, :cond_18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v0, v28

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyCellInfo(Ljava/util/List;)V

    .end local v28    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    :cond_2
    :goto_3
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    move/from16 v38, v37

    .restart local v38    # "result":I
    goto :goto_0

    .end local v38    # "result":I
    :cond_4
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object/from16 v32, v1

    check-cast v32, [I

    .local v32, "ints":[I
    const/16 v35, 0x2

    .local v35, "offset":I
    const/4 v1, 0x0

    aget v2, v32, v1

    .local v2, "signalBar":I
    const/4 v3, -0x1

    .local v3, "evdoSignalBar":I
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->signalBarLogControl(I)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "signalBar:"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_5
    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSeparateSingnalBar()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const/4 v1, 0x1

    aget v1, v32, v1

    add-int/lit8 v3, v1, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "evdoSignalBar="

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_7
    aget v1, v32, v35

    if-lez v1, :cond_b

    aget v1, v32, v35

    neg-int v4, v1

    .local v4, "cdmaDbm":I
    :goto_4
    const/4 v1, 0x3

    aget v1, v32, v1

    if-lez v1, :cond_c

    const/4 v1, 0x3

    aget v1, v32, v1

    neg-int v5, v1

    .local v5, "cdmaEcio":I
    :goto_5
    const/4 v1, 0x4

    aget v1, v32, v1

    if-lez v1, :cond_d

    const/4 v1, 0x4

    aget v1, v32, v1

    neg-int v6, v1

    .local v6, "evdoRssi":I
    :goto_6
    const/4 v1, 0x5

    aget v1, v32, v1

    if-lez v1, :cond_e

    const/4 v1, 0x5

    aget v1, v32, v1

    neg-int v7, v1

    .local v7, "evdoEcio":I
    :goto_7
    const/4 v1, 0x6

    aget v1, v32, v1

    if-lez v1, :cond_f

    const/4 v1, 0x6

    aget v1, v32, v1

    const/16 v11, 0x8

    if-gt v1, v11, :cond_f

    const/4 v1, 0x6

    aget v8, v32, v1

    .local v8, "evdoSnr":I
    :goto_8
    const/4 v9, -0x1

    .local v9, "lteSignalStrength":I
    const/4 v10, -0x1

    .local v10, "lteRsrp":I
    const/16 v33, -0x1

    .local v33, "lteRsrq":I
    const v34, 0x7fffffff

    .local v34, "lteRssnr":I
    const/4 v13, -0x1

    .local v13, "lteCqi":I
    const/16 v30, -0x1

    .local v30, "htcLteRsrp":I
    const/16 v31, -0x1

    .local v31, "htcLteRsrq":I
    move-object/from16 v0, v32

    array-length v1, v0

    const/16 v11, 0xd

    if-lt v1, v11, :cond_10

    const/16 v39, 0x1

    .local v39, "withLteExtension":Z
    :goto_9
    if-eqz v39, :cond_8

    const/16 v1, 0x9

    aget v1, v32, v1

    if-lez v1, :cond_11

    const/16 v1, 0x9

    aget v1, v32, v1

    neg-int v9, v1

    :goto_a
    const/16 v1, 0xa

    aget v1, v32, v1

    if-lez v1, :cond_12

    const/16 v1, 0xa

    aget v1, v32, v1

    neg-int v10, v1

    :goto_b
    const/16 v1, 0xa

    aget v1, v32, v1

    if-lez v1, :cond_13

    const/16 v1, 0xa

    aget v30, v32, v1

    :goto_c
    const/16 v1, 0xb

    aget v1, v32, v1

    if-lez v1, :cond_14

    const/16 v1, 0xb

    aget v1, v32, v1

    neg-int v0, v1

    move/from16 v33, v0

    :goto_d
    const/16 v1, 0xb

    aget v1, v32, v1

    if-lez v1, :cond_15

    const/16 v1, 0xb

    aget v31, v32, v1

    :goto_e
    const/16 v1, 0xc

    aget v34, v32, v1

    :cond_8
    move-object/from16 v0, v32

    array-length v1, v0

    const/16 v11, 0xe

    if-lt v1, v11, :cond_9

    const/16 v1, 0xd

    aget v1, v32, v1

    if-lez v1, :cond_16

    const/16 v1, 0xd

    aget v1, v32, v1

    neg-int v13, v1

    :cond_9
    :goto_f
    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-nez v1, :cond_a

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSeparateSingnalBar()Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_a
    new-instance v1, Landroid/telephony/SignalStrength;

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    const/4 v14, 0x0

    invoke-direct/range {v1 .. v14}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    :goto_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    move/from16 v0, v33

    invoke-virtual {v1, v0}, Landroid/telephony/SignalStrength;->setLteRsrq(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    move/from16 v0, v34

    invoke-virtual {v1, v0}, Landroid/telephony/SignalStrength;->setLteRssnr(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    move/from16 v0, v30

    invoke-virtual {v1, v0}, Landroid/telephony/SignalStrength;->setHtcLteRsrp(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    move/from16 v0, v31

    invoke-virtual {v1, v0}, Landroid/telephony/SignalStrength;->setHtcLteRsrq(I)V

    goto/16 :goto_1

    .end local v4    # "cdmaDbm":I
    .end local v5    # "cdmaEcio":I
    .end local v6    # "evdoRssi":I
    .end local v7    # "evdoEcio":I
    .end local v8    # "evdoSnr":I
    .end local v9    # "lteSignalStrength":I
    .end local v10    # "lteRsrp":I
    .end local v13    # "lteCqi":I
    .end local v30    # "htcLteRsrp":I
    .end local v31    # "htcLteRsrq":I
    .end local v33    # "lteRsrq":I
    .end local v34    # "lteRssnr":I
    .end local v39    # "withLteExtension":Z
    :cond_b
    const/16 v4, -0x78

    goto/16 :goto_4

    .restart local v4    # "cdmaDbm":I
    :cond_c
    const/16 v5, -0xa0

    goto/16 :goto_5

    .restart local v5    # "cdmaEcio":I
    :cond_d
    const/16 v6, -0x78

    goto/16 :goto_6

    .restart local v6    # "evdoRssi":I
    :cond_e
    const/4 v7, -0x1

    goto/16 :goto_7

    .restart local v7    # "evdoEcio":I
    :cond_f
    const/4 v8, -0x1

    goto/16 :goto_8

    .restart local v8    # "evdoSnr":I
    .restart local v9    # "lteSignalStrength":I
    .restart local v10    # "lteRsrp":I
    .restart local v13    # "lteCqi":I
    .restart local v30    # "htcLteRsrp":I
    .restart local v31    # "htcLteRsrq":I
    .restart local v33    # "lteRsrq":I
    .restart local v34    # "lteRssnr":I
    :cond_10
    const/16 v39, 0x0

    goto/16 :goto_9

    .restart local v39    # "withLteExtension":Z
    :cond_11
    const/4 v9, -0x1

    goto/16 :goto_a

    :cond_12
    const/4 v10, -0x1

    goto/16 :goto_b

    :cond_13
    const/16 v30, -0x1

    goto/16 :goto_c

    :cond_14
    const/16 v33, -0x1

    goto/16 :goto_d

    :cond_15
    const/16 v31, -0x1

    goto :goto_e

    :cond_16
    const/4 v13, -0x1

    goto :goto_f

    :cond_17
    new-instance v14, Landroid/telephony/SignalStrength;

    const/16 v16, -0x1

    const v24, 0x7fffffff

    const v25, 0x7fffffff

    const/16 v27, 0x0

    move v15, v2

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v26, v13

    invoke-direct/range {v14 .. v27}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZ)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    goto :goto_10

    .end local v2    # "signalBar":I
    .end local v3    # "evdoSignalBar":I
    .end local v4    # "cdmaDbm":I
    .end local v5    # "cdmaEcio":I
    .end local v6    # "evdoRssi":I
    .end local v7    # "evdoEcio":I
    .end local v8    # "evdoSnr":I
    .end local v9    # "lteSignalStrength":I
    .end local v10    # "lteRsrp":I
    .end local v13    # "lteCqi":I
    .end local v30    # "htcLteRsrp":I
    .end local v31    # "htcLteRsrq":I
    .end local v32    # "ints":[I
    .end local v33    # "lteRsrq":I
    .end local v34    # "lteRssnr":I
    .end local v35    # "offset":I
    .end local v39    # "withLteExtension":Z
    :catch_0
    move-exception v29

    .local v29, "ex":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onSignalStrengthResult() Phone already destroyed: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "SignalStrength not notified"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v29    # "ex":Ljava/lang/NullPointerException;
    .restart local v28    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    :cond_18
    :try_start_2
    const-string v1, "onSignalStrengthResult error, mPhone is null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .end local v28    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected onUpdateIccAvailability()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .local v0, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_3

    const-string v1, "Removing stale icc objects."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    :cond_2
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorCatch:Ljava/lang/String;

    :cond_3
    if-eqz v0, :cond_0

    const-string v1, "New card found"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v2, 0x1a

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v2, 0x1b

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected parseSidNid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "sidStr"    # Ljava/lang/String;
    .param p2, "nidStr"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "sid":[Ljava/lang/String;
    array-length v4, v3

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error parsing system id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v1    # "i":I
    .end local v3    # "sid":[Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMA_SUBSCRIPTION: SID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "nid":[Ljava/lang/String;
    array-length v4, v2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v4, v2

    if-ge v1, v4, :cond_1

    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    aget-object v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMA_SUBSCRIPTION: error parsing network id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_3

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v1    # "i":I
    .end local v2    # "nid":[Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMA_SUBSCRIPTION: NID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected pollState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    new-array v2, v4, [I

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    aput v1, v2, v1

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x19

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x18

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v2, "sys.under_silent_reset"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mModemResetPeriod:Z

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;->getAirplaneModeSetting(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v0

    .local v0, "airplaneMode":I
    :goto_1
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .end local v0    # "airplaneMode":I
    :cond_2
    move v0, v1

    goto :goto_1

    .restart local v0    # "airplaneMode":I
    :cond_3
    const-string v2, "Radio unavaliable off"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .end local v0    # "airplaneMode":I
    :pswitch_1
    const-string v2, "sys.under_silent_reset"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_4

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mModemResetPeriod:Z

    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->setStateOff()V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollStateDone()V

    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/dataconnection/HtcDataRoamGuard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/dataconnection/HtcDataRoamGuard;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/dataconnection/HtcDataRoamGuard;->reEnableGuardDialog(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected pollStateDone()V
    .locals 35

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "pollStateDone: oldSS=[(same)] newSS=["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    :goto_0
    const/16 v24, 0x0

    .local v24, "resetCompleted":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mModemResetPeriod:Z

    move/from16 v29, v0

    if-eqz v29, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v29

    if-eqz v29, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    :cond_0
    :goto_1
    return-void

    .end local v24    # "resetCompleted":Z
    :cond_1
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "pollStateDone: oldSS=["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "] newSS=["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .restart local v24    # "resetCompleted":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    const-string v30, "sys.under_silent_reset"

    const-string v31, "0"

    invoke-virtual/range {v29 .. v31}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mModemResetPeriod:Z

    const/16 v29, 0x48

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->removeMessages(I)V

    const/16 v24, 0x1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v29

    if-eqz v29, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v29

    if-nez v29, :cond_1f

    const/16 v17, 0x1

    .local v17, "hasRegistered":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v29

    if-nez v29, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v29

    if-eqz v29, :cond_20

    const/4 v13, 0x1

    .local v13, "hasDeregistered":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v29

    if-nez v29, :cond_4

    if-eqz v24, :cond_21

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v29

    if-nez v29, :cond_21

    const/4 v7, 0x1

    .local v7, "hasCdmaDataConnectionAttached":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v29

    if-nez v29, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v29

    if-eqz v29, :cond_22

    const/4 v9, 0x1

    .local v9, "hasCdmaDataConnectionDetached":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_23

    const/4 v8, 0x1

    .local v8, "hasCdmaDataConnectionChanged":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_24

    const/16 v19, 0x1

    .local v19, "hasRilVoiceRadioTechnologyChanged":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_25

    const/16 v18, 0x1

    .local v18, "hasRilDataRadioTechnologyChanged":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_26

    const/16 v22, 0x1

    .local v22, "hasVoiceRadioTechnologyChanged":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_27

    const/4 v10, 0x1

    .local v10, "hasChanged":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v29

    if-nez v29, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v29

    if-eqz v29, :cond_28

    const/16 v21, 0x1

    .local v21, "hasRoamingOn":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v29

    if-eqz v29, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v29

    if-nez v29, :cond_29

    const/16 v20, 0x1

    .local v20, "hasRoamingOff":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/telephony/cdma/CdmaCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_2a

    const/4 v14, 0x1

    .local v14, "hasLocationChanged":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v29

    if-nez v29, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v29

    if-eqz v29, :cond_2b

    const/4 v12, 0x1

    .local v12, "hasDataRoamingOn":Z
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v29

    if-eqz v29, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v29

    if-nez v29, :cond_2c

    const/4 v11, 0x1

    .local v11, "hasDataRoamingOff":Z
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v29

    if-nez v29, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v29

    const/16 v30, 0xe

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v29

    const/16 v30, 0xd

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v29

    const/16 v30, 0xd

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v29

    const/16 v30, 0xe

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2d

    :cond_6
    const/4 v6, 0x1

    .local v6, "has4gHandoff":Z
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v29

    const/16 v30, 0xe

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v29

    const/16 v30, 0xd

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2e

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v29

    const/16 v30, 0xe

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v29

    const/16 v30, 0xd

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_2e

    const/16 v16, 0x1

    .local v16, "hasMultiApnSupport":Z
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v29

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_2f

    const/4 v15, 0x1

    .local v15, "hasLostMultiApnSupport":Z
    :goto_12
    sget-boolean v29, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v29, :cond_8

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "pollStateDone: hasRegistered="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " hasDeegistered="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " hasCdmaDataConnectionAttached="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " hasCdmaDataConnectionDetached="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " hasCdmaDataConnectionChanged="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " hasVoiceRadioTechnologyChanged= "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " hasRilDataRadioTechnologyChanged="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " hasChanged="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " hasRoamingOn="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " hasRoamingOff="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " hasLocationChanged="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " has4gHandoff = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " hasMultiApnSupport="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " hasLostMultiApnSupport="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_a

    :cond_9
    const v29, 0xc3c4

    const/16 v30, 0x4

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    .local v28, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v25, v0

    .local v25, "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v19, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updatePhoneObject()V

    :cond_b
    if-eqz v18, :cond_c

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "updateNetworkTypeGlobally: false,"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateNetworkTypeGlobally(ZLjava/lang/Integer;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    const-string v30, "gsm.network.type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v31

    invoke-static/range {v31 .. v31}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_d
    if-eqz v13, :cond_e

    const-string v29, ""

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOriginalOperatorName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateNetworkTypeGlobally(ZLjava/lang/Integer;)Z

    :cond_e
    sget v29, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SKU_ID:I

    const/16 v30, 0x71

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->fixOperatorNameForLra(Landroid/telephony/ServiceState;)Z

    move-result v29

    or-int v10, v10, v29

    :cond_f
    if-eqz v10, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setOperatorProperties()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v30, v0

    const-string v31, "gsm.operator.isroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v29

    if-eqz v29, :cond_30

    const-string v29, "true"

    :goto_13
    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mForceSpnUpdate:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    :cond_10
    if-nez v7, :cond_11

    if-eqz v6, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_12
    if-eqz v9, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_13
    if-nez v8, :cond_14

    if-eqz v18, :cond_15

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    :cond_15
    if-eqz v18, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_16
    if-eqz v21, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_17
    if-eqz v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_18
    if-eqz v12, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_19
    if-eqz v11, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_1a
    if-eqz v14, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyLocationChanged()V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->displayNitzHistory(Z)V

    :cond_1c
    sget-boolean v29, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->CDMA_LTE_ENABLED:Z

    if-eqz v29, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    move-object/from16 v30, v0

    monitor-enter v30

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    .local v5, "cil":Landroid/telephony/CellInfoLte;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/telephony/CellIdentityLte;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_31

    const/4 v4, 0x1

    .local v4, "cidChanged":Z
    :goto_14
    if-nez v17, :cond_1d

    if-nez v13, :cond_1d

    if-eqz v4, :cond_1e

    :cond_1d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v31

    const-wide/16 v33, 0x3e8

    mul-long v26, v31, v33

    .local v26, "timeStamp":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v29

    if-nez v29, :cond_32

    const/16 v23, 0x1

    .local v23, "registered":Z
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/telephony/CellInfoLte;->setRegisterd(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/telephony/CellInfoLte;->setCellIdentity(Landroid/telephony/CellIdentityLte;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v23    # "registered":Z
    .end local v26    # "timeStamp":J
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    if-eqz v29, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyCellInfo(Ljava/util/List;)V

    :goto_16
    monitor-exit v30

    goto/16 :goto_1

    .end local v4    # "cidChanged":Z
    .end local v5    # "cil":Landroid/telephony/CellInfoLte;
    :catchall_0
    move-exception v29

    monitor-exit v30
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v29

    .end local v3    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .end local v6    # "has4gHandoff":Z
    .end local v7    # "hasCdmaDataConnectionAttached":Z
    .end local v8    # "hasCdmaDataConnectionChanged":Z
    .end local v9    # "hasCdmaDataConnectionDetached":Z
    .end local v10    # "hasChanged":Z
    .end local v11    # "hasDataRoamingOff":Z
    .end local v12    # "hasDataRoamingOn":Z
    .end local v13    # "hasDeregistered":Z
    .end local v14    # "hasLocationChanged":Z
    .end local v15    # "hasLostMultiApnSupport":Z
    .end local v16    # "hasMultiApnSupport":Z
    .end local v17    # "hasRegistered":Z
    .end local v18    # "hasRilDataRadioTechnologyChanged":Z
    .end local v19    # "hasRilVoiceRadioTechnologyChanged":Z
    .end local v20    # "hasRoamingOff":Z
    .end local v21    # "hasRoamingOn":Z
    .end local v22    # "hasVoiceRadioTechnologyChanged":Z
    .end local v25    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v28    # "tss":Landroid/telephony/ServiceState;
    :cond_1f
    const/16 v17, 0x0

    goto/16 :goto_2

    .restart local v17    # "hasRegistered":Z
    :cond_20
    const/4 v13, 0x0

    goto/16 :goto_3

    .restart local v13    # "hasDeregistered":Z
    :cond_21
    const/4 v7, 0x0

    goto/16 :goto_4

    .restart local v7    # "hasCdmaDataConnectionAttached":Z
    :cond_22
    const/4 v9, 0x0

    goto/16 :goto_5

    .restart local v9    # "hasCdmaDataConnectionDetached":Z
    :cond_23
    const/4 v8, 0x0

    goto/16 :goto_6

    .restart local v8    # "hasCdmaDataConnectionChanged":Z
    :cond_24
    const/16 v19, 0x0

    goto/16 :goto_7

    .restart local v19    # "hasRilVoiceRadioTechnologyChanged":Z
    :cond_25
    const/16 v18, 0x0

    goto/16 :goto_8

    .restart local v18    # "hasRilDataRadioTechnologyChanged":Z
    :cond_26
    const/16 v22, 0x0

    goto/16 :goto_9

    .restart local v22    # "hasVoiceRadioTechnologyChanged":Z
    :cond_27
    const/4 v10, 0x0

    goto/16 :goto_a

    .restart local v10    # "hasChanged":Z
    :cond_28
    const/16 v21, 0x0

    goto/16 :goto_b

    .restart local v21    # "hasRoamingOn":Z
    :cond_29
    const/16 v20, 0x0

    goto/16 :goto_c

    .restart local v20    # "hasRoamingOff":Z
    :cond_2a
    const/4 v14, 0x0

    goto/16 :goto_d

    .restart local v14    # "hasLocationChanged":Z
    :cond_2b
    const/4 v12, 0x0

    goto/16 :goto_e

    .restart local v12    # "hasDataRoamingOn":Z
    :cond_2c
    const/4 v11, 0x0

    goto/16 :goto_f

    .restart local v11    # "hasDataRoamingOff":Z
    :cond_2d
    const/4 v6, 0x0

    goto/16 :goto_10

    .restart local v6    # "has4gHandoff":Z
    :cond_2e
    const/16 v16, 0x0

    goto/16 :goto_11

    .restart local v16    # "hasMultiApnSupport":Z
    :cond_2f
    const/4 v15, 0x0

    goto/16 :goto_12

    .restart local v15    # "hasLostMultiApnSupport":Z
    .restart local v25    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v28    # "tss":Landroid/telephony/ServiceState;
    :cond_30
    const-string v29, "false"

    goto/16 :goto_13

    .restart local v3    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .restart local v5    # "cil":Landroid/telephony/CellInfoLte;
    :cond_31
    const/4 v4, 0x0

    goto/16 :goto_14

    .restart local v4    # "cidChanged":Z
    .restart local v26    # "timeStamp":J
    :cond_32
    const/16 v23, 0x0

    goto/16 :goto_15

    .end local v26    # "timeStamp":J
    :cond_33
    :try_start_1
    const-string v29, "pollStateDone error, mPhone is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_16
.end method

.method public processPendingRadioPowerOffAfterDataOff()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/HtcBuildUtils;->isNFCEnabled(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->processPendingRadioPowerOffAfterDataOff()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->hasFlightModeRequested()Z

    move-result v0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->hangupAndPowerOff()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected radioTechnologyToDataServiceState(I)I
    .locals 2
    .param p1, "code"    # I

    .prologue
    const/4 v0, 0x1

    .local v0, "retVal":I
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v1, "radioTechnologyToDataServiceState: Wrong radioTechnology code."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected regCodeToServiceState(I)I
    .locals 3
    .param p1, "code"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regCodeToServiceState: unexpected service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v1

    goto :goto_0

    :sswitch_2
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_2
        0xfe -> :sswitch_0
    .end sparse-switch
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isMinInfoReady()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public setHtcCurrentOtaspMode(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    sget v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcCurrentOtaspMode:I

    .local v1, "oldOtaspMode":I
    move v0, p1

    .local v0, "newOtaspMode":I
    if-eq v1, v0, :cond_0

    sput v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcCurrentOtaspMode:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHtcCurrentOtaspMode: oldOtaspMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",newOtaspMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateOtaspState()V

    return-void
.end method

.method public setKddiOtaStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setUimOtaStatus(ILandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method protected setPowerStateToDesired()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcSetPowerStateToDesired(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected setSignalStrengthDefaultValues()V
    .locals 2

    .prologue
    new-instance v0, Landroid/telephony/SignalStrength;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method protected updateNetworkNameDisplay()V
    .locals 21

    .prologue
    const-string v5, ""

    .local v5, "spn":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "showSpn":Z
    const-string v3, ""

    .local v3, "plmn":Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, "rule":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    new-instance v15, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v15, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCombinedRegState()I

    move-result v19

    .local v19, "serviceStatus":I
    const-string v2, "networkState"

    move/from16 v0, v19

    invoke-virtual {v15, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez v19, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v16

    .local v16, "numeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-ne v2, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "plmn":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "plmn":Ljava/lang/String;
    move-object/from16 v17, v16

    .local v17, "plmnSource":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v4, "gsm.operator.alpha"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurSpnRule:I

    move/from16 v0, v18

    if-ne v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mForceSpnUpdate:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurSpn:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriBannerStyle()I

    move-result v20

    .local v20, "showPlmnStyle":I
    const/4 v14, 0x0

    .local v14, "flashPlmn":Z
    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_1

    const/4 v14, 0x1

    :cond_1
    sget v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SKU_ID:I

    const/16 v4, 0x1b

    if-eq v2, v4, :cond_2

    sget v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SKU_ID:I

    const/16 v4, 0x1c

    if-ne v2, v4, :cond_3

    :cond_2
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mChinaOpList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v6, 0x0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    const/4 v4, 0x1

    const/4 v7, 0x1

    const-string v8, "PLMN"

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->updateFromServiceState(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    .end local v14    # "flashPlmn":Z
    .end local v20    # "showPlmnStyle":I
    :goto_1
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurSpnRule:I

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurSpn:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .end local v16    # "numeric":Ljava/lang/String;
    .end local v17    # "plmnSource":Ljava/lang/String;
    :cond_4
    :goto_2
    return-void

    .restart local v16    # "numeric":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    const-string v17, "RIL"

    .restart local v17    # "plmnSource":Ljava/lang/String;
    goto :goto_0

    :cond_6
    const-string v2, "CdmaSST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No change plmn("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ") : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v16    # "numeric":Ljava/lang/String;
    .end local v17    # "plmnSource":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v7, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "NOSRV"

    invoke-virtual/range {v7 .. v13}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->updateFromServiceState(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurSpnRule:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurSpn:Ljava/lang/String;

    goto :goto_2
.end method

.method protected updateOtaspState()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getOtasp()I

    move-result v1

    .local v1, "otaspMode":I
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    .local v0, "oldOtaspMode":I
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    if-eqz v2, :cond_0

    const-string v2, "CDMA_SUBSCRIPTION: call notifyRegistrants()"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    if-eq v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CDMA_SUBSCRIPTION: call notifyOtaspChanged old otaspMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new otaspMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyOtaspChanged(I)V

    :cond_1
    return-void
.end method

.method protected updateSpnDisplay()V
    .locals 15

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .local v1, "plmn":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSpnDisplay "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mForceSpnUpdate:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "), ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    const-string v8, ""

    .local v8, "spn":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "showSpn":Z
    const/4 v13, 0x0

    .local v13, "rule":I
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v12

    .local v12, "numeric":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMccMncChange:Z

    if-eqz v0, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x3070149

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    const/4 v3, 0x0

    const-string v6, "CT"

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->updateFromServiceState(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMccMncChange:Z

    .end local v12    # "numeric":Ljava/lang/String;
    :goto_0
    return-void

    .restart local v12    # "numeric":Ljava/lang/String;
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMccMncChange:Z

    .end local v12    # "numeric":Ljava/lang/String;
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mForceSpnUpdate:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    if-eqz v1, :cond_4

    move v14, v2

    .local v14, "showPlmn":Z
    :goto_1
    const-string v0, "updateSpnDisplay: changed sending intent showPlmn=\'%b\' plmn=\'%s\'"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    const-string v11, "SPN"

    move-object v6, v1

    move v7, v2

    move v10, v2

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->updateFromServiceState(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    .end local v14    # "showPlmn":Z
    :cond_3
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mForceSpnUpdate:Z

    goto :goto_0

    :cond_4
    move v14, v4

    goto :goto_1
.end method