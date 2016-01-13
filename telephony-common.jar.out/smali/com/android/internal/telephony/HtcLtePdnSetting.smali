.class public Lcom/android/internal/telephony/HtcLtePdnSetting;
.super Landroid/os/Handler;
.source "HtcLtePdnSetting.java"


# static fields
.field private static final DEBUG_PDN_SETTING_INTERFACE:Z

.field private static final DEVELOPMENT_DEBUG:Z = false

.field private static final EVENT_HTC_GET_PDN_SETTING2:I = 0x6a

.field private static final EVENT_HTC_GET_PDN_SETTING2_CONT:I = 0x6b

.field private static final EVENT_HTC_GET_PDN_SETTING2_RESULT:I = 0x6c

.field private static final EVENT_HTC_RESET_PDN_SETTING2_CONT:I = 0x6f

.field private static final EVENT_HTC_SET_PDN_SETTING2:I = 0x6d

.field private static final EVENT_HTC_SET_PDN_SETTING2_RESULT:I = 0x6e

.field private static final EVENT_INTERNAL__DESTROY:I = 0x2

.field private static final EVENT_INTERNAL__INIT:I = 0x1

.field private static final FAKE_MODE_ERROR_PREFIX:Ljava/lang/String;

.field private static final FAKE_MODE_SUPPORT:Ljava/lang/Boolean;

.field private static final FAKE_MODE_SYSTEM_PROP:Ljava/lang/String;

.field private static final GET_APNPARAM_REQ_TYPE__DCT_BY_RAT:I = 0x1

.field private static final GET_APNPARAM_REQ_TYPE__DCT_COMBINE:I = 0x2

.field private static final GET_APNPARAM_REQ_TYPE__RIL:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "LtePdnIf"

.field private static final SET_APNPARAM_REQ_TYPE__DCT_BY_RAT:I = 0x1

.field private static final SET_APNPARAM_REQ_TYPE__DCT_COMBINE:I = 0x2

.field private static final SET_APNPARAM_REQ_TYPE__RIL:I = 0x3

.field private static final pdnIpTypes:[Ljava/lang/String;

.field private static final pdnLables_Att:[Ljava/lang/String;

.field private static final pdnLables_Spcs:[Ljava/lang/String;

.field private static final pdnLables_Vzw:[Ljava/lang/String;


# instance fields
.field private SUPPORT_RESET_PDN_SETTING_ASYNC_RESPONSE:Z

.field private mHtcTelephonyPhone:Lcom/android/internal/telephony/Phone;

.field private mPhonePxy:Lcom/android/internal/telephony/PhoneProxy;

.field private methodResetRadioForDisconnectingPdnResult_reg:Ljava/lang/reflect/Method;

.field private methodResetRadioForDisconnectingPdnResult_unreg:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/HtcLtePdnSetting;->DEBUG_PDN_SETTING_INTERFACE:Z

    .line 581
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "IPv4"

    aput-object v1, v0, v2

    const-string v1, "IPv6"

    aput-object v1, v0, v3

    const-string v1, "IPv4v6"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypes:[Ljava/lang/String;

    .line 1048
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v2

    const-string v1, "2"

    aput-object v1, v0, v3

    const-string v1, "3"

    aput-object v1, v0, v4

    const-string v1, "4"

    aput-object v1, v0, v5

    const-string v1, "5"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnLables_Vzw:[Ljava/lang/String;

    .line 1050
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "ota"

    aput-object v1, v0, v2

    const-string v1, "internet"

    aput-object v1, v0, v3

    const-string v1, "pam"

    aput-object v1, v0, v4

    const-string v1, "qchat"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnLables_Spcs:[Ljava/lang/String;

    .line 1052
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ims_att"

    aput-object v1, v0, v2

    const-string v1, "sos_att"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnLables_Att:[Ljava/lang/String;

    .line 1620
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/HtcLtePdnSetting;->FAKE_MODE_SUPPORT:Ljava/lang/Boolean;

    .line 1621
    sget-object v0, Lcom/android/internal/telephony/HtcLtePdnSetting;->FAKE_MODE_SUPPORT:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "persist.fakepdn.param"

    :goto_0
    sput-object v0, Lcom/android/internal/telephony/HtcLtePdnSetting;->FAKE_MODE_SYSTEM_PROP:Ljava/lang/String;

    .line 1622
    sget-object v0, Lcom/android/internal/telephony/HtcLtePdnSetting;->FAKE_MODE_SUPPORT:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "error:"

    :goto_1
    sput-object v0, Lcom/android/internal/telephony/HtcLtePdnSetting;->FAKE_MODE_ERROR_PREFIX:Ljava/lang/String;

    return-void

    .line 1621
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1622
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v0, 0x1

    .line 54
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 411
    iput-boolean v0, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->SUPPORT_RESET_PDN_SETTING_ASYNC_RESPONSE:Z

    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->mHtcTelephonyPhone:Lcom/android/internal/telephony/Phone;

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->sendEmptyMessage(I)Z

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 1
    .param p1, "phonePxy"    # Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    const/4 v0, 0x1

    .line 45
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 411
    iput-boolean v0, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->SUPPORT_RESET_PDN_SETTING_ASYNC_RESPONSE:Z

    .line 46
    iput-object p1, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->mPhonePxy:Lcom/android/internal/telephony/PhoneProxy;

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->sendEmptyMessage(I)Z

    .line 48
    return-void
.end method

.method private destroy_handling()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 466
    iget-object v2, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->methodResetRadioForDisconnectingPdnResult_unreg:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 467
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getMMDataConnectionTrackerClass()Ljava/lang/Object;

    move-result-object v0

    .line 468
    .local v0, "cls":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getMMDataConnectionTracker(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 469
    .local v1, "mmdt":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 470
    instance-of v2, v1, Ljava/lang/Exception;

    if-nez v2, :cond_0

    .line 472
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->methodResetRadioForDisconnectingPdnResult_unreg:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :cond_0
    :goto_0
    iput-object v5, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->methodResetRadioForDisconnectingPdnResult_unreg:Ljava/lang/reflect/Method;

    .line 479
    .end local v0    # "cls":Ljava/lang/Object;
    .end local v1    # "mmdt":Ljava/lang/Object;
    :cond_1
    iput-object v5, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->methodResetRadioForDisconnectingPdnResult_reg:Ljava/lang/reflect/Method;

    .line 480
    return-void

    .line 473
    .restart local v0    # "cls":Ljava/lang/Object;
    .restart local v1    # "mmdt":Ljava/lang/Object;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private expandsQueryResults([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 12
    .param p1, "prevResults"    # [Ljava/lang/String;
    .param p2, "expandFields"    # I

    .prologue
    const/4 v11, 0x0

    .line 738
    const/4 v1, 0x0

    .line 739
    .local v1, "expandedResults":[Ljava/lang/String;
    if-eqz p1, :cond_0

    array-length v8, p1

    const/4 v9, 0x1

    if-gt v8, v9, :cond_2

    .line 740
    :cond_0
    add-int/lit8 v8, p2, 0x1

    new-array v1, v8, [Ljava/lang/String;

    .line 741
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v11

    .line 742
    if-eqz p1, :cond_1

    .line 743
    const-string v8, "LtePdnIf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query PDN result overwrite : len="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_1
    return-object v1

    .line 747
    :cond_2
    const/4 v5, 0x0

    .line 749
    .local v5, "prevItemsAdd":Ljava/lang/Integer;
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, p1, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 754
    :goto_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lt v8, p2, :cond_3

    .line 755
    array-length v8, p1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v8, v9

    new-array v1, v8, [Ljava/lang/String;

    .line 756
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    array-length v8, p1

    if-ge v2, v8, :cond_1

    .line 757
    aget-object v8, p1, v2

    aput-object v8, v1, v2

    .line 756
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 750
    .end local v2    # "index":I
    :catch_0
    move-exception v0

    .line 751
    .local v0, "ex":Ljava/lang/Exception;
    const-string v8, "LtePdnIf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query PDN ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, p1, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "](exp="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") result exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 761
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_3
    const-string v8, "LtePdnIf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query PDN result expand : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    div-int v7, v8, v9

    .line 763
    .local v7, "segments":I
    mul-int v8, v7, p2

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v8, p2

    new-array v1, v8, [Ljava/lang/String;

    .line 764
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v11

    .line 765
    const/4 v6, 0x0

    .local v6, "seg":I
    :goto_2
    if-ge v6, v7, :cond_1

    .line 766
    mul-int v8, v6, p2

    add-int/lit8 v3, v8, 0x1

    .line 767
    .local v3, "offsetExpanded":I
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/2addr v8, v6

    add-int/lit8 v4, v8, 0x1

    .line 768
    .local v4, "offsetPrevious":I
    const/4 v2, 0x0

    .restart local v2    # "index":I
    :goto_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 769
    add-int v8, v3, v2

    add-int v9, v4, v2

    aget-object v9, p1, v9

    aput-object v9, v1, v8

    .line 768
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 765
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private getMMDataConnectionTracker(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "mmdctClass"    # Ljava/lang/Object;

    .prologue
    .line 556
    move-object v0, p1

    .line 557
    .local v0, "mmdt":Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 558
    instance-of v2, p1, Ljava/lang/Exception;

    if-nez v2, :cond_0

    .line 559
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getPhoneInUse()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 560
    .local v1, "targetPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_0

    .line 561
    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .end local v1    # "targetPhone":Lcom/android/internal/telephony/Phone;
    iget-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 565
    .end local v0    # "mmdt":Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method private getMMDataConnectionTrackerClass()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 546
    const/4 v0, 0x0

    .line 548
    .local v0, "cls":Ljava/lang/Class;
    :try_start_0
    const-string v2, "com.android.internal.telephony.dataconnection.DcTracker"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 552
    :goto_0
    return-object v1

    .line 549
    :catch_0
    move-exception v1

    .line 550
    .local v1, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private getPdnSettings2Cont_handling(IILandroid/os/AsyncResult;Landroid/os/Handler;)V
    .locals 13
    .param p1, "parameterFormat"    # I
    .param p2, "resultType"    # I
    .param p3, "ar"    # Landroid/os/AsyncResult;
    .param p4, "remainingHandling"    # Landroid/os/Handler;

    .prologue
    .line 1250
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getRilSupportingType()I

    move-result v9

    .line 1251
    .local v9, "rilSupportingType":I
    if-ltz v9, :cond_1

    .line 1252
    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, [Ljava/lang/Object;

    move-object v4, v10

    check-cast v4, [Ljava/lang/Object;

    .line 1253
    .local v4, "msgDataArray":[Ljava/lang/Object;
    const/4 v10, 0x1

    aget-object v10, v4, v10

    check-cast v10, Lcom/android/internal/telephony/dataconnection/APNParam;

    move-object v5, v10

    check-cast v5, Lcom/android/internal/telephony/dataconnection/APNParam;

    .line 1254
    .local v5, "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    const/4 v10, 0x2

    aget-object v10, v4, v10

    check-cast v10, Landroid/os/Message;

    move-object v7, v10

    check-cast v7, Landroid/os/Message;

    .line 1255
    .local v7, "request":Landroid/os/Message;
    const/4 v10, 0x3

    aget-object v10, v4, v10

    check-cast v10, [Ljava/lang/String;

    move-object v8, v10

    check-cast v8, [Ljava/lang/String;

    .line 1257
    .local v8, "result":[Ljava/lang/String;
    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_3

    .line 1259
    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-direct {p0, p2, v10, v8}, Lcom/android/internal/telephony/HtcLtePdnSetting;->processQueryPdnFromModem(ILjava/lang/Object;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1262
    const/4 v10, 0x0

    aget-object v10, v4, v10

    check-cast v10, [Ljava/lang/String;

    move-object v2, v10

    check-cast v2, [Ljava/lang/String;

    .line 1263
    .local v2, "knownPdns":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1264
    .local v1, "index":I
    :goto_0
    array-length v10, v2

    if-ge v1, v10, :cond_0

    iget-object v10, v5, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    aget-object v11, v2, v1

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1265
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1267
    :cond_0
    array-length v10, v2

    if-ge v1, v10, :cond_2

    .line 1268
    const-string v10, "LtePdnIf"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Query PDN(cont) "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    new-instance v6, Lcom/android/internal/telephony/dataconnection/APNParam;

    aget-object v10, v2, v1

    iget v11, v5, Lcom/android/internal/telephony/dataconnection/APNParam;->rat:I

    invoke-direct {v6, v10, v11}, Lcom/android/internal/telephony/dataconnection/APNParam;-><init>(Ljava/lang/String;I)V

    .line 1270
    .end local v5    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    .local v6, "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    const/16 v10, 0x6b

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1271
    .local v3, "msg":Landroid/os/Message;
    const/4 v10, 0x1

    aput-object v6, v4, v10

    .line 1272
    const/4 v10, 0x3

    aput-object v8, v4, v10

    .line 1273
    iput p1, v3, Landroid/os/Message;->arg1:I

    .line 1274
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1275
    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-direct {p0, v6, v3, v10}, Lcom/android/internal/telephony/HtcLtePdnSetting;->queryPdnFromModem(Lcom/android/internal/telephony/dataconnection/APNParam;Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Exception;

    move-result-object v10

    move-object/from16 v0, p3

    iput-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v6

    .line 1285
    .end local v1    # "index":I
    .end local v2    # "knownPdns":[Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v6    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    .restart local v5    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    :goto_1
    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_1

    .line 1286
    invoke-direct {p0, p1, p2, v8}, Lcom/android/internal/telephony/HtcLtePdnSetting;->processQueryResultBasedOnRequest(II[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v7, v10, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1289
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1292
    .end local v4    # "msgDataArray":[Ljava/lang/Object;
    .end local v5    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    .end local v7    # "request":Landroid/os/Message;
    .end local v8    # "result":[Ljava/lang/String;
    :cond_1
    return-void

    .line 1278
    .restart local v1    # "index":I
    .restart local v2    # "knownPdns":[Ljava/lang/String;
    .restart local v4    # "msgDataArray":[Ljava/lang/Object;
    .restart local v5    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    .restart local v7    # "request":Landroid/os/Message;
    .restart local v8    # "result":[Ljava/lang/String;
    :cond_2
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "End of query PDN(cont)"

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    iput-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_1

    .line 1282
    .end local v1    # "index":I
    .end local v2    # "knownPdns":[Ljava/lang/String;
    :cond_3
    const-string v10, "LtePdnIf"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Query PDN(cont) "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ex: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getPdnSettings2Result_handling(IILandroid/os/AsyncResult;)V
    .locals 8
    .param p1, "parameterFormat"    # I
    .param p2, "resultType"    # I
    .param p3, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1295
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getRilSupportingType()I

    move-result v4

    .line 1296
    .local v4, "rilSupportingType":I
    if-ltz v4, :cond_0

    .line 1297
    iget-object v5, p3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v1, v5

    check-cast v1, [Ljava/lang/Object;

    .line 1298
    .local v1, "msgDataArray":[Ljava/lang/Object;
    const/4 v5, 0x1

    aget-object v5, v1, v5

    check-cast v5, Lcom/android/internal/telephony/dataconnection/APNParam;

    check-cast v5, Lcom/android/internal/telephony/dataconnection/APNParam;

    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    .line 1299
    .local v0, "currPdn":Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v5, v1, v5

    check-cast v5, Landroid/os/Message;

    move-object v2, v5

    check-cast v2, Landroid/os/Message;

    .line 1300
    .local v2, "request":Landroid/os/Message;
    const/4 v5, 0x3

    aget-object v5, v1, v5

    check-cast v5, [Ljava/lang/String;

    move-object v3, v5

    check-cast v3, [Ljava/lang/String;

    .line 1302
    .local v3, "result":[Ljava/lang/String;
    iget-object v5, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1

    .line 1303
    const-string v5, "LtePdnIf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Query PDN "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " result"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    iget-object v5, p3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-direct {p0, p2, v5, v3}, Lcom/android/internal/telephony/HtcLtePdnSetting;->processQueryPdnFromModem(ILjava/lang/Object;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1310
    :goto_0
    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/telephony/HtcLtePdnSetting;->processQueryResultBasedOnRequest(II[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v3, :cond_2

    iget-object v5, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    :goto_1
    invoke-static {v2, v6, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1313
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1315
    .end local v0    # "currPdn":Ljava/lang/String;
    .end local v1    # "msgDataArray":[Ljava/lang/Object;
    .end local v2    # "request":Landroid/os/Message;
    .end local v3    # "result":[Ljava/lang/String;
    :cond_0
    return-void

    .line 1307
    .restart local v0    # "currPdn":Ljava/lang/String;
    .restart local v1    # "msgDataArray":[Ljava/lang/Object;
    .restart local v2    # "request":Landroid/os/Message;
    .restart local v3    # "result":[Ljava/lang/String;
    :cond_1
    const-string v5, "LtePdnIf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Query PDN "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1310
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getPdnSettings2_handling(I[Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 18
    .param p1, "parameterFormat"    # I
    .param p2, "requestObj"    # [Ljava/lang/Object;
    .param p3, "remainingHandling"    # Landroid/os/Handler;

    .prologue
    .line 1060
    const/4 v15, 0x1

    aget-object v13, p2, v15

    check-cast v13, Landroid/os/Message;

    .line 1061
    .local v13, "request":Landroid/os/Message;
    if-eqz v13, :cond_3

    .line 1062
    const/4 v1, 0x0

    .line 1063
    .local v1, "errorResult":Ljava/lang/Exception;
    const/4 v15, 0x0

    aget-object v15, p2, v15

    check-cast v15, [Ljava/lang/String;

    move-object v12, v15

    check-cast v12, [Ljava/lang/String;

    .line 1064
    .local v12, "queryCmds":[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getRilSupportingType()I

    move-result v14

    .line 1065
    .local v14, "rilSupportingType":I
    if-ltz v14, :cond_8

    if-eqz v12, :cond_8

    .line 1066
    const/4 v3, 0x0

    .line 1067
    .local v3, "givenProjectId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1068
    .local v2, "givenNetworkType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1070
    .local v4, "givenQueryPdn":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1087
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 1088
    .local v6, "msg":Landroid/os/Message;
    const/4 v15, 0x4

    new-array v7, v15, [Ljava/lang/Object;

    .line 1090
    .local v7, "msgDataArray":[Ljava/lang/Object;
    move-object v10, v4

    .line 1091
    .local v10, "pdnType":Ljava/lang/String;
    const-string v15, "LtePdnIf"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Query PDN "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_5

    .line 1093
    :cond_1
    const/4 v11, -0x1

    .line 1095
    .local v11, "project":I
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 1097
    :goto_1
    const/4 v5, 0x0

    .line 1098
    .local v5, "knownPdns":[Ljava/lang/String;
    sparse-switch v11, :sswitch_data_0

    .line 1103
    :goto_2
    if-eqz v5, :cond_4

    .line 1104
    const/4 v15, 0x0

    aput-object v5, v7, v15

    .line 1105
    const/4 v15, 0x0

    aget-object v10, v5, v15

    .line 1106
    const/16 v15, 0x6b

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1116
    .end local v5    # "knownPdns":[Ljava/lang/String;
    .end local v11    # "project":I
    :goto_3
    const/4 v9, 0x0

    .line 1117
    .local v9, "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    const/4 v8, 0x0

    .line 1118
    .local v8, "networkType":I
    if-eqz v10, :cond_2

    .line 1120
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 1122
    :goto_4
    sparse-switch v8, :sswitch_data_1

    .line 1135
    :cond_2
    :goto_5
    if-eqz v9, :cond_6

    .line 1136
    const/4 v15, 0x1

    aput-object v9, v7, v15

    .line 1137
    const/4 v15, 0x2

    aput-object v13, v7, v15

    .line 1138
    const/4 v15, 0x3

    const/16 v16, 0x0

    aput-object v16, v7, v15

    .line 1139
    move/from16 v0, p1

    iput v0, v6, Landroid/os/Message;->arg1:I

    .line 1140
    iput-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1141
    const/4 v15, 0x0

    aget-object v15, v7, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6, v15}, Lcom/android/internal/telephony/HtcLtePdnSetting;->queryPdnFromModem(Lcom/android/internal/telephony/dataconnection/APNParam;Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Exception;

    move-result-object v1

    .line 1153
    .end local v2    # "givenNetworkType":Ljava/lang/String;
    .end local v3    # "givenProjectId":Ljava/lang/String;
    .end local v4    # "givenQueryPdn":Ljava/lang/String;
    .end local v6    # "msg":Landroid/os/Message;
    .end local v7    # "msgDataArray":[Ljava/lang/Object;
    .end local v8    # "networkType":I
    .end local v9    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    .end local v10    # "pdnType":Ljava/lang/String;
    :goto_6
    if-eqz v1, :cond_3

    .line 1154
    const/4 v15, 0x0

    invoke-static {v13, v15, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1155
    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 1159
    .end local v1    # "errorResult":Ljava/lang/Exception;
    .end local v12    # "queryCmds":[Ljava/lang/String;
    .end local v14    # "rilSupportingType":I
    :cond_3
    return-void

    .line 1072
    .restart local v1    # "errorResult":Ljava/lang/Exception;
    .restart local v2    # "givenNetworkType":Ljava/lang/String;
    .restart local v3    # "givenProjectId":Ljava/lang/String;
    .restart local v4    # "givenQueryPdn":Ljava/lang/String;
    .restart local v12    # "queryCmds":[Ljava/lang/String;
    .restart local v14    # "rilSupportingType":I
    :pswitch_0
    array-length v15, v12

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1073
    const/16 v15, 0xa8

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1074
    const/4 v15, 0x0

    aget-object v2, v12, v15

    .line 1075
    const/4 v15, 0x1

    aget-object v4, v12, v15

    goto/16 :goto_0

    .line 1079
    :pswitch_1
    array-length v15, v12

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1080
    const/4 v15, 0x0

    aget-object v3, v12, v15

    .line 1081
    const/4 v15, 0x1

    aget-object v2, v12, v15

    .line 1082
    const/4 v15, 0x2

    aget-object v4, v12, v15

    goto/16 :goto_0

    .line 1099
    .restart local v5    # "knownPdns":[Ljava/lang/String;
    .restart local v6    # "msg":Landroid/os/Message;
    .restart local v7    # "msgDataArray":[Ljava/lang/Object;
    .restart local v10    # "pdnType":Ljava/lang/String;
    .restart local v11    # "project":I
    :sswitch_0
    sget-object v5, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnLables_Vzw:[Ljava/lang/String;

    goto :goto_2

    .line 1100
    :sswitch_1
    sget-object v5, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnLables_Spcs:[Ljava/lang/String;

    goto :goto_2

    .line 1101
    :sswitch_2
    sget-object v5, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnLables_Att:[Ljava/lang/String;

    goto :goto_2

    .line 1109
    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    .line 1113
    .end local v5    # "knownPdns":[Ljava/lang/String;
    .end local v11    # "project":I
    :cond_5
    const/16 v15, 0x6c

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    goto :goto_3

    .line 1124
    .restart local v8    # "networkType":I
    .restart local v9    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    :sswitch_3
    new-instance v9, Lcom/android/internal/telephony/dataconnection/APNParam;

    .end local v9    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    const/4 v15, 0x1

    invoke-direct {v9, v10, v15}, Lcom/android/internal/telephony/dataconnection/APNParam;-><init>(Ljava/lang/String;I)V

    .line 1125
    .restart local v9    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    goto :goto_5

    .line 1127
    :sswitch_4
    new-instance v9, Lcom/android/internal/telephony/dataconnection/APNParam;

    .end local v9    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    const/4 v15, 0x2

    invoke-direct {v9, v10, v15}, Lcom/android/internal/telephony/dataconnection/APNParam;-><init>(Ljava/lang/String;I)V

    .line 1128
    .restart local v9    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    goto :goto_5

    .line 1130
    :sswitch_5
    new-instance v9, Lcom/android/internal/telephony/dataconnection/APNParam;

    .end local v9    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    const/4 v15, 0x4

    invoke-direct {v9, v10, v15}, Lcom/android/internal/telephony/dataconnection/APNParam;-><init>(Ljava/lang/String;I)V

    .restart local v9    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    goto :goto_5

    .line 1144
    :cond_6
    const-string v16, "LtePdnIf"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Query PDN parm incorrect "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v12, :cond_7

    array-length v15, v12

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    :goto_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    new-instance v1, Ljava/lang/Exception;

    .end local v1    # "errorResult":Ljava/lang/Exception;
    const-string v15, "Incorrect Format"

    invoke-direct {v1, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v1    # "errorResult":Ljava/lang/Exception;
    goto/16 :goto_6

    .line 1144
    :cond_7
    const-string v15, "null"

    goto :goto_7

    .line 1149
    .end local v2    # "givenNetworkType":Ljava/lang/String;
    .end local v3    # "givenProjectId":Ljava/lang/String;
    .end local v4    # "givenQueryPdn":Ljava/lang/String;
    .end local v6    # "msg":Landroid/os/Message;
    .end local v7    # "msgDataArray":[Ljava/lang/Object;
    .end local v8    # "networkType":I
    .end local v9    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    .end local v10    # "pdnType":Ljava/lang/String;
    :cond_8
    const-string v16, "LtePdnIf"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Query PDN parm incorrect "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v12, :cond_9

    array-length v15, v12

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    :goto_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ", "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    new-instance v1, Ljava/lang/Exception;

    .end local v1    # "errorResult":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Incorrect Parameters - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v1    # "errorResult":Ljava/lang/Exception;
    goto/16 :goto_6

    .line 1149
    :cond_9
    const-string v15, "null"

    goto :goto_8

    .line 1096
    .restart local v2    # "givenNetworkType":Ljava/lang/String;
    .restart local v3    # "givenProjectId":Ljava/lang/String;
    .restart local v4    # "givenQueryPdn":Ljava/lang/String;
    .restart local v6    # "msg":Landroid/os/Message;
    .restart local v7    # "msgDataArray":[Ljava/lang/Object;
    .restart local v10    # "pdnType":Ljava/lang/String;
    .restart local v11    # "project":I
    :catch_0
    move-exception v15

    goto/16 :goto_1

    .line 1121
    .end local v11    # "project":I
    .restart local v8    # "networkType":I
    .restart local v9    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    :catch_1
    move-exception v15

    goto/16 :goto_4

    .line 1070
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1098
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x94 -> :sswitch_1
        0xa8 -> :sswitch_0
    .end sparse-switch

    .line 1122
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_3
        0xd -> :sswitch_5
        0xe -> :sswitch_4
    .end sparse-switch
.end method

.method private getPhoneInUse()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 510
    const/4 v0, 0x0

    .line 511
    .local v0, "targetPhone":Lcom/android/internal/telephony/Phone;
    iget-object v1, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->mPhonePxy:Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->mPhonePxy:Lcom/android/internal/telephony/PhoneProxy;

    iget-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 517
    :goto_0
    return-object v0

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->mHtcTelephonyPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method

.method private getRilClass()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 569
    const/4 v0, 0x0

    .line 571
    .local v0, "cls":Ljava/lang/Class;
    :try_start_0
    const-string v2, "com.android.internal.telephony.RIL"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 575
    :goto_0
    return-object v1

    .line 572
    :catch_0
    move-exception v1

    .line 573
    .local v1, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private getRilSupportingType()I
    .locals 3

    .prologue
    .line 526
    const/4 v0, -0x1

    .line 527
    .local v0, "type":I
    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v1, :cond_1

    .line 529
    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RAT_CAPABILITIES:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 532
    const/4 v0, 0x1

    .line 542
    :goto_0
    return v0

    .line 536
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 540
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getSenseVersion()Ljava/lang/String;
    .locals 6

    .prologue
    .line 485
    const/4 v2, 0x0

    .line 496
    .local v2, "senseVer":Ljava/lang/String;
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 497
    .local v0, "manager":Lcom/htc/customization/HtcCustomizationManager;
    if-eqz v0, :cond_0

    .line 498
    const-string v3, "System"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 500
    .local v1, "reader":Lcom/htc/customization/HtcCustomizationReader;
    if-eqz v1, :cond_0

    .line 501
    const-string v3, "sense_version"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 506
    .end local v1    # "reader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_0
    return-object v2
.end method

.method private init_handling()V
    .locals 11

    .prologue
    .line 416
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 417
    .local v5, "verCode":I
    const/16 v6, 0x12

    if-ge v5, v6, :cond_0

    .line 463
    :goto_0
    return-void

    .line 421
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .local v4, "sbLog":Ljava/lang/StringBuilder;
    const-string v6, "init"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getMMDataConnectionTrackerClass()Ljava/lang/Object;

    move-result-object v1

    .line 425
    .local v1, "cls":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getMMDataConnectionTracker(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 426
    .local v3, "mmdt":Ljava/lang/Object;
    if-eqz v3, :cond_3

    .line 427
    instance-of v6, v3, Ljava/lang/Exception;

    if-nez v6, :cond_2

    .line 428
    iget-boolean v6, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->SUPPORT_RESET_PDN_SETTING_ASYNC_RESPONSE:Z

    if-eqz v6, :cond_1

    .line 430
    :try_start_0
    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    move-object v6, v0

    const-string v7, "registerForResetRadioForDisconnectingPdnResult"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/os/Handler;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-class v10, Ljava/lang/Object;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->methodResetRadioForDisconnectingPdnResult_reg:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->methodResetRadioForDisconnectingPdnResult_reg:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_1

    .line 438
    :try_start_1
    check-cast v1, Ljava/lang/Class;

    .end local v1    # "cls":Ljava/lang/Object;
    const-string v6, "unregisterForResetRadioForDisconnectingPdnResult"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/os/Handler;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->methodResetRadioForDisconnectingPdnResult_unreg:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 445
    :goto_2
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->methodResetRadioForDisconnectingPdnResult_reg:Ljava/lang/reflect/Method;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x6f

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    aput-object v9, v7, v8

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 462
    :cond_1
    :goto_3
    const-string v6, "LtePdnIf"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 432
    .restart local v1    # "cls":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 433
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, " no-regResetPdn"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 440
    .end local v1    # "cls":Ljava/lang/Object;
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 441
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v6, " no-unregResetPdn"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 446
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 447
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v6, " regResetPdn fail:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 454
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v1    # "cls":Ljava/lang/Object;
    :cond_2
    const-string v6, " DCT expt:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 459
    :cond_3
    const-string v6, " no DCT"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private pdnIpTypeLookup(Ljava/lang/String;)I
    .locals 2
    .param p1, "givenType"    # Ljava/lang/String;

    .prologue
    .line 584
    const/4 v0, 0x0

    .line 585
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 586
    sget-object v1, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypes:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 587
    :goto_0
    if-lez v0, :cond_0

    sget-object v1, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 588
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 591
    :cond_0
    return v0
.end method

.method private processQueryPdnFromModem(ILjava/lang/Object;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p1, "resultType"    # I
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "prevResults"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x2

    .line 831
    move-object v0, p3

    .line 832
    .local v0, "currResults":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getRilSupportingType()I

    move-result v6

    if-ltz v6, :cond_11

    move-object v3, p2

    .line 833
    check-cast v3, Lcom/android/internal/telephony/dataconnection/APNParam;

    .line 834
    .local v3, "resultAPNParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    sget-boolean v6, Lcom/android/internal/telephony/HtcLtePdnSetting;->DEBUG_PDN_SETTING_INTERFACE:Z

    if-eqz v6, :cond_0

    .line 835
    const-string v6, "LtePdnIf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Query PDN"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " result : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_0
    if-eqz v3, :cond_14

    .line 838
    const/4 v2, 0x6

    .line 839
    .local v2, "itemsAdd":I
    if-ne p1, v9, :cond_1

    .line 849
    const/16 v2, 0x10

    .line 851
    :cond_1
    invoke-direct {p0, p3, v2}, Lcom/android/internal/telephony/HtcLtePdnSetting;->expandsQueryResults([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 853
    if-lt v2, v4, :cond_2

    .line 854
    :try_start_0
    array-length v6, v0

    sub-int/2addr v6, v2

    iget-object v7, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    aput-object v7, v0, v6

    .line 856
    :cond_2
    if-lt v2, v9, :cond_3

    .line 857
    array-length v6, v0

    sub-int/2addr v6, v2

    add-int/lit8 v6, v6, 0x1

    iget v7, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 859
    :cond_3
    const/4 v6, 0x3

    if-lt v2, v6, :cond_4

    iget v6, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->state:I

    if-ltz v6, :cond_4

    .line 860
    array-length v6, v0

    sub-int/2addr v6, v2

    add-int/lit8 v6, v6, 0x2

    iget v7, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->state:I

    if-eqz v7, :cond_12

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 862
    :cond_4
    const/4 v4, 0x4

    if-lt v2, v4, :cond_5

    .line 863
    array-length v4, v0

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x3

    iget-object v5, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->name:Ljava/lang/String;

    aput-object v5, v0, v4

    .line 865
    :cond_5
    const/4 v4, 0x5

    if-lt v2, v4, :cond_6

    .line 866
    array-length v4, v0

    sub-int/2addr v4, v2

    add-int/lit8 v5, v4, 0x4

    iget v4, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->type:I

    if-ltz v4, :cond_13

    iget v4, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->type:I

    sget-object v6, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypes:[Ljava/lang/String;

    array-length v6, v6

    if-ge v4, v6, :cond_13

    sget-object v4, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypes:[Ljava/lang/String;

    iget v6, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->type:I

    aget-object v4, v4, v6

    :goto_1
    aput-object v4, v0, v5

    .line 869
    :cond_6
    const/4 v4, 0x6

    if-lt v2, v4, :cond_7

    .line 870
    array-length v4, v0

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x5

    iget v5, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->timer:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 872
    :cond_7
    const/4 v4, 0x7

    if-lt v2, v4, :cond_8

    .line 873
    array-length v4, v0

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x6

    iget v5, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->authType:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 875
    :cond_8
    const/16 v4, 0x8

    if-lt v2, v4, :cond_9

    .line 876
    array-length v4, v0

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x7

    iget-object v5, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->user:Ljava/lang/String;

    aput-object v5, v0, v4

    .line 878
    :cond_9
    const/16 v4, 0x9

    if-lt v2, v4, :cond_a

    .line 879
    array-length v4, v0

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x8

    iget-object v5, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->password:Ljava/lang/String;

    aput-object v5, v0, v4

    .line 881
    :cond_a
    const/16 v4, 0xa

    if-lt v2, v4, :cond_b

    iget-object v4, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->pcscf_addr_via_pco:Ljava/lang/Boolean;

    if-eqz v4, :cond_b

    .line 882
    array-length v4, v0

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x9

    iget-object v5, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->pcscf_addr_via_pco:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 884
    :cond_b
    const/16 v4, 0xb

    if-lt v2, v4, :cond_c

    iget-object v4, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->pcscf_via_dhcp:Ljava/lang/Boolean;

    if-eqz v4, :cond_c

    .line 885
    array-length v4, v0

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0xa

    iget-object v5, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->pcscf_via_dhcp:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 887
    :cond_c
    const/16 v4, 0xc

    if-lt v2, v4, :cond_d

    iget-object v4, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->is_pcscf_addr_needed:Ljava/lang/Boolean;

    if-eqz v4, :cond_d

    .line 888
    array-length v4, v0

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0xb

    iget-object v5, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->is_pcscf_addr_needed:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 890
    :cond_d
    const/16 v4, 0xd

    if-lt v2, v4, :cond_e

    iget-object v4, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->support_emergency_calls:Ljava/lang/Boolean;

    if-eqz v4, :cond_e

    .line 891
    array-length v4, v0

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0xc

    iget-object v5, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->support_emergency_calls:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 893
    :cond_e
    const/16 v4, 0xe

    if-lt v2, v4, :cond_f

    .line 894
    array-length v4, v0

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0xd

    iget v5, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->apn_maxconn:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 896
    :cond_f
    const/16 v4, 0xf

    if-lt v2, v4, :cond_10

    .line 897
    array-length v4, v0

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0xe

    iget v5, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->apn_maxconn_t:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 899
    :cond_10
    const/16 v4, 0x10

    if-lt v2, v4, :cond_11

    .line 900
    array-length v4, v0

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0xf

    iget v5, v3, Lcom/android/internal/telephony/dataconnection/APNParam;->wait_time:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 915
    .end local v2    # "itemsAdd":I
    .end local v3    # "resultAPNParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    :cond_11
    :goto_2
    return-object v0

    .restart local v2    # "itemsAdd":I
    .restart local v3    # "resultAPNParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    :cond_12
    move v4, v5

    .line 860
    goto/16 :goto_0

    .line 866
    :cond_13
    sget-object v4, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypes:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v4, v4, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 902
    :catch_0
    move-exception v1

    .line 903
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "LtePdnIf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parsing PDN ex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 908
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "itemsAdd":I
    :cond_14
    const/4 v2, 0x6

    .line 909
    .restart local v2    # "itemsAdd":I
    if-ne p1, v9, :cond_15

    .line 910
    const/16 v2, 0x9

    .line 912
    :cond_15
    invoke-direct {p0, p3, v2}, Lcom/android/internal/telephony/HtcLtePdnSetting;->expandsQueryResults([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private processQueryResultBasedOnRequest(II[Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .param p1, "parameterFormat"    # I
    .param p2, "resultType"    # I
    .param p3, "prevResults"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 1186
    const/4 v0, 0x0

    .line 1187
    .local v0, "currResults":Ljava/lang/Object;
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getRilSupportingType()I

    move-result v4

    .line 1188
    .local v4, "rilSupportingType":I
    if-ltz v4, :cond_0

    .line 1189
    packed-switch p1, :pswitch_data_0

    .line 1246
    .end local v0    # "currResults":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 1192
    .restart local v0    # "currResults":Ljava/lang/Object;
    :pswitch_0
    const/4 v1, 0x0

    .line 1193
    .local v1, "formattedResult":Ljava/lang/String;
    packed-switch p2, :pswitch_data_1

    .line 1211
    :cond_1
    :goto_1
    move-object v0, v1

    .line 1213
    .local v0, "currResults":Ljava/lang/String;
    goto :goto_0

    .line 1195
    .local v0, "currResults":Ljava/lang/Object;
    :pswitch_1
    if-eqz p3, :cond_1

    array-length v5, p3

    if-le v5, v6, :cond_1

    .line 1196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x2

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p3, v7

    const-string v7, "0"

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/HtcLtePdnSetting;->responseBooleanStringValueFromModem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p3, v9

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypeLookup(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p3, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p3, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1203
    :pswitch_2
    if-eqz p3, :cond_1

    array-length v5, p3

    if-le v5, v6, :cond_1

    .line 1204
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p3, v7

    const-string v7, "0"

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/HtcLtePdnSetting;->responseBooleanStringValueFromModem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p3, v9

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypeLookup(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p3, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p3, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1216
    .end local v1    # "formattedResult":Ljava/lang/String;
    :pswitch_3
    const/4 v1, 0x0

    .line 1217
    .local v1, "formattedResult":[Ljava/lang/String;
    if-eqz p3, :cond_2

    array-length v5, p3

    if-le v5, v6, :cond_2

    .line 1218
    packed-switch p2, :pswitch_data_2

    .line 1241
    :cond_2
    move-object v0, v1

    .local v0, "currResults":[Ljava/lang/String;
    goto/16 :goto_0

    .line 1221
    .local v0, "currResults":Ljava/lang/Object;
    :pswitch_4
    const/4 v3, -0x1

    .line 1223
    .local v3, "profLen":I
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1225
    :goto_2
    if-lez v3, :cond_2

    .line 1226
    array-length v5, p3

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    .line 1227
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_3
    array-length v5, v1

    if-ge v2, v5, :cond_2

    .line 1228
    add-int/lit8 v5, v2, 0x1

    aget-object v5, p3, v5

    if-eqz v5, :cond_3

    add-int/lit8 v5, v2, 0x1

    aget-object v5, p3, v5

    :goto_4
    aput-object v5, v1, v2

    .line 1227
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1228
    :cond_3
    const-string v5, ""

    goto :goto_4

    .line 1234
    .end local v2    # "index":I
    .end local v3    # "profLen":I
    :pswitch_5
    array-length v5, p3

    new-array v1, v5, [Ljava/lang/String;

    .line 1235
    const/4 v2, 0x0

    .restart local v2    # "index":I
    :goto_5
    array-length v5, p3

    if-ge v2, v5, :cond_2

    .line 1236
    aget-object v5, p3, v2

    if-eqz v5, :cond_4

    aget-object v5, p3, v2

    :goto_6
    aput-object v5, v1, v2

    .line 1235
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1236
    :cond_4
    const-string v5, ""

    goto :goto_6

    .line 1224
    .end local v2    # "index":I
    .restart local v3    # "profLen":I
    :catch_0
    move-exception v5

    goto :goto_2

    .line 1189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1193
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1218
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private queryFromFakeModeModem(Lcom/android/internal/telephony/dataconnection/APNParam;Landroid/os/Message;)Ljava/lang/Exception;
    .locals 17
    .param p1, "pdnParam"    # Lcom/android/internal/telephony/dataconnection/APNParam;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 1627
    const/4 v5, 0x0

    .line 1628
    .local v5, "result":Ljava/lang/Exception;
    sget-object v14, Lcom/android/internal/telephony/HtcLtePdnSetting;->FAKE_MODE_SUPPORT:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1674
    sget-object v14, Lcom/android/internal/telephony/HtcLtePdnSetting;->FAKE_MODE_SYSTEM_PROP:Ljava/lang/String;

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1675
    .local v3, "fakeSdr":Ljava/lang/String;
    if-eqz p2, :cond_7

    .line 1676
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_7

    .line 1679
    const-string v14, "LtePdnIf"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FAKE modem response - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    sget-object v14, Lcom/android/internal/telephony/HtcLtePdnSetting;->FAKE_MODE_ERROR_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 1681
    new-instance v6, Lcom/android/internal/telephony/dataconnection/APNParam;

    invoke-direct {v6}, Lcom/android/internal/telephony/dataconnection/APNParam;-><init>()V

    .line 1683
    .local v6, "resultAPNParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    const-string v14, ","

    invoke-virtual {v3, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1684
    .local v2, "fakeItems":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "item_index":I
    :goto_0
    array-length v14, v2

    if-ge v4, v14, :cond_5

    .line 1685
    packed-switch v4, :pswitch_data_0

    .line 1684
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1687
    :pswitch_0
    aget-object v14, v2, v4

    iput-object v14, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    goto :goto_1

    .line 1690
    :pswitch_1
    const/4 v13, 0x0

    .line 1692
    .local v13, "valTreeNode":I
    :try_start_0
    aget-object v14, v2, v4

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 1696
    :goto_2
    iput v13, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->id:I

    goto :goto_1

    .line 1693
    :catch_0
    move-exception v1

    .line 1694
    .local v1, "ex":Ljava/lang/Exception;
    const-string v14, "LtePdnIf"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FAKE modem response - (default value for tree node) "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1699
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v13    # "valTreeNode":I
    :pswitch_2
    aget-object v14, v2, v4

    if-eqz v14, :cond_0

    aget-object v14, v2, v4

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-gtz v14, :cond_1

    .line 1700
    :cond_0
    const/4 v14, -0x1

    iput v14, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->state:I

    goto :goto_1

    .line 1703
    :cond_1
    const/4 v7, 0x0

    .line 1704
    .local v7, "valApnEnabled":Ljava/lang/Boolean;
    aget-object v14, v2, v4

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1705
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1713
    :goto_3
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v7, v14, :cond_4

    const/4 v14, 0x1

    :goto_4
    iput v14, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->state:I

    goto :goto_1

    .line 1707
    :cond_2
    aget-object v14, v2, v4

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1708
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    .line 1711
    :cond_3
    const-string v14, "LtePdnIf"

    const-string v15, "FAKE modem response - (default value for apn enable) 0"

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1713
    :cond_4
    const/4 v14, 0x0

    goto :goto_4

    .line 1717
    .end local v7    # "valApnEnabled":Ljava/lang/Boolean;
    :pswitch_3
    aget-object v14, v2, v4

    iput-object v14, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->name:Ljava/lang/String;

    goto :goto_1

    .line 1720
    :pswitch_4
    aget-object v14, v2, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypeLookup(Ljava/lang/String;)I

    move-result v14

    iput v14, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->type:I

    goto :goto_1

    .line 1723
    :pswitch_5
    const/4 v10, 0x0

    .line 1725
    .local v10, "valApnTimeout":I
    :try_start_1
    aget-object v14, v2, v4

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    .line 1729
    :goto_5
    iput v10, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->timer:I

    goto/16 :goto_1

    .line 1726
    :catch_1
    move-exception v1

    .line 1727
    .restart local v1    # "ex":Ljava/lang/Exception;
    const-string v14, "LtePdnIf"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FAKE modem response - (default value for apn timeout) "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1732
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v10    # "valApnTimeout":I
    :pswitch_6
    const/4 v12, 0x0

    .line 1734
    .local v12, "valAuthType":I
    :try_start_2
    aget-object v14, v2, v4

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v12

    .line 1738
    :goto_6
    iput v12, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->authType:I

    goto/16 :goto_1

    .line 1735
    :catch_2
    move-exception v1

    .line 1736
    .restart local v1    # "ex":Ljava/lang/Exception;
    const-string v14, "LtePdnIf"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FAKE modem response - (default value for auth type) "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1741
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v12    # "valAuthType":I
    :pswitch_7
    aget-object v14, v2, v4

    iput-object v14, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->user:Ljava/lang/String;

    goto/16 :goto_1

    .line 1744
    :pswitch_8
    aget-object v14, v2, v4

    iput-object v14, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->password:Ljava/lang/String;

    goto/16 :goto_1

    .line 1747
    :pswitch_9
    aget-object v14, v2, v4

    const-string v15, "FAKE modem response - (default value for PCSCF PCO)"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/internal/telephony/HtcLtePdnSetting;->setPdnSetting2_parsingInputEmptyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    iput-object v14, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->pcscf_addr_via_pco:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 1751
    :pswitch_a
    aget-object v14, v2, v4

    const-string v15, "FAKE modem response - (default value for PCSCF HDCP)"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/internal/telephony/HtcLtePdnSetting;->setPdnSetting2_parsingInputEmptyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    iput-object v14, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->pcscf_via_dhcp:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 1755
    :pswitch_b
    aget-object v14, v2, v4

    const-string v15, "FAKE modem response - (default value for PCSCF PDSN)"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/internal/telephony/HtcLtePdnSetting;->setPdnSetting2_parsingInputEmptyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    iput-object v14, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->is_pcscf_addr_needed:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 1759
    :pswitch_c
    aget-object v14, v2, v4

    const-string v15, "FAKE modem response - (default value for emg call)"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/internal/telephony/HtcLtePdnSetting;->setPdnSetting2_parsingInputEmptyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    iput-object v14, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->support_emergency_calls:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 1763
    :pswitch_d
    const/4 v8, -0x1

    .line 1765
    .local v8, "valApnMaxConn":I
    :try_start_3
    aget-object v14, v2, v4

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v8

    .line 1769
    :goto_7
    iput v8, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->apn_maxconn:I

    goto/16 :goto_1

    .line 1766
    :catch_3
    move-exception v1

    .line 1767
    .restart local v1    # "ex":Ljava/lang/Exception;
    const-string v14, "LtePdnIf"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FAKE modem response - (default value for apn maxconn) "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1772
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v8    # "valApnMaxConn":I
    :pswitch_e
    const/4 v9, -0x1

    .line 1774
    .local v9, "valApnMaxConnT":I
    :try_start_4
    aget-object v14, v2, v4

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v9

    .line 1778
    :goto_8
    iput v9, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->apn_maxconn_t:I

    goto/16 :goto_1

    .line 1775
    :catch_4
    move-exception v1

    .line 1776
    .restart local v1    # "ex":Ljava/lang/Exception;
    const-string v14, "LtePdnIf"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FAKE modem response - (default value for apn maxconn_t) "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1781
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v9    # "valApnMaxConnT":I
    :pswitch_f
    const/4 v11, -0x1

    .line 1783
    .local v11, "valApnWaitTime":I
    :try_start_5
    aget-object v14, v2, v4

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result v11

    .line 1787
    :goto_9
    iput v11, v6, Lcom/android/internal/telephony/dataconnection/APNParam;->wait_time:I

    goto/16 :goto_1

    .line 1784
    :catch_5
    move-exception v1

    .line 1785
    .restart local v1    # "ex":Ljava/lang/Exception;
    const-string v14, "LtePdnIf"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FAKE modem response - (default value for apn wait_time) "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1794
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v11    # "valApnWaitTime":I
    :cond_5
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v6, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->sendToTarget()V

    .line 1797
    .end local v2    # "fakeItems":[Ljava/lang/String;
    .end local v4    # "item_index":I
    .end local v6    # "resultAPNParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    :cond_6
    new-instance v5, Ljava/lang/Exception;

    .end local v5    # "result":Ljava/lang/Exception;
    invoke-direct {v5, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1801
    .end local v3    # "fakeSdr":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/Exception;
    :cond_7
    return-object v5

    .line 1685
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private queryPdnFromModem(Lcom/android/internal/telephony/dataconnection/APNParam;Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Exception;
    .locals 18
    .param p1, "pdnParam"    # Lcom/android/internal/telephony/dataconnection/APNParam;
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "pdnArray"    # Ljava/lang/Object;

    .prologue
    .line 601
    const/4 v10, 0x0

    .line 603
    .local v10, "queryFail":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 604
    .local v4, "fakeModeExecuted":Z
    sget-object v13, Lcom/android/internal/telephony/HtcLtePdnSetting;->FAKE_MODE_SUPPORT:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 605
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/telephony/HtcLtePdnSetting;->queryFromFakeModeModem(Lcom/android/internal/telephony/dataconnection/APNParam;Landroid/os/Message;)Ljava/lang/Exception;

    move-result-object v10

    .line 606
    if-eqz v10, :cond_1

    .line 607
    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 608
    .local v3, "failReason":Ljava/lang/String;
    if-eqz v3, :cond_0

    sget-object v13, Lcom/android/internal/telephony/HtcLtePdnSetting;->FAKE_MODE_ERROR_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 609
    const/4 v10, 0x0

    .line 611
    :cond_0
    const/4 v4, 0x1

    .line 614
    .end local v3    # "failReason":Ljava/lang/String;
    :cond_1
    if-nez v4, :cond_2

    .line 615
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getRilSupportingType()I

    move-result v11

    .line 616
    .local v11, "rilSupportingType":I
    packed-switch v11, :pswitch_data_0

    .line 730
    new-instance v10, Ljava/lang/Exception;

    .end local v10    # "queryFail":Ljava/lang/Exception;
    const-string v13, "Not support in this modem"

    invoke-direct {v10, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 734
    .end local v11    # "rilSupportingType":I
    .end local p3    # "pdnArray":Ljava/lang/Object;
    .restart local v10    # "queryFail":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-object v10

    .line 620
    .restart local v11    # "rilSupportingType":I
    .restart local p3    # "pdnArray":Ljava/lang/Object;
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getMMDataConnectionTrackerClass()Ljava/lang/Object;

    move-result-object v1

    .line 621
    .local v1, "cls":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getMMDataConnectionTracker(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 622
    .local v8, "mmdt":Ljava/lang/Object;
    if-eqz v8, :cond_9

    .line 623
    instance-of v13, v8, Ljava/lang/Exception;

    if-nez v13, :cond_8

    .line 624
    const/4 v6, 0x0

    .line 626
    .local v6, "methodAPNParam_get":Ljava/lang/reflect/Method;
    :try_start_0
    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    move-object v13, v0

    const-string v14, "getAPNParams"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Lcom/android/internal/telephony/dataconnection/APNParam;

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-class v17, Landroid/os/Message;

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v6

    .line 631
    :goto_1
    if-eqz v6, :cond_4

    .line 632
    const/4 v13, 0x2

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/Message;->arg2:I

    .line 633
    sget-boolean v13, Lcom/android/internal/telephony/HtcLtePdnSetting;->DEBUG_PDN_SETTING_INTERFACE:Z

    if-eqz v13, :cond_3

    .line 634
    const-string v13, "LtePdnIf"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Query PDN2 with : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_3
    const/4 v13, 0x2

    :try_start_1
    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    const/4 v14, 0x1

    aput-object p2, v13, v14

    invoke-virtual {v6, v8, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 638
    :catch_0
    move-exception v2

    .line 639
    .local v2, "ex":Ljava/lang/Exception;
    const-string v13, "LtePdnIf"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Query PDN2 error Mth "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    move-object v10, v2

    .line 641
    goto :goto_0

    .line 644
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_4
    const/4 v9, -0x1

    .line 646
    .local v9, "profileIndex":I
    :try_start_2
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v9

    .line 657
    .end local p3    # "pdnArray":Ljava/lang/Object;
    :cond_5
    if-ltz v9, :cond_7

    .line 658
    const/4 v7, 0x0

    .line 659
    .local v7, "methodName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->rat:I

    packed-switch v13, :pswitch_data_1

    .line 665
    :goto_2
    :pswitch_1
    :try_start_3
    check-cast v1, Ljava/lang/Class;

    .end local v1    # "cls":Ljava/lang/Object;
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-class v15, Landroid/os/Message;

    aput-object v15, v13, v14

    invoke-virtual {v1, v7, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 666
    const/4 v13, 0x1

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/Message;->arg2:I

    .line 667
    sget-boolean v13, Lcom/android/internal/telephony/HtcLtePdnSetting;->DEBUG_PDN_SETTING_INTERFACE:Z

    if-eqz v13, :cond_6

    .line 668
    const-string v13, "LtePdnIf"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Query PDN1 with : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_6
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object p2, v13, v14

    invoke-virtual {v6, v8, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 671
    :catch_1
    move-exception v2

    .line 672
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v13, "LtePdnIf"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Query PDN error "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    move-object v10, v2

    goto/16 :goto_0

    .line 647
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v7    # "methodName":Ljava/lang/String;
    .restart local v1    # "cls":Ljava/lang/Object;
    .restart local p3    # "pdnArray":Ljava/lang/Object;
    :catch_2
    move-exception v2

    .line 648
    .restart local v2    # "ex":Ljava/lang/Exception;
    if-eqz p3, :cond_5

    .line 649
    check-cast p3, [Ljava/lang/String;

    .end local p3    # "pdnArray":Ljava/lang/Object;
    move-object/from16 v5, p3

    check-cast v5, [Ljava/lang/String;

    .line 650
    .local v5, "knownPdns":[Ljava/lang/String;
    array-length v13, v5

    add-int/lit8 v9, v13, -0x1

    .line 651
    :goto_3
    if-ltz v9, :cond_5

    aget-object v13, v5, v9

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 652
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 660
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v5    # "knownPdns":[Ljava/lang/String;
    .restart local v7    # "methodName":Ljava/lang/String;
    :pswitch_2
    const-string v7, "get3GPPAPNParams"

    goto/16 :goto_2

    .line 661
    :pswitch_3
    const-string v7, "getEHRPDAPNParams"

    goto/16 :goto_2

    .line 662
    :pswitch_4
    const-string v7, "getLTEAPNParams"

    goto/16 :goto_2

    .line 677
    .end local v7    # "methodName":Ljava/lang/String;
    :cond_7
    new-instance v10, Ljava/lang/Exception;

    .end local v10    # "queryFail":Ljava/lang/Exception;
    const-string v13, "Only supported PDN1 format"

    invoke-direct {v10, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v10    # "queryFail":Ljava/lang/Exception;
    goto/16 :goto_0

    .end local v6    # "methodAPNParam_get":Ljava/lang/reflect/Method;
    .end local v9    # "profileIndex":I
    .restart local p3    # "pdnArray":Ljava/lang/Object;
    :cond_8
    move-object v10, v8

    .line 682
    check-cast v10, Ljava/lang/Exception;

    goto/16 :goto_0

    .line 685
    :cond_9
    if-nez v10, :cond_2

    .line 686
    new-instance v10, Ljava/lang/Exception;

    .end local v10    # "queryFail":Ljava/lang/Exception;
    const-string v13, "MMDct not created"

    invoke-direct {v10, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v10    # "queryFail":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 692
    .end local v1    # "cls":Ljava/lang/Object;
    .end local v8    # "mmdt":Ljava/lang/Object;
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getPhoneInUse()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    .line 693
    .local v12, "targetPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v12, :cond_d

    instance-of v13, v12, Lcom/android/internal/telephony/PhoneBase;

    if-eqz v13, :cond_d

    move-object v13, v12

    .line 694
    check-cast v13, Lcom/android/internal/telephony/PhoneBase;

    iget-object v13, v13, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v13, :cond_c

    .line 695
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getRilClass()Ljava/lang/Object;

    move-result-object v1

    .line 697
    .restart local v1    # "cls":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 699
    .restart local v6    # "methodAPNParam_get":Ljava/lang/reflect/Method;
    :try_start_4
    check-cast v1, Ljava/lang/Class;

    .end local v1    # "cls":Ljava/lang/Object;
    const-string v13, "requestGetAPNParamsExt"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Lcom/android/internal/telephony/dataconnection/APNParam;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-class v16, Landroid/os/Message;

    aput-object v16, v14, v15

    invoke-virtual {v1, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v6

    .line 704
    :goto_4
    if-eqz v6, :cond_b

    .line 705
    const/4 v13, 0x2

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/Message;->arg2:I

    .line 706
    sget-boolean v13, Lcom/android/internal/telephony/HtcLtePdnSetting;->DEBUG_PDN_SETTING_INTERFACE:Z

    if-eqz v13, :cond_a

    .line 707
    const-string v13, "LtePdnIf"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Query RilExt PDN2 with : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_a
    :try_start_5
    check-cast v12, Lcom/android/internal/telephony/PhoneBase;

    .end local v12    # "targetPhone":Lcom/android/internal/telephony/Phone;
    iget-object v13, v12, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v13, Lcom/android/internal/telephony/RIL;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    const/4 v15, 0x1

    aput-object p2, v14, v15

    invoke-virtual {v6, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 711
    :catch_3
    move-exception v2

    .line 712
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v13, "LtePdnIf"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Query RilExt PDN2 error Mth "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    move-object v10, v2

    .line 714
    goto/16 :goto_0

    .line 700
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v12    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :catch_4
    move-exception v2

    .line 701
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v13, "LtePdnIf"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Query RilExt PDN2 error If "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 717
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_b
    new-instance v10, Ljava/lang/Exception;

    .end local v10    # "queryFail":Ljava/lang/Exception;
    const-string v13, "RilExt not existed"

    invoke-direct {v10, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v10    # "queryFail":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 721
    .end local v6    # "methodAPNParam_get":Ljava/lang/reflect/Method;
    :cond_c
    new-instance v10, Ljava/lang/Exception;

    .end local v10    # "queryFail":Ljava/lang/Exception;
    const-string v13, "RIL not existed"

    invoke-direct {v10, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v10    # "queryFail":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 725
    :cond_d
    new-instance v10, Ljava/lang/Exception;

    .end local v10    # "queryFail":Ljava/lang/Exception;
    const-string v13, "Phone not existed"

    invoke-direct {v10, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v10    # "queryFail":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 627
    .end local v12    # "targetPhone":Lcom/android/internal/telephony/Phone;
    .restart local v1    # "cls":Ljava/lang/Object;
    .restart local v6    # "methodAPNParam_get":Ljava/lang/reflect/Method;
    .restart local v8    # "mmdt":Ljava/lang/Object;
    :catch_5
    move-exception v13

    goto/16 :goto_1

    .line 616
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 659
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private resetPdnForSettingsChangeCont_handling(Ljava/lang/Object;)V
    .locals 13
    .param p1, "objAr"    # Ljava/lang/Object;

    .prologue
    .line 1493
    const/4 v6, 0x0

    .line 1494
    .local v6, "ar":Landroid/os/AsyncResult;
    if-eqz p1, :cond_3

    instance-of v0, p1, Landroid/os/AsyncResult;

    if-eqz v0, :cond_3

    move-object v6, p1

    .line 1495
    check-cast v6, Landroid/os/AsyncResult;

    .line 1503
    const/4 v3, 0x0

    .line 1504
    .local v3, "mmdt":Lcom/android/internal/telephony/dataconnection/DcTracker;
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getPhoneInUse()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1505
    .local v2, "targetPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_0

    move-object v0, v2

    .line 1506
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_4

    move-object v0, v2

    .line 1507
    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 1513
    :cond_0
    :goto_0
    if-eqz v3, :cond_3

    .line 1514
    const/4 v8, 0x0

    .line 1515
    .local v8, "broadcastIntentWithPermission":Z
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getSenseVersion()Ljava/lang/String;

    move-result-object v9

    .line 1516
    .local v9, "senseVer":Ljava/lang/String;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1517
    const-string v0, "[.]"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1518
    .local v10, "senses":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 1520
    .local v11, "verMajor":I
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, v10, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    .line 1523
    :goto_1
    const/4 v0, 0x5

    if-le v11, v0, :cond_5

    .line 1524
    const/4 v8, 0x1

    .line 1538
    .end local v10    # "senses":[Ljava/lang/String;
    .end local v11    # "verMajor":I
    :cond_1
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1539
    .local v1, "sbLog":Ljava/lang/StringBuilder;
    const-string v0, "changePdnSettings ss="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1540
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1541
    if-eqz v6, :cond_7

    .line 1542
    const/4 v4, 0x0

    .line 1543
    .local v4, "needRadioOff":Z
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 1544
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1546
    :cond_2
    const-string v0, " result "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1548
    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/HtcLtePdnSetting;->resetPdnForSettingsChangeResult_handling(Ljava/lang/StringBuilder;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DcTracker;ZZ)V

    .line 1550
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.htc.intent.action.WRITE_PDN_COMMITTED"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1551
    .local v7, "broadcast":Landroid/content/Intent;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v8, :cond_6

    const-string v0, "com.htc.permission.APP_PLATFORM"

    :goto_3
    invoke-virtual {v5, v7, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1559
    .end local v1    # "sbLog":Ljava/lang/StringBuilder;
    .end local v2    # "targetPhone":Lcom/android/internal/telephony/Phone;
    .end local v3    # "mmdt":Lcom/android/internal/telephony/dataconnection/DcTracker;
    .end local v4    # "needRadioOff":Z
    .end local v7    # "broadcast":Landroid/content/Intent;
    .end local v8    # "broadcastIntentWithPermission":Z
    .end local v9    # "senseVer":Ljava/lang/String;
    :cond_3
    :goto_4
    return-void

    .restart local v2    # "targetPhone":Lcom/android/internal/telephony/Phone;
    .restart local v3    # "mmdt":Lcom/android/internal/telephony/dataconnection/DcTracker;
    :cond_4
    move-object v0, v2

    .line 1510
    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    goto :goto_0

    .line 1526
    .restart local v8    # "broadcastIntentWithPermission":Z
    .restart local v9    # "senseVer":Ljava/lang/String;
    .restart local v10    # "senses":[Ljava/lang/String;
    .restart local v11    # "verMajor":I
    :cond_5
    const/4 v0, 0x5

    if-ne v11, v0, :cond_1

    .line 1527
    const/4 v12, 0x0

    .line 1529
    .local v12, "verMinor":I
    const/4 v0, 0x1

    :try_start_1
    aget-object v0, v10, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    .line 1532
    :goto_5
    const/4 v0, 0x5

    if-lt v12, v0, :cond_1

    .line 1533
    const/4 v8, 0x1

    goto :goto_2

    .line 1551
    .end local v10    # "senses":[Ljava/lang/String;
    .end local v11    # "verMajor":I
    .end local v12    # "verMinor":I
    .restart local v1    # "sbLog":Ljava/lang/StringBuilder;
    .restart local v4    # "needRadioOff":Z
    .restart local v7    # "broadcast":Landroid/content/Intent;
    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    .line 1555
    .end local v4    # "needRadioOff":Z
    .end local v7    # "broadcast":Landroid/content/Intent;
    :cond_7
    const-string v0, " incorrect RIL response"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1556
    const-string v0, "LtePdnIf"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1530
    .end local v1    # "sbLog":Ljava/lang/StringBuilder;
    .restart local v10    # "senses":[Ljava/lang/String;
    .restart local v11    # "verMajor":I
    .restart local v12    # "verMinor":I
    :catch_0
    move-exception v0

    goto :goto_5

    .line 1521
    .end local v12    # "verMinor":I
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private resetPdnForSettingsChangeResult_handling(Ljava/lang/StringBuilder;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DcTracker;ZZ)V
    .locals 5
    .param p1, "sbLog"    # Ljava/lang/StringBuilder;
    .param p2, "targetPhone"    # Lcom/android/internal/telephony/Phone;
    .param p3, "mmdt"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p4, "needRadioOff"    # Z
    .param p5, "allowDisconnect"    # Z

    .prologue
    .line 1562
    const/4 v2, 0x0

    .line 1563
    .local v2, "phoneSST":Lcom/android/internal/telephony/ServiceStateTracker;
    const/4 v1, 0x1

    .line 1564
    .local v1, "onlyPerformDisconnect":Z
    if-eqz p4, :cond_6

    .line 1565
    if-eqz p1, :cond_0

    .line 1566
    const-string v3, " perform reset"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    :cond_0
    if-eqz p2, :cond_2

    .line 1569
    instance-of v3, p2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v3, :cond_5

    .line 1570
    check-cast p2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local p2    # "targetPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    .line 1575
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 1576
    const/4 v1, 0x0

    .line 1577
    if-eqz p1, :cond_2

    .line 1578
    const-string v3, " radio"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 1597
    const-string v3, "LtePdnIf"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :cond_3
    if-eqz v1, :cond_8

    .line 1602
    const v3, 0x4201d

    invoke-virtual {p3, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1603
    .local v0, "msg":Landroid/os/Message;
    const-string v3, "getNewMPDNTable"

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1604
    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1616
    .end local v0    # "msg":Landroid/os/Message;
    :cond_4
    :goto_2
    return-void

    .line 1572
    .restart local p2    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :cond_5
    instance-of v3, p2, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v3, :cond_1

    .line 1573
    check-cast p2, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local p2    # "targetPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    goto :goto_0

    .line 1585
    .restart local p2    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :cond_6
    if-nez p5, :cond_7

    .line 1586
    if-eqz p1, :cond_4

    .line 1587
    const-string v3, " skip reset connection"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1588
    const-string v3, "LtePdnIf"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1592
    :cond_7
    if-eqz p1, :cond_2

    .line 1593
    const-string v3, " perform reset connection"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1613
    .end local p2    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :cond_8
    const/4 v3, 0x0

    invoke-virtual {v2, v3, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->lockUntilRadioPower(ZLcom/android/internal/telephony/dataconnection/DcTracker;)Ljava/lang/Boolean;

    goto :goto_2
.end method

.method private responseBooleanStringValueFromModem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "modemValue"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 1162
    move-object v1, p2

    .line 1163
    .local v1, "responseString":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1165
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "1"

    .line 1173
    :goto_0
    return-object v1

    .line 1165
    :cond_0
    const-string v1, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1166
    :catch_0
    move-exception v0

    .line 1167
    .local v0, "ex":Ljava/lang/Exception;
    move-object v1, p2

    .line 1168
    goto :goto_0

    .line 1171
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    move-object v1, p2

    goto :goto_0
.end method

.method private setPdnFromModem(Lcom/android/internal/telephony/dataconnection/APNParam;Landroid/os/Message;)Ljava/lang/Exception;
    .locals 15
    .param p1, "pdnParam"    # Lcom/android/internal/telephony/dataconnection/APNParam;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 923
    const/4 v8, 0x0

    .line 925
    .local v8, "setFail":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getRilSupportingType()I

    move-result v7

    .line 926
    .local v7, "rilSupportingType":I
    packed-switch v7, :pswitch_data_0

    .line 1038
    new-instance v8, Ljava/lang/Exception;

    .end local v8    # "setFail":Ljava/lang/Exception;
    const-string v10, "Not support in this modem"

    invoke-direct {v8, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1041
    .restart local v8    # "setFail":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v8

    .line 930
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getMMDataConnectionTrackerClass()Ljava/lang/Object;

    move-result-object v1

    .line 931
    .local v1, "cls":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getMMDataConnectionTracker(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 932
    .local v5, "mmdt":Ljava/lang/Object;
    if-eqz v5, :cond_6

    .line 933
    instance-of v10, v5, Ljava/lang/Exception;

    if-nez v10, :cond_5

    .line 934
    const/4 v3, 0x0

    .line 936
    .local v3, "methodAPNParam_set":Ljava/lang/reflect/Method;
    :try_start_0
    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    move-object v10, v0

    const-string v11, "setAPNParams"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Lcom/android/internal/telephony/dataconnection/APNParam;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-class v14, Landroid/os/Message;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 941
    :goto_1
    if-eqz v3, :cond_2

    .line 942
    const/4 v10, 0x2

    move-object/from16 v0, p2

    iput v10, v0, Landroid/os/Message;->arg2:I

    .line 943
    sget-boolean v10, Lcom/android/internal/telephony/HtcLtePdnSetting;->DEBUG_PDN_SETTING_INTERFACE:Z

    if-eqz v10, :cond_1

    .line 944
    const-string v10, "LtePdnIf"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Set PDN2 with : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_1
    const/4 v10, 0x2

    :try_start_1
    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object p2, v10, v11

    invoke-virtual {v3, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 948
    :catch_0
    move-exception v2

    .line 949
    .local v2, "ex":Ljava/lang/Exception;
    const-string v10, "LtePdnIf"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Set PDN2 error Mth "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    move-object v8, v2

    .line 951
    goto :goto_0

    .line 937
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 938
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v10, "LtePdnIf"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Set PDN2 error If "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 954
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_2
    const/4 v6, -0x1

    .line 956
    .local v6, "profileIndex":I
    :try_start_2
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result v6

    .line 959
    :goto_2
    const/4 v10, 0x1

    if-lt v6, v10, :cond_4

    .line 960
    add-int/lit8 v6, v6, -0x1

    .line 961
    const/4 v4, 0x0

    .line 962
    .local v4, "methodName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->rat:I

    packed-switch v10, :pswitch_data_1

    .line 969
    :goto_3
    :pswitch_1
    :try_start_3
    check-cast v1, Ljava/lang/Class;

    .end local v1    # "cls":Ljava/lang/Object;
    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x5

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-class v12, Landroid/os/Message;

    aput-object v12, v10, v11

    invoke-virtual {v1, v4, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 972
    const/4 v10, 0x1

    move-object/from16 v0, p2

    iput v10, v0, Landroid/os/Message;->arg2:I

    .line 973
    sget-boolean v10, Lcom/android/internal/telephony/HtcLtePdnSetting;->DEBUG_PDN_SETTING_INTERFACE:Z

    if-eqz v10, :cond_3

    .line 974
    const-string v10, "LtePdnIf"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Set PDN1 with : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->type:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->state:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->timer:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_3
    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->name:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->type:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->state:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->timer:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    aput-object p2, v10, v11

    invoke-virtual {v3, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 979
    :catch_2
    move-exception v2

    .line 980
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v10, "LtePdnIf"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Set PDN error "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    move-object v8, v2

    goto/16 :goto_0

    .line 963
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v1    # "cls":Ljava/lang/Object;
    :pswitch_2
    const-string v4, "set3GPPAPNParams"

    goto/16 :goto_3

    .line 964
    :pswitch_3
    const-string v4, "setEHRPDAPNParams"

    goto/16 :goto_3

    .line 965
    :pswitch_4
    const-string v4, "setLTEAPNParams"

    goto/16 :goto_3

    .line 985
    .end local v4    # "methodName":Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/lang/Exception;

    .end local v8    # "setFail":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Only supported PDN1 format : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v8    # "setFail":Ljava/lang/Exception;
    goto/16 :goto_0

    .end local v3    # "methodAPNParam_set":Ljava/lang/reflect/Method;
    .end local v6    # "profileIndex":I
    :cond_5
    move-object v8, v5

    .line 990
    check-cast v8, Ljava/lang/Exception;

    goto/16 :goto_0

    .line 993
    :cond_6
    if-nez v8, :cond_0

    .line 994
    new-instance v8, Ljava/lang/Exception;

    .end local v8    # "setFail":Ljava/lang/Exception;
    const-string v10, "MMDct not created"

    invoke-direct {v8, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v8    # "setFail":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 1000
    .end local v1    # "cls":Ljava/lang/Object;
    .end local v5    # "mmdt":Ljava/lang/Object;
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getPhoneInUse()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    .line 1001
    .local v9, "targetPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v9, :cond_a

    instance-of v10, v9, Lcom/android/internal/telephony/PhoneBase;

    if-eqz v10, :cond_a

    move-object v10, v9

    .line 1002
    check-cast v10, Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v10, :cond_9

    .line 1003
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getRilClass()Ljava/lang/Object;

    move-result-object v1

    .line 1005
    .restart local v1    # "cls":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1007
    .restart local v3    # "methodAPNParam_set":Ljava/lang/reflect/Method;
    :try_start_4
    check-cast v1, Ljava/lang/Class;

    .end local v1    # "cls":Ljava/lang/Object;
    const-string v10, "requestSetAPNParamsExt"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Lcom/android/internal/telephony/dataconnection/APNParam;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-class v13, Landroid/os/Message;

    aput-object v13, v11, v12

    invoke-virtual {v1, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v3

    .line 1012
    :goto_4
    if-eqz v3, :cond_8

    .line 1013
    const/4 v10, 0x2

    move-object/from16 v0, p2

    iput v10, v0, Landroid/os/Message;->arg2:I

    .line 1014
    sget-boolean v10, Lcom/android/internal/telephony/HtcLtePdnSetting;->DEBUG_PDN_SETTING_INTERFACE:Z

    if-eqz v10, :cond_7

    .line 1015
    const-string v10, "LtePdnIf"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Set RilExt PDN2 with : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_7
    :try_start_5
    check-cast v9, Lcom/android/internal/telephony/PhoneBase;

    .end local v9    # "targetPhone":Lcom/android/internal/telephony/Phone;
    iget-object v10, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v10, Lcom/android/internal/telephony/RIL;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    const/4 v12, 0x1

    aput-object p2, v11, v12

    invoke-virtual {v3, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 1019
    :catch_3
    move-exception v2

    .line 1020
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v10, "LtePdnIf"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Set RilExt PDN2 error Mth "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    move-object v8, v2

    .line 1022
    goto/16 :goto_0

    .line 1008
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v9    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :catch_4
    move-exception v2

    .line 1009
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v10, "LtePdnIf"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Set RilExt PDN2 error If "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1025
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_8
    new-instance v8, Ljava/lang/Exception;

    .end local v8    # "setFail":Ljava/lang/Exception;
    const-string v10, "RilExt not existed"

    invoke-direct {v8, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v8    # "setFail":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 1029
    .end local v3    # "methodAPNParam_set":Ljava/lang/reflect/Method;
    :cond_9
    new-instance v8, Ljava/lang/Exception;

    .end local v8    # "setFail":Ljava/lang/Exception;
    const-string v10, "RIL not existed"

    invoke-direct {v8, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v8    # "setFail":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 1033
    :cond_a
    new-instance v8, Ljava/lang/Exception;

    .end local v8    # "setFail":Ljava/lang/Exception;
    const-string v10, "Phone not existed"

    invoke-direct {v8, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v8    # "setFail":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 957
    .end local v9    # "targetPhone":Lcom/android/internal/telephony/Phone;
    .restart local v1    # "cls":Ljava/lang/Object;
    .restart local v3    # "methodAPNParam_set":Ljava/lang/reflect/Method;
    .restart local v5    # "mmdt":Ljava/lang/Object;
    .restart local v6    # "profileIndex":I
    :catch_5
    move-exception v10

    goto/16 :goto_2

    .line 926
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 962
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private setPdnSetting2_parsingInputEmptyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "valueBoolean"    # Ljava/lang/String;
    .param p2, "errDebugMsg"    # Ljava/lang/String;

    .prologue
    .line 1320
    const/4 v0, 0x0

    .line 1321
    .local v0, "result":Ljava/lang/Boolean;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1322
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1323
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1332
    :cond_0
    :goto_0
    return-object v0

    .line 1325
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1326
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1328
    :cond_2
    if-eqz p2, :cond_0

    .line 1329
    const-string v1, "LtePdnIf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPdnSettings2Result_handling(IILandroid/os/AsyncResult;)V
    .locals 4
    .param p1, "parameterFormat"    # I
    .param p2, "resultType"    # I
    .param p3, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1482
    iget-object v0, p3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 1483
    .local v0, "request":Landroid/os/Message;
    const-string v2, "LtePdnIf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set PDN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_1

    const-string v1, ", resp"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ex: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    if-eqz v0, :cond_0

    .line 1485
    const/4 v1, 0x0

    iget-object v2, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1486
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1488
    :cond_0
    return-void

    .line 1483
    :cond_1
    const-string v1, ", no-resp"

    goto :goto_0
.end method

.method private setPdnSettings2_handling(I[Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 12
    .param p1, "parameterFormat"    # I
    .param p2, "requestObj"    # [Ljava/lang/Object;
    .param p3, "remainingHandling"    # Landroid/os/Handler;

    .prologue
    .line 1345
    const/4 v0, 0x0

    .line 1346
    .local v0, "errorResult":Ljava/lang/Exception;
    const/4 v9, 0x0

    aget-object v9, p2, v9

    check-cast v9, [Ljava/lang/String;

    move-object v6, v9

    check-cast v6, [Ljava/lang/String;

    .line 1347
    .local v6, "queryCmds":[Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v7, p2, v9

    check-cast v7, Landroid/os/Message;

    .line 1348
    .local v7, "request":Landroid/os/Message;
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getRilSupportingType()I

    move-result v8

    .line 1349
    .local v8, "rilSupportingType":I
    if-ltz v8, :cond_f

    if-eqz v6, :cond_f

    .line 1350
    new-instance v4, Lcom/android/internal/telephony/dataconnection/APNParam;

    invoke-direct {v4}, Lcom/android/internal/telephony/dataconnection/APNParam;-><init>()V

    .line 1351
    .local v4, "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    const/16 v9, 0x6e

    invoke-virtual {p3, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1352
    .local v2, "msg":Landroid/os/Message;
    packed-switch p1, :pswitch_data_0

    .line 1460
    const-string v10, "LtePdnIf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Set PDN parm incorrect "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v6, :cond_e

    array-length v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_0
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    new-instance v0, Ljava/lang/Exception;

    .end local v0    # "errorResult":Ljava/lang/Exception;
    const-string v9, "Incorrect Parameters"

    invoke-direct {v0, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1464
    .restart local v0    # "errorResult":Ljava/lang/Exception;
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 1465
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 1466
    iput-object v7, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1467
    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/HtcLtePdnSetting;->setPdnFromModem(Lcom/android/internal/telephony/dataconnection/APNParam;Landroid/os/Message;)Ljava/lang/Exception;

    move-result-object v0

    .line 1475
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    if-eqz v7, :cond_2

    .line 1476
    const/4 v9, 0x0

    invoke-static {v7, v9, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1477
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1479
    :cond_2
    return-void

    .line 1355
    .restart local v2    # "msg":Landroid/os/Message;
    .restart local v4    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    :pswitch_0
    const-string v10, "LtePdnIf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set PDN "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v11, 0x0

    aget-object v11, v6, v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v11, 0x2

    aget-object v11, v6, v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v7, :cond_3

    const-string v9, ".(resp)"

    :goto_3
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    const/4 v3, 0x0

    .line 1358
    .local v3, "networkType":I
    const/4 v9, 0x0

    :try_start_0
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    move-result v3

    .line 1360
    :goto_4
    sparse-switch v3, :sswitch_data_0

    .line 1369
    const/4 v9, 0x4

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->rat:I

    .line 1373
    :goto_5
    const/4 v9, 0x1

    :try_start_1
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->id:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1377
    :goto_6
    if-nez v0, :cond_0

    .line 1378
    const/4 v9, 0x2

    aget-object v9, v6, v9

    iput-object v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    .line 1380
    const/4 v9, 0x3

    :try_start_2
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    :goto_7
    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->state:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    .line 1382
    :goto_8
    const/4 v9, 0x4

    aget-object v9, v6, v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypeLookup(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->type:I

    .line 1384
    const/4 v9, 0x5

    :try_start_3
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->timer:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    .line 1386
    :goto_9
    const/4 v9, 0x6

    aget-object v9, v6, v9

    iput-object v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->name:Ljava/lang/String;

    goto/16 :goto_1

    .line 1355
    .end local v3    # "networkType":I
    :cond_3
    const-string v9, ".(no-resp)"

    goto :goto_3

    .line 1362
    .restart local v3    # "networkType":I
    :sswitch_0
    const/4 v9, 0x1

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->rat:I

    goto :goto_5

    .line 1365
    :sswitch_1
    const/4 v9, 0x2

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->rat:I

    goto :goto_5

    .line 1374
    :catch_0
    move-exception v1

    .line 1375
    .local v1, "ex":Ljava/lang/Exception;
    move-object v0, v1

    goto :goto_6

    .line 1380
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_4
    const/4 v9, 0x0

    goto :goto_7

    .line 1392
    .end local v3    # "networkType":I
    :pswitch_1
    const-string v10, "LtePdnIf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set PDN2 "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v11, 0x2

    aget-object v11, v6, v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v7, :cond_c

    const-string v9, ".(resp)"

    :goto_a
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    const/4 v3, 0x0

    .line 1395
    .restart local v3    # "networkType":I
    const/4 v9, 0x1

    :try_start_4
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    move-result v3

    .line 1397
    :goto_b
    sparse-switch v3, :sswitch_data_1

    .line 1406
    const/4 v9, 0x4

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->rat:I

    .line 1409
    :goto_c
    const/4 v9, 0x2

    aget-object v9, v6, v9

    iput-object v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    .line 1411
    const/4 v9, 0x3

    :try_start_5
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->id:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 1413
    :goto_d
    const/4 v5, -0x1

    .line 1414
    .local v5, "pdnState":I
    const/4 v9, 0x4

    aget-object v9, v6, v9

    if-eqz v9, :cond_5

    const/4 v9, 0x4

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 1416
    const/4 v9, 0x4

    :try_start_6
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result v9

    if-eqz v9, :cond_d

    const/4 v5, 0x1

    .line 1419
    :cond_5
    :goto_e
    iput v5, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->state:I

    .line 1420
    const/4 v9, 0x5

    aget-object v9, v6, v9

    iput-object v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->name:Ljava/lang/String;

    .line 1421
    const/4 v9, 0x6

    aget-object v9, v6, v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypeLookup(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->type:I

    .line 1423
    const/4 v9, 0x7

    :try_start_7
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->timer:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 1426
    :goto_f
    const/16 v9, 0x8

    :try_start_8
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->authType:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 1428
    :goto_10
    const/16 v9, 0x9

    aget-object v9, v6, v9

    iput-object v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->user:Ljava/lang/String;

    .line 1429
    const/16 v9, 0xa

    aget-object v9, v6, v9

    iput-object v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->password:Ljava/lang/String;

    .line 1430
    array-length v9, v6

    const/16 v10, 0xb

    if-le v9, v10, :cond_6

    .line 1431
    const/16 v9, 0xb

    aget-object v9, v6, v9

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/HtcLtePdnSetting;->setPdnSetting2_parsingInputEmptyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->pcscf_addr_via_pco:Ljava/lang/Boolean;

    .line 1433
    :cond_6
    array-length v9, v6

    const/16 v10, 0xc

    if-le v9, v10, :cond_7

    .line 1434
    const/16 v9, 0xc

    aget-object v9, v6, v9

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/HtcLtePdnSetting;->setPdnSetting2_parsingInputEmptyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->pcscf_via_dhcp:Ljava/lang/Boolean;

    .line 1436
    :cond_7
    array-length v9, v6

    const/16 v10, 0xd

    if-le v9, v10, :cond_8

    .line 1437
    const/16 v9, 0xd

    aget-object v9, v6, v9

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/HtcLtePdnSetting;->setPdnSetting2_parsingInputEmptyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->is_pcscf_addr_needed:Ljava/lang/Boolean;

    .line 1439
    :cond_8
    array-length v9, v6

    const/16 v10, 0xe

    if-le v9, v10, :cond_9

    .line 1440
    const/16 v9, 0xe

    aget-object v9, v6, v9

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/HtcLtePdnSetting;->setPdnSetting2_parsingInputEmptyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->support_emergency_calls:Ljava/lang/Boolean;

    .line 1442
    :cond_9
    array-length v9, v6

    const/16 v10, 0xf

    if-le v9, v10, :cond_a

    .line 1444
    const/16 v9, 0xf

    :try_start_9
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->apn_maxconn:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 1447
    :cond_a
    :goto_11
    array-length v9, v6

    const/16 v10, 0x10

    if-le v9, v10, :cond_b

    .line 1449
    const/16 v9, 0x10

    :try_start_a
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->apn_maxconn_t:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 1452
    :cond_b
    :goto_12
    array-length v9, v6

    const/16 v10, 0x11

    if-le v9, v10, :cond_0

    .line 1454
    const/16 v9, 0x11

    :try_start_b
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->wait_time:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_1

    .line 1455
    :catch_1
    move-exception v9

    goto/16 :goto_1

    .line 1392
    .end local v3    # "networkType":I
    .end local v5    # "pdnState":I
    :cond_c
    const-string v9, ".(no-resp)"

    goto/16 :goto_a

    .line 1399
    .restart local v3    # "networkType":I
    :sswitch_2
    const/4 v9, 0x1

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->rat:I

    goto/16 :goto_c

    .line 1402
    :sswitch_3
    const/4 v9, 0x2

    iput v9, v4, Lcom/android/internal/telephony/dataconnection/APNParam;->rat:I

    goto/16 :goto_c

    .line 1416
    .restart local v5    # "pdnState":I
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_e

    .line 1460
    .end local v3    # "networkType":I
    .end local v5    # "pdnState":I
    :cond_e
    const-string v9, "null"

    goto/16 :goto_0

    .line 1471
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    :cond_f
    const-string v10, "LtePdnIf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Set PDN parm incorrect "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v6, :cond_10

    array-length v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_13
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    new-instance v0, Ljava/lang/Exception;

    .end local v0    # "errorResult":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Incorrect Parameters - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v0    # "errorResult":Ljava/lang/Exception;
    goto/16 :goto_2

    .line 1471
    :cond_10
    const-string v9, "null"

    goto :goto_13

    .line 1450
    .restart local v2    # "msg":Landroid/os/Message;
    .restart local v3    # "networkType":I
    .restart local v4    # "pdnParam":Lcom/android/internal/telephony/dataconnection/APNParam;
    .restart local v5    # "pdnState":I
    :catch_2
    move-exception v9

    goto :goto_12

    .line 1445
    :catch_3
    move-exception v9

    goto/16 :goto_11

    .line 1427
    :catch_4
    move-exception v9

    goto/16 :goto_10

    .line 1424
    :catch_5
    move-exception v9

    goto/16 :goto_f

    .line 1417
    :catch_6
    move-exception v9

    goto/16 :goto_e

    .line 1412
    .end local v5    # "pdnState":I
    :catch_7
    move-exception v9

    goto/16 :goto_d

    .line 1396
    :catch_8
    move-exception v9

    goto/16 :goto_b

    .line 1385
    :catch_9
    move-exception v9

    goto/16 :goto_9

    .line 1381
    :catch_a
    move-exception v9

    goto/16 :goto_8

    .line 1359
    :catch_b
    move-exception v9

    goto/16 :goto_4

    .line 1352
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1360
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xe -> :sswitch_1
    .end sparse-switch

    .line 1397
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->destroy_handling()V

    .line 64
    return-void
.end method

.method public getPdnSettings(ILandroid/os/Message;)V
    .locals 7
    .param p1, "profileSlot"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    new-array v0, v5, [Ljava/lang/String;

    .line 85
    .local v0, "request":[Ljava/lang/String;
    if-ltz p1, :cond_0

    if-gt p1, v6, :cond_0

    .line 86
    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 87
    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 101
    :goto_0
    new-array v1, v5, [Ljava/lang/Object;

    .line 102
    .local v1, "requestArray":[Ljava/lang/Object;
    aput-object v0, v1, v3

    .line 103
    aput-object p2, v1, v4

    .line 104
    const/16 v2, 0x6a

    invoke-virtual {p0, v2, v4, v3, v1}, Lcom/android/internal/telephony/HtcLtePdnSetting;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/HtcLtePdnSetting;->sendMessage(Landroid/os/Message;)Z

    .line 105
    return-void

    .line 89
    .end local v1    # "requestArray":[Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x5

    if-gt v2, p1, :cond_1

    const/16 v2, 0x8

    if-gt p1, v2, :cond_1

    .line 90
    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 91
    add-int/lit8 v2, p1, -0x5

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_0

    .line 93
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xc8

    if-gt v2, p1, :cond_2

    const/16 v2, 0xcc

    if-gt p1, v2, :cond_2

    .line 95
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 96
    add-int/lit16 v2, p1, -0xc8

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_0

    .line 99
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_0
.end method

.method public getPdnSettings2([Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "profile"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 234
    new-array v0, v4, [Ljava/lang/Object;

    .line 235
    .local v0, "requestArray":[Ljava/lang/Object;
    aput-object p1, v0, v3

    .line 236
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 241
    const/16 v1, 0x6a

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v0, v5, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v4, v3, v2}, Lcom/android/internal/telephony/HtcLtePdnSetting;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/HtcLtePdnSetting;->sendMessage(Landroid/os/Message;)Z

    .line 243
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 407
    :goto_0
    return-void

    .line 367
    :sswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->init_handling()V

    goto :goto_0

    .line 370
    :sswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->destroy_handling()V

    goto :goto_0

    .line 377
    :sswitch_2
    if-nez v0, :cond_0

    .line 378
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "ar":Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 380
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v1, p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getPdnSettings2_handling(I[Ljava/lang/Object;Landroid/os/Handler;)V

    goto :goto_0

    .line 384
    :sswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v2, v3, v1, p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getPdnSettings2Cont_handling(IILandroid/os/AsyncResult;Landroid/os/Handler;)V

    goto :goto_0

    .line 387
    :sswitch_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v2, v3, v1}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getPdnSettings2Result_handling(IILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 394
    :sswitch_5
    if-nez v0, :cond_1

    .line 395
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "ar":Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 397
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v1, p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->setPdnSettings2_handling(I[Ljava/lang/Object;Landroid/os/Handler;)V

    goto :goto_0

    .line 401
    :sswitch_6
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v2, v3, v1}, Lcom/android/internal/telephony/HtcLtePdnSetting;->setPdnSettings2Result_handling(IILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 404
    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HtcLtePdnSetting;->resetPdnForSettingsChangeCont_handling(Ljava/lang/Object;)V

    goto :goto_0

    .line 365
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x6a -> :sswitch_2
        0x6b -> :sswitch_3
        0x6c -> :sswitch_4
        0x6d -> :sswitch_5
        0x6e -> :sswitch_6
        0x6f -> :sswitch_7
    .end sparse-switch
.end method

.method public resetPdnForSettingsChange()V
    .locals 10

    .prologue
    const/16 v9, 0x12

    .line 314
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getRilSupportingType()I

    move-result v6

    .line 315
    .local v6, "supportingType":I
    if-ltz v6, :cond_3

    .line 316
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 317
    .local v7, "verCode":I
    const-string v0, "LtePdnIf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changePdnSettings in "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", ver="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v3, 0x0

    .line 319
    .local v3, "mmdt":Lcom/android/internal/telephony/dataconnection/DcTracker;
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getPhoneInUse()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 320
    .local v2, "targetPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_0

    move-object v0, v2

    .line 321
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_4

    move-object v0, v2

    .line 322
    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 328
    :cond_0
    :goto_0
    if-eqz v3, :cond_3

    .line 329
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->resetRadioForDisconnectingPdn()Z

    move-result v4

    .line 330
    .local v4, "needRadioOff":Z
    iget-boolean v0, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->SUPPORT_RESET_PDN_SETTING_ASYNC_RESPONSE:Z

    if-eqz v0, :cond_1

    if-lt v7, v9, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->methodResetRadioForDisconnectingPdnResult_reg:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    .line 334
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .local v1, "sbLog":Ljava/lang/StringBuilder;
    const-string v0, "changePdnSettings immed="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 337
    iget-boolean v0, p0, Lcom/android/internal/telephony/HtcLtePdnSetting;->SUPPORT_RESET_PDN_SETTING_ASYNC_RESPONSE:Z

    if-nez v0, :cond_5

    .line 338
    const-string v0, "(sync)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_2
    :goto_1
    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/HtcLtePdnSetting;->resetPdnForSettingsChangeResult_handling(Ljava/lang/StringBuilder;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DcTracker;ZZ)V

    .line 348
    .end local v1    # "sbLog":Ljava/lang/StringBuilder;
    .end local v2    # "targetPhone":Lcom/android/internal/telephony/Phone;
    .end local v3    # "mmdt":Lcom/android/internal/telephony/dataconnection/DcTracker;
    .end local v4    # "needRadioOff":Z
    .end local v7    # "verCode":I
    :cond_3
    return-void

    .restart local v2    # "targetPhone":Lcom/android/internal/telephony/Phone;
    .restart local v3    # "mmdt":Lcom/android/internal/telephony/dataconnection/DcTracker;
    .restart local v7    # "verCode":I
    :cond_4
    move-object v0, v2

    .line 325
    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    goto :goto_0

    .line 340
    .restart local v1    # "sbLog":Ljava/lang/StringBuilder;
    .restart local v4    # "needRadioOff":Z
    :cond_5
    if-lt v7, v9, :cond_2

    .line 341
    const-string v0, "(fail to reg)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public setPdnSettings(ILjava/lang/String;Landroid/os/Message;)V
    .locals 12
    .param p1, "profileSlot"    # I
    .param p2, "settings"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 124
    const/4 v4, 0x7

    new-array v2, v4, [Ljava/lang/String;

    .line 125
    .local v2, "request":[Ljava/lang/String;
    if-ltz p1, :cond_1

    if-gt p1, v10, :cond_1

    .line 126
    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    .line 127
    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    .line 141
    :goto_0
    aget-object v4, v2, v8

    if-eqz v4, :cond_0

    .line 142
    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "apnSettings":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v4, v0

    if-lez v4, :cond_0

    .line 145
    const/4 v4, 0x2

    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v0, v5

    aput-object v5, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 148
    :goto_1
    const/4 v4, 0x3

    const/4 v5, 0x1

    :try_start_1
    aget-object v5, v0, v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    :goto_2
    const/4 v4, 0x4

    :try_start_2
    sget-object v5, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypes:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v5, v6

    aput-object v5, v2, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 158
    :goto_3
    const/4 v4, 0x5

    const/4 v5, 0x3

    :try_start_3
    aget-object v5, v0, v5

    aput-object v5, v2, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 161
    :goto_4
    const/4 v4, 0x6

    const/4 v5, 0x4

    :try_start_4
    aget-object v5, v0, v5

    aput-object v5, v2, v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 166
    .end local v0    # "apnSettings":[Ljava/lang/String;
    :cond_0
    :goto_5
    new-array v3, v11, [Ljava/lang/Object;

    .line 167
    .local v3, "requestArray":[Ljava/lang/Object;
    aput-object v2, v3, v7

    .line 168
    aput-object p3, v3, v8

    .line 169
    const/16 v4, 0x6d

    invoke-virtual {p0, v4, v8, v7, v3}, Lcom/android/internal/telephony/HtcLtePdnSetting;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/HtcLtePdnSetting;->sendMessage(Landroid/os/Message;)Z

    .line 170
    return-void

    .line 129
    .end local v3    # "requestArray":[Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x5

    if-gt v4, p1, :cond_2

    const/16 v4, 0x9

    if-gt p1, v4, :cond_2

    .line 130
    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    .line 131
    add-int/lit8 v4, p1, -0x5

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    goto :goto_0

    .line 133
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xc8

    if-gt v4, p1, :cond_3

    const/16 v4, 0xcc

    if-gt p1, v4, :cond_3

    .line 135
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    .line 136
    add-int/lit16 v4, p1, -0xc8

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    goto/16 :goto_0

    .line 139
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    goto/16 :goto_0

    .line 149
    .restart local v0    # "apnSettings":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 150
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v9

    goto :goto_2

    .line 154
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 155
    .restart local v1    # "ex":Ljava/lang/Exception;
    sget-object v4, Lcom/android/internal/telephony/HtcLtePdnSetting;->pdnIpTypes:[Ljava/lang/String;

    aget-object v4, v4, v7

    aput-object v4, v2, v10

    goto :goto_3

    .line 162
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    goto :goto_5

    .line 159
    :catch_3
    move-exception v4

    goto :goto_4

    .line 146
    :catch_4
    move-exception v4

    goto/16 :goto_1
.end method

.method public setPdnSettings2([Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "profile"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 299
    new-array v0, v4, [Ljava/lang/Object;

    .line 300
    .local v0, "requestArray":[Ljava/lang/Object;
    aput-object p1, v0, v3

    .line 301
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 306
    const/16 v1, 0x6d

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v0, v5, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v4, v3, v2}, Lcom/android/internal/telephony/HtcLtePdnSetting;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/HtcLtePdnSetting;->sendMessage(Landroid/os/Message;)Z

    .line 308
    return-void
.end method
