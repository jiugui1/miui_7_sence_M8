.class public Lcom/android/internal/telephony/dataconnection/DataProfileTracker;
.super Landroid/os/Handler;
.source "DataProfileTracker.java"


# static fields
.field static final APN_ID:Ljava/lang/String; = "apn_id"

.field public static final DEFAULT_APN_NAME_STRING:Ljava/lang/String; = "NO_PROFILE"

.field protected static final DEFAULT_SPCS_MCCMNC:Ljava/lang/String; = "310120,316010"

.field private static final EVENT_CREATE_ALL_DATA_PROFILE_DB:I = 0x1

.field protected static final EVENT_GET_APN_PARAMS_DONE:I = 0x6

.field protected static final EVENT_GET_UPDATE_APN_PARAMS_DONE:I = 0x8

.field private static final EVENT_SET_APN_FROM_UI_TO_MODEM_DONE:I = 0x2

.field protected static final EVENT_SET_APN_PARAMS_DONE:I = 0x5

.field private static final EVENT_SET_MANUAL_NAI_ID:I = 0x3

.field private static final EVENT_SET_MANUAL_NAI_PWD:I = 0x4

.field protected static final EVENT_SET_OPERATOR_NUMERIC:I = 0x9

.field protected static final EVENT_UPDATE_ALL_APN_PARAMS:I = 0x7

.field protected static final EVENT_UPDATE_CANHANDLE_SERVICE_TYPE:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "DPT"

.field static PREFER_DEFAULT_APN_URI:Landroid/net/Uri; = null

.field protected static final SPCS_MCCMNC_PORPERTY:Ljava/lang/String; = "persist.radio.spcs.oper"

.field public static final m3rdUMTSIndex:I = 0x2

.field public static final mCPAIndex:I = 0x3

.field public static final mLteNetIndex:I = 0x1

.field public static final mLteNetforDataIndex:I = 0x2

.field public static final mNoneIndex:I = 0x0

.field public static mProfileAvailablePdnLabels:[Ljava/lang/String; = null

.field public static mProfileAvailableRatType:[I = null

.field public static final mUMTSIndex:I = 0x1

.field public static mUserApnSettingIndex:I


# instance fields
.field private final CMD_WRITE_MANUAL_NAI_ID:Ljava/lang/String;

.field private final CMD_WRITE_MANUAL_NAI_PWD:Ljava/lang/String;

.field PDN_REQUEST_MAX_WAITING_TIME:I

.field private final TYPE_SETUP_ID:I

.field private final TYPE_SETUP_PWD:I

.field isDptActive:Z

.field isLocalDBReady:Z

.field private mAllDataProfilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field mCanSetDefaultPreferredApn:Z

.field private mCm:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mDataDataProfileOnSetUiDefaultApnNameDone:Landroid/os/RegistrantList;

.field private mDataProfileDbChangedRegistrants:Landroid/os/RegistrantList;

.field mDataprofileDbChangedContext:I

.field public mDbSync:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

.field private mEnableResetToDefault:Z

.field mLocalDBChange:Z

.field private mOperatorNumeric:Ljava/lang/String;

.field mPDNRequestLock:Ljava/lang/Object;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPhoneType:I

.field mPreferredDefaultApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field private mSPCS_Mccmnc_List:Ljava/lang/String;

.field mSetPDNRequestContext:I

.field mUpdateAllLocalProfileDataBaseContext:I

.field mUpdateCanHandleServiceTypeForAllProfileContext:I

.field private mUseDefaultProfileForTethering:Z

.field public manager:Lcom/htc/customization/HtcCustomizationManager;

.field onSetUiDefaultApnDoneCount:I

.field public reader:Lcom/htc/customization/HtcCustomizationReader;

.field private resetRadioForPDNChangetable:[Z

.field private final sEfsSyncDmCommand:Ljava/lang/String;

.field private final sLTENET_APN:Ljava/lang/String;

.field private final sLTENETforDATA_APN:Ljava/lang/String;

.field updataDataProfileDataBaseDoneNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    sput-object v1, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mProfileAvailablePdnLabels:[Ljava/lang/String;

    .line 133
    sput-object v1, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mProfileAvailableRatType:[I

    .line 177
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUserApnSettingIndex:I

    .line 674
    sput-object v1, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->PREFER_DEFAULT_APN_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 206
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 91
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    .line 92
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mDataProfileDbChangedRegistrants:Landroid/os/RegistrantList;

    .line 94
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mDataDataProfileOnSetUiDefaultApnNameDone:Landroid/os/RegistrantList;

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mAllDataProfilesList:Ljava/util/ArrayList;

    .line 99
    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->onSetUiDefaultApnDoneCount:I

    .line 117
    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->TYPE_SETUP_ID:I

    .line 118
    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->TYPE_SETUP_PWD:I

    .line 121
    const-string v1, "C827BF75"

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->CMD_WRITE_MANUAL_NAI_ID:Ljava/lang/String;

    .line 122
    const-string v1, "C827C075"

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->CMD_WRITE_MANUAL_NAI_PWD:Ljava/lang/String;

    .line 134
    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->updataDataProfileDataBaseDoneNumber:I

    .line 141
    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->isDptActive:Z

    .line 142
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mPhoneType:I

    .line 144
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mLocalDBChange:Z

    .line 147
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->isLocalDBReady:Z

    .line 149
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mDbSync:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    .line 156
    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUpdateAllLocalProfileDataBaseContext:I

    .line 157
    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mDataprofileDbChangedContext:I

    .line 158
    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUpdateCanHandleServiceTypeForAllProfileContext:I

    .line 163
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mSPCS_Mccmnc_List:Ljava/lang/String;

    .line 178
    const-string v1, "uno.au-net.ne.jp"

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->sLTENET_APN:Ljava/lang/String;

    .line 179
    const-string v1, "au.au-net.ne.jp"

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->sLTENETforDATA_APN:Ljava/lang/String;

    .line 182
    const-string v1, "C8C913"

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->sEfsSyncDmCommand:Ljava/lang/String;

    .line 185
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->resetRadioForPDNChangetable:[Z

    .line 193
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mEnableResetToDefault:Z

    .line 196
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUseDefaultProfileForTethering:Z

    .line 197
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->manager:Lcom/htc/customization/HtcCustomizationManager;

    .line 198
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->reader:Lcom/htc/customization/HtcCustomizationReader;

    .line 201
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mPDNRequestLock:Ljava/lang/Object;

    .line 202
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mSetPDNRequestContext:I

    .line 203
    const/16 v1, 0x9c4

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->PDN_REQUEST_MAX_WAITING_TIME:I

    .line 677
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mPreferredDefaultApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 678
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mCanSetDefaultPreferredApn:Z

    .line 207
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 208
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mContext:Landroid/content/Context;

    .line 209
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mPhoneType:I

    .line 211
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 216
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->initProfileAvailablePdn()V

    .line 220
    const-string v1, "persist.radio.spcs.oper"

    const-string v2, "310120,316010"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mSPCS_Mccmnc_List:Ljava/lang/String;

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->UserDbSyncUp()V

    .line 227
    const/16 v1, 0x17

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->resetRadioForPDNChangetable:[Z

    .line 228
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->resetRadioForPDNChangetable:[Z

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 235
    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->manager:Lcom/htc/customization/HtcCustomizationManager;

    .line 236
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->manager:Lcom/htc/customization/HtcCustomizationManager;

    const-string v2, "Android_Ril"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->reader:Lcom/htc/customization/HtcCustomizationReader;

    .line 240
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->reader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "use_default_profile_for_tethering"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUseDefaultProfileForTethering:Z

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUseDefaultProfileForTethering = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUseDefaultProfileForTethering:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot read customization value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->loge(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private IPProtocolMapToApnParam(Ljava/lang/String;)I
    .locals 2
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 1577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IPProtocolMapToApnParam, protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 1579
    if-nez p1, :cond_0

    .line 1580
    const/4 v0, -0x1

    .line 1586
    :goto_0
    return v0

    .line 1581
    :cond_0
    const-string v0, "IP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1582
    sget-object v0, Lcom/android/internal/telephony/HtcPhoneConstants$IPVersion;->IP:Lcom/android/internal/telephony/HtcPhoneConstants$IPVersion;

    invoke-virtual {v0}, Lcom/android/internal/telephony/HtcPhoneConstants$IPVersion;->ordinal()I

    move-result v0

    goto :goto_0

    .line 1583
    :cond_1
    const-string v0, "IPV6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1584
    sget-object v0, Lcom/android/internal/telephony/HtcPhoneConstants$IPVersion;->IPV6:Lcom/android/internal/telephony/HtcPhoneConstants$IPVersion;

    invoke-virtual {v0}, Lcom/android/internal/telephony/HtcPhoneConstants$IPVersion;->ordinal()I

    move-result v0

    goto :goto_0

    .line 1586
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/HtcPhoneConstants$IPVersion;->IPV4V6:Lcom/android/internal/telephony/HtcPhoneConstants$IPVersion;

    invoke-virtual {v0}, Lcom/android/internal/telephony/HtcPhoneConstants$IPVersion;->ordinal()I

    move-result v0

    goto :goto_0
.end method

.method private IPProtocolMapToApnSetting(I)Ljava/lang/String;
    .locals 2
    .param p1, "protocol"    # I

    .prologue
    .line 1590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IPProtocolMapToApnSetting, protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 1592
    sget-object v0, Lcom/android/internal/telephony/HtcPhoneConstants$IPVersion;->IP:Lcom/android/internal/telephony/HtcPhoneConstants$IPVersion;

    invoke-virtual {v0}, Lcom/android/internal/telephony/HtcPhoneConstants$IPVersion;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1593
    const-string v0, "IP"

    .line 1597
    :goto_0
    return-object v0

    .line 1594
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/HtcPhoneConstants$IPVersion;->IPV6:Lcom/android/internal/telephony/HtcPhoneConstants$IPVersion;

    invoke-virtual {v0}, Lcom/android/internal/telephony/HtcPhoneConstants$IPVersion;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1595
    const-string v0, "IPV6"

    goto :goto_0

    .line 1597
    :cond_1
    const-string v0, "IPV4V6"

    goto :goto_0
.end method

.method private createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 30
    .param p1, "sTypes"    # Ljava/lang/String;
    .param p2, "cid"    # Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;
    .param p3, "RatType"    # I

    .prologue
    .line 624
    move-object/from16 v29, p1

    .line 625
    .local v29, "topSTS":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->parseServiceTypeString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 626
    .local v15, "temp":[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const/16 v3, 0x3e8

    const-string v4, "54321"

    const-string v5, "hTCMPDN_dummy_DataBasedummy"

    const/16 v6, 0x8

    move/from16 v0, p3

    if-ne v0, v6, :cond_0

    const-string v6, ""

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x3

    const/16 v16, 0x8

    move/from16 v0, p3

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    const-string v16, "IP"

    :goto_1
    const/16 v17, 0x8

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    const-string v17, "IP"

    :goto_2
    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->ClassIdToPdnLabel(Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, -0x1

    move-object/from16 v18, p2

    move/from16 v20, p3

    invoke-direct/range {v2 .. v28}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 656
    .local v2, "apn11":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->parseServiceTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    .line 658
    return-object v2

    .line 626
    .end local v2    # "apn11":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    const-string v6, "NO_PROFILE"

    goto :goto_0

    :cond_1
    const-string v16, "IPV4V6"

    goto :goto_1

    :cond_2
    const-string v17, "IPV4V6"

    goto :goto_2
.end method

.method private doASCIIToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 953
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 954
    .local v2, "len":I
    const-string v3, ""

    .line 955
    .local v3, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 956
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 957
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 958
    .local v4, "tmp":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 959
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 961
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 955
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 963
    .end local v0    # "c":I
    .end local v4    # "tmp":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Do from Ascii("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") to String("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 964
    return-object v3
.end method

.method public static getRadioTechToRatType(I)I
    .locals 3
    .param p0, "radioTech"    # I

    .prologue
    const/16 v2, 0xd

    .line 971
    if-ne p0, v2, :cond_0

    .line 972
    const/4 v0, 0x2

    .line 982
    .local v0, "RatType":I
    :goto_0
    return v0

    .line 973
    .end local v0    # "RatType":I
    :cond_0
    const/16 v1, 0xe

    if-ne p0, v1, :cond_1

    .line 974
    const/4 v0, 0x4

    .restart local v0    # "RatType":I
    goto :goto_0

    .line 975
    .end local v0    # "RatType":I
    :cond_1
    invoke-static {p0}, Landroid/telephony/ServiceState;->is3GPP(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 976
    const/4 v0, 0x1

    .restart local v0    # "RatType":I
    goto :goto_0

    .line 977
    .end local v0    # "RatType":I
    :cond_2
    if-eq p0, v2, :cond_3

    invoke-static {p0}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 978
    const/16 v0, 0x8

    .restart local v0    # "RatType":I
    goto :goto_0

    .line 980
    .end local v0    # "RatType":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "RatType":I
    goto :goto_0
.end method

.method private initProfileAvailablePdn()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 256
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mProfileAvailablePdnLabels:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 257
    const-string v0, ""

    .line 258
    .local v0, "sProfileAvailablePdnLabels":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_WPHONE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    const-string v0, "1,2,3,4,5"

    .line 265
    new-array v1, v5, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mProfileAvailableRatType:[I

    .line 319
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initProfileAvailablePdn: flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ProfileAvailablePdnLabels="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ; ProfileAvailableRatType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mProfileAvailableRatType:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 320
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mProfileAvailablePdnLabels:[Ljava/lang/String;

    .line 322
    .end local v0    # "sProfileAvailablePdnLabels":Ljava/lang/String;
    :cond_1
    return-void

    .line 268
    .restart local v0    # "sProfileAvailablePdnLabels":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_WPHONE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 270
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mPhoneType:I

    if-ne v1, v2, :cond_3

    .line 272
    const-string v0, "ota,pam,internet"

    .line 273
    new-array v1, v2, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mProfileAvailableRatType:[I

    goto :goto_0

    .line 277
    :cond_3
    const-string v0, "internet,3rdumts"

    .line 278
    new-array v1, v3, [I

    aput v3, v1, v4

    sput-object v1, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mProfileAvailableRatType:[I

    goto :goto_0

    .line 283
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CSPIRE_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 286
    :cond_5
    const-string v0, "ota,pam,internet"

    .line 287
    new-array v1, v2, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mProfileAvailableRatType:[I

    goto :goto_0

    .line 289
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 293
    const-string v0, "1,2,3,4,5"

    .line 296
    new-array v1, v2, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mProfileAvailableRatType:[I

    goto :goto_0

    .line 299
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->OM_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 302
    const-string v0, "1,2,3,4"

    .line 303
    new-array v1, v2, [I

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mProfileAvailableRatType:[I

    goto/16 :goto_0

    .line 306
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 308
    const-string v0, "ims,admin,internet_kddi,dun1_kddi,dun2_kddi"

    .line 309
    new-array v1, v5, [I

    fill-array-data v1, :array_5

    sput-object v1, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mProfileAvailableRatType:[I

    goto/16 :goto_0

    .line 313
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CKT_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    const-string v0, "internet_ckt"

    .line 316
    new-array v1, v3, [I

    const/4 v2, 0x4

    aput v2, v1, v4

    sput-object v1, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mProfileAvailableRatType:[I

    goto/16 :goto_0

    .line 265
    :array_0
    .array-data 4
        0x1
        0x2
        0x4
    .end array-data

    .line 273
    :array_1
    .array-data 4
        0x2
        0x4
    .end array-data

    .line 287
    :array_2
    .array-data 4
        0x2
        0x4
    .end array-data

    .line 296
    :array_3
    .array-data 4
        0x2
        0x4
    .end array-data

    .line 303
    :array_4
    .array-data 4
        0x2
        0x4
    .end array-data

    .line 309
    :array_5
    .array-data 4
        0x1
        0x2
        0x4
    .end array-data
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1621
    const-string v0, "DPT"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1629
    const-string v0, "DPT"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 1633
    const-string v0, "DPT"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1634
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1617
    const-string v0, "DPT"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1625
    const-string v0, "DPT"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    return-void
.end method

.method private parseServiceTypeString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "types"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 595
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 596
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 597
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    .line 601
    :goto_0
    return-object v0

    .line 599
    .end local v0    # "result":[Ljava/lang/String;
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":[Ljava/lang/String;
    goto :goto_0
.end method

.method private parseServiceTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p1, "types"    # Ljava/lang/String;

    .prologue
    .line 605
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 606
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    const-string v7, ""

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 607
    :cond_0
    const-string v7, "*"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 617
    .local v6, "typeArray":[Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    move-object v6, v7

    check-cast v6, [Ljava/lang/String;

    .line 619
    return-object v6

    .line 609
    .end local v6    # "typeArray":[Ljava/lang/String;
    :cond_2
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 610
    .local v4, "tempString":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 611
    .local v5, "ts":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 612
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setManualIdPwd(Ljava/lang/String;I)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/16 v7, 0x10

    .line 924
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Save CPA "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p2, :cond_1

    const-string v5, "UserName, "

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "len="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 926
    const/4 v3, 0x0

    .line 927
    .local v3, "msg":Landroid/os/Message;
    const/4 v2, 0x0

    .line 928
    .local v2, "length":I
    const-string v0, ""

    .line 929
    .local v0, "actionCmd":Ljava/lang/String;
    if-nez p2, :cond_2

    .line 930
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 931
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 932
    const-string v0, "C827BF75"

    .line 939
    :cond_0
    :goto_1
    const-string v4, "00"

    .line 940
    .local v4, "stringLength":Ljava/lang/String;
    if-ge v2, v7, :cond_3

    .line 941
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 946
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->doASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 947
    .local v1, "cmd":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Save CPA write Cmd len="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 949
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 950
    return-void

    .line 924
    .end local v0    # "actionCmd":Ljava/lang/String;
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "length":I
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "stringLength":Ljava/lang/String;
    :cond_1
    const-string v5, "Pwd, "

    goto :goto_0

    .line 933
    .restart local v0    # "actionCmd":Ljava/lang/String;
    .restart local v2    # "length":I
    .restart local v3    # "msg":Landroid/os/Message;
    :cond_2
    const/4 v5, 0x1

    if-ne p2, v5, :cond_0

    .line 934
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 935
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 936
    const-string v0, "C827C075"

    goto :goto_1

    .line 943
    .restart local v4    # "stringLength":Ljava/lang/String;
    :cond_3
    invoke-static {v2, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method


# virtual methods
.method public IsCustomerSIM(Ljava/lang/String;)Z
    .locals 9
    .param p1, "operator"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 1438
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_WPHONE_CONFIG()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1441
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mSPCS_Mccmnc_List:Ljava/lang/String;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1446
    .local v4, "mMCCMNC":[Ljava/lang/String;
    :goto_0
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 1447
    .local v5, "moperator":Ljava/lang/String;
    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1455
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "mMCCMNC":[Ljava/lang/String;
    .end local v5    # "moperator":Ljava/lang/String;
    :cond_0
    :goto_2
    return v6

    .line 1442
    :catch_0
    move-exception v1

    .line 1443
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[IsCustomerSIM] got exception when split list="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 1444
    const-string v7, "310120,316010"

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "mMCCMNC":[Ljava/lang/String;
    goto :goto_0

    .line 1446
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "moperator":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1451
    .end local v5    # "moperator":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public UserDbSyncUp()V
    .locals 3

    .prologue
    .line 1179
    const-string v0, "New the UserDbSyncUp"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 1181
    new-instance v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;-><init>(Landroid/content/ContentResolver;Lcom/android/internal/telephony/dataconnection/DataProfileTracker;Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mDbSync:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    .line 1184
    return-void
.end method

.method public dataProfileDbChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 409
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mDataprofileDbChangedContext:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mDataprofileDbChangedContext:I

    .line 410
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mDataprofileDbChangedContext:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 414
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->sendMessage(Landroid/os/Message;)Z

    .line 415
    return-void
.end method

.method public delDataProfileList(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 920
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->isDptActive:Z

    .line 334
    sput-object v1, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mProfileAvailablePdnLabels:[Ljava/lang/String;

    .line 335
    sput-object v1, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mProfileAvailableRatType:[I

    .line 336
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->resetRadioForPDNChangetable:[Z

    .line 338
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mAllDataProfilesList:Ljava/util/ArrayList;

    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mDbSync:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mDbSync:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->dispose()V

    .line 343
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mDbSync:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    .line 345
    :cond_0
    return-void
.end method

.method public getAPNParams(Lcom/android/internal/telephony/dataconnection/APNParam;Landroid/os/Message;)V
    .locals 2
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/APNParam;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 988
    const-string v0, "getAPNParams"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 989
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestGetAPNParams(Lcom/android/internal/telephony/dataconnection/APNParam;Landroid/os/Message;)V

    .line 990
    return-void
.end method

.method protected getIsLocalDBReady()Z
    .locals 1

    .prologue
    .line 1612
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->isLocalDBReady:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 349
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->isDptActive:Z

    if-nez v1, :cond_1

    .line 350
    const-string v1, "Ignoring handler messages, DPT marked as disposed."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 355
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 357
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->onDataProfileDbChanged(Ljava/lang/String;I)V

    goto :goto_0

    .line 361
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->onSetOperatorNumeric(Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->onUpdateCanHandleServiceTypeForAllProfile(Ljava/lang/String;I)V

    goto :goto_0

    .line 369
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->onSetUiDefaultApnDone()V

    goto :goto_0

    .line 374
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 375
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 376
    const-string v1, "DPT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set NAI ID fail ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 382
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 383
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 384
    const-string v1, "DPT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set NAI PWD fail ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 390
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->onUpdateAllLocalProfileDataBase(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 394
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->onGetUpdateApnParamsDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 398
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->onSetApnParamsDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 402
    :pswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->onGetApnParamsDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public makeApnSettingByProfile()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mAllDataProfilesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->isLocalDBReady:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1603
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mAllDataProfilesList:Ljava/util/ArrayList;

    .line 1606
    :goto_0
    return-object v0

    .line 1605
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAllDataProfilesList incorrect: isLocalDBReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->isLocalDBReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mAllDataProfilesList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    const-string v0, ", list=null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 1606
    const/4 v0, 0x0

    goto :goto_0

    .line 1605
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public declared-synchronized onDataProfileDbChanged(Ljava/lang/String;I)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "context"    # I

    .prologue
    .line 423
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mDataprofileDbChangedContext:I

    if-eq p2, v1, :cond_0

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataProfileDbChanged [ignored] : reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    :goto_0
    monitor-exit p0

    return-void

    .line 429
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data profile database changed.. Reloading. reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 431
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->isLocalDBReady:Z

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v0, "allDataProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    const-string v1, "admin"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/4 v3, 0x4

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    const-string v1, "default"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/4 v3, 0x4

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 441
    const-string v1, "dun"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE1:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/4 v3, 0x4

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    const-string v1, "dun"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE2:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/4 v3, 0x4

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 445
    :cond_2
    const-string v1, "ims"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/4 v3, 0x4

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    const-string v1, "verizon"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_APP:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/4 v3, 0x4

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    const-string v1, "verizon800"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE1:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/4 v3, 0x4

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CSPIRE_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 457
    :cond_4
    const-string v1, "dun"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_TETHERING:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/4 v3, 0x4

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->OM_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 465
    const-string v1, "ims"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/4 v3, 0x4

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    const-string v1, "dun"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_TETHERING:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/4 v3, 0x4

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_6
    const-string v1, "admin"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    const-string v1, "default"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 475
    const-string v1, "dun"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE1:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    const-string v1, "dun"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE2:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_WPHONE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 479
    const-string v1, "ims"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    const-string v1, "verizon"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_APP:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    const-string v1, "verizon800"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE1:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_WPHONE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 490
    const-string v1, "default"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE2:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_9
    const-string v1, "admin"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    const-string v1, "default"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 498
    const-string v1, "dun"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE1:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    const-string v1, "dun"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE2:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_a
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 502
    :cond_b
    const-string v1, "ims"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    const-string v1, "verizon"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_APP:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    const-string v1, "verizon800"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE1:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    :cond_c
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CSPIRE_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 515
    :cond_d
    const-string v1, "dun"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_TETHERING:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_e
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->OM_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 523
    const-string v1, "ims"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    const-string v1, "dun"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_TETHERING:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    :cond_f
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CSPIRE_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 538
    :cond_10
    const-string v1, "default"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/16 v3, 0x8

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    const-string v1, "dun"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_TETHERING:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/16 v3, 0x8

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    :goto_1
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mAllDataProfilesList:Ljava/util/ArrayList;

    .line 554
    const-string v1, "CREATE_ALL_DATA_PROFILE_DB"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->updateAllLocalProfileDataBase(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 423
    .end local v0    # "allDataProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 543
    .restart local v0    # "allDataProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :cond_11
    :try_start_2
    const-string v1, "default"

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/16 v3, 0x8

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->createDataProfileListMPDN(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;I)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected onGetApnParamsDone(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 993
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 994
    .local v0, "responseMsg":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 995
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 996
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 998
    :cond_0
    return-void
.end method

.method protected onGetUpdateApnParamsDone(Landroid/os/AsyncResult;)V
    .locals 31
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1090
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->updataDataProfileDataBaseDoneNumber:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->updataDataProfileDataBaseDoneNumber:I

    .line 1091
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v30

    .line 1092
    .local v30, "context":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGetUpdateApnParamsDone  updataDataProfileDataBaseDoneNumber= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->updataDataProfileDataBaseDoneNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " context="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 1093
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3

    .line 1094
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/internal/telephony/dataconnection/APNParam;

    .line 1096
    .local v29, "apnValue":Lcom/android/internal/telephony/dataconnection/APNParam;
    if-eqz v29, :cond_3

    .line 1100
    new-instance v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->name:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "null"

    aput-object v17, v15, v16

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->type:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->IPProtocolMapToApnSetting(I)Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v17

    if-eqz v17, :cond_5

    const-string v17, "IP"

    :goto_0
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->PdnLableToClassId(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->rat:I

    move/from16 v20, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->state:I

    move/from16 v21, v0

    if-nez v21, :cond_6

    const/16 v21, 0x0

    :goto_1
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->timer:I

    move/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->apn_maxconn:I

    move/from16 v26, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->apn_maxconn_t:I

    move/from16 v27, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->wait_time:I

    move/from16 v28, v0

    invoke-direct/range {v2 .. v28}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 1113
    .local v2, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->upDateDataProfileList(Lcom/android/internal/telephony/dataconnection/ApnSetting;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1115
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mLocalDBChange:Z

    .line 1119
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mDbSync:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdn_label:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->PdnLableToClassId(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    if-ne v3, v4, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mPhoneType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget v3, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->rat_type:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mPhoneType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    iget v3, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->rat_type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1130
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UpdateDefaultApnName to UI mPhoneType ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mPhoneType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,class id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdn_label:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->PdnLableToClassId(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,apn name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 1131
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mDbSync:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->nvApnUpdate(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    .line 1139
    .end local v2    # "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v29    # "apnValue":Lcom/android/internal/telephony/dataconnection/APNParam;
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->updataDataProfileDataBaseDoneNumber:I

    if-ltz v3, :cond_4

    .line 1140
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->onGetUpdateApnParamsFinalCheck(I)V

    .line 1144
    :cond_4
    return-void

    .line 1100
    .restart local v29    # "apnValue":Lcom/android/internal/telephony/dataconnection/APNParam;
    :cond_5
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->type:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->IPProtocolMapToApnSetting(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    :cond_6
    const/16 v21, 0x1

    goto/16 :goto_1
.end method

.method public onGetUpdateApnParamsFinalCheck(I)V
    .locals 8
    .param p1, "context"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1148
    const/4 v2, 0x0

    .line 1149
    .local v2, "needResetRadio":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGetUpdateApnParamsFinalCheck mLocalDBChange="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mLocalDBChange:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , isLocalDBReady="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->isLocalDBReady:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,context="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,mSetPDNRequestContext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mSetPDNRequestContext:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 1152
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mLocalDBChange:Z

    if-eqz v3, :cond_1

    .line 1153
    const-string v3, "==== AFTER DB CHAGHE Query dp ===="

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 1154
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mAllDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 1155
    .local v0, "dp":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logv(Ljava/lang/String;)V

    goto :goto_0

    .line 1157
    .end local v0    # "dp":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    const-string v3, "=============="

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 1160
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->isLocalDBReady:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mSetPDNRequestContext:I

    if-lt p1, v3, :cond_3

    .line 1164
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->resetRadioForPDNChangetable:[Z

    const/4 v4, 0x5

    aget-boolean v3, v3, v4

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->resetRadioForPDNChangetable:[Z

    const/16 v5, 0xb

    aget-boolean v4, v4, v5

    or-int v2, v3, v4

    .line 1167
    const v3, 0x7fffffff

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mSetPDNRequestContext:I

    .line 1169
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mDataProfileDbChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v4, v7, v5, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1170
    iput-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mLocalDBChange:Z

    .line 1171
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->isLocalDBReady:Z

    .line 1172
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->resetRadioForPDNChangetable:[Z

    invoke-static {v3, v6}, Ljava/util/Arrays;->fill([ZZ)V

    .line 1174
    :cond_3
    return-void
.end method

.method public onResetToDefaultforApnSetting()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1546
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResetToDefaultforApnSetting mEnableResetToDefault= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mEnableResetToDefault:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 1547
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mEnableResetToDefault:Z

    if-eqz v3, :cond_3

    .line 1549
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1550
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "persist.radio.apn.update"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1551
    .local v0, "customizeAPN":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResetToDefaultforApnSetting customizeAPN= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 1552
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1553
    const-string v3, "apn"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    const-string v1, "apn = \'VZWINTERNET\' AND insert_by = \'internal\'"

    .line 1555
    .local v1, "updateWhere":Ljava/lang/String;
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mPhoneType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1556
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CDMA_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1567
    .end local v1    # "updateWhere":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mDbSync:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    if-eqz v3, :cond_0

    .line 1568
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mDbSync:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->enableAllowNVUpdate(Z)V

    .line 1573
    .end local v0    # "customizeAPN":Ljava/lang/String;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_1
    return-void

    .line 1559
    .restart local v0    # "customizeAPN":Ljava/lang/String;
    .restart local v1    # "updateWhere":Ljava/lang/String;
    .restart local v2    # "values":Landroid/content/ContentValues;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1564
    .end local v1    # "updateWhere":Ljava/lang/String;
    :cond_2
    const-string v3, "persist.radio.apn.update = null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1571
    .end local v0    # "customizeAPN":Ljava/lang/String;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_3
    const-string v3, "onResetToDefaultforApnSetting disable."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onSetApnParamsDone(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1034
    const-string v1, "onSetApnParamsDone"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 1035
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 1037
    .local v0, "responseMsg":Landroid/os/Message;
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 1044
    :goto_0
    if-eqz v0, :cond_0

    .line 1045
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1046
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1048
    :cond_0
    return-void

    .line 1042
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when set the APN to modem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSetOperatorNumeric(Ljava/lang/String;)V
    .locals 3
    .param p1, "newOperatorNumeric"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Operator numeric changed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  >>  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 569
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    .line 570
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->setUserApnIndex(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    .line 572
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "466"

    :goto_0
    const-string v1, "466"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mEnableResetToDefault:Z

    .line 581
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnableResetToDefault = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mEnableResetToDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 584
    return-void

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 574
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->IsCustomerSIM(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 575
    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mEnableResetToDefault:Z

    goto :goto_1

    .line 576
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->LRA_LTE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 577
    :cond_3
    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mEnableResetToDefault:Z

    goto :goto_1

    .line 579
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mEnableResetToDefault:Z

    goto :goto_1
.end method

.method onSetUiDefaultApnDone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1360
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->onSetUiDefaultApnDoneCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->onSetUiDefaultApnDoneCount:I

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetUiDefaultApnDone onSetUiDefaultApnNameDoneCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->onSetUiDefaultApnDoneCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logv(Ljava/lang/String;)V

    .line 1362
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->onSetUiDefaultApnDoneCount:I

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mProfileAvailableRatType:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 1364
    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->onSetUiDefaultApnDoneCount:I

    .line 1365
    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->isLocalDBReady:Z

    .line 1367
    const-string v0, "SET_APN_FROM_UI_TO_MODEM_DONE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->updateAllLocalProfileDataBase(Ljava/lang/String;)V

    .line 1370
    :cond_0
    return-void
.end method

.method public declared-synchronized onUpdateAllLocalProfileDataBase(Ljava/lang/String;I)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "context"    # I

    .prologue
    .line 1061
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUpdateAllLocalProfileDataBaseContext:I

    if-eq p2, v2, :cond_1

    .line 1063
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdateAllLocalProfileDataBase [ignored] : reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1087
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1067
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdateAllLocalProfileDataBase: reason ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logw(Ljava/lang/String;)V

    .line 1069
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mProfileAvailablePdnLabels:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mProfileAvailableRatType:[I

    if-nez v2, :cond_3

    .line 1071
    :cond_2
    const-string v2, "onUpdateAllLocalProfileDataBase: mapping table is null"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1061
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1075
    :cond_3
    :try_start_2
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->updataDataProfileDataBaseDoneNumber:I

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mProfileAvailablePdnLabels:[Ljava/lang/String;

    array-length v3, v3

    neg-int v3, v3

    sget-object v4, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mProfileAvailableRatType:[I

    array-length v4, v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->updataDataProfileDataBaseDoneNumber:I

    .line 1077
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set updataDataProfileDataBaseDoneNumber ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->updataDataProfileDataBaseDoneNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 1078
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mProfileAvailablePdnLabels:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1080
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mProfileAvailableRatType:[I

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 1082
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v3, Lcom/android/internal/telephony/dataconnection/APNParam;

    sget-object v4, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mProfileAvailablePdnLabels:[Ljava/lang/String;

    aget-object v4, v4, v0

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mProfileAvailableRatType:[I

    aget v5, v5, v1

    invoke-direct {v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/APNParam;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetAPNParams(Lcom/android/internal/telephony/dataconnection/APNParam;Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1080
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1078
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public declared-synchronized onUpdateCanHandleServiceTypeForAllProfile(Ljava/lang/String;I)V
    .locals 9
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "context"    # I

    .prologue
    const/16 v8, 0x17

    .line 1483
    monitor-enter p0

    :try_start_0
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUpdateCanHandleServiceTypeForAllProfileContext:I

    if-eq p2, v6, :cond_1

    .line 1485
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUpdateCanHandleServiceTypeForAllProfile [ignored] : reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1538
    :cond_0
    monitor-exit p0

    return-void

    .line 1488
    :cond_1
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUpdateCanHandleServiceTypeForAllProfile reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 1489
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1490
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mAllDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 1491
    .local v2, "dp":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1492
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getRatType()I

    move-result v6

    if-nez v6, :cond_2

    .line 1494
    const-string v6, "updateCanHandleServiceType NONE type continue"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1483
    .end local v2    # "dp":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1496
    .restart local v2    # "dp":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getRatType()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_7

    .line 1497
    const-string v6, "updateCanHandleServiceType 3GPP2 type"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 1498
    iget-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUseDefaultProfileForTethering:Z

    if-nez v6, :cond_6

    .line 1500
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getClassID()Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_TETHERING:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    if-ne v6, v7, :cond_4

    .line 1501
    const-string v6, "dun"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1502
    const-string v6, "default"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1503
    const-string v6, "mms"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1526
    :cond_3
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_9

    .line 1527
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 1528
    .local v5, "serviceTypes":[Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    .line 1529
    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setServiceType([Ljava/lang/String;)V

    .line 1530
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCanHandleServiceType dp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1506
    .end local v5    # "serviceTypes":[Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    .local v1, "apnid":I
    :goto_1
    if-ge v1, v8, :cond_3

    .line 1507
    const/4 v6, 0x3

    if-eq v1, v6, :cond_5

    .line 1508
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1506
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1514
    .end local v1    # "apnid":I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "apnid":I
    :goto_2
    if-ge v1, v8, :cond_3

    .line 1515
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1514
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1519
    .end local v1    # "apnid":I
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "apnid":I
    :goto_3
    if-ge v1, v8, :cond_3

    .line 1520
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getClassID()Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v6

    sget v7, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUserApnSettingIndex:I

    invoke-static {v1, v7}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->get(II)Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v7

    if-ne v6, v7, :cond_8

    .line 1521
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1519
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1532
    .end local v1    # "apnid":I
    :cond_9
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/String;

    .line 1533
    .restart local v5    # "serviceTypes":[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "null"

    aput-object v7, v5, v6

    .line 1534
    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setServiceType([Ljava/lang/String;)V

    .line 1535
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCanHandleServiceType Clear Service type dp ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public onUserApnUpdate(Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z
    .locals 2
    .param p1, "classId"    # Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;
    .param p2, "apn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "From UI onUserApnUpdate classId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,apn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 1191
    sget-object v0, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    if-eq p1, v0, :cond_0

    .line 1192
    const/4 v0, 0x0

    .line 1198
    :goto_0
    return v0

    .line 1197
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->setApnFromUiToModem(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    .line 1198
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public registerForDataProfileDbChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 663
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 664
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mDataProfileDbChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 665
    return-void
.end method

.method public resetRadioForDisconnectingPdn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1461
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "C8C913"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V

    .line 1464
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUpdateAllLocalProfileDataBaseContext:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mSetPDNRequestContext:I

    .line 1465
    const-string v0, "SET_APN_PARAMS_DONE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->updateAllLocalProfileDataBase(Ljava/lang/String;)V

    .line 1466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetRadioForDisconnectingPdn: mPDNRequestLock.wait++ context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mSetPDNRequestContext:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 1468
    return v3
.end method

.method public setAPNParams(Lcom/android/internal/telephony/dataconnection/APNParam;Landroid/os/Message;)V
    .locals 3
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/APNParam;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAPNParams apn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/APNParam;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pdn_label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 1007
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x5

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->requestSetAPNParams(Lcom/android/internal/telephony/dataconnection/APNParam;Landroid/os/Message;)V

    .line 1012
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->PdnLableToClassId(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    if-ne v1, v2, :cond_0

    .line 1014
    :try_start_0
    const-string v1, "persist.radio.apn.update"

    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/APNParam;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config the property persist.radio.apn.update ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "persist.radio.apn.update"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    :cond_0
    :goto_0
    return-void

    .line 1016
    :catch_0
    move-exception v0

    .line 1017
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config the property persist.radio.apn.update exception e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setApnFromUiToModem(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 17
    .param p1, "uiApnName"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    .line 1205
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->setUserApnIndex(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    .line 1206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->IsCustomerSIM(Ljava/lang/String;)Z

    move-result v16

    .line 1207
    .local v16, "isCustomer":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM card is customer sim:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 1210
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mEnableResetToDefault:Z

    if-eqz v2, :cond_0

    .line 1211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mDbSync:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    if-eqz v2, :cond_0

    .line 1212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mDbSync:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->enableAllowNVUpdate(Z)V

    .line 1216
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mAllDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 1218
    .local v14, "dp":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getClassID()Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v3

    if-eq v2, v3, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_WPHONE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v16, :cond_3

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE2:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getClassID()Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 1222
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 1223
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {v14, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setCarrier(Ljava/lang/String;)V

    .line 1228
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 1229
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    invoke-virtual {v14, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setMMSC(Ljava/lang/String;)V

    .line 1234
    :goto_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    if-eqz v2, :cond_7

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 1235
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v14, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setHttpProxy(Ljava/lang/String;)V

    .line 1240
    :goto_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 1241
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v14, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setHttpPort(Ljava/lang/String;)V

    .line 1246
    :goto_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    if-eqz v2, :cond_9

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 1247
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-virtual {v14, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setMmsProxy(Ljava/lang/String;)V

    .line 1252
    :goto_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    if-eqz v2, :cond_a

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    .line 1253
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    invoke-virtual {v14, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setMmsPort(Ljava/lang/String;)V

    .line 1260
    :goto_6
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    .line 1261
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    invoke-virtual {v14, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setApnID(I)V

    .line 1266
    :goto_7
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    if-eqz v2, :cond_c

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    .line 1267
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v14, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setApnNumeric(Ljava/lang/String;)V

    .line 1276
    :cond_3
    :goto_8
    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getRatType()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_11

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getRatType()I

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getClassID()Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v3

    if-ne v2, v3, :cond_11

    if-eqz v16, :cond_11

    .line 1283
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->LRA_LTE_CONFIG()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setApnNameFromUiToModem Default Apn Change From="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n,To="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 1288
    :cond_4
    const/4 v1, 0x0

    .line 1289
    .local v1, "setApnValue":Lcom/android/internal/telephony/dataconnection/APNParam;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1290
    sget v2, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUserApnSettingIndex:I

    invoke-virtual {v14, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setApnIndex(I)V

    .line 1294
    new-instance v1, Lcom/android/internal/telephony/dataconnection/APNParam;

    .end local v1    # "setApnValue":Lcom/android/internal/telephony/dataconnection/APNParam;
    const/4 v2, -0x1

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getLabel()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    const/4 v5, -0x1

    move-object/from16 v0, p1

    iget-boolean v6, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    if-eqz v6, :cond_d

    const/4 v6, 0x1

    :goto_9
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->timer:I

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getRatType()I

    move-result v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->dns_pri:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->dns_sec:Ljava/lang/String;

    invoke-direct/range {v1 .. v13}, Lcom/android/internal/telephony/dataconnection/APNParam;-><init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1322
    .restart local v1    # "setApnValue":Lcom/android/internal/telephony/dataconnection/APNParam;
    :goto_a
    if-eqz v1, :cond_1

    .line 1323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setApnNameFromUiToModem for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getRatType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " network ,setAPNparams="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/APNParam;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 1324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->requestSetAPNParams(Lcom/android/internal/telephony/dataconnection/APNParam;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1225
    .end local v1    # "setApnValue":Lcom/android/internal/telephony/dataconnection/APNParam;
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setCarrier(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1231
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setMMSC(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1237
    :cond_7
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setHttpProxy(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1243
    :cond_8
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setHttpPort(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1249
    :cond_9
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setMmsProxy(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1255
    :cond_a
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setMmsPort(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1263
    :cond_b
    const/4 v2, -0x1

    invoke-virtual {v14, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setApnID(I)V

    goto/16 :goto_7

    .line 1269
    :cond_c
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setApnNumeric(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1294
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_9

    .line 1307
    .restart local v1    # "setApnValue":Lcom/android/internal/telephony/dataconnection/APNParam;
    :cond_e
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->LRA_LTE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1309
    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getRatType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    .line 1310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setApnNameFromUiToModem for LRA only set the 3GPP profile apn From="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",To="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 1311
    new-instance v1, Lcom/android/internal/telephony/dataconnection/APNParam;

    .end local v1    # "setApnValue":Lcom/android/internal/telephony/dataconnection/APNParam;
    const/4 v2, -0x1

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getLabel()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getRatType()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-direct/range {v1 .. v11}, Lcom/android/internal/telephony/dataconnection/APNParam;-><init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;I)V

    .restart local v1    # "setApnValue":Lcom/android/internal/telephony/dataconnection/APNParam;
    goto/16 :goto_a

    .line 1313
    :cond_f
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->sendEmptyMessage(I)Z

    goto/16 :goto_a

    .line 1319
    :cond_10
    new-instance v1, Lcom/android/internal/telephony/dataconnection/APNParam;

    .end local v1    # "setApnValue":Lcom/android/internal/telephony/dataconnection/APNParam;
    const/4 v2, -0x1

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getLabel()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getRatType()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-direct/range {v1 .. v11}, Lcom/android/internal/telephony/dataconnection/APNParam;-><init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;I)V

    .restart local v1    # "setApnValue":Lcom/android/internal/telephony/dataconnection/APNParam;
    goto/16 :goto_a

    .line 1328
    .end local v1    # "setApnValue":Lcom/android/internal/telephony/dataconnection/APNParam;
    :cond_11
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_WPHONE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getRatType()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_12

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getRatType()I

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_CUSTOMIZE2:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getClassID()Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v3

    if-ne v2, v3, :cond_12

    if-nez v16, :cond_12

    .line 1333
    const/4 v1, 0x0

    .line 1335
    .restart local v1    # "setApnValue":Lcom/android/internal/telephony/dataconnection/APNParam;
    sget v2, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUserApnSettingIndex:I

    invoke-virtual {v14, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setApnIndex(I)V

    .line 1337
    new-instance v1, Lcom/android/internal/telephony/dataconnection/APNParam;

    .end local v1    # "setApnValue":Lcom/android/internal/telephony/dataconnection/APNParam;
    const/4 v2, -0x1

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getLabel()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getRatType()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-direct/range {v1 .. v11}, Lcom/android/internal/telephony/dataconnection/APNParam;-><init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1338
    .restart local v1    # "setApnValue":Lcom/android/internal/telephony/dataconnection/APNParam;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setApnNameFromUiToModem for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getRatType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " network ,setAPNparams="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/APNParam;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 1339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->requestSetAPNParams(Lcom/android/internal/telephony/dataconnection/APNParam;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1343
    .end local v1    # "setApnValue":Lcom/android/internal/telephony/dataconnection/APNParam;
    :cond_12
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getRatType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getClassID()Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 1347
    sget v2, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUserApnSettingIndex:I

    invoke-virtual {v14, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setApnIndex(I)V

    goto/16 :goto_0

    .line 1357
    .end local v14    # "dp":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_13
    return-void
.end method

.method public setOperatorNumeric(Ljava/lang/String;)V
    .locals 2
    .param p1, "newOperatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 560
    const/16 v1, 0x9

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 562
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->sendMessage(Landroid/os/Message;)Z

    .line 563
    return-void
.end method

.method public setUserApnIndex(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 4
    .param p1, "uiDefaultApn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1373
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1374
    if-eqz p1, :cond_3

    .line 1375
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    const-string v1, "uno.au-net.ne.jp"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1376
    sput v2, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUserApnSettingIndex:I

    .line 1382
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUserApnIndex ApnIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUserApnSettingIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 1429
    :cond_0
    :goto_1
    const-string v0, "SET_USER_APN_INDEX"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->updateCanHandleServiceTypeForAllProfile(Ljava/lang/String;)V

    .line 1431
    return-void

    .line 1377
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    const-string v1, "au.au-net.ne.jp"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1378
    sput v3, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUserApnSettingIndex:I

    goto :goto_0

    .line 1380
    :cond_2
    const/4 v0, 0x3

    sput v0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUserApnSettingIndex:I

    goto :goto_0

    .line 1384
    :cond_3
    const-string v0, "setUserApnIndex uiDefaultApn == null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 1388
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1393
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mPhoneType:I

    if-ne v0, v2, :cond_6

    .line 1395
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->IsCustomerSIM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1397
    sput v2, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUserApnSettingIndex:I

    .line 1416
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->IsCustomerSIM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1418
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mDbSync:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->enableAllowNVUpdate(Z)V

    .line 1425
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUserApnIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mPhoneType:I

    if-ne v0, v2, :cond_9

    const-string v0, "GSM Mode"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ApnIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUserApnSettingIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 1401
    :cond_5
    sput v3, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUserApnSettingIndex:I

    goto :goto_2

    .line 1406
    :cond_6
    sput v1, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUserApnSettingIndex:I

    goto :goto_2

    .line 1411
    :cond_7
    const-string v0, "mccmnc is currently unavilable. Set to default index"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 1412
    sput v1, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUserApnSettingIndex:I

    goto :goto_2

    .line 1422
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mDbSync:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->enableAllowNVUpdate(Z)V

    goto :goto_3

    .line 1425
    :cond_9
    const-string v0, "CDMA Mode"

    goto :goto_4
.end method

.method public unregisterForDataProfileDbChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mDataProfileDbChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 669
    return-void
.end method

.method public upDateDataProfileList(Lcom/android/internal/telephony/dataconnection/ApnSetting;I)Z
    .locals 9
    .param p1, "apnValue"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .param p2, "context"    # I

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 790
    const/4 v3, 0x0

    .line 791
    .local v3, "needDisconnectAllDataCall":Z
    const/4 v1, 0x0

    .line 793
    .local v1, "foundDB":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upDateDataProfileList apn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,rat_type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->rat_type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,carrierEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,timer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->timer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 796
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mAllDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 797
    .local v0, "dp":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->rat_type:I

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getRatType()I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->pdn_label:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->PdnLableToClassId(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getClassID()Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 798
    const/4 v1, 0x1

    .line 802
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setSupportRoamingIpVersion(Ljava/lang/String;)V

    .line 805
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getApn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 807
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setApn(Ljava/lang/String;)V

    .line 808
    const/4 v3, 0x1

    .line 810
    iget v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->rat_type:I

    if-ne v4, v7, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getClassID()Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    if-ne v4, v5, :cond_1

    .line 812
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mSetPDNRequestContext:I

    if-lt p2, v4, :cond_1

    .line 814
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->resetRadioForPDNChangetable:[Z

    aput-boolean v6, v4, v8

    .line 820
    :cond_1
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getSupportIpVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 822
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setSupportIpVersion(Ljava/lang/String;)V

    .line 823
    const/4 v3, 0x1

    .line 825
    iget v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->rat_type:I

    if-ne v4, v7, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getClassID()Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    if-ne v4, v5, :cond_2

    .line 827
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mSetPDNRequestContext:I

    if-lt p2, v4, :cond_2

    .line 829
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->resetRadioForPDNChangetable:[Z

    aput-boolean v6, v4, v8

    .line 835
    :cond_2
    iget-boolean v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getCarrierEnable()Z

    move-result v5

    if-eq v4, v5, :cond_4

    .line 837
    iget-boolean v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setCarrierEnable(Z)V

    .line 838
    const/4 v3, 0x1

    .line 839
    iget v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->rat_type:I

    if-ne v4, v7, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getClassID()Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    if-ne v4, v5, :cond_3

    .line 841
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mSetPDNRequestContext:I

    if-lt p2, v4, :cond_3

    .line 843
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->resetRadioForPDNChangetable:[Z

    const/16 v5, 0xb

    aput-boolean v6, v4, v5

    .line 847
    :cond_3
    iget v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->rat_type:I

    if-ne v4, v7, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getClassID()Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    if-ne v4, v5, :cond_4

    .line 849
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mSetPDNRequestContext:I

    if-lt p2, v4, :cond_4

    .line 851
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->resetRadioForPDNChangetable:[Z

    aput-boolean v6, v4, v8

    .line 859
    :cond_4
    iget v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->timer:I

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getTimer()I

    move-result v5

    if-eq v4, v5, :cond_5

    .line 861
    iget v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->timer:I

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setTimer(I)V

    .line 862
    const/4 v3, 0x1

    .line 863
    iget v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->rat_type:I

    if-ne v4, v7, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getClassID()Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    if-ne v4, v5, :cond_5

    .line 865
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mSetPDNRequestContext:I

    if-lt p2, v4, :cond_5

    .line 867
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->resetRadioForPDNChangetable:[Z

    aput-boolean v6, v4, v8

    .line 873
    :cond_5
    iget v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn_maxconn:I

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getMaxConn()I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 874
    iget v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn_maxconn:I

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setMaxConn(I)V

    .line 875
    const/4 v3, 0x1

    .line 876
    iget v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->rat_type:I

    if-ne v4, v7, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getClassID()Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    if-ne v4, v5, :cond_6

    .line 877
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mSetPDNRequestContext:I

    if-lt p2, v4, :cond_6

    .line 878
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->resetRadioForPDNChangetable:[Z

    aput-boolean v6, v4, v8

    .line 882
    :cond_6
    iget v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn_maxconn_t:I

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getMaxConn_T()I

    move-result v5

    if-eq v4, v5, :cond_7

    .line 883
    iget v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn_maxconn_t:I

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setMaxConn_T(I)V

    .line 884
    const/4 v3, 0x1

    .line 885
    iget v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->rat_type:I

    if-ne v4, v7, :cond_7

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getClassID()Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    if-ne v4, v5, :cond_7

    .line 886
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mSetPDNRequestContext:I

    if-lt p2, v4, :cond_7

    .line 887
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->resetRadioForPDNChangetable:[Z

    aput-boolean v6, v4, v8

    .line 891
    :cond_7
    iget v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->wait_time:I

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getWaitTime()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 892
    iget v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->wait_time:I

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setWaitTime(I)V

    .line 893
    const/4 v3, 0x1

    .line 894
    iget v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->rat_type:I

    if-ne v4, v7, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getClassID()Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    if-ne v4, v5, :cond_0

    .line 895
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mSetPDNRequestContext:I

    if-lt p2, v4, :cond_0

    .line 896
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->resetRadioForPDNChangetable:[Z

    aput-boolean v6, v4, v8

    goto/16 :goto_0

    .line 904
    .end local v0    # "dp":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_8
    if-eqz v3, :cond_a

    .line 915
    :cond_9
    :goto_1
    return v3

    .line 910
    :cond_a
    if-nez v1, :cond_9

    .line 913
    const-string v4, "NO SUCH DB in DATABASE"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateAllLocalProfileDataBase(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1051
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUpdateAllLocalProfileDataBaseContext:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUpdateAllLocalProfileDataBaseContext:I

    .line 1052
    const/4 v1, 0x7

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUpdateAllLocalProfileDataBaseContext:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1056
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1057
    return-void
.end method

.method public updateCanHandleServiceTypeForAllProfile(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1473
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUpdateCanHandleServiceTypeForAllProfileContext:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUpdateCanHandleServiceTypeForAllProfileContext:I

    .line 1474
    const/16 v1, 0xa

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->mUpdateCanHandleServiceTypeForAllProfileContext:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1478
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1479
    return-void
.end method
