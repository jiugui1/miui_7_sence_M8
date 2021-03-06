.class public Lcom/android/internal/telephony/HtcTelephony;
.super Lcom/android/internal/telephony/IHtcTelephony$Stub;
.source "HtcTelephony.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HtcTelephony$1;,
        Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;,
        Lcom/android/internal/telephony/HtcTelephony$AuthRequest;,
        Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;,
        Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;,
        Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;,
        Lcom/android/internal/telephony/HtcTelephony$ECaveResult;
    }
.end annotation


# static fields
.field private static final CMD_CLOSE_CHANNEL:I = 0x81

.field private static final CMD_EXCHANGE_APDU:I = 0x7d

.field private static final CMD_HTC_CSIM_AUTH_RSP:I = 0x87

.field private static final CMD_HTC_CW_QUERY_CAVE:I = 0x66

.field private static final CMD_HTC_CW_QUERY_CAVE_RESULT:I = 0x67

.field private static final CMD_HTC_CW_QUERY_MD5:I = 0x6a

.field private static final CMD_HTC_CW_QUERY_MD5_RESULT:I = 0x6b

.field private static final CMD_HTC_CW_QUERY_SSD_UPDATE:I = 0x72

.field private static final CMD_HTC_CW_QUERY_SSD_UPDATE_RESULT:I = 0x73

.field private static final CMD_HTC_CW_QUERY_UIMAUTH:I = 0x76

.field private static final CMD_HTC_CW_QUERY_UIMAUTH_RESULT:I = 0x77

.field private static final CMD_HTC_CW_QUERY_VPM:I = 0x6e

.field private static final CMD_HTC_CW_QUERY_VPM_RESULT:I = 0x6f

.field private static final CMD_HTC_CW_REQUEST_CAVE:I = 0x64

.field private static final CMD_HTC_CW_REQUEST_CAVE_RESULT:I = 0x65

.field private static final CMD_HTC_CW_REQUEST_GET_PCSCF_ADDRESSES:I = 0x7b

.field private static final CMD_HTC_CW_REQUEST_GET_PCSCF_ADDRESSES_RESULT:I = 0x7c

.field private static final CMD_HTC_CW_REQUEST_GET_VOLTE_SIP_REG_FAILURE:I = 0x78

.field private static final CMD_HTC_CW_REQUEST_GET_VOLTE_SIP_REG_FAILURE_RESULT:I = 0x79

.field private static final CMD_HTC_CW_REQUEST_MD5:I = 0x68

.field private static final CMD_HTC_CW_REQUEST_MD5_RESULT:I = 0x69

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE:I = 0x70

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE_CONFIRM:I = 0x74

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE_CONFIRM_RESULT:I = 0x75

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE_RESULT:I = 0x71

.field private static final CMD_HTC_CW_REQUEST_VPM:I = 0x6c

.field private static final CMD_HTC_CW_REQUEST_VPM_RESULT:I = 0x6d

.field private static final CMD_HTC_GET_SECTOR_ID:I = 0x83

.field private static final CMD_HTC_GET_SECTOR_ID_DONE:I = 0x84

.field private static final CMD_HTC_PDN_CHANGE_TAKE_EFFECT:I = 0xa5

.field private static final CMD_HTC_PERMANENT_DETACH_LTE:I = 0x88

.field private static final CMD_HTC_PERMANENT_DETACH_LTE_DONE:I = 0x8b

.field private static final CMD_HTC_PERMANENT_DETACH_LTE_STEP2:I = 0x89

.field private static final CMD_HTC_PERMANENT_DETACH_LTE_STEP3:I = 0x8a

.field private static final CMD_HTC_REQUEST_AKA:I = 0x8c

.field private static final CMD_HTC_REQUEST_AKA_DONE:I = 0x8d

.field private static final CMD_HTC_REQUEST_GBA_BOOTSTRAP:I = 0x8e

.field private static final CMD_HTC_REQUEST_GBA_BOOTSTRAP_DONE:I = 0x8f

.field private static final CMD_HTC_REQUEST_GBA_NAF:I = 0x90

.field private static final CMD_HTC_REQUEST_GBA_NAF_DONE:I = 0x91

.field private static final CMD_HTC_REQUEST_GET_LTE_RF_BAND_INFO:I = 0x98

.field private static final CMD_HTC_REQUEST_GET_LTE_RF_BAND_INFO_DONE:I = 0x99

.field private static final CMD_HTC_REQUEST_GET_LTE_TxRx_INFO:I = 0x96

.field private static final CMD_HTC_REQUEST_GET_LTE_TxRx_INFO_DONE:I = 0x97

.field private static final CMD_HTC_REQUEST_QUERY_PDN:I = 0xa0

.field private static final CMD_HTC_REQUEST_QUERY_PDN_DONE:I = 0xa1

.field private static final CMD_HTC_REQUEST_SET_PDN:I = 0xa3

.field private static final CMD_HTC_REQUEST_SET_PDN_DONE:I = 0xa4

.field private static final CMD_HTC_REQUEST_UICC_AUTHENTICATION:I = 0x85

.field private static final CMD_HTC_REQUEST_UICC_AUTHENTICATION_DONE:I = 0x86

.field private static final CMD_HTC_REQUEST_WRITE_GBA_PARAM:I = 0x92

.field private static final CMD_HTC_REQUEST_WRITE_GBA_PARAM_DONE:I = 0x93

.field private static final CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL:I = 0x94

.field private static final CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL_RESULT:I = 0x95

.field private static final CMD_OPEN_CHANNEL:I = 0x7f

.field private static final DBG:Z

.field private static final DEBUG_SIGNATURE:Z = false

.field private static final DELAY_WHEN_SIGNATURE_MISMATCH_MS:J = 0x1388L

.field private static final EVENT_CLOSE_CHANNEL_DONE:I = 0x82

.field private static final EVENT_EXCHANGE_APDU_DONE:I = 0x7e

.field private static final EVENT_OPEN_CHANNEL_DONE:I = 0x80

.field public static final HTCTELEPHONY_SERVICE:Ljava/lang/String; = "htctelephony"

.field private static final HTC_CW_AUTHEN_AKACAVE_SUPPORTED:I = 0x4

.field private static final HTC_CW_AUTHEN_CAVE_SUPPORTED:I = 0x1

.field private static final HTC_CW_AUTHEN_MD5_SUPPORTED:I = 0x2

.field private static final RADIO_TECH_LTE:I = 0xe

.field private static final READ_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field private static final RESULT_HTC_CW_AUTHEN_FAIL:I = 0x2

.field private static final RESULT_HTC_CW_AUTHEN_SUCCESS:I = 0x0

.field private static final SDBG:Z = false

.field static final TAG:Ljava/lang/String; = "HtcTelephony"


# instance fields
.field private lastError:I

.field private mCSIMResult:Landroid/os/Bundle;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

.field private mOldNV_10:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPlatformSignature:[Landroid/content/pm/Signature;

.field private mShareSignature:[Landroid/content/pm/Signature;

.field private mSignatureLock:Ljava/lang/Object;

.field mTeleMgr:Landroid/telephony/TelephonyManager;

.field private rejectAll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/HtcTelephony;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 1023
    invoke-direct {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;-><init>()V

    .line 150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mLock:Ljava/lang/Object;

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/HtcTelephony;->rejectAll:Z

    .line 2659
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mSignatureLock:Ljava/lang/Object;

    .line 1024
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1025
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    .line 1026
    new-instance v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;-><init>(Lcom/android/internal/telephony/HtcTelephony;Lcom/android/internal/telephony/HtcTelephony$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    .line 1027
    iput-object p2, p0, Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1028
    const-string v0, "HtcTelephony"

    const-string v1, "new HtcTelephony in framework"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephony;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephony;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/HtcTelephony;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephony;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephony;->pdnChangeTakeEffect()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/HtcTelephony;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephony;
    .param p1, "x1"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/android/internal/telephony/HtcTelephony;->lastError:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/HtcTelephony;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephony;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/HtcTelephony;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephony;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephony;->mCSIMResult:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/HtcTelephony;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephony;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mOldNV_10:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/HtcTelephony;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephony;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephony;->mOldNV_10:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/HtcTelephony;Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephony;
    .param p1, "x1"    # Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcTelephony;->pdnQuery(Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/HtcTelephony;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephony;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcTelephony;->pdnQueryDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/HtcTelephony;Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephony;
    .param p1, "x1"    # Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcTelephony;->pdnUpdate(Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/HtcTelephony;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephony;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcTelephony;->pdnUpdateDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V
    .locals 3
    .param p1, "os"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "data"    # [B

    .prologue
    .line 1382
    array-length v0, p2

    .line 1385
    .local v0, "len":I
    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 1386
    const/16 v0, 0xff

    .line 1387
    const-string v1, "HtcTelephony"

    const-string v2, "Too long value in GBA Bootstrapping parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1391
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1392
    return-void
.end method

.method private callingWithGivenSignature([Landroid/content/pm/Signature;IZ)Z
    .locals 13
    .param p1, "givenSignature"    # [Landroid/content/pm/Signature;
    .param p2, "uid"    # I
    .param p3, "delayWhenNotMatch"    # Z

    .prologue
    .line 2718
    iget-object v10, p0, Lcom/android/internal/telephony/HtcTelephony;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 2719
    .local v7, "packages":[Ljava/lang/String;
    if-eqz v7, :cond_4

    array-length v10, v7

    if-lez v10, :cond_4

    .line 2728
    iget-object v10, p0, Lcom/android/internal/telephony/HtcTelephony;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/HtcTelephony;->getPackageSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v8

    .line 2729
    .local v8, "pkgSignatures":[Landroid/content/pm/Signature;
    if-eqz v8, :cond_4

    array-length v10, v8

    if-lez v10, :cond_4

    .line 2730
    iget-object v11, p0, Lcom/android/internal/telephony/HtcTelephony;->mSignatureLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2731
    if-nez p1, :cond_0

    .line 2733
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/HtcTelephony;->mSignatureLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2738
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2740
    if-eqz p1, :cond_3

    array-length v10, p1

    if-lez v10, :cond_3

    .line 2741
    move-object v0, p1

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v9, v0, v3

    .line 2742
    .local v9, "sig":Landroid/content/pm/Signature;
    move-object v1, v8

    .local v1, "arr$":[Landroid/content/pm/Signature;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v5, :cond_2

    aget-object v6, v1, v2

    .line 2743
    .local v6, "matchSig":Landroid/content/pm/Signature;
    if-eqz v6, :cond_1

    invoke-virtual {v9, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2747
    const/4 v10, 0x1

    .line 2763
    .end local v1    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "matchSig":Landroid/content/pm/Signature;
    .end local v8    # "pkgSignatures":[Landroid/content/pm/Signature;
    .end local v9    # "sig":Landroid/content/pm/Signature;
    :goto_3
    return v10

    .line 2738
    .restart local v8    # "pkgSignatures":[Landroid/content/pm/Signature;
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 2742
    .restart local v1    # "arr$":[Landroid/content/pm/Signature;
    .restart local v2    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "matchSig":Landroid/content/pm/Signature;
    .restart local v9    # "sig":Landroid/content/pm/Signature;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2741
    .end local v6    # "matchSig":Landroid/content/pm/Signature;
    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_1

    .line 2753
    .end local v1    # "arr$":[Landroid/content/pm/Signature;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v9    # "sig":Landroid/content/pm/Signature;
    :cond_3
    const-string v10, "HtcTelephony"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No signature found : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v7, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    const/4 v10, 0x1

    goto :goto_3

    .line 2758
    .end local v8    # "pkgSignatures":[Landroid/content/pm/Signature;
    :cond_4
    if-eqz p3, :cond_5

    .line 2760
    const-wide/16 v10, 0x1388

    :try_start_3
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 2763
    :cond_5
    :goto_4
    const/4 v10, 0x0

    goto :goto_3

    .line 2761
    :catch_0
    move-exception v10

    goto :goto_4

    .line 2734
    .restart local v8    # "pkgSignatures":[Landroid/content/pm/Signature;
    :catch_1
    move-exception v10

    goto :goto_0
.end method

.method private callingWithPlatformSignature(Z)Z
    .locals 2
    .param p1, "delayWhenNotMatch"    # Z

    .prologue
    .line 2700
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephony;->getCallingUid()I

    move-result v0

    .line 2701
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_1

    .line 2702
    :cond_0
    const/4 v1, 0x1

    .line 2704
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mPlatformSignature:[Landroid/content/pm/Signature;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/internal/telephony/HtcTelephony;->callingWithGivenSignature([Landroid/content/pm/Signature;IZ)Z

    move-result v1

    goto :goto_0
.end method

.method private callingWithShareSignature(Z)Z
    .locals 2
    .param p1, "delayWhenNotMatch"    # Z

    .prologue
    .line 2709
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephony;->getCallingUid()I

    move-result v0

    .line 2710
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 2711
    const/4 v1, 0x1

    .line 2713
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mShareSignature:[Landroid/content/pm/Signature;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/internal/telephony/HtcTelephony;->callingWithGivenSignature([Landroid/content/pm/Signature;IZ)Z

    move-result v1

    goto :goto_0
.end method

.method public static dualGSMPhoneEnable()Z
    .locals 1

    .prologue
    .line 2654
    const/4 v0, 0x0

    return v0
.end method

.method public static dualPhoneEnable()Z
    .locals 1

    .prologue
    .line 2554
    const/4 v0, 0x0

    return v0
.end method

.method private exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "channel"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    .prologue
    .line 1177
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2703

    if-eq v1, v2, :cond_0

    .line 1178
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1179
    :cond_0
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> exchangeAPDU "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    const/16 v11, 0x7d

    new-instance v1, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;)V

    invoke-direct {p0, v11, v1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1183
    .local v9, "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< exchangeAPDU "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    iget v1, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    shl-int/lit8 v1, v1, 0x8

    iget v2, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    add-int/2addr v1, v2

    const/high16 v2, 0x10000

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 1186
    .local v10, "s":Ljava/lang/String;
    iget-object v1, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v1, :cond_1

    .line 1187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1189
    :cond_1
    return-object v10
.end method

.method public static getDefMainPhoneType()I
    .locals 1

    .prologue
    .line 2561
    const/4 v0, -0x1

    return v0
.end method

.method public static getDefSubPhoneType()I
    .locals 1

    .prologue
    .line 2568
    const/4 v0, -0x1

    return v0
.end method

.method public static getMainPhoneType()I
    .locals 1

    .prologue
    .line 2575
    const/4 v0, -0x1

    return v0
.end method

.method private getPackageSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 2
    .param p1, "mPm"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2682
    const/16 v1, 0x40

    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2684
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 2689
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2695
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v1

    .line 2694
    :catch_0
    move-exception v1

    .line 2695
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPhoneTypeByName(Ljava/lang/String;)I
    .locals 1
    .param p0, "phoneName"    # Ljava/lang/String;

    .prologue
    .line 2601
    const/4 v0, -0x1

    return v0
.end method

.method public static getSubPhoneType()I
    .locals 1

    .prologue
    .line 2588
    const/4 v0, -0x1

    return v0
.end method

.method private initSignatureChecking(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2669
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mSignatureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2670
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPlatformSignature:[Landroid/content/pm/Signature;

    if-nez v0, :cond_0

    .line 2671
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2672
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "com.android.phone"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephony;->getPackageSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPlatformSignature:[Landroid/content/pm/Signature;

    .line 2673
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "com.android.providers.contacts"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephony;->getPackageSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mShareSignature:[Landroid/content/pm/Signature;

    .line 2674
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mSignatureLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2676
    :cond_0
    monitor-exit v1

    .line 2677
    return-void

    .line 2676
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isDefMainPhone(I)Z
    .locals 1
    .param p0, "phoneType"    # I

    .prologue
    .line 2622
    const/4 v0, 0x0

    return v0
.end method

.method public static isMainPhone(I)Z
    .locals 1
    .param p0, "phoneType"    # I

    .prologue
    .line 2615
    const/4 v0, 0x0

    return v0
.end method

.method public static isValidPhoneType(I)Z
    .locals 1
    .param p0, "phoneType"    # I

    .prologue
    .line 2608
    const/4 v0, 0x0

    return v0
.end method

.method private pdnChangeTakeEffect()V
    .locals 2

    .prologue
    .line 2088
    new-instance v0, Lcom/android/internal/telephony/HtcLtePdnSetting;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcLtePdnSetting;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 2089
    .local v0, "pdnSetting":Lcom/android/internal/telephony/HtcLtePdnSetting;
    invoke-virtual {v0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->resetPdnForSettingsChange()V

    .line 2090
    return-void
.end method

.method private pdnQuery(Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .prologue
    .line 2034
    if-eqz p1, :cond_0

    .line 2035
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v3, 0xa1

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2036
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/internal/telephony/HtcLtePdnSetting;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/HtcLtePdnSetting;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 2037
    .local v1, "pdnSetting":Lcom/android/internal/telephony/HtcLtePdnSetting;
    iget-object v2, p1, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getPdnSettings2([Ljava/lang/String;Landroid/os/Message;)V

    .line 2039
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "pdnSetting":Lcom/android/internal/telephony/HtcLtePdnSetting;
    :cond_0
    return-void
.end method

.method private pdnQueryDone(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 2042
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 2043
    .local v0, "request":Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2044
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 2045
    const-string v1, "HtcTelephony"

    const-string v2, "Query PDN result"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2051
    :goto_0
    monitor-enter v0

    .line 2052
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2053
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2054
    return-void

    .line 2049
    :cond_0
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query PDN ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2053
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private pdnUpdate(Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .prologue
    .line 2064
    if-eqz p1, :cond_0

    .line 2065
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v3, 0xa4

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2066
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/internal/telephony/HtcLtePdnSetting;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/HtcLtePdnSetting;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 2067
    .local v1, "pdnSetting":Lcom/android/internal/telephony/HtcLtePdnSetting;
    iget-object v2, p1, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->setPdnSettings2([Ljava/lang/String;Landroid/os/Message;)V

    .line 2069
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "pdnSetting":Lcom/android/internal/telephony/HtcLtePdnSetting;
    :cond_0
    return-void
.end method

.method private pdnUpdateDone(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 2072
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 2073
    .local v0, "request":Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set PDN ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    iput-object v1, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2075
    monitor-enter v0

    .line 2076
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2077
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2078
    return-void

    .line 2074
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 2077
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private printException()V
    .locals 0

    .prologue
    .line 1049
    return-void
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "command"    # I
    .param p2, "argument"    # Ljava/lang/Object;

    .prologue
    .line 991
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 992
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This method will deadlock if called from the main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 995
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 996
    .local v1, "request":Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 997
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1000
    monitor-enter v1

    .line 1001
    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 1003
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1004
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1008
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1009
    iget-object v2, v1, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v2

    .line 1008
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private sendRequestAsync(I)V
    .locals 1
    .param p1, "command"    # I

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->sendEmptyMessage(I)Z

    .line 1020
    return-void
.end method

.method public static setMainPhoneType(I)V
    .locals 0
    .param p0, "phoneType"    # I

    .prologue
    .line 2582
    return-void
.end method

.method public static setSubPhoneType(I)V
    .locals 0
    .param p0, "phoneType"    # I

    .prologue
    .line 2595
    return-void
.end method


# virtual methods
.method public akaAuthentication([B[B)Landroid/os/Bundle;
    .locals 6
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B

    .prologue
    .line 1436
    const/4 v1, 0x0

    .line 1437
    .local v1, "result":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephony;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1438
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v5, 0x87

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, p1, p2, v4}, Lcom/android/internal/telephony/Phone;->uiccAkaAuthenticate([B[BLandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1443
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephony;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 1444
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mCSIMResult:Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1448
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 1449
    return-object v1

    .line 1445
    :catch_0
    move-exception v0

    .line 1446
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "HtcTelephony"

    const-string v4, "interrupted while trying to sendAllowedCSIMCommand"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1448
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public calculateAkaResponse([B[B)Landroid/os/Bundle;
    .locals 4
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B

    .prologue
    const/4 v1, 0x0

    .line 1327
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1328
    const-string v2, "HtcTelephony"

    const-string v3, "calculateAkaResponse(): No valid ISIM!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :goto_0
    return-object v1

    .line 1332
    :cond_0
    const/16 v2, 0x8c

    new-instance v3, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;-><init>(Lcom/android/internal/telephony/HtcTelephony;[B[B)V

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1334
    .local v0, "result":Ljava/lang/Object;
    instance-of v2, v0, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/os/Bundle;

    .end local v0    # "result":Ljava/lang/Object;
    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;
    .locals 4
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B

    .prologue
    const/4 v1, 0x0

    .line 1339
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1340
    const-string v2, "HtcTelephony"

    const-string v3, "calculateGbaBootstrappingResponse(): No valid ISIM!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    :goto_0
    return-object v1

    .line 1344
    :cond_0
    const/16 v2, 0x8e

    new-instance v3, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;-><init>(Lcom/android/internal/telephony/HtcTelephony;[B[B)V

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1346
    .local v0, "result":Ljava/lang/Object;
    instance-of v2, v0, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/os/Bundle;

    .end local v0    # "result":Ljava/lang/Object;
    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public calculateNafExternalKey([B)[B
    .locals 4
    .param p1, "nafId"    # [B

    .prologue
    const/4 v1, 0x0

    .line 1351
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1352
    const-string v2, "HtcTelephony"

    const-string v3, "requestImsAkaAuthentication(): No valid ISIM!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :goto_0
    return-object v1

    .line 1356
    :cond_0
    const/16 v2, 0x90

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1358
    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_1

    check-cast v0, [B

    .end local v0    # "result":Ljava/lang/Object;
    check-cast v0, [B

    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public cancelMissedCallsNotification()V
    .locals 2

    .prologue
    .line 2811
    const-string v0, "HtcTelephony"

    const-string v1, "cancelMissedCallsNotification() implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2813
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->cancelMissedCallsNotification()V

    .line 2814
    :cond_0
    return-void
.end method

.method public checkTestIcc()Z
    .locals 2

    .prologue
    .line 1968
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1970
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->checkTestIcc()Z

    move-result v0

    .line 1971
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeIccLogicalChannel(I)Z
    .locals 4
    .param p1, "channel"    # I

    .prologue
    .line 1216
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2703

    if-eq v1, v2, :cond_0

    .line 1217
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1218
    :cond_0
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> closeIccLogicalChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    const/16 v1, 0x81

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1221
    .local v0, "err":Ljava/lang/Integer;
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< closeIccLogicalChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 1223
    const/4 v1, 0x1

    .line 1225
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public confirmFirstDataRoaming()V
    .locals 2

    .prologue
    .line 1666
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1668
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->confirmFirstDataRoaming()V

    .line 1669
    :cond_0
    return-void
.end method

.method public dialWithoutDelay(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1710
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1712
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->dialWithoutDelay(Landroid/content/Intent;)Z

    .line 1713
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public disableLocationUpdatesExt(I)V
    .locals 0
    .param p1, "phoneType"    # I

    .prologue
    .line 2477
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 1033
    const-string v0, "HtcTelephony"

    const-string v1, "dispose in framework"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    return-void
.end method

.method public enableLocationUpdatesExt(I)V
    .locals 0
    .param p1, "phoneType"    # I

    .prologue
    .line 2469
    return-void
.end method

.method public enableMpdp(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 2206
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2208
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->enableMpdp(Z)V

    .line 2209
    :cond_0
    return-void
.end method

.method public enableRegistrationState_wifi_call(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 2432
    const-string v0, "HtcTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableRegistrationState_wifi_call: on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->enableRegistrationState_wifi_call(ILandroid/os/Message;)V

    .line 2435
    if-eqz p1, :cond_0

    .line 2436
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->wifi2GRetry()V

    .line 2440
    :cond_0
    return-void

    .line 2433
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableRegistrationState_wifi_call_ext(ZI)V
    .locals 2
    .param p1, "on"    # Z
    .param p2, "phoneType"    # I

    .prologue
    .line 2445
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    return-void
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 1039
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1043
    :goto_0
    const-string v1, "HtcTelephony"

    const-string v2, "PhoneSubInfo finalized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    return-void

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "HtcTelephony"

    const-string v2, "Error while finalizing:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2853
    const-string v0, "HtcTelephony"

    const-string v1, "generalGetter implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    const/4 v0, 0x0

    return-object v0
.end method

.method public generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2858
    const-string v0, "HtcTelephony"

    const-string v1, "generalSetter implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveCallConnectTime()J
    .locals 2

    .prologue
    .line 1827
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1829
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveCallConnectTime()J

    move-result-wide v0

    .line 1830
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getActiveCallNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1809
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1811
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveCallNumber()Ljava/lang/String;

    move-result-object v0

    .line 1812
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActivePDPList()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2215
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2217
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActivePDPList()[Ljava/lang/String;

    move-result-object v0

    .line 2218
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBackgroundCallNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1818
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1820
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getBackgroundCallNumber()Ljava/lang/String;

    move-result-object v0

    .line 1821
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCFUNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1861
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1863
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCFUNumber()Ljava/lang/String;

    move-result-object v0

    .line 1864
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCFUNumberFromOperator()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1888
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1890
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCFUNumberFromOperator()Ljava/lang/String;

    move-result-object v0

    .line 1891
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallStateExt(I)I
    .locals 1
    .param p1, "phoneType"    # I

    .prologue
    .line 2530
    const/4 v0, 0x0

    return v0
.end method

.method public getCardCheckedState()I
    .locals 1

    .prologue
    .line 2648
    const/4 v0, 0x0

    return v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocationExt(I)Landroid/os/Bundle;
    .locals 2
    .param p1, "phoneType"    # I

    .prologue
    .line 2459
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentActiveCallDuration()J
    .locals 2

    .prologue
    .line 2845
    const-string v0, "HtcTelephony"

    const-string v1, "getCurrentActiveCallDuration() implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentCallState()I
    .locals 2

    .prologue
    .line 1985
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1987
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentCallState()I

    move-result v0

    .line 1988
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDataActivityExt(I)I
    .locals 1
    .param p1, "phoneType"    # I

    .prologue
    .line 2538
    const/4 v0, 0x0

    return v0
.end method

.method public getDataStateExt(I)I
    .locals 1
    .param p1, "phoneType"    # I

    .prologue
    .line 2547
    const/4 v0, 0x0

    return v0
.end method

.method public getDetailIccStatus()[I
    .locals 2

    .prologue
    .line 1651
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1653
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDetailIccStatus()[I

    move-result-object v0

    .line 1654
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDetailIccStatusExt(I)[I
    .locals 2
    .param p1, "phoneType"    # I

    .prologue
    .line 2828
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalDataRoamingOption()I
    .locals 3

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getGlobalDataRoamingOption()I

    move-result v0

    .line 1468
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getGprsState()I
    .locals 2

    .prologue
    .line 1677
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1679
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getGprsState()I

    move-result v0

    .line 1680
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getGprsStateExt(I)I
    .locals 2
    .param p1, "phoneType"    # I

    .prologue
    .line 2837
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    const/4 v0, 0x0

    return v0
.end method

.method public getGsmNetworkType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1959
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1961
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getGsmNetworkType()Ljava/lang/String;

    move-result-object v0

    .line 1962
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHtcDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcDeviceSvn(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcLine1Number(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLine1Number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcNetworkType([Ljava/lang/String;)I
    .locals 2
    .param p1, "stack"    # [Ljava/lang/String;

    .prologue
    .line 2116
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2118
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getHtcNetworkType([Ljava/lang/String;)I

    move-result v0

    .line 2119
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getHtcServiceStateExt(I)I
    .locals 1
    .param p1, "phoneType"    # I

    .prologue
    .line 2639
    const/4 v0, 0x0

    return v0
.end method

.method public getHtcSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 1558
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "Requires READ_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1560
    .local v0, "number":Ljava/lang/String;
    return-object v0
.end method

.method public getIncallRecordingFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1903
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1905
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIncallRecordingFileName()Ljava/lang/String;

    move-result-object v0

    .line 1906
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKddiUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2775
    const-string v0, ""

    return-object v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 1230
    iget v0, p0, Lcom/android/internal/telephony/HtcTelephony;->lastError:I

    return v0
.end method

.method public getNeighboringCellInfoExt(I)Ljava/util/List;
    .locals 1
    .param p1, "phoneType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2485
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkTypeExt(I)I
    .locals 1
    .param p1, "phoneType"    # I

    .prologue
    .line 2494
    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkTypeNameExt(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneType"    # I

    .prologue
    .line 2503
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPdnSettings(I)Ljava/lang/String;
    .locals 2
    .param p1, "profileSlot"    # I

    .prologue
    .line 2000
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2002
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getPdnSettings(I)Ljava/lang/String;

    move-result-object v0

    .line 2003
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPdnSettings2([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "profile"    # [Ljava/lang/String;

    .prologue
    .line 2024
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcTelephony;->initSignatureChecking(Landroid/content/Context;)V

    .line 2025
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcTelephony;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2026
    const/16 v0, 0xa0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 2029
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneState()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 2409
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPowerKeyFlag()Z
    .locals 2

    .prologue
    .line 1852
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1854
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPowerKeyFlag()Z

    move-result v0

    .line 1855
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreferredNetworkType()I
    .locals 2

    .prologue
    .line 2098
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2100
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPreferredNetworkType()I

    move-result v0

    .line 2101
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRejectAllCalls()Z
    .locals 3

    .prologue
    .line 2330
    const-string v0, "HtcTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NFC] getRejectAllCalls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/HtcTelephony;->rejectAll:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    iget-boolean v0, p0, Lcom/android/internal/telephony/HtcTelephony;->rejectAll:Z

    return v0
.end method

.method public getSectorId(I)Ljava/lang/String;
    .locals 5
    .param p1, "requestedNetworkType"    # I

    .prologue
    const/4 v1, 0x0

    .line 1312
    if-ltz p1, :cond_0

    const/4 v2, 0x1

    if-le p1, v2, :cond_1

    .line 1313
    :cond_0
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSectorId(): Invalid requestedNetworkType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1319
    :goto_0
    return-object v0

    .line 1317
    :cond_1
    const/16 v2, 0x83

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1319
    .local v0, "result":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getServiceState()I
    .locals 2

    .prologue
    .line 1690
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1692
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v0

    .line 1693
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSubsidyLockTypes()I
    .locals 2

    .prologue
    .line 1623
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1625
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubsidyLockTypes()I

    move-result v0

    .line 1626
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getUSSDVerificationStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2161
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2163
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getUSSDVerificationStatus()Ljava/lang/String;

    move-result-object v0

    .line 2164
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUSSDVerificationStrings()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2176
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2178
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getUSSDVerificationStrings()[Ljava/lang/String;

    move-result-object v0

    .line 2179
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVTLoopBackMode()Z
    .locals 2

    .prologue
    .line 1951
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1953
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVTLoopBackMode()Z

    move-result v0

    .line 1954
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVTSimulatedMode()Z
    .locals 2

    .prologue
    .line 1936
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1938
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVTSimulatedMode()Z

    .line 1939
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceMessageCountExt(I)I
    .locals 1
    .param p1, "phoneType"    # I

    .prologue
    .line 2521
    const/4 v0, 0x0

    return v0
.end method

.method public hasIccCardExt(I)Z
    .locals 1
    .param p1, "phoneType"    # I

    .prologue
    .line 2512
    const/4 v0, 0x0

    return v0
.end method

.method public hasVTCall()Z
    .locals 2

    .prologue
    .line 1976
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1978
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasVTCall()Z

    move-result v0

    .line 1979
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hello_getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public htcCdmaEndCall()Z
    .locals 2

    .prologue
    .line 1779
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1781
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->htcCdmaEndCall()Z

    move-result v0

    .line 1782
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public htcCdmaExitRadioPowerSaveMode()V
    .locals 2

    .prologue
    .line 1752
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1754
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->htcCdmaExitRadioPowerSaveMode()V

    .line 1755
    :cond_0
    return-void
.end method

.method public htcModemLinkOn()Z
    .locals 2

    .prologue
    .line 1763
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1765
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->htcModemLinkOn()Z

    move-result v0

    .line 1766
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCallWaiting()Z
    .locals 2

    .prologue
    .line 1870
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1872
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isCallWaiting()Z

    move-result v0

    .line 1873
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFdnEnabled()Z
    .locals 2

    .prologue
    .line 1790
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1792
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isFdnEnabled()Z

    move-result v0

    .line 1793
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInService(I)Z
    .locals 1
    .param p1, "phoneType"    # I

    .prologue
    .line 2630
    const/4 v0, 0x0

    return v0
.end method

.method public isUimPinEnabled()Z
    .locals 1

    .prologue
    .line 2454
    const/4 v0, 0x0

    return v0
.end method

.method public launchCallForwardingSettings()V
    .locals 3

    .prologue
    .line 2340
    const-string v1, "HtcTelephony"

    const-string v2, "[NFC] launchCallForwardingSettings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 2344
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2345
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2346
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2347
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2349
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public notifyKeyEvent(I)V
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    .line 2400
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 2401
    .local v0, "catInstance":Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 2402
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyKeyEvent keyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/cat/AppInterface;->notifyUserActivity(I)V

    .line 2405
    :cond_0
    return-void
.end method

.method public notifyScreenBusy(Z)V
    .locals 4
    .param p1, "busy"    # Z

    .prologue
    .line 2386
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 2387
    .local v0, "catInstance":Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 2388
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyScreenBusy busy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/cat/AppInterface;->updateIdleScreenState(Z)V

    .line 2391
    :cond_0
    return-void
.end method

.method public openIccLogicalChannel(Ljava/lang/String;)I
    .locals 4
    .param p1, "AID"    # Ljava/lang/String;

    .prologue
    .line 1206
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2703

    if-eq v1, v2, :cond_0

    .line 1207
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1208
    :cond_0
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> openIccLogicalChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    const/16 v1, 0x7f

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1210
    .local v0, "channel":Ljava/lang/Integer;
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< openIccLogicalChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public performHtcPhoneAction(I)V
    .locals 2
    .param p1, "action"    # I

    .prologue
    .line 2198
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2200
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->performHtcPhoneAction(I)V

    .line 2201
    :cond_0
    return-void
.end method

.method public performHtcPhoneActionExt(II)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "phoneType"    # I

    .prologue
    .line 2833
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    return-void
.end method

.method public queryCAVE()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1065
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    const/16 v0, 0x66

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryMD5()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1101
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    const/16 v0, 0x6a

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public querySSDUpdate()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1075
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    const/16 v0, 0x72

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryUIMAUTH()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1106
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    const/16 v0, 0x76

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryVPM()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1090
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const/16 v0, 0x6e

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public requestCAVE(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "randu"    # Ljava/lang/String;

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    const/16 v0, 0x64

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestCW_UW_DREG()V
    .locals 2

    .prologue
    .line 2286
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2288
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->requestCW_UW_DREG()V

    .line 2289
    :cond_0
    return-void
.end method

.method public requestCW_UW_REG()V
    .locals 2

    .prologue
    .line 2279
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2281
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->requestCW_UW_REG()V

    .line 2282
    :cond_0
    return-void
.end method

.method public requestEhrpdDomainNameChangeState()I
    .locals 2

    .prologue
    .line 2134
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2136
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->requestEhrpdDomainNameChangeState()I

    move-result v0

    .line 2137
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public requestGetBtid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1284
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetBtid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetDOMAIN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1242
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetDOMAIN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetEhrpdDeviceCapability()I
    .locals 2

    .prologue
    .line 2150
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2152
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->requestGetEhrpdDeviceCapability()I

    move-result v0

    .line 2153
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public requestGetEhrpdDisableCapability()I
    .locals 2

    .prologue
    .line 2142
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2144
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->requestGetEhrpdDisableCapability()I

    move-result v0

    .line 2145
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public requestGetGID1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->requestGetGID1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetHasISIM()Z
    .locals 1

    .prologue
    .line 1272
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v0

    return v0
.end method

.method public requestGetIMPI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1237
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetIMPI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetIMPU()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1247
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetIMPU()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetIMSI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "phonetype"    # Ljava/lang/String;

    .prologue
    .line 1258
    invoke-static {p1}, Lcom/android/internal/telephony/HtcIsimData;->GetIMSI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetIsGBASupported()Z
    .locals 1

    .prologue
    .line 1276
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->isGBASupported()Z

    move-result v0

    return v0
.end method

.method public requestGetKeyLifetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1288
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetKeyLifetime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetLTERFBandInfo()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2801
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string v4, "HtcTelephony"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2803
    const/16 v2, 0x98

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2804
    .local v0, "result":Ljava/lang/Object;
    instance-of v2, v0, [I

    if-eqz v2, :cond_0

    check-cast v0, [I

    .end local v0    # "result":Ljava/lang/Object;
    check-cast v0, [I

    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public requestGetLTETxRxInfo()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2793
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string v4, "HtcTelephony"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2795
    const/16 v2, 0x96

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2796
    .local v0, "result":Ljava/lang/Object;
    instance-of v2, v0, [I

    if-eqz v2, :cond_0

    check-cast v0, [I

    .end local v0    # "result":Ljava/lang/Object;
    check-cast v0, [I

    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public requestGetMobileNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "phonetype"    # Ljava/lang/String;

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    invoke-static {p1}, Lcom/android/internal/telephony/HtcIsimData;->GetMobileNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetPCSCF()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1252
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetPCSCF()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public requestGetPCSCFAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "ifc_name"    # Ljava/lang/String;

    .prologue
    .line 1142
    const/16 v1, 0x7b

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1143
    .local v0, "returnResult":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 1144
    const/4 v0, 0x0

    .line 1146
    .end local v0    # "returnResult":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "returnResult":Ljava/lang/Object;
    :cond_0
    check-cast v0, [Ljava/lang/String;

    .end local v0    # "returnResult":Ljava/lang/Object;
    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public requestGetRand()[B
    .locals 1

    .prologue
    .line 1280
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetRand()[B

    move-result-object v0

    return-object v0
.end method

.method public requestGetSIMType()I
    .locals 1

    .prologue
    .line 2355
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->requestGetSIMType()I

    move-result v0

    return v0
.end method

.method public requestGetVolteSipRegFailure()I
    .locals 2

    .prologue
    .line 1138
    const/16 v0, 0x78

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public requestISIMRead(IIIII)Ljava/lang/String;
    .locals 6
    .param p1, "command"    # I
    .param p2, "field"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I

    .prologue
    .line 2245
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2247
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/TelephonyManager;->requestISIMRead(IIIII)Ljava/lang/String;

    move-result-object v0

    .line 2248
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1295
    if-nez p1, :cond_0

    .line 1296
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestImsAkaAuthentication(): Invalid data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :goto_0
    return-object v0

    .line 1300
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1301
    const-string v1, "HtcTelephony"

    const-string v2, "requestImsAkaAuthentication(): No valid ISIM!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1305
    :cond_1
    const/16 v1, 0x85

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1307
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public requestLtePermanentlyDetached()Z
    .locals 3

    .prologue
    .line 2296
    const/16 v1, 0x88

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2297
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "chapid"    # Ljava/lang/String;
    .param p2, "chapchallengelength"    # Ljava/lang/String;
    .param p3, "chpachallenge"    # Ljava/lang/String;

    .prologue
    .line 1095
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 1097
    .local v0, "paraMD5":[Ljava/lang/String;
    const/16 v1, 0x68

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public requestQueryISIMSupported()Z
    .locals 2

    .prologue
    .line 2236
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2238
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->requestQueryISIMSupported()Z

    move-result v0

    .line 2239
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestResetWSIMState()Z
    .locals 2

    .prologue
    .line 2261
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2263
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->requestResetWSIMState()Z

    move-result v0

    .line 2264
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestSSDUpdate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "randssd"    # Ljava/lang/String;

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    const/16 v0, 0x70

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestSSDUpdateConfirm(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "authbs"    # Ljava/lang/String;

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    const/16 v0, 0x74

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestSendKddiSmsDeliver([B)Landroid/os/Bundle;
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 2786
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestSetEhrpdDisableCapability(I)V
    .locals 2
    .param p1, "ehrpdmode"    # I

    .prologue
    .line 2127
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2129
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->requestSetEhrpdDisableCapability(I)V

    .line 2130
    :cond_0
    return-void
.end method

.method public requestSetFastDormancy(II)V
    .locals 3
    .param p1, "module"    # I
    .param p2, "mode"    # I

    .prologue
    .line 2304
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 2305
    const-string v0, "HtcTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSetFastDormancy: module="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestSetFastDormancy(IILandroid/os/Message;)V

    .line 2308
    :cond_0
    return-void
.end method

.method public requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 2253
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2255
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2256
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestSetLBSNTFY(I)V
    .locals 2
    .param p1, "lbsvalue"    # I

    .prologue
    .line 2271
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2273
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->requestSetLBSNTFY(I)V

    .line 2274
    :cond_0
    return-void
.end method

.method public requestSetMultiRABTrafficThrottling(II)V
    .locals 3
    .param p1, "module"    # I
    .param p2, "mode"    # I

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 1484
    const-string v0, "HtcTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSetMultiRABTrafficThrottling: module="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestSetMultiRABTrafficThrottling(IILandroid/os/Message;)V

    .line 1488
    :cond_0
    return-void
.end method

.method public requestVPM()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1085
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    const/16 v0, 0x6c

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public resetPdnForSettingsChange()V
    .locals 2

    .prologue
    .line 2015
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2017
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->resetPdnForSettingsChange()V

    .line 2018
    :cond_0
    return-void
.end method

.method public resetPdnForSettingsChange2()V
    .locals 1

    .prologue
    .line 2081
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcTelephony;->initSignatureChecking(Landroid/content/Context;)V

    .line 2082
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcTelephony;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2083
    const/16 v0, 0xa5

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcTelephony;->sendRequestAsync(I)V

    .line 2085
    :cond_0
    return-void
.end method

.method public sendAT_BRIC()V
    .locals 2

    .prologue
    .line 1701
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1703
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->sendAT_BRIC()V

    .line 1704
    :cond_0
    return-void
.end method

.method public sendAT_PushMail(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    .line 1737
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->sendAT_PushMail(II)V

    .line 1740
    :cond_0
    return-void
.end method

.method public sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 1800
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1802
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1803
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendCmmbAuth3GReq([B[B)[B
    .locals 2
    .param p1, "szRAND"    # [B
    .param p2, "szAUTN"    # [B

    .prologue
    .line 1912
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1914
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->sendCmmbAuth3GReq([B[B)[B

    move-result-object v0

    .line 1915
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendCmmbAuthGSMReq([B)[B
    .locals 2
    .param p1, "szRAND"    # [B

    .prologue
    .line 1920
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1922
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->sendCmmbAuthGSMReq([B)[B

    move-result-object v0

    .line 1923
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendLanguageChange(I)V
    .locals 2
    .param p1, "languageCode"    # I

    .prologue
    .line 2224
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2226
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->sendLanguageChange(I)V

    .line 2227
    :cond_0
    return-void
.end method

.method public sendMTRejectMessage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2769
    const/4 v0, 0x0

    return v0
.end method

.method public setCFUNumber(ZLjava/lang/String;)Z
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "dialNumber"    # Ljava/lang/String;

    .prologue
    .line 1879
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1881
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setCFUNumber(ZLjava/lang/String;)Z

    move-result v0

    .line 1882
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDataEnabled(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "rand"    # [B
    .param p2, "btid"    # Ljava/lang/String;
    .param p3, "keyLifetime"    # Ljava/lang/String;

    .prologue
    .line 1364
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1365
    const-string v1, "HtcTelephony"

    const-string v2, "setGbaBootstrappingParams(): No valid ISIM!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :goto_0
    return-void

    .line 1368
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/internal/telephony/HtcIsimData;->SetRand([B)V

    .line 1369
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/android/internal/telephony/HtcIsimData;->SetBtid(Ljava/lang/String;)V

    .line 1370
    :cond_2
    if-eqz p3, :cond_3

    invoke-static {p3}, Lcom/android/internal/telephony/HtcIsimData;->SetKeyLifetime(Ljava/lang/String;)V

    .line 1372
    :cond_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1374
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephony;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V

    .line 1375
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcTelephony;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V

    .line 1376
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcTelephony;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V

    .line 1378
    const/16 v1, 0x92

    new-instance v2, Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;

    const/16 v3, 0x6fd5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;-><init>(Lcom/android/internal/telephony/HtcTelephony;I[B)V

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setGlobalDataRoamingOption(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "Requires MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 1475
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setGlobalDataRoamingOption(I)V

    .line 1476
    :cond_0
    return-void
.end method

.method public setKddiOtaStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 2781
    return-void
.end method

.method public setPdnSettings(ILjava/lang/String;)V
    .locals 2
    .param p1, "profileSlot"    # I
    .param p2, "settings"    # Ljava/lang/String;

    .prologue
    .line 2008
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2010
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setPdnSettings(ILjava/lang/String;)V

    .line 2011
    :cond_0
    return-void
.end method

.method public setPdnSettings2([Ljava/lang/String;)V
    .locals 1
    .param p1, "profile"    # [Ljava/lang/String;

    .prologue
    .line 2057
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcTelephony;->initSignatureChecking(Landroid/content/Context;)V

    .line 2058
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcTelephony;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2059
    const/16 v0, 0xa3

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2061
    :cond_0
    return-void
.end method

.method public setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p1, "activePhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1153
    return-void
.end method

.method public setPolicyDataEnabled(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2374
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setPolicyDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setPowerKeyFlag()V
    .locals 2

    .prologue
    .line 1844
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1846
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->setPowerKeyFlag()V

    .line 1847
    :cond_0
    return-void
.end method

.method public setPreferredNetworkType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 2106
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2108
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(I)V

    .line 2109
    :cond_0
    return-void
.end method

.method public setPreferredNetworkType_wifi_call(I)Z
    .locals 3
    .param p1, "networkType"    # I

    .prologue
    .line 2420
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    .line 2421
    const/16 v1, 0x94

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2422
    .local v0, "err":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 2423
    const/4 v1, 0x1

    .line 2426
    .end local v0    # "err":Ljava/lang/Integer;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRejectAllCalls(Z)V
    .locals 3
    .param p1, "reject"    # Z

    .prologue
    .line 2319
    const-string v0, "HtcTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NFC] setRejectAllCalls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    iput-boolean p1, p0, Lcom/android/internal/telephony/HtcTelephony;->rejectAll:Z

    .line 2321
    return-void
.end method

.method public setTimeZone(ZI)V
    .locals 2
    .param p1, "sign"    # Z
    .param p2, "offset"    # I

    .prologue
    .line 1727
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setTimeZone(ZI)V

    .line 1730
    :cond_0
    return-void
.end method

.method public setUSSDVerificationStatus(Ljava/lang/String;)V
    .locals 2
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 2169
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2171
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setUSSDVerificationStatus(Ljava/lang/String;)V

    .line 2172
    :cond_0
    return-void
.end method

.method public setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ussd"    # Ljava/lang/String;
    .param p2, "hexCode"    # Ljava/lang/String;
    .param p3, "digits"    # Ljava/lang/String;

    .prologue
    .line 2188
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2190
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2191
    :cond_0
    return-void
.end method

.method public setUserDataEnabled(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2369
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUserDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setVTLoopBackMode(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1944
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1946
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setVTLoopBackMode(Z)V

    .line 1947
    :cond_0
    return-void
.end method

.method public setVTSimulatedMode(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1929
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1931
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setVTSimulatedMode(Z)V

    .line 1932
    :cond_0
    return-void
.end method

.method public showIncallScreen()V
    .locals 0

    .prologue
    .line 2415
    return-void
.end method

.method public supplyPinExt(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "phoneType"    # I

    .prologue
    .line 2823
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2824
    const/4 v0, 0x0

    return v0
.end method

.method public supplyPukExt(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "phoneType"    # I

    .prologue
    .line 2818
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2819
    const/4 v0, 0x0

    return v0
.end method

.method public supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 1638
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1640
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1641
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchHoldAndActiveCall()V
    .locals 2

    .prologue
    .line 1836
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1838
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->switchHoldAndActiveCall()V

    .line 1839
    :cond_0
    return-void
.end method

.method public transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;

    .prologue
    .line 1195
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/HtcTelephony;->exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "channel"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    .prologue
    .line 1201
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/HtcTelephony;->exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newpin"    # Ljava/lang/String;

    .prologue
    .line 1610
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1613
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateRegDregState(II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "expire"    # I

    .prologue
    .line 1112
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1115
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "cw_reg_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1117
    const-string v1, "cw_reg_expire"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1118
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1119
    return-void
.end method

.method public updateSipInviteState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # I
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "port"    # Ljava/lang/String;
    .param p4, "streamId"    # Ljava/lang/String;

    .prologue
    .line 1124
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    const-string v1, "cdma.cw.dataip"

    invoke-static {v1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    const-string v1, "cdma.cw.dataport"

    invoke-static {v1, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    const-string v1, "cdma.cw.streamid"

    invoke-static {v1, p4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.ACTION_CW_SIP_INVITE_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1130
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "cw_sip_invite_result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1131
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1132
    return-void
.end method
