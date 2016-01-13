.class public Lcom/android/internal/telephony/cdma/HtcCdmaAccount;
.super Landroid/os/Handler;
.source "HtcCdmaAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;
    }
.end annotation


# static fields
.field private static final ARG2_ACCESS_FROM_ICC:I = 0xa

.field private static final ARG2_ACCESS_FROM_ICC_PROXY:I = 0x14

.field private static final ARG2_ACCESS_FROM_NV:I = 0x0

.field private static final DBG:Z = true

.field private static final DBG_DETAIL:Z = true

.field private static final EVENT_ICCPROXY_LOADED:I = 0x6f

.field private static final EVENT_ICCPROXY_UPDATED:I = 0x6e

.field private static final EVENT_ICC_APP_REFRESH:I = 0x66

.field private static final EVENT_ICC_REFRESH:I = 0x65

.field private static final EVENT_ICC_STATUS_CHANGE:I = 0x64

.field private static final EVENT_LISTEN_RADIO_STATE:I = 0x16

.field private static final EVENT_LOAD_COMPLETED:I = 0x1a

.field private static final EVENT_LOAD_ICC_RESULT_ICCID:I = 0x78

.field private static final EVENT_LOAD_ICC_RESULT_IMSI_CDMA:I = 0x7a

.field private static final EVENT_LOAD_ICC_RESULT_IMSI_GSM:I = 0x79

.field private static final EVENT_LOAD_ICC_RESULT_IMSI_M:I = 0x7b

.field private static final EVENT_LOAD_ICC_RESULT_IMSI_T:I = 0x7c

.field private static final EVENT_LOAD_ICC_RESULT_MDN:I = 0x7d

.field private static final EVENT_LOAD_ICC_START:I = 0x19

.field private static final EVENT_LOAD_NV_RESULT_IMEI:I = 0x29

.field private static final EVENT_LOAD_NV_RESULT_IMSI_11_12:I = 0x2b

.field private static final EVENT_LOAD_NV_RESULT_IMSI_RIL:I = 0x2e

.field private static final EVENT_LOAD_NV_RESULT_MCC:I = 0x2a

.field private static final EVENT_LOAD_NV_RESULT_RSINFO:I = 0x2d

.field private static final EVENT_LOAD_NV_RESULT_SUBSCRI:I = 0x2c

.field private static final EVENT_LOAD_NV_START:I = 0x17

.field private static final EVENT_LOAD_PREVIOUS_INFO:I = 0x15

.field private static final EVENT_OTA_PROVISION:I = 0x18

.field private static final EVENT_RADIO_NV_READY:I = 0x3

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x1

.field private static final EVENT_RADIO_ON:I = 0x2

.field private static final EVENT_RUIM_LOCK_OR_ABSENT:I = 0x51

.field private static final EVENT_RUIM_READY:I = 0x50

.field private static final EVENT_SIM_EXPIRED:I = 0x3e

.field private static final EVENT_SIM_HOT_SWAP:I = 0x40

.field private static final EVENT_SIM_LOCK_OR_ABSENT:I = 0x3d

.field private static final EVENT_SIM_READY:I = 0x3c

.field private static final EVENT_SIM_SWAP:I = 0x3f

.field private static final SHARED_PREF_ITEM_ESN_DEVID:Ljava/lang/String; = "ESN_DEVID"

.field private static final SHARED_PREF_ITEM_ESN_RSIF:Ljava/lang/String; = "ESN_RSIF"

.field private static final SHARED_PREF_ITEM_ICCID_ICC:Ljava/lang/String; = "ICCID_ICC"

.field private static final SHARED_PREF_ITEM_IMEI:Ljava/lang/String; = "IMEI"

.field private static final SHARED_PREF_ITEM_IMEI_SV:Ljava/lang/String; = "IMEI_SV"

.field private static final SHARED_PREF_ITEM_IMSI_11_12:Ljava/lang/String; = "IMSI_11_12"

.field private static final SHARED_PREF_ITEM_IMSI_CDMA:Ljava/lang/String; = "IMSI_CDMA"

.field private static final SHARED_PREF_ITEM_IMSI_GSM:Ljava/lang/String; = "IMSI_GSM"

.field private static final SHARED_PREF_ITEM_IMSI_M_ICC:Ljava/lang/String; = "IMSI_M_ICC"

.field private static final SHARED_PREF_ITEM_IMSI_RIL:Ljava/lang/String; = "IMSI_RIL"

.field private static final SHARED_PREF_ITEM_IMSI_RSINFO:Ljava/lang/String; = "IMSI_RSINFO"

.field private static final SHARED_PREF_ITEM_IMSI_T_ICC:Ljava/lang/String; = "IMSI_T_ICC"

.field private static final SHARED_PREF_ITEM_MCC:Ljava/lang/String; = "MCC"

.field private static final SHARED_PREF_ITEM_MDN_ICC:Ljava/lang/String; = "MDN_ICC"

.field private static final SHARED_PREF_ITEM_MDN_SUBS:Ljava/lang/String; = "MDN_SUBS"

.field private static final SHARED_PREF_ITEM_MEID:Ljava/lang/String; = "MEID"

.field private static final SHARED_PREF_ITEM_MIN:Ljava/lang/String; = "MIN"

.field private static final SHARED_PREF_ITEM_NID:Ljava/lang/String; = "NID"

.field private static final SHARED_PREF_ITEM_PRL_VER_RSIF:Ljava/lang/String; = "PRL_VER_RSIF"

.field private static final SHARED_PREF_ITEM_PRL_VER_SUBS:Ljava/lang/String; = "PRL_VER_SUBS"

.field private static final SHARED_PREF_ITEM_SID:Ljava/lang/String; = "SID"

.field private static final SHARED_PREF_NAME:Ljava/lang/String; = "htc_cdma_account_preferences"

.field private static final TAG:Ljava/lang/String; = "CDMA"

.field private static final TAG_PRE:Ljava/lang/String; = "CdmaAccount "

.field private static final hiddenText:Ljava/lang/String; = "****************************************"


# instance fields
.field private isCdmaNvOnlyResult:Ljava/lang/Boolean;

.field private mAlwaysStateListening:Z

.field private mCatchCdmaNvOnlyResult:Z

.field private mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

.field private mGetHtcIccCardProxyMethod:Ljava/lang/reflect/Method;

.field private mIccCardProxyListening:Z

.field private mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

.field private mNvAllowance:Ljava/lang/Boolean;

.field private mRadioStateListening:Z

.field private mSimStateListening:Z

.field private nvAccessSessionId:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;)V
    .locals 1
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 822
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mNvAllowance:Ljava/lang/Boolean;

    .line 1151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCatchCdmaNvOnlyResult:Z

    .line 48
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 49
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mContext:Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->registrationNoUpdate()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/HtcCdmaAccount;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->allZeroString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private allZeroString(Ljava/lang/String;)Z
    .locals 9
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 237
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 238
    .local v5, "number_array":[C
    const/4 v4, 0x0

    .line 239
    .local v4, "nonZero":Z
    move-object v0, v5

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-char v1, v0, v2

    .line 240
    .local v1, "digit":C
    if-nez v4, :cond_0

    const/16 v8, 0x30

    if-eq v1, v8, :cond_1

    :cond_0
    move v4, v7

    .line 239
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v4, v6

    .line 240
    goto :goto_1

    .line 242
    .end local v1    # "digit":C
    :cond_2
    if-nez v4, :cond_3

    :goto_2
    return v7

    :cond_3
    move v7, v6

    goto :goto_2
.end method

.method private clearNvAccess()V
    .locals 1

    .prologue
    .line 897
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    .line 898
    return-void
.end method

.method private convertDmCommandResultToBCD(Ljava/lang/String;I)Ljava/lang/String;
    .locals 16
    .param p1, "resultString"    # Ljava/lang/String;
    .param p2, "lenDigits"    # I

    .prologue
    .line 991
    const/16 v10, 0x10

    move-object/from16 v0, p1

    invoke-static {v0, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    .line 993
    .local v8, "nonDecodeVal":J
    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .local v7, "i":Ljava/lang/Long;
    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .local v6, "dwRet":Ljava/lang/Long;
    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .local v5, "dwBase":Ljava/lang/Long;
    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 995
    .local v4, "dwBCD":Ljava/lang/Long;
    :goto_0
    const-wide/16 v10, 0xa

    rem-long v10, v8, v10

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 996
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0xa

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    .line 997
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    mul-long/2addr v12, v14

    add-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 999
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move/from16 v0, p2

    int-to-long v12, v0

    cmp-long v10, v10, v12

    if-ltz v10, :cond_1

    .line 1006
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1008
    .local v2, "decodeVal":J
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1009
    .local v1, "cmd":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    move/from16 v0, p2

    if-ge v10, v0, :cond_2

    .line 1010
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1002
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "decodeVal":J
    :cond_1
    const-wide/16 v10, 0xa

    div-long/2addr v8, v10

    .line 1003
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_0

    .line 1013
    .restart local v1    # "cmd":Ljava/lang/String;
    .restart local v2    # "decodeVal":J
    :cond_2
    return-object v1
.end method

.method private decodeDmCommandResult(Landroid/os/AsyncResult;II)Ljava/lang/String;
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "offsetResult"    # I
    .param p3, "lenResult"    # I

    .prologue
    .line 961
    if-eqz p1, :cond_1

    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_1

    .line 962
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 965
    .local v4, "resultPackage":Ljava/lang/String;
    const/4 v7, 0x0

    const/16 v8, 0x8

    :try_start_0
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 966
    .local v3, "orgCommand":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 968
    .local v1, "last4chars":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v8, p3, 0x8

    if-lt v7, v8, :cond_0

    const-string v7, "0000"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 972
    const/16 v7, 0x8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 973
    .local v5, "resultString":Ljava/lang/String;
    invoke-virtual {v5, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 974
    .local v0, "interstedString":Ljava/lang/String;
    const-string v6, ""

    .line 975
    .local v6, "revertedString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 976
    .local v2, "offset":I
    :goto_0
    if-lez v2, :cond_2

    .line 977
    add-int/lit8 v2, v2, -0x2

    .line 978
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 983
    .end local v0    # "interstedString":Ljava/lang/String;
    .end local v2    # "offset":I
    .end local v5    # "resultString":Ljava/lang/String;
    .end local v6    # "revertedString":Ljava/lang/String;
    :cond_0
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CdmaAccount "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    .end local v1    # "last4chars":Ljava/lang/String;
    .end local v3    # "orgCommand":Ljava/lang/String;
    .end local v4    # "resultPackage":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v6, 0x0

    :cond_2
    return-object v6

    .line 985
    .restart local v4    # "resultPackage":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private static displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "maxDisplayed"    # I

    .prologue
    .line 220
    return-object p0
.end method

.method private getHtcIccCardProxy()Lcom/android/internal/telephony/uicc/IccCardProxy;
    .locals 8

    .prologue
    .line 1581
    const/4 v4, 0x0

    .line 1582
    .local v4, "proxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->useIccCardProxyInterface()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1583
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mGetHtcIccCardProxyMethod:Ljava/lang/reflect/Method;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v5, :cond_0

    .line 1585
    :try_start_0
    const-string v5, "com.android.internal.telephony.BaseCommands"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1586
    .local v1, "cls":Ljava/lang/Class;
    const-string v5, "getHtcIccCardProxy"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mGetHtcIccCardProxyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1591
    .end local v1    # "cls":Ljava/lang/Class;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mGetHtcIccCardProxyMethod:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v5, :cond_1

    .line 1593
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mGetHtcIccCardProxyMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v5, Lcom/android/internal/telephony/BaseCommands;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardProxy;

    move-object v4, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1599
    :cond_1
    :goto_1
    return-object v4

    .line 1587
    :catch_0
    move-exception v2

    .line 1588
    .local v2, "eg":Ljava/lang/Exception;
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CdmaAccount No IccCardProxy:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1594
    .end local v2    # "eg":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1595
    .local v3, "ei":Ljava/lang/Exception;
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CdmaAccount Access IccCardProxy:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isCdmaNvOnly()Ljava/lang/Boolean;
    .locals 7

    .prologue
    .line 1155
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCatchCdmaNvOnlyResult:Z

    if-nez v6, :cond_3

    .line 1156
    sget-object v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_ACCOUNT_CAPABILITIES:[I

    .line 1157
    .local v1, "account_list":[I
    const/4 v4, 0x0

    .line 1158
    .local v4, "isNvOnly":Ljava/lang/Boolean;
    move-object v2, v1

    .local v2, "arr$":[I
    array-length v5, v2

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget v0, v2, v3

    .line 1159
    .local v0, "account":I
    and-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_1

    .line 1160
    if-nez v4, :cond_0

    .line 1161
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1158
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1165
    :cond_1
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 1168
    .end local v0    # "account":I
    :cond_2
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->isCdmaNvOnlyResult:Ljava/lang/Boolean;

    .line 1169
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCatchCdmaNvOnlyResult:Z

    .line 1171
    .end local v1    # "account_list":[I
    .end local v2    # "arr$":[I
    .end local v3    # "i$":I
    .end local v4    # "isNvOnly":Ljava/lang/Boolean;
    .end local v5    # "len$":I
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->isCdmaNvOnlyResult:Ljava/lang/Boolean;

    return-object v6
.end method

.method private listenRadioState()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 735
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mRadioStateListening:Z

    .line 736
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v2, :cond_0

    .line 737
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 738
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x2

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 739
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x3

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForNVReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 740
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mRadioStateListening:Z

    .line 742
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCatchCdmaNvOnlyResult:Z

    .line 743
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->isCdmaNvOnly()Ljava/lang/Boolean;

    move-result-object v1

    .line 744
    .local v1, "listenToUicc":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 745
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x3c

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 746
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x3d

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMLockedOrAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 747
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x50

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRUIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 749
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mSimStateListening:Z

    .line 750
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->useIccCardProxyInterface()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 751
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->getHtcIccCardProxy()Lcom/android/internal/telephony/uicc/IccCardProxy;

    move-result-object v0

    .line 752
    .local v0, "iccCardPxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    if-eqz v0, :cond_0

    .line 757
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mIccCardProxyListening:Z

    .line 762
    .end local v0    # "iccCardPxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    .end local v1    # "listenToUicc":Ljava/lang/Boolean;
    :cond_0
    return-void
.end method

.method private loadCompleteOrRetry(Landroid/os/Message;I)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "operationCompletionType"    # I

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x0

    .line 1175
    const/16 v6, 0x1a

    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainLoadAccountResultMessage(ILandroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 1176
    .local v2, "newMsg":Landroid/os/Message;
    if-eqz v2, :cond_2

    .line 1177
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-eq v6, v9, :cond_0

    iget v6, p1, Landroid/os/Message;->arg2:I

    const/16 v7, 0x14

    if-ne v6, v7, :cond_3

    :cond_0
    if-ne p2, v9, :cond_3

    .line 1180
    const/16 v6, 0x17

    iput v6, v2, Landroid/os/Message;->what:I

    .line 1229
    :goto_0
    if-eqz v2, :cond_2

    .line 1230
    invoke-static {v2, v8, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1232
    iget-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1233
    .local v1, "ar":Landroid/os/AsyncResult;
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CdmaAccount Current loaded: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object v6, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 1235
    iget-object v6, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    check-cast v6, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->dump()V

    .line 1238
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendMessage(Landroid/os/Message;)Z

    .line 1241
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_2
    return-void

    .line 1183
    :cond_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1184
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    .line 1185
    .local v0, "accInfo":Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->dump()V

    .line 1186
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->correctBadValues()V

    .line 1188
    const/4 v5, 0x1

    .line 1190
    .local v5, "valueAcceptable":Z
    if-eqz v5, :cond_4

    .line 1192
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->storeIntoPreviousInfo(Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;)V

    .line 1193
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    .line 1194
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iput v7, v6, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->transactionId:I

    goto :goto_0

    .line 1197
    :cond_4
    const/4 v3, -0x1

    .line 1198
    .local v3, "performRetryArg2":I
    iget v6, v2, Landroid/os/Message;->arg2:I

    add-int/lit8 v4, v6, -0x14

    .line 1199
    .local v4, "retryCount":I
    if-ltz v4, :cond_6

    if-gez v4, :cond_6

    .line 1200
    iget v6, v2, Landroid/os/Message;->arg2:I

    add-int/lit8 v3, v6, 0x1

    .line 1214
    :cond_5
    :goto_1
    if-ltz v3, :cond_8

    .line 1215
    iput v3, v2, Landroid/os/Message;->arg2:I

    .line 1216
    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    .line 1217
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->clearNvAccess()V

    .line 1218
    invoke-direct {p0, v3, v8}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->triggerAccountAccess(ILcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;)V

    .line 1220
    const/4 v2, 0x0

    goto :goto_0

    .line 1203
    :cond_6
    iget v6, v2, Landroid/os/Message;->arg2:I

    add-int/lit8 v4, v6, -0xa

    .line 1204
    if-ltz v4, :cond_7

    if-gez v4, :cond_7

    .line 1205
    iget v6, v2, Landroid/os/Message;->arg2:I

    add-int/lit8 v3, v6, 0x1

    goto :goto_1

    .line 1208
    :cond_7
    iget v6, v2, Landroid/os/Message;->arg2:I

    add-int/lit8 v4, v6, 0x0

    .line 1209
    if-ltz v4, :cond_5

    const/4 v6, 0x2

    if-ge v4, v6, :cond_5

    .line 1210
    iget v6, v2, Landroid/os/Message;->arg2:I

    add-int/lit8 v3, v6, 0x1

    goto :goto_1

    .line 1224
    :cond_8
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    .line 1225
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iput v7, v6, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->transactionId:I

    goto/16 :goto_0
.end method

.method private loadIccIccId(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1313
    const/16 v4, 0x78

    invoke-direct {p0, v4, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainLoadAccountResultMessage(ILandroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 1314
    .local v2, "newMsg":Landroid/os/Message;
    if-eqz v2, :cond_2

    .line 1315
    const/4 v1, 0x0

    .line 1316
    .local v1, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->useIccCardProxyInterface()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1317
    const/4 v3, 0x0

    .line 1318
    .local v3, "requested":Z
    iget v4, p1, Landroid/os/Message;->arg2:I

    const/16 v5, 0x14

    if-ne v4, v5, :cond_0

    .line 1319
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->getHtcIccCardProxy()Lcom/android/internal/telephony/uicc/IccCardProxy;

    move-result-object v0

    .line 1320
    .local v0, "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    if-eqz v0, :cond_0

    .line 1321
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 1322
    if-eqz v1, :cond_3

    const/4 v3, 0x1

    .line 1325
    .end local v0    # "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 1326
    const-string v4, "Not required"

    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendLoadIccFailMessage(Landroid/os/Message;Ljava/lang/String;)V

    .line 1335
    .end local v3    # "requested":Z
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 1336
    const/16 v4, 0x2fe2

    invoke-virtual {v1, v4, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1339
    .end local v1    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_2
    return-void

    .line 1322
    .restart local v0    # "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    .restart local v1    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .restart local v3    # "requested":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 1329
    .end local v0    # "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    .end local v3    # "requested":Z
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v4, :cond_5

    .line 1330
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    goto :goto_1

    .line 1333
    :cond_5
    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendLoadIccFailMessage(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private loadIccImsiCdma(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1400
    const/16 v4, 0x7a

    invoke-direct {p0, v4, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainLoadAccountResultMessage(ILandroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 1401
    .local v2, "newMsg":Landroid/os/Message;
    if-eqz v2, :cond_2

    .line 1402
    const/4 v1, 0x0

    .line 1403
    .local v1, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->useIccCardProxyInterface()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1404
    const/4 v3, 0x0

    .line 1405
    .local v3, "requested":Z
    iget v4, p1, Landroid/os/Message;->arg2:I

    const/16 v5, 0x14

    if-ne v4, v5, :cond_0

    .line 1406
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->getHtcIccCardProxy()Lcom/android/internal/telephony/uicc/IccCardProxy;

    move-result-object v0

    .line 1407
    .local v0, "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    if-eqz v0, :cond_0

    .line 1408
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 1409
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    .line 1412
    .end local v0    # "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 1413
    const-string v4, "Not required"

    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendLoadIccFailMessage(Landroid/os/Message;Ljava/lang/String;)V

    .line 1419
    .end local v3    # "requested":Z
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 1420
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 1423
    .end local v1    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_2
    return-void

    .line 1409
    .restart local v0    # "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    .restart local v1    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .restart local v3    # "requested":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 1417
    .end local v0    # "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    .end local v3    # "requested":Z
    :cond_4
    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendLoadIccFailMessage(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private loadIccImsiGsm(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1358
    const/16 v4, 0x79

    invoke-direct {p0, v4, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainLoadAccountResultMessage(ILandroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 1359
    .local v2, "newMsg":Landroid/os/Message;
    if-eqz v2, :cond_2

    .line 1360
    const/4 v1, 0x0

    .line 1361
    .local v1, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->useIccCardProxyInterface()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1362
    const/4 v3, 0x0

    .line 1363
    .local v3, "requested":Z
    iget v4, p1, Landroid/os/Message;->arg2:I

    const/16 v5, 0x14

    if-ne v4, v5, :cond_0

    .line 1364
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->getHtcIccCardProxy()Lcom/android/internal/telephony/uicc/IccCardProxy;

    move-result-object v0

    .line 1365
    .local v0, "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    if-eqz v0, :cond_0

    .line 1366
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 1367
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    .line 1370
    .end local v0    # "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 1371
    const-string v4, "Not required"

    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendLoadIccFailMessage(Landroid/os/Message;Ljava/lang/String;)V

    .line 1377
    .end local v3    # "requested":Z
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 1378
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 1381
    .end local v1    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_2
    return-void

    .line 1367
    .restart local v0    # "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    .restart local v1    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .restart local v3    # "requested":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 1375
    .end local v0    # "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    .end local v3    # "requested":Z
    :cond_4
    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendLoadIccFailMessage(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private loadIccImsiM(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1442
    const/16 v3, 0x7b

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainLoadAccountResultMessage(ILandroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 1443
    .local v1, "newMsg":Landroid/os/Message;
    if-eqz v1, :cond_2

    .line 1444
    const/4 v0, 0x0

    .line 1445
    .local v0, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->useIccCardProxyInterface()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1446
    const/4 v2, 0x0

    .line 1447
    .local v2, "requested":Z
    iget v3, p1, Landroid/os/Message;->arg2:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_0

    .line 1448
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->getHtcIccCardProxy()Lcom/android/internal/telephony/uicc/IccCardProxy;

    .line 1451
    :cond_0
    if-nez v2, :cond_1

    .line 1452
    const-string v3, "Not required"

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendLoadIccFailMessage(Landroid/os/Message;Ljava/lang/String;)V

    .line 1461
    .end local v2    # "requested":Z
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1462
    const/16 v3, 0x6f22

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1465
    .end local v0    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_2
    return-void

    .line 1455
    .restart local v0    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v3, :cond_4

    .line 1456
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    goto :goto_0

    .line 1459
    :cond_4
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendLoadIccFailMessage(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadIccImsiT(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1485
    const/16 v3, 0x7c

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainLoadAccountResultMessage(ILandroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 1486
    .local v1, "newMsg":Landroid/os/Message;
    if-eqz v1, :cond_2

    .line 1487
    const/4 v0, 0x0

    .line 1488
    .local v0, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->useIccCardProxyInterface()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1489
    const/4 v2, 0x0

    .line 1490
    .local v2, "requested":Z
    iget v3, p1, Landroid/os/Message;->arg2:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_0

    .line 1491
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->getHtcIccCardProxy()Lcom/android/internal/telephony/uicc/IccCardProxy;

    .line 1494
    :cond_0
    if-nez v2, :cond_1

    .line 1495
    const-string v3, "Not required"

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendLoadIccFailMessage(Landroid/os/Message;Ljava/lang/String;)V

    .line 1504
    .end local v2    # "requested":Z
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1505
    const/16 v3, 0x6f23

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1508
    .end local v0    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_2
    return-void

    .line 1498
    .restart local v0    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v3, :cond_4

    .line 1499
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    goto :goto_0

    .line 1502
    :cond_4
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendLoadIccFailMessage(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadIccMdn(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 1528
    const/16 v5, 0x7d

    invoke-direct {p0, v5, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainLoadAccountResultMessage(ILandroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 1529
    .local v2, "newMsg":Landroid/os/Message;
    if-eqz v2, :cond_2

    .line 1530
    const/4 v1, 0x0

    .line 1531
    .local v1, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->useIccCardProxyInterface()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1532
    const/4 v3, 0x0

    .line 1533
    .local v3, "requested":Z
    iget v5, p1, Landroid/os/Message;->arg2:I

    const/16 v6, 0x14

    if-ne v5, v6, :cond_0

    .line 1534
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->getHtcIccCardProxy()Lcom/android/internal/telephony/uicc/IccCardProxy;

    move-result-object v0

    .line 1535
    .local v0, "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    if-eqz v0, :cond_0

    .line 1536
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 1537
    if-eqz v1, :cond_3

    move v3, v4

    .line 1540
    .end local v0    # "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 1541
    const-string v5, "Not required"

    invoke-direct {p0, v2, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendLoadIccFailMessage(Landroid/os/Message;Ljava/lang/String;)V

    .line 1550
    .end local v3    # "requested":Z
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 1551
    const/16 v5, 0x6f44

    invoke-virtual {v1, v5, v4, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1554
    .end local v1    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_2
    return-void

    .line 1537
    .restart local v0    # "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    .restart local v1    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .restart local v3    # "requested":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 1544
    .end local v0    # "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    .end local v3    # "requested":Z
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v5, :cond_5

    .line 1545
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    goto :goto_1

    .line 1548
    :cond_5
    const/4 v5, 0x0

    invoke-direct {p0, v2, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendLoadIccFailMessage(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private loadNvImei(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 931
    const/16 v1, 0x29

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainLoadAccountResultMessage(ILandroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 932
    .local v0, "newMsg":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    .line 933
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    .line 935
    :cond_0
    return-void
.end method

.method private loadNvImsi1112(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1044
    const/16 v1, 0x2b

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainLoadAccountResultMessage(ILandroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 1045
    .local v0, "newMsg":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    .line 1046
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const-string v2, "C826B10000"

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 1048
    :cond_0
    return-void
.end method

.method private loadNvImsiRil(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1132
    const/16 v1, 0x2e

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainLoadAccountResultMessage(ILandroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 1133
    .local v0, "newMsg":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    .line 1134
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    .line 1136
    :cond_0
    return-void
.end method

.method private loadNvMcc(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1017
    const/16 v1, 0x2a

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainLoadAccountResultMessage(ILandroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 1018
    .local v0, "newMsg":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    .line 1019
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const-string v2, "C826B00000"

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 1021
    :cond_0
    return-void
.end method

.method private loadNvRsInfo(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1104
    const/16 v1, 0x2d

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainLoadAccountResultMessage(ILandroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 1105
    .local v0, "newMsg":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    .line 1106
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRadioSysInfo(Landroid/os/Message;)V

    .line 1108
    :cond_0
    return-void
.end method

.method private loadNvSubscription(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1071
    const/16 v1, 0x2c

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainLoadAccountResultMessage(ILandroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 1072
    .local v0, "newMsg":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    .line 1073
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 1075
    :cond_0
    return-void
.end method

.method private loadPreviousInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 465
    iput-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    .line 467
    const/4 v2, 0x0

    .line 468
    .local v2, "sp":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 470
    .local v1, "failToReadSp":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mContext:Landroid/content/Context;

    const-string v4, "htc_cdma_account_preferences"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 476
    :goto_0
    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    .line 477
    new-instance v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "Preload"

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    .line 479
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "MCC"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 485
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "IMSI_11_12"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 491
    :goto_2
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "MIN"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 497
    :goto_3
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "IMSI_RIL"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 503
    :goto_4
    :try_start_5
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "IMSI_RSINFO"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 509
    :goto_5
    :try_start_6
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "MDN_SUBS"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 515
    :goto_6
    :try_start_7
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "ESN_RSIF"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnRsif:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 521
    :goto_7
    :try_start_8
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "PRL_VER_SUBS"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerSubs:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 527
    :goto_8
    :try_start_9
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "PRL_VER_RSIF"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerRsif:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 533
    :goto_9
    :try_start_a
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "SID"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Sid:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 539
    :goto_a
    :try_start_b
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "NID"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Nid:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 545
    :goto_b
    :try_start_c
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "IMEI"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imei:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 551
    :goto_c
    :try_start_d
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "IMEI_SV"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImeiSv:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 557
    :goto_d
    :try_start_e
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "ESN_DEVID"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnDevId:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    .line 563
    :goto_e
    :try_start_f
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "MEID"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Meid:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    .line 569
    :goto_f
    :try_start_10
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "ICCID_ICC"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    .line 575
    :goto_10
    :try_start_11
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "IMSI_GSM"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiGsmIcc:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    .line 581
    :goto_11
    :try_start_12
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "IMSI_CDMA"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    .line 587
    :goto_12
    :try_start_13
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "IMSI_M_ICC"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_13

    .line 593
    :goto_13
    :try_start_14
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "IMSI_T_ICC"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsitIcc:Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_14

    .line 599
    :goto_14
    :try_start_15
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    const-string v4, "MDN_ICC"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_15

    .line 605
    :goto_15
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->dump()V

    .line 609
    :cond_0
    if-eqz v1, :cond_1

    .line 611
    :try_start_16
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mContext:Landroid/content/Context;

    const-string v4, "htc_cdma_account_preferences"

    invoke-virtual {v3, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_16

    .line 616
    :cond_1
    :goto_16
    return-void

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CdmaAccount exception reading previous info : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 480
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 481
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;

    .line 482
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 486
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 487
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;

    .line 488
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 492
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 493
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;

    .line 494
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 498
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 499
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    .line 500
    const/4 v1, 0x1

    goto/16 :goto_4

    .line 504
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 505
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    .line 506
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 510
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_6
    move-exception v0

    .line 511
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    .line 512
    const/4 v1, 0x1

    goto/16 :goto_6

    .line 516
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_7
    move-exception v0

    .line 517
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnRsif:Ljava/lang/String;

    .line 518
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 522
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_8
    move-exception v0

    .line 523
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerSubs:Ljava/lang/String;

    .line 524
    const/4 v1, 0x1

    goto/16 :goto_8

    .line 528
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_9
    move-exception v0

    .line 529
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerRsif:Ljava/lang/String;

    .line 530
    const/4 v1, 0x1

    goto/16 :goto_9

    .line 534
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_a
    move-exception v0

    .line 535
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Sid:Ljava/lang/String;

    .line 536
    const/4 v1, 0x1

    goto/16 :goto_a

    .line 540
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_b
    move-exception v0

    .line 541
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Nid:Ljava/lang/String;

    .line 542
    const/4 v1, 0x1

    goto/16 :goto_b

    .line 546
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_c
    move-exception v0

    .line 547
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imei:Ljava/lang/String;

    .line 548
    const/4 v1, 0x1

    goto/16 :goto_c

    .line 552
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_d
    move-exception v0

    .line 553
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImeiSv:Ljava/lang/String;

    .line 554
    const/4 v1, 0x1

    goto/16 :goto_d

    .line 558
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_e
    move-exception v0

    .line 559
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnDevId:Ljava/lang/String;

    .line 560
    const/4 v1, 0x1

    goto/16 :goto_e

    .line 564
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_f
    move-exception v0

    .line 565
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Meid:Ljava/lang/String;

    .line 566
    const/4 v1, 0x1

    goto/16 :goto_f

    .line 570
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_10
    move-exception v0

    .line 571
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    .line 572
    const/4 v1, 0x1

    goto/16 :goto_10

    .line 576
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_11
    move-exception v0

    .line 577
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiGsmIcc:Ljava/lang/String;

    .line 578
    const/4 v1, 0x1

    goto/16 :goto_11

    .line 582
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_12
    move-exception v0

    .line 583
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    .line 584
    const/4 v1, 0x1

    goto/16 :goto_12

    .line 588
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_13
    move-exception v0

    .line 589
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    .line 590
    const/4 v1, 0x1

    goto/16 :goto_13

    .line 594
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_14
    move-exception v0

    .line 595
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsitIcc:Ljava/lang/String;

    .line 596
    const/4 v1, 0x1

    goto/16 :goto_14

    .line 600
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_15
    move-exception v0

    .line 601
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    .line 602
    const/4 v1, 0x1

    goto/16 :goto_15

    .line 612
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_16
    move-exception v0

    .line 613
    .restart local v0    # "ex":Ljava/lang/Exception;
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CdmaAccount exception removing previous info : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16
.end method

.method private nvAccessAllowance(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "allowance"    # Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 826
    if-eqz p1, :cond_4

    .line 827
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mNvAllowance:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 828
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mNvAllowance:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 829
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 831
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mNvAllowance:Ljava/lang/Boolean;

    .line 832
    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->triggerAccountAccess(ILcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;)V

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 836
    :cond_1
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaAccount dump acc statue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    .line 838
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mNvAllowance:Ljava/lang/Boolean;

    .line 839
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->clearNvAccess()V

    goto :goto_0

    .line 844
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 846
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    .line 847
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mNvAllowance:Ljava/lang/Boolean;

    .line 848
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->clearNvAccess()V

    .line 849
    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->triggerAccountAccess(ILcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;)V

    goto :goto_0

    .line 853
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    .line 854
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mNvAllowance:Ljava/lang/Boolean;

    .line 855
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->clearNvAccess()V

    goto :goto_0

    .line 860
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mNvAllowance:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mNvAllowance:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 866
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mNvAllowance:Ljava/lang/Boolean;

    .line 867
    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->triggerAccountAccess(ILcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;)V

    goto :goto_0
.end method

.method private obtainLoadAccountResultMessage(ILandroid/os/Message;)Landroid/os/Message;
    .locals 4
    .param p1, "msgId"    # I
    .param p2, "params"    # Landroid/os/Message;

    .prologue
    .line 905
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->trResultAvalibility(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 906
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 908
    .local v0, "ar":Landroid/os/AsyncResult;
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaAccount Status before load : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    check-cast v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->dump()V

    .line 911
    iget v1, p2, Landroid/os/Message;->arg1:I

    iget v2, p2, Landroid/os/Message;->arg2:I

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 913
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private otaProvisionUpdate(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1244
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1245
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_4

    .line 1246
    const/4 v3, 0x0

    .line 1247
    .local v3, "reloadRequired":Z
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v1, v4

    check-cast v1, [I

    .line 1248
    .local v1, "ints":[I
    aget v4, v1, v5

    sparse-switch v4, :sswitch_data_0

    .line 1262
    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mNvAllowance:Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mNvAllowance:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1264
    :cond_1
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    .line 1265
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->clearNvAccess()V

    .line 1266
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->isCdmaNvOnly()Ljava/lang/Boolean;

    move-result-object v2

    .line 1267
    .local v2, "listenToUicc":Ljava/lang/Boolean;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1268
    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->triggerAccountAccess(ILcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;)V

    .line 1282
    .end local v1    # "ints":[I
    .end local v2    # "listenToUicc":Ljava/lang/Boolean;
    .end local v3    # "reloadRequired":Z
    :cond_2
    :goto_1
    return-void

    .line 1252
    .restart local v1    # "ints":[I
    .restart local v3    # "reloadRequired":Z
    :sswitch_0
    const/4 v3, 0x1

    .line 1253
    goto :goto_0

    .line 1255
    :sswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->useIccCardProxyInterface()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1256
    const/4 v3, 0x1

    goto :goto_0

    .line 1275
    .restart local v2    # "listenToUicc":Ljava/lang/Boolean;
    :cond_3
    const/16 v4, 0xa

    invoke-direct {p0, v4, v6}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->triggerAccountAccess(ILcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;)V

    goto :goto_1

    .line 1280
    .end local v1    # "ints":[I
    .end local v2    # "listenToUicc":Ljava/lang/Boolean;
    .end local v3    # "reloadRequired":Z
    :cond_4
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CdmaAccount OTA_UPDATE exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1248
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
        0xf -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseAccountResultMessage(Landroid/os/Message;)Landroid/os/AsyncResult;
    .locals 4
    .param p1, "params"    # Landroid/os/Message;

    .prologue
    .line 917
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->trResultAvalibility(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 919
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 920
    .local v0, "ar":Landroid/os/AsyncResult;
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaAccount Status after load : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    check-cast v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->dump()V

    .line 923
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 925
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseIccIccId(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1342
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseAccountResultMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1343
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    .line 1344
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 1345
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v1, v3

    check-cast v1, [B

    .line 1346
    .local v1, "data":[B
    if-eqz v1, :cond_0

    .line 1347
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    .line 1348
    .local v2, "mIcc":Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;
    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    .line 1355
    .end local v1    # "data":[B
    .end local v2    # "mIcc":Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;
    :cond_0
    :goto_0
    return-void

    .line 1352
    :cond_1
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CdmaAccount GET_ICC_ICCID exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseIccImsiCdma(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1426
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseAccountResultMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1427
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    .line 1428
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 1429
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1430
    .local v1, "imsi":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1431
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    .line 1432
    .local v2, "mIcc":Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;
    iput-object v1, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    .line 1439
    .end local v1    # "imsi":Ljava/lang/String;
    .end local v2    # "mIcc":Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;
    :cond_0
    :goto_0
    return-void

    .line 1436
    :cond_1
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CdmaAccount GET_ICC_IMSI_CDMA exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseIccImsiGsm(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1384
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseAccountResultMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1385
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    .line 1386
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 1387
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1388
    .local v1, "imsi":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1389
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    .line 1390
    .local v2, "mIcc":Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;
    iput-object v1, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiGsmIcc:Ljava/lang/String;

    .line 1397
    .end local v1    # "imsi":Ljava/lang/String;
    .end local v2    # "mIcc":Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;
    :cond_0
    :goto_0
    return-void

    .line 1394
    :cond_1
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CdmaAccount GET_ICC_IMSI_GSM exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseIccImsiM(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1468
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseAccountResultMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1469
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    .line 1470
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1471
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 1472
    .local v1, "data":[B
    if-eqz v1, :cond_0

    .line 1473
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    .line 1482
    .end local v1    # "data":[B
    :cond_0
    :goto_0
    return-void

    .line 1479
    :cond_1
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CdmaAccount GET_ICC_IMSI_M exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseIccImsiT(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1511
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseAccountResultMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1512
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    .line 1513
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1514
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 1515
    .local v1, "data":[B
    if-eqz v1, :cond_0

    .line 1516
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    .line 1525
    .end local v1    # "data":[B
    :cond_0
    :goto_0
    return-void

    .line 1522
    :cond_1
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CdmaAccount GET_ICC_IMSI_T exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseIccMdn(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 1557
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseAccountResultMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1558
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_1

    .line 1559
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    .line 1560
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    move-object v1, v5

    check-cast v1, [B

    .line 1561
    .local v1, "data":[B
    if-eqz v1, :cond_1

    array-length v5, v1

    if-le v5, v6, :cond_1

    .line 1562
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    .line 1563
    .local v3, "mIcc":Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;
    const/4 v5, 0x0

    aget-byte v5, v1, v5

    and-int/lit8 v2, v5, 0xf

    .line 1564
    .local v2, "fieldLen":I
    invoke-static {v1, v6, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v4

    .line 1565
    .local v4, "mdn":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    array-length v5, v1

    const/16 v6, 0xa

    if-le v5, v6, :cond_0

    const/16 v5, 0x9

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x91

    if-ne v5, v6, :cond_0

    .line 1568
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1570
    :cond_0
    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    .line 1577
    .end local v1    # "data":[B
    .end local v2    # "fieldLen":I
    .end local v3    # "mIcc":Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;
    .end local v4    # "mdn":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1574
    :cond_2
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CdmaAccount GET_ICC_MDN exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseNvImei(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 938
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseAccountResultMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 939
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    .line 940
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3

    .line 941
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object v1, v3

    check-cast v1, [Ljava/lang/String;

    .line 942
    .local v1, "deviceId":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v3, v1

    const/4 v4, 0x4

    if-lt v3, v4, :cond_1

    .line 943
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    .line 944
    .local v2, "mNv":Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imei:Ljava/lang/String;

    .line 945
    const/4 v3, 0x1

    aget-object v3, v1, v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImeiSv:Ljava/lang/String;

    .line 946
    const/4 v3, 0x2

    aget-object v3, v1, v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnDevId:Ljava/lang/String;

    .line 947
    const/4 v3, 0x3

    aget-object v3, v1, v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Meid:Ljava/lang/String;

    .line 958
    .end local v1    # "deviceId":[Ljava/lang/String;
    .end local v2    # "mNv":Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;
    :cond_0
    :goto_0
    return-void

    .line 950
    .restart local v1    # "deviceId":[Ljava/lang/String;
    :cond_1
    const-string v4, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CdmaAccount GET_DEVICE_ID error result: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_2

    array-length v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v3, "null"

    goto :goto_1

    .line 955
    .end local v1    # "deviceId":[Ljava/lang/String;
    :cond_3
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CdmaAccount GET_DEVICE_ID exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseNvImsi1112(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1051
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseAccountResultMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1052
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    .line 1053
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    .line 1054
    const/4 v1, 0x2

    .line 1055
    .local v1, "digits":I
    const/4 v4, 0x2

    const/4 v5, 0x4

    invoke-direct {p0, v0, v4, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->decodeDmCommandResult(Landroid/os/AsyncResult;II)Ljava/lang/String;

    move-result-object v2

    .line 1056
    .local v2, "dmResult":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1058
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CdmaAccount GET_MCC : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->convertDmCommandResultToBCD(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    .line 1061
    .local v3, "mNv":Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->convertDmCommandResultToBCD(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;

    .line 1068
    .end local v1    # "digits":I
    .end local v2    # "dmResult":Ljava/lang/String;
    .end local v3    # "mNv":Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;
    :cond_0
    :goto_0
    return-void

    .line 1065
    :cond_1
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CdmaAccount GET_IMSI_11_12 exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseNvImsiRil(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1139
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseAccountResultMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1140
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    .line 1141
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1142
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    .line 1143
    .local v1, "mNv":Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    .line 1149
    .end local v1    # "mNv":Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;
    :cond_0
    :goto_0
    return-void

    .line 1146
    :cond_1
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CdmaAccount GET_IMSI exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseNvMcc(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1024
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseAccountResultMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1025
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    .line 1026
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    .line 1027
    const/4 v1, 0x3

    .line 1028
    .local v1, "digits":I
    const/4 v4, 0x2

    const/4 v5, 0x6

    invoke-direct {p0, v0, v4, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->decodeDmCommandResult(Landroid/os/AsyncResult;II)Ljava/lang/String;

    move-result-object v2

    .line 1029
    .local v2, "dmResult":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1031
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CdmaAccount GET_MCC : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->convertDmCommandResultToBCD(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    .line 1034
    .local v3, "mNv":Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->convertDmCommandResultToBCD(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;

    .line 1041
    .end local v1    # "digits":I
    .end local v2    # "dmResult":Ljava/lang/String;
    .end local v3    # "mNv":Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;
    :cond_0
    :goto_0
    return-void

    .line 1038
    :cond_1
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CdmaAccount GET_MCC exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseNvRsInfo(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1111
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseAccountResultMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1112
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    .line 1113
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1114
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;

    .line 1115
    .local v2, "rsInfo":Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;
    if-eqz v2, :cond_1

    .line 1116
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    .line 1117
    .local v1, "mNv":Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;
    iget-object v3, v2, Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;->esn:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnRsif:Ljava/lang/String;

    .line 1118
    iget-object v3, v2, Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;->imsi:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    .line 1119
    iget-object v3, v2, Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;->prl_version:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerRsif:Ljava/lang/String;

    .line 1129
    .end local v1    # "mNv":Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;
    .end local v2    # "rsInfo":Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;
    :cond_0
    :goto_0
    return-void

    .line 1122
    .restart local v2    # "rsInfo":Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;
    :cond_1
    const-string v3, "CDMA"

    const-string v4, "CdmaAccount CDMA_RS_INFO error result: null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1126
    .end local v2    # "rsInfo":Lcom/android/internal/telephony/dataconnection/CdmaRadioStateInfo;
    :cond_2
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CdmaAccount CDMA_RS_INFO exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseNvSubscription(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x4

    .line 1078
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseAccountResultMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1079
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    .line 1080
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3

    .line 1081
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object v1, v3

    check-cast v1, [Ljava/lang/String;

    .line 1082
    .local v1, "cdmaSubscription":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lt v3, v5, :cond_1

    .line 1083
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    .line 1084
    .local v2, "mNv":Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    .line 1085
    const/4 v3, 0x1

    aget-object v3, v1, v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Sid:Ljava/lang/String;

    .line 1086
    const/4 v3, 0x2

    aget-object v3, v1, v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Nid:Ljava/lang/String;

    .line 1087
    const/4 v3, 0x3

    aget-object v3, v1, v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;

    .line 1088
    array-length v3, v1

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    .line 1089
    aget-object v3, v1, v5

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerSubs:Ljava/lang/String;

    .line 1101
    .end local v1    # "cdmaSubscription":[Ljava/lang/String;
    .end local v2    # "mNv":Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;
    :cond_0
    :goto_0
    return-void

    .line 1093
    .restart local v1    # "cdmaSubscription":[Ljava/lang/String;
    :cond_1
    const-string v4, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CdmaAccount GET_CDMA_SUBSCRIPTION error result: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_2

    array-length v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v3, "null"

    goto :goto_1

    .line 1098
    .end local v1    # "cdmaSubscription":[Ljava/lang/String;
    :cond_3
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CdmaAccount GET_CDMA_SUBSCRIPTION exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registrationNoUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 717
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x18

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 720
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x64

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 721
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x65

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 723
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3e

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMExpiredStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 724
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3f

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMSWAPStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 725
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x40

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mAlwaysStateListening:Z

    .line 732
    :cond_0
    return-void
.end method

.method private sendLoadIccFailMessage(Landroid/os/Message;Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1300
    move-object v0, p2

    .line 1301
    .local v0, "givenReason":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1302
    const-string v0, "Unable to load this"

    .line 1304
    :cond_0
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1305
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendMessage(Landroid/os/Message;)Z

    .line 1306
    return-void
.end method

.method private simStatusUpdate(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 1287
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    .line 1289
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->clearNvAccess()V

    .line 1290
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_1

    .line 1292
    :cond_0
    const/16 v0, 0x14

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->triggerAccountAccess(ILcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;)V

    .line 1297
    :goto_0
    return-void

    .line 1295
    :cond_1
    const/16 v0, 0xa

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->triggerAccountAccess(ILcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;)V

    goto :goto_0
.end method

.method private storeIntoPreviousInfo(Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;)V
    .locals 7
    .param p1, "accInfo"    # Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    .prologue
    .line 619
    const/4 v3, 0x0

    .line 620
    .local v3, "sp":Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 621
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x0

    .line 623
    .local v2, "failToWriteSp":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mContext:Landroid/content/Context;

    const-string v5, "htc_cdma_account_preferences"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 624
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 630
    :goto_0
    if-nez v2, :cond_15

    if-eqz v0, :cond_15

    .line 631
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 632
    const-string v4, "MCC"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 634
    :cond_0
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 635
    const-string v4, "IMSI_11_12"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 637
    :cond_1
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 638
    const-string v4, "MIN"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 640
    :cond_2
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 641
    const-string v4, "IMSI_RIL"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 643
    :cond_3
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 644
    const-string v4, "IMSI_RSINFO"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 646
    :cond_4
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 647
    const-string v4, "MDN_SUBS"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 649
    :cond_5
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnRsif:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 650
    const-string v4, "ESN_RSIF"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnRsif:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 652
    :cond_6
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerSubs:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 653
    const-string v4, "PRL_VER_SUBS"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerSubs:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 655
    :cond_7
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerRsif:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 656
    const-string v4, "PRL_VER_RSIF"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerRsif:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 658
    :cond_8
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Sid:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 659
    const-string v4, "SID"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Sid:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 661
    :cond_9
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Nid:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 662
    const-string v4, "NID"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Nid:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 664
    :cond_a
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imei:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 665
    const-string v4, "IMEI"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imei:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 667
    :cond_b
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImeiSv:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 668
    const-string v4, "IMEI_SV"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImeiSv:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 670
    :cond_c
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnDevId:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 671
    const-string v4, "ESN_DEVID"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnDevId:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 673
    :cond_d
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Meid:Ljava/lang/String;

    if-eqz v4, :cond_e

    .line 674
    const-string v4, "MEID"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Meid:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 676
    :cond_e
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    if-eqz v4, :cond_f

    .line 677
    const-string v4, "ICCID_ICC"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 679
    :cond_f
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiGsmIcc:Ljava/lang/String;

    if-eqz v4, :cond_10

    .line 680
    const-string v4, "IMSI_GSM"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiGsmIcc:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 682
    :cond_10
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    if-eqz v4, :cond_11

    .line 683
    const-string v4, "IMSI_CDMA"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 685
    :cond_11
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    if-eqz v4, :cond_12

    .line 686
    const-string v4, "IMSI_M_ICC"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 688
    :cond_12
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsitIcc:Ljava/lang/String;

    if-eqz v4, :cond_13

    .line 689
    const-string v4, "IMSI_T_ICC"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsitIcc:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 691
    :cond_13
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    if-eqz v4, :cond_14

    .line 692
    const-string v4, "MDN_ICC"

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 695
    :cond_14
    :try_start_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 702
    :cond_15
    :goto_1
    if-eqz v2, :cond_16

    .line 704
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mContext:Landroid/content/Context;

    const-string v5, "htc_cdma_account_preferences"

    invoke-virtual {v4, v5}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 709
    :cond_16
    :goto_2
    return-void

    .line 625
    :catch_0
    move-exception v1

    .line 626
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CdmaAccount exception writing previous info : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 696
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 697
    .restart local v1    # "ex":Ljava/lang/Exception;
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CdmaAccount exception writing account info : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/4 v2, 0x1

    goto :goto_1

    .line 705
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 706
    .restart local v1    # "ex":Ljava/lang/Exception;
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CdmaAccount exception removing previous info : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private trResultAvalibility(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 901
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private triggerAccountAccess(ILcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;)V
    .locals 8
    .param p1, "arg2accessType"    # I
    .param p2, "givenAccount"    # Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    .prologue
    const/4 v6, 0x0

    .line 874
    move-object v4, p2

    .line 875
    .local v4, "targetAccountInfo":Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;
    if-nez v4, :cond_0

    .line 876
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    .line 877
    .local v3, "tag":Ljava/lang/String;
    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    .end local v4    # "targetAccountInfo":Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;
    invoke-direct {v4, p0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)V

    .line 879
    .end local v3    # "tag":Ljava/lang/String;
    .restart local v4    # "targetAccountInfo":Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;
    :cond_0
    const/16 v1, 0x17

    .line 880
    .local v1, "loadEvent":I
    const/16 v5, 0x14

    if-lt p1, v5, :cond_2

    .line 881
    const/16 v1, 0x19

    .line 886
    :cond_1
    :goto_0
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessSessionId:I

    invoke-virtual {p0, v1, v5, p1, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 887
    .local v2, "startRequest":Landroid/os/Message;
    invoke-static {v2, v6, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 889
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 890
    .local v0, "ar":Landroid/os/AsyncResult;
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CdmaAccount Access log created: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    check-cast v5, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->dump()V

    .line 893
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendMessage(Landroid/os/Message;)Z

    .line 894
    return-void

    .line 883
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "startRequest":Landroid/os/Message;
    :cond_2
    const/16 v5, 0xa

    if-lt p1, v5, :cond_1

    .line 884
    const/16 v1, 0x19

    goto :goto_0
.end method

.method private unRegistrationNoUpdate()V
    .locals 1

    .prologue
    .line 765
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mAlwaysStateListening:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 768
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    .line 769
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccStatusChanged(Landroid/os/Handler;)V

    .line 770
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    .line 771
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 772
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    .line 774
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMExpiredStatus(Landroid/os/Handler;)V

    .line 775
    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    .line 776
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMSWAPStatus(Landroid/os/Handler;)V

    .line 777
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    .line 778
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMHotSwap(Landroid/os/Handler;)V

    .line 779
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    .line 785
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mAlwaysStateListening:Z

    .line 787
    :cond_0
    return-void
.end method

.method private unlistenRadioState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 790
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mRadioStateListening:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_2

    .line 791
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 792
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    .line 793
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 794
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    .line 795
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNVReady(Landroid/os/Handler;)V

    .line 796
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    .line 797
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mRadioStateListening:Z

    .line 798
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mSimStateListening:Z

    if-eqz v1, :cond_0

    .line 799
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    .line 800
    const/16 v1, 0x3c

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    .line 801
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMLockedOrAbsent(Landroid/os/Handler;)V

    .line 802
    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    .line 803
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCommandIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRUIMReady(Landroid/os/Handler;)V

    .line 804
    const/16 v1, 0x50

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    .line 806
    const/16 v1, 0x51

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    .line 807
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mSimStateListening:Z

    .line 809
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mIccCardProxyListening:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->useIccCardProxyInterface()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 810
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->getHtcIccCardProxy()Lcom/android/internal/telephony/uicc/IccCardProxy;

    move-result-object v0

    .line 811
    .local v0, "iccCardPxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    if-eqz v0, :cond_1

    .line 812
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->unregisterForRecordsUpdated(Landroid/os/Handler;)V

    .line 813
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 815
    :cond_1
    const/16 v1, 0x6e

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    .line 816
    const/16 v1, 0x6f

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    .line 817
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mIccCardProxyListening:Z

    .line 820
    .end local v0    # "iccCardPxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    :cond_2
    return-void
.end method

.method private useIccCardProxyInterface()Z
    .locals 1

    .prologue
    .line 1309
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 104
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    .line 105
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    .line 106
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->unlistenRadioState()V

    .line 107
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->unRegistrationNoUpdate()V

    .line 108
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessAllowance(Ljava/lang/Boolean;)V

    .line 109
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    .line 110
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->removeMessages(I)V

    .line 111
    return-void
.end method

.method public getCdmaImsi()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1650
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->isCdmaNvOnly()Ljava/lang/Boolean;

    move-result-object v0

    .line 1651
    .local v0, "listenToUicc":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    if-eqz v1, :cond_5

    .line 1652
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1653
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1654
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    .line 1698
    :goto_0
    return-object v1

    .line 1656
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1657
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    goto :goto_0

    .line 1660
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1661
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    goto :goto_0

    .line 1663
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1664
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    goto :goto_0

    .line 1666
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1672
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    if-eqz v1, :cond_b

    .line 1673
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1674
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1675
    const-string v1, "CDMA"

    const-string v2, "CdmaAccount [get from preload] ImsimIcc"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    goto :goto_0

    .line 1678
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 1679
    const-string v1, "CDMA"

    const-string v2, "CdmaAccount [get from preload] ImsiCdmaIcc"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    goto/16 :goto_0

    .line 1683
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1684
    const-string v1, "CDMA"

    const-string v2, "CdmaAccount [get from preload] ImsiRsinfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    goto/16 :goto_0

    .line 1687
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 1688
    const-string v1, "CDMA"

    const-string v2, "CdmaAccount [get from preload] ImsiRil"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    goto/16 :goto_0

    .line 1691
    :cond_a
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 1694
    const-string v1, "CDMA"

    const-string v2, "CdmaAccount [get from preload] Min"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1698
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public getGsmImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1702
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1605
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->isCdmaNvOnly()Ljava/lang/Boolean;

    move-result-object v0

    .line 1606
    .local v0, "listenToUicc":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1607
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    if-eqz v1, :cond_1

    .line 1608
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1609
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    .line 1619
    :goto_0
    return-object v1

    .line 1612
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    if-eqz v1, :cond_2

    .line 1613
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1614
    const-string v1, "CDMA"

    const-string v2, "CdmaAccount [get from preload] IccId"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    goto :goto_0

    .line 1619
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImsImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1706
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMdn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1623
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->isCdmaNvOnly()Ljava/lang/Boolean;

    move-result-object v0

    .line 1624
    .local v0, "listenToUicc":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    if-eqz v1, :cond_2

    .line 1625
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1626
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1627
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    .line 1646
    :goto_0
    return-object v1

    .line 1630
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1631
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mCurrentBest:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    goto :goto_0

    .line 1634
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    if-eqz v1, :cond_5

    .line 1635
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1636
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1637
    const-string v1, "CDMA"

    const-string v2, "CdmaAccount [get from preload] MdnIcc"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    goto :goto_0

    .line 1641
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1642
    const-string v1, "CDMA"

    const-string v2, "CdmaAccount [get from preload] MdnSubs"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mInfoPreload:Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    goto :goto_0

    .line 1646
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 116
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaAccount msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 213
    :goto_0
    :sswitch_0
    return-void

    .line 120
    :sswitch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessAllowance(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 123
    :sswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessAllowance(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 126
    :sswitch_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->nvAccessAllowance(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 129
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/IccFileHandler;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 130
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadPreviousInfo()V

    .line 131
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 134
    :sswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->listenRadioState()V

    goto :goto_0

    .line 137
    :sswitch_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadNvImei(Landroid/os/Message;)V

    goto :goto_0

    .line 140
    :sswitch_7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->otaProvisionUpdate(Landroid/os/Message;)V

    goto :goto_0

    .line 143
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseNvImei(Landroid/os/Message;)V

    .line 144
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadNvMcc(Landroid/os/Message;)V

    goto :goto_0

    .line 147
    :sswitch_9
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseNvMcc(Landroid/os/Message;)V

    .line 148
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadNvImsi1112(Landroid/os/Message;)V

    goto :goto_0

    .line 151
    :sswitch_a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseNvImsi1112(Landroid/os/Message;)V

    .line 152
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadNvSubscription(Landroid/os/Message;)V

    goto :goto_0

    .line 155
    :sswitch_b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseNvSubscription(Landroid/os/Message;)V

    .line 156
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadNvRsInfo(Landroid/os/Message;)V

    goto :goto_0

    .line 159
    :sswitch_c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseNvRsInfo(Landroid/os/Message;)V

    .line 160
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadNvImsiRil(Landroid/os/Message;)V

    goto :goto_0

    .line 163
    :sswitch_d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseNvImsiRil(Landroid/os/Message;)V

    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadCompleteOrRetry(Landroid/os/Message;I)V

    goto :goto_0

    .line 175
    :sswitch_e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->simStatusUpdate(Landroid/os/Message;)V

    goto :goto_0

    .line 182
    :sswitch_f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadIccIccId(Landroid/os/Message;)V

    goto :goto_0

    .line 185
    :sswitch_10
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseIccIccId(Landroid/os/Message;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadIccImsiGsm(Landroid/os/Message;)V

    goto :goto_0

    .line 189
    :sswitch_11
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseIccImsiGsm(Landroid/os/Message;)V

    .line 190
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadIccImsiCdma(Landroid/os/Message;)V

    goto :goto_0

    .line 193
    :sswitch_12
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseIccImsiCdma(Landroid/os/Message;)V

    .line 194
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadIccImsiM(Landroid/os/Message;)V

    goto :goto_0

    .line 197
    :sswitch_13
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseIccImsiM(Landroid/os/Message;)V

    .line 198
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadIccImsiT(Landroid/os/Message;)V

    goto :goto_0

    .line 201
    :sswitch_14
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseIccImsiT(Landroid/os/Message;)V

    .line 202
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadIccMdn(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 205
    :sswitch_15
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->parseIccMdn(Landroid/os/Message;)V

    .line 206
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->loadCompleteOrRetry(Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 118
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x17 -> :sswitch_6
        0x18 -> :sswitch_7
        0x19 -> :sswitch_f
        0x1a -> :sswitch_0
        0x29 -> :sswitch_8
        0x2a -> :sswitch_9
        0x2b -> :sswitch_a
        0x2c -> :sswitch_b
        0x2d -> :sswitch_c
        0x2e -> :sswitch_d
        0x3c -> :sswitch_e
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_e
        0x40 -> :sswitch_e
        0x50 -> :sswitch_e
        0x51 -> :sswitch_0
        0x64 -> :sswitch_e
        0x65 -> :sswitch_e
        0x66 -> :sswitch_e
        0x6e -> :sswitch_e
        0x6f -> :sswitch_e
        0x78 -> :sswitch_10
        0x79 -> :sswitch_11
        0x7a -> :sswitch_12
        0x7b -> :sswitch_13
        0x7c -> :sswitch_14
        0x7d -> :sswitch_15
    .end sparse-switch
.end method

.method public init(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 1
    .param p1, "iccFh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    .line 99
    const/16 v0, 0x15

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->sendMessage(Landroid/os/Message;)Z

    .line 100
    return-void
.end method
