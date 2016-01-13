.class public Lcom/android/internal/telephony/HtcAccountInfos;
.super Landroid/os/Handler;
.source "HtcAccountInfos.java"


# static fields
.field private static final DEBUG_DETAIL:Z

.field private static final DEBUG_DEVELOPMENT:Z = false

.field private static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x1

.field private static final EVENT_GET_CDMA_SUBSCRIPTION_SOURCE:I = 0x5

.field private static final EVENT_RADIO_AVAILABLE:I = 0x3

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x4

.field private static final EVENT_RADIO_ON:I = 0x2

.field private static final LOG_PREFIX:Ljava/lang/String; = "AccIs-"

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final PHONE_ACCOUNT_CAPABILITY__CAN_TWO_GSM_PHONE:I = 0x1

.field public static final PHONE_ACCOUNT_CAPABILITY__HAVE_CDMA_NV:I = 0x4

.field public static final PHONE_ACCOUNT_CAPABILITY__HAVE_CDMA_RELATED_UICC:I = 0x5

.field public static final PHONE_ACCOUNT_CAPABILITY__HAVE_GSM_SLOT:I = 0x2

.field public static final PHONE_ACCOUNT_CAPABILITY__HAVE_SUB_GSM_SLOT:I = 0x3

.field public static final PHONE_ACCOUNT_CAPABILITY__ONLY_ONE_PHONE:I = 0x0

.field private static final SKU_APTG:I = 0x4b

.field private static final SKU_CT:I = 0x1b

.field private static final SKU_KDDI:I = 0x1f

.field private static final SKU_VZW:I = 0xd

.field private static final SUBSCRIPTION_FROM_NV:I = 0x1

.field private static final SUBSCRIPTION_FROM_RUIM:I = 0x0

.field private static final SUBSCRIPTION_SOURCE_UNKNOWN:I = -0x1


# instance fields
.field private mCdmaPhone_mCarrierId:Ljava/lang/reflect/Field;

.field private mCdmaPhone_mSIMRecords:Ljava/lang/reflect/Field;

.field private mCdmaSST_IMSI_11_12:Ljava/lang/reflect/Field;

.field private mCdmaSST_IMSI_MCC:Ljava/lang/reflect/Field;

.field private mCdmaSST_mMin:Ljava/lang/reflect/Field;

.field private mCdmaSubscriptionQuerying:I

.field private mCdmaSubscriptionTryCount:I

.field private mCm:Lcom/android/internal/telephony/CommandsInterface;

.field private mCurrentSubscriptionSource:I

.field private mGetRadioAvaliable:Z

.field private mGetRadioOn:Z

.field private mHtcCdmaSIMRecords_gsmImsi:Ljava/lang/reflect/Field;

.field private mHtcCdmaSIMRecords_imsi:Ljava/lang/reflect/Field;

.field private mIccRecords_spn:Ljava/lang/reflect/Field;

.field private mPreviousPossibleResult:I

.field private mRegisterCdmaSubscription:Z

.field private mRuimRecords_mImsi:Ljava/lang/reflect/Field;

.field private mRuimRecords_mImsi_M:Ljava/lang/reflect/Field;

.field private mRuimRecords_mMobileIP_NAIs:Ljava/lang/reflect/Field;

.field private mRuimRecords_mSimpleIP_NAIs:Ljava/lang/reflect/Field;

.field private mSIMRecords_imsi:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/HtcAccountInfos;->DEBUG_DETAIL:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 49
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 991
    iput v0, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mPreviousPossibleResult:I

    .line 992
    iput v0, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCurrentSubscriptionSource:I

    .line 50
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcAccountInfos;->init()V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .param p1, "cm"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v0, -0x1

    .line 56
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 991
    iput v0, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mPreviousPossibleResult:I

    .line 992
    iput v0, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCurrentSubscriptionSource:I

    .line 57
    iput-object p1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 58
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcAccountInfos;->init()V

    .line 59
    return-void
.end method

.method private extendIccTypes([Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/HtcIccType;)[Lcom/android/internal/telephony/HtcIccType;
    .locals 4
    .param p1, "currentIccTypes"    # [Lcom/android/internal/telephony/HtcIccType;
    .param p2, "newIccTypes"    # Lcom/android/internal/telephony/HtcIccType;

    .prologue
    const/4 v2, 0x0

    .line 194
    if-nez p2, :cond_0

    .line 203
    .end local p1    # "currentIccTypes":[Lcom/android/internal/telephony/HtcIccType;
    :goto_0
    return-object p1

    .line 197
    .restart local p1    # "currentIccTypes":[Lcom/android/internal/telephony/HtcIccType;
    :cond_0
    if-nez p1, :cond_2

    move v1, v2

    .line 198
    .local v1, "lenCurrent":I
    :goto_1
    add-int/lit8 v3, v1, 0x1

    new-array v0, v3, [Lcom/android/internal/telephony/HtcIccType;

    .line 199
    .local v0, "extendedIccTypes":[Lcom/android/internal/telephony/HtcIccType;
    if-lez v1, :cond_1

    .line 200
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    :cond_1
    aput-object p2, v0, v1

    move-object p1, v0

    .line 203
    goto :goto_0

    .line 197
    .end local v0    # "extendedIccTypes":[Lcom/android/internal/telephony/HtcIccType;
    .end local v1    # "lenCurrent":I
    :cond_2
    array-length v1, p1

    goto :goto_1
.end method

.method public static getAccountCapability()[Z
    .locals 12

    .prologue
    const/high16 v11, -0x80000000

    .line 128
    const/4 v8, 0x0

    .line 129
    .local v8, "onlyOnePhone":Z
    const/4 v1, 0x0

    .line 130
    .local v1, "canTwoGsmPhone":Z
    const/4 v5, 0x0

    .line 131
    .local v5, "detectGsm":Z
    const/4 v6, 0x0

    .line 132
    .local v6, "detectGsm1":Z
    const/4 v4, 0x0

    .line 133
    .local v4, "detectCdmaNv":Z
    const/4 v3, 0x0

    .line 134
    .local v3, "detectCdmaIcc":Z
    sget v9, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    and-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_2

    .line 136
    sget v9, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_1

    .line 139
    const/4 v1, 0x1

    .line 140
    const/4 v6, 0x1

    .line 146
    :goto_0
    const/4 v5, 0x1

    .line 189
    :cond_0
    const/4 v9, 0x6

    new-array v0, v9, [Z

    const/4 v9, 0x0

    aput-boolean v8, v0, v9

    const/4 v9, 0x1

    aput-boolean v1, v0, v9

    const/4 v9, 0x2

    aput-boolean v5, v0, v9

    const/4 v9, 0x3

    aput-boolean v6, v0, v9

    const/4 v9, 0x4

    aput-boolean v4, v0, v9

    const/4 v9, 0x5

    aput-boolean v3, v0, v9

    .line 190
    .local v0, "accCaps":[Z
    return-object v0

    .line 144
    .end local v0    # "accCaps":[Z
    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    .line 149
    :cond_2
    sget v9, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    const/high16 v10, -0x20000000

    and-int v2, v9, v10

    .line 154
    .local v2, "cap":I
    if-eqz v2, :cond_5

    .line 155
    if-eq v2, v11, :cond_4

    .line 156
    and-int v9, v2, v11

    if-eqz v9, :cond_3

    .line 158
    const/4 v1, 0x1

    .line 159
    const/4 v6, 0x1

    .line 169
    :cond_3
    :goto_1
    const/4 v5, 0x1

    .line 175
    :goto_2
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    sget-object v9, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_ACCOUNT_CAPABILITIES:[I

    array-length v9, v9

    if-ge v7, v9, :cond_0

    .line 176
    sget-object v9, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_ACCOUNT_CAPABILITIES:[I

    aget v2, v9, v7

    .line 177
    sget-object v9, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_ACCOUNT_CAPABILITIES:[I

    aget v9, v9, v7

    packed-switch v9, :pswitch_data_0

    .line 184
    const/4 v3, 0x1

    .line 175
    :goto_4
    :pswitch_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 167
    .end local v7    # "i":I
    :cond_4
    const/4 v8, 0x1

    goto :goto_1

    .line 173
    :cond_5
    const/4 v8, 0x1

    goto :goto_2

    .line 179
    .restart local v7    # "i":I
    :pswitch_1
    const/4 v4, 0x1

    .line 180
    goto :goto_4

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getCdma_IccFields()V
    .locals 3

    .prologue
    .line 335
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaPhone_mSIMRecords:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 336
    const/4 v0, 0x0

    .line 338
    .local v0, "cls":Ljava/lang/Class;
    :try_start_0
    const-string v1, "com.android.internal.telephony.cdma.CDMAPhone"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d

    move-result-object v0

    .line 344
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaPhone_mSIMRecords:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 346
    :try_start_1
    const-string v1, "mSIMRecords"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaPhone_mSIMRecords:Ljava/lang/reflect/Field;

    .line 347
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaPhone_mSIMRecords:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c

    .line 355
    .end local v0    # "cls":Ljava/lang/Class;
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mIccRecords_spn:Ljava/lang/reflect/Field;

    if-nez v1, :cond_1

    .line 357
    const/4 v0, 0x0

    .line 359
    .restart local v0    # "cls":Ljava/lang/Class;
    :try_start_2
    const-string v1, "com.android.internal.telephony.IccRecords"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    move-result-object v0

    .line 365
    :goto_2
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mIccRecords_spn:Ljava/lang/reflect/Field;

    if-nez v1, :cond_1

    .line 367
    :try_start_3
    const-string v1, "spn"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mIccRecords_spn:Ljava/lang/reflect/Field;

    .line 368
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mIccRecords_spn:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    .line 376
    .end local v0    # "cls":Ljava/lang/Class;
    :cond_1
    :goto_3
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mImsi:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mImsi_M:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mSimpleIP_NAIs:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mMobileIP_NAIs:Ljava/lang/reflect/Field;

    if-nez v1, :cond_6

    .line 381
    :cond_2
    const/4 v0, 0x0

    .line 383
    .restart local v0    # "cls":Ljava/lang/Class;
    :try_start_4
    const-string v1, "com.android.internal.telephony.cdma.RuimRecords"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    move-result-object v0

    .line 389
    :goto_4
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mImsi:Ljava/lang/reflect/Field;

    if-nez v1, :cond_3

    .line 391
    :try_start_5
    const-string v1, "mImsi"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mImsi:Ljava/lang/reflect/Field;

    .line 392
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mImsi:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 399
    :cond_3
    :goto_5
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mImsi_M:Ljava/lang/reflect/Field;

    if-nez v1, :cond_4

    .line 401
    :try_start_6
    const-string v1, "mImsi_M"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mImsi_M:Ljava/lang/reflect/Field;

    .line 402
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mImsi_M:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 409
    :cond_4
    :goto_6
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mSimpleIP_NAIs:Ljava/lang/reflect/Field;

    if-nez v1, :cond_5

    .line 411
    :try_start_7
    const-string v1, "mSimpleIP_NAIs"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mSimpleIP_NAIs:Ljava/lang/reflect/Field;

    .line 412
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mSimpleIP_NAIs:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 419
    :cond_5
    :goto_7
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mMobileIP_NAIs:Ljava/lang/reflect/Field;

    if-nez v1, :cond_6

    .line 421
    :try_start_8
    const-string v1, "mMobileIP_NAIs"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mMobileIP_NAIs:Ljava/lang/reflect/Field;

    .line 422
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mMobileIP_NAIs:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 430
    .end local v0    # "cls":Ljava/lang/Class;
    :cond_6
    :goto_8
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mHtcCdmaSIMRecords_imsi:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mHtcCdmaSIMRecords_gsmImsi:Ljava/lang/reflect/Field;

    if-nez v1, :cond_9

    .line 432
    :cond_7
    const/4 v0, 0x0

    .line 434
    .restart local v0    # "cls":Ljava/lang/Class;
    :try_start_9
    const-string v1, "com.android.internal.telephony.cdma.HtcCdmaSIMRecords"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    move-result-object v0

    .line 440
    :goto_9
    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mHtcCdmaSIMRecords_imsi:Ljava/lang/reflect/Field;

    if-nez v1, :cond_8

    .line 442
    :try_start_a
    const-string v1, "imsi"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mHtcCdmaSIMRecords_imsi:Ljava/lang/reflect/Field;

    .line 443
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mHtcCdmaSIMRecords_imsi:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 450
    :cond_8
    :goto_a
    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mHtcCdmaSIMRecords_gsmImsi:Ljava/lang/reflect/Field;

    if-nez v1, :cond_9

    .line 452
    :try_start_b
    const-string v1, "gsmImsi"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mHtcCdmaSIMRecords_gsmImsi:Ljava/lang/reflect/Field;

    .line 453
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mHtcCdmaSIMRecords_gsmImsi:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 461
    .end local v0    # "cls":Ljava/lang/Class;
    :cond_9
    :goto_b
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mSIMRecords_imsi:Ljava/lang/reflect/Field;

    if-nez v1, :cond_a

    .line 462
    const/4 v0, 0x0

    .line 464
    .restart local v0    # "cls":Ljava/lang/Class;
    :try_start_c
    const-string v1, "com.android.internal.telephony.gsm.SIMRecords"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    move-result-object v0

    .line 470
    :goto_c
    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mSIMRecords_imsi:Ljava/lang/reflect/Field;

    if-nez v1, :cond_a

    .line 472
    :try_start_d
    const-string v1, "imsi"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mSIMRecords_imsi:Ljava/lang/reflect/Field;

    .line 473
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mSIMRecords_imsi:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 481
    .end local v0    # "cls":Ljava/lang/Class;
    :cond_a
    :goto_d
    return-void

    .line 474
    .restart local v0    # "cls":Ljava/lang/Class;
    :catch_0
    move-exception v1

    goto :goto_d

    .line 465
    :catch_1
    move-exception v1

    goto :goto_c

    .line 454
    :catch_2
    move-exception v1

    goto :goto_b

    .line 444
    :catch_3
    move-exception v1

    goto :goto_a

    .line 435
    :catch_4
    move-exception v1

    goto :goto_9

    .line 423
    :catch_5
    move-exception v1

    goto :goto_8

    .line 413
    :catch_6
    move-exception v1

    goto :goto_7

    .line 403
    :catch_7
    move-exception v1

    goto/16 :goto_6

    .line 393
    :catch_8
    move-exception v1

    goto/16 :goto_5

    .line 384
    :catch_9
    move-exception v1

    goto/16 :goto_4

    .line 369
    :catch_a
    move-exception v1

    goto/16 :goto_3

    .line 360
    :catch_b
    move-exception v1

    goto/16 :goto_2

    .line 348
    :catch_c
    move-exception v1

    goto/16 :goto_1

    .line 339
    :catch_d
    move-exception v1

    goto/16 :goto_0
.end method

.method private getCdma_NvFields()V
    .locals 3

    .prologue
    .line 258
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaPhone_mCarrierId:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 259
    const/4 v0, 0x0

    .line 261
    .local v0, "cls":Ljava/lang/Class;
    :try_start_0
    const-string v1, "com.android.internal.telephony.cdma.CDMAPhone"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    .line 267
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaPhone_mCarrierId:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 269
    :try_start_1
    const-string v1, "mCarrierId"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaPhone_mCarrierId:Ljava/lang/reflect/Field;

    .line 270
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaPhone_mCarrierId:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 278
    .end local v0    # "cls":Ljava/lang/Class;
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_IMSI_MCC:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_IMSI_11_12:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_mMin:Ljava/lang/reflect/Field;

    if-nez v1, :cond_4

    .line 281
    :cond_1
    const/4 v0, 0x0

    .line 283
    .restart local v0    # "cls":Ljava/lang/Class;
    :try_start_2
    const-string v1, "com.android.internal.telephony.cdma.CdmaServiceStateTracker"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    .line 289
    :goto_2
    if-eqz v0, :cond_4

    .line 290
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_IMSI_MCC:Ljava/lang/reflect/Field;

    if-nez v1, :cond_2

    .line 292
    :try_start_3
    const-string v1, "IMSI_MCC"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_IMSI_MCC:Ljava/lang/reflect/Field;

    .line 293
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_IMSI_MCC:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 300
    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_IMSI_11_12:Ljava/lang/reflect/Field;

    if-nez v1, :cond_3

    .line 302
    :try_start_4
    const-string v1, "IMSI_11_12"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_IMSI_11_12:Ljava/lang/reflect/Field;

    .line 303
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_IMSI_11_12:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 310
    :cond_3
    :goto_4
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_mMin:Ljava/lang/reflect/Field;

    if-nez v1, :cond_4

    .line 312
    :try_start_5
    const-string v1, "mMin"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_mMin:Ljava/lang/reflect/Field;

    .line 313
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_mMin:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 322
    .end local v0    # "cls":Ljava/lang/Class;
    :cond_4
    :goto_5
    return-void

    .line 314
    .restart local v0    # "cls":Ljava/lang/Class;
    :catch_0
    move-exception v1

    goto :goto_5

    .line 304
    :catch_1
    move-exception v1

    goto :goto_4

    .line 294
    :catch_2
    move-exception v1

    goto :goto_3

    .line 284
    :catch_3
    move-exception v1

    goto :goto_2

    .line 271
    :catch_4
    move-exception v1

    goto :goto_1

    .line 262
    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method private getMccMncFromIMSI(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 579
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    :cond_0
    move-object v2, p1

    .line 589
    :goto_0
    return-object v2

    .line 582
    :cond_1
    const/4 v3, 0x3

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 583
    .local v1, "mcc":I
    const/4 v2, 0x0

    .line 585
    .local v2, "mccmnc":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "ex":Ljava/lang/Exception;
    move-object v2, p1

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 62
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_1

    .line 63
    invoke-static {}, Lcom/android/internal/telephony/HtcAccountInfos;->getAccountCapability()[Z

    move-result-object v0

    .line 64
    .local v0, "possibleAccounts":[Z
    aget-boolean v1, v0, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    aget-boolean v1, v0, v1

    if-eqz v1, :cond_0

    .line 66
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRegisterCdmaSubscription:Z

    .line 68
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRegisterCdmaSubscription:Z

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaSubscriptionChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 70
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 71
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 72
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 75
    .end local v0    # "possibleAccounts":[Z
    :cond_1
    return-void
.end method

.method private newIccTypeFromCdma(Lcom/android/internal/telephony/Phone;Z)Lcom/android/internal/telephony/HtcIccType;
    .locals 12
    .param p1, "cdmaPhone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "readNv"    # Z

    .prologue
    const/4 v11, 0x0

    .line 593
    new-instance v7, Lcom/android/internal/telephony/HtcIccType;

    invoke-direct {v7}, Lcom/android/internal/telephony/HtcIccType;-><init>()V

    .line 595
    .local v7, "iccType":Lcom/android/internal/telephony/HtcIccType;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    iput v9, v7, Lcom/android/internal/telephony/HtcIccType;->phoneInUse:I

    .line 596
    if-eqz p2, :cond_3

    .line 597
    iget v9, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCurrentSubscriptionSource:I

    if-nez v9, :cond_0

    .line 598
    iput v11, v7, Lcom/android/internal/telephony/HtcIccType;->phoneInUse:I

    .line 600
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcAccountInfos;->getCdma_NvFields()V

    .line 601
    check-cast p1, Lcom/android/internal/telephony/PhoneBase;

    .end local p1    # "cdmaPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .line 602
    .local v8, "sst":Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
    if-eqz v8, :cond_2

    .line 603
    const/4 v1, 0x0

    .line 604
    .local v1, "MCC":Ljava/lang/String;
    const/4 v3, 0x0

    .line 605
    .local v3, "MNC":Ljava/lang/String;
    const/4 v2, 0x0

    .line 607
    .local v2, "MIN":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_IMSI_MCC:Ljava/lang/reflect/Field;

    invoke-virtual {v9, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 617
    :goto_0
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_IMSI_11_12:Ljava/lang/reflect/Field;

    invoke-virtual {v9, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 627
    :goto_1
    :try_start_2
    iget-object v9, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_mMin:Ljava/lang/reflect/Field;

    invoke-virtual {v9, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 636
    :goto_2
    new-instance v9, Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v9, v7}, Lcom/android/internal/telephony/HtcIccType$DF;-><init>(Lcom/android/internal/telephony/HtcIccType;)V

    iput-object v9, v7, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

    .line 637
    iget-object v9, v7, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/internal/telephony/HtcIccType$DF;->IMSI:Ljava/lang/String;

    .line 638
    iget-object v9, v7, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    .end local v1    # "MCC":Ljava/lang/String;
    .end local v2    # "MIN":Ljava/lang/String;
    .end local v3    # "MNC":Ljava/lang/String;
    .end local v8    # "sst":Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
    :cond_1
    :goto_3
    move-object v9, v7

    .line 765
    :goto_4
    return-object v9

    .line 644
    .restart local v8    # "sst":Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
    :cond_2
    const/4 v9, 0x0

    goto :goto_4

    .end local v8    # "sst":Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
    .restart local p1    # "cdmaPhone":Lcom/android/internal/telephony/Phone;
    :cond_3
    move-object v9, p1

    .line 651
    check-cast v9, Lcom/android/internal/telephony/PhoneBase;

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/uicc/IccCardProxy;

    move-result-object v6

    .line 652
    .local v6, "iccPxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    if-eqz v6, :cond_9

    .line 659
    sget-object v9, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    .line 661
    .local v4, "cdmaIccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    const-string v9, "AccIs-CDMA "

    invoke-direct {p0, v7, v4, v9}, Lcom/android/internal/telephony/HtcAccountInfos;->updateHtcIccTypeFromRuimRecords(Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;)V

    .line 665
    sget-object v9, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    .line 667
    .local v5, "gsmIccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v5, :cond_8

    .line 668
    instance-of v9, v5, Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v9, :cond_7

    .line 669
    iget-object v9, v7, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    if-eqz v9, :cond_4

    iget-object v9, v7, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_5

    .line 670
    :cond_4
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    .line 675
    :cond_5
    new-instance v9, Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v9, v7}, Lcom/android/internal/telephony/HtcIccType$DF;-><init>(Lcom/android/internal/telephony/HtcIccType;)V

    iput-object v9, v7, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    .line 678
    :try_start_3
    iget-object v10, v7, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    move-object v0, v5

    check-cast v0, Lcom/android/internal/telephony/uicc/SIMRecords;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v10, Lcom/android/internal/telephony/HtcIccType$DF;->IMSI:Ljava/lang/String;

    .line 683
    iget-object v9, v7, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v10, v7, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v10, v10, Lcom/android/internal/telephony/HtcIccType$DF;->IMSI:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/HtcAccountInfos;->getMccMncFromIMSI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 702
    :cond_6
    :goto_5
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 706
    const/4 v7, 0x0

    goto :goto_3

    .line 691
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 698
    :cond_8
    iget v9, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCurrentSubscriptionSource:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 699
    iput v11, v7, Lcom/android/internal/telephony/HtcIccType;->phoneInUse:I

    goto :goto_5

    .line 712
    .end local v4    # "cdmaIccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v5    # "gsmIccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_9
    check-cast p1, Lcom/android/internal/telephony/PhoneBase;

    .end local p1    # "cdmaPhone":Lcom/android/internal/telephony/Phone;
    iget-object v9, p1, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 727
    .local v4, "cdmaIccRec":Lcom/android/internal/telephony/uicc/RuimRecords;
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 728
    const-string v9, "AccIs-CDMAonly "

    invoke-direct {p0, v7, v4, v9}, Lcom/android/internal/telephony/HtcAccountInfos;->updateHtcIccTypeFromRuimRecords(Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 761
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 684
    .local v4, "cdmaIccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v5    # "gsmIccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local p1    # "cdmaPhone":Lcom/android/internal/telephony/Phone;
    :catch_0
    move-exception v9

    goto :goto_5

    .line 631
    .end local v4    # "cdmaIccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v5    # "gsmIccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v6    # "iccPxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    .end local p1    # "cdmaPhone":Lcom/android/internal/telephony/Phone;
    .restart local v1    # "MCC":Ljava/lang/String;
    .restart local v2    # "MIN":Ljava/lang/String;
    .restart local v3    # "MNC":Ljava/lang/String;
    .restart local v8    # "sst":Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
    :catch_1
    move-exception v9

    goto/16 :goto_2

    .line 621
    :catch_2
    move-exception v9

    goto/16 :goto_1

    .line 611
    :catch_3
    move-exception v9

    goto/16 :goto_0
.end method

.method private newIccTypeFromGsm(Lcom/android/internal/telephony/Phone;Z)Lcom/android/internal/telephony/HtcIccType;
    .locals 5
    .param p1, "gsmPhone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "singlePhone"    # Z

    .prologue
    const/4 v2, 0x0

    .line 207
    new-instance v1, Lcom/android/internal/telephony/HtcIccType;

    invoke-direct {v1}, Lcom/android/internal/telephony/HtcIccType;-><init>()V

    .line 209
    .local v1, "iccType":Lcom/android/internal/telephony/HtcIccType;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    iput v3, v1, Lcom/android/internal/telephony/HtcIccType;->phoneInUse:I

    .line 210
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    .line 211
    iget-object v3, v1, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 249
    .end local v1    # "iccType":Lcom/android/internal/telephony/HtcIccType;
    :goto_0
    return-object v1

    .line 217
    .restart local v1    # "iccType":Lcom/android/internal/telephony/HtcIccType;
    :cond_1
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "IMSI":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_3

    :cond_2
    move-object v1, v2

    .line 219
    goto :goto_0

    .line 222
    :cond_3
    new-instance v3, Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v1}, Lcom/android/internal/telephony/HtcIccType$DF;-><init>(Lcom/android/internal/telephony/HtcIccType;)V

    iput-object v3, v1, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    .line 223
    iget-object v3, v1, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iput-object v0, v3, Lcom/android/internal/telephony/HtcIccType$DF;->IMSI:Ljava/lang/String;

    .line 227
    if-eqz p2, :cond_4

    .line 228
    iget-object v3, v1, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    const-string v4, "gsm.sim.operator.numeric"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    goto :goto_0

    .line 234
    :cond_4
    iget v3, v1, Lcom/android/internal/telephony/HtcIccType;->phoneInUse:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 236
    :sswitch_0
    iget-object v3, v1, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    const-string v4, "gsm.gsm.sim.operator.numeric"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    goto :goto_0

    .line 242
    :sswitch_1
    iget-object v3, v1, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    const-string v4, "gsm.sub.icc.operator.numeric"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    goto :goto_0

    .line 234
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method private tryToUpdateSubscriptionSource(ZZ)V
    .locals 6
    .param p1, "anotherTry"    # Z
    .param p2, "forceUpdate"    # Z

    .prologue
    const/16 v2, 0x31

    const/16 v3, 0x30

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 995
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-nez v1, :cond_1

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 999
    :cond_1
    if-eqz p2, :cond_2

    .line 1000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1001
    .local v0, "strBuf":Ljava/lang/StringBuilder;
    const-string v1, "AccIs-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    const-string v1, "CDMA change : try="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1004
    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    iget-boolean v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mGetRadioOn:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1006
    iget-boolean v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mGetRadioAvaliable:Z

    if-eqz v1, :cond_5

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1007
    iget v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionTryCount:I

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1008
    iget v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mPreviousPossibleResult:I

    add-int/lit8 v1, v1, 0x31

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1009
    iget v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCurrentSubscriptionSource:I

    add-int/lit8 v1, v1, 0x31

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1010
    const-string v1, ", idx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    iget v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionQuerying:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1012
    const-string v1, "PHONE"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    .end local v0    # "strBuf":Ljava/lang/StringBuilder;
    :cond_2
    if-eqz p1, :cond_8

    .line 1016
    iget-boolean v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mGetRadioOn:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mGetRadioAvaliable:Z

    if-eqz v1, :cond_7

    .line 1017
    :cond_3
    if-eqz p2, :cond_6

    .line 1018
    iput v4, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionTryCount:I

    .line 1019
    iget v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionQuerying:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionQuerying:I

    .line 1024
    :goto_3
    iget v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionTryCount:I

    if-ne v1, v4, :cond_0

    .line 1025
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x5

    iget v3, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionQuerying:I

    invoke-virtual {p0, v2, v3, v5}, Lcom/android/internal/telephony/HtcAccountInfos;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaSubscriptionSource(Landroid/os/Message;)V

    goto :goto_0

    .restart local v0    # "strBuf":Ljava/lang/StringBuilder;
    :cond_4
    move v1, v3

    .line 1005
    goto :goto_1

    :cond_5
    move v2, v3

    .line 1006
    goto :goto_2

    .line 1022
    .end local v0    # "strBuf":Ljava/lang/StringBuilder;
    :cond_6
    iget v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionTryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionTryCount:I

    goto :goto_3

    .line 1029
    :cond_7
    iput v4, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionTryCount:I

    goto/16 :goto_0

    .line 1033
    :cond_8
    iput v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionTryCount:I

    .line 1034
    iget v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionQuerying:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionQuerying:I

    .line 1035
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mPreviousPossibleResult:I

    goto/16 :goto_0
.end method

.method private updateHtcIccTypeFromRuimRecords(Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;)V
    .locals 9
    .param p1, "iccType"    # Lcom/android/internal/telephony/HtcIccType;
    .param p2, "cdmaIccRec"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p3, "logPrefix"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 484
    if-eqz p2, :cond_2

    .line 485
    instance-of v5, p2, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v5, :cond_2

    .line 486
    iget-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 487
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    .line 492
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, p1}, Lcom/android/internal/telephony/HtcIccType$DF;-><init>(Lcom/android/internal/telephony/HtcIccType;)V

    iput-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    .line 495
    :try_start_0
    iget-object v7, p1, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIMSI()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/android/internal/telephony/HtcIccType$DF;->IMSI:Ljava/lang/String;

    .line 500
    iget-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v7, p1, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v7, v7, Lcom/android/internal/telephony/HtcIccType$DF;->IMSI:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/HtcAccountInfos;->getMccMncFromIMSI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 508
    :goto_0
    :try_start_1
    iget-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/internal/telephony/HtcIccType$DF;->SPN:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 518
    :goto_1
    iget-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 519
    .local v4, "mcc":Ljava/lang/String;
    :goto_2
    if-eqz v4, :cond_2

    const-string v5, "404"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "405"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "406"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 523
    :cond_1
    const/4 v3, 0x0

    .line 524
    .local v3, "mSimpleIP_NAIs":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 525
    .local v2, "mMobileIP_NAIs":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 528
    .local v1, "customerId":Ljava/lang/String;
    :try_start_2
    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/RuimRecords;->getSimpleIP_NAIs()[Ljava/lang/String;

    move-result-object v3

    .line 534
    check-cast p2, Lcom/android/internal/telephony/uicc/RuimRecords;

    .end local p2    # "cdmaIccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMobileIP_NAIs()[Ljava/lang/String;

    move-result-object v2

    .line 539
    iget-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->SPN:Ljava/lang/String;

    invoke-static {p3, v3, v2, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->omhCustomerIdDetection(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 545
    :goto_3
    if-eqz v1, :cond_2

    .line 546
    const-string v5, "INDIA_TATA"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 547
    iget-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 548
    iput-object v1, p1, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    .line 549
    const-string v5, "405"

    iput-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    .line 550
    const-string v5, "25"

    iput-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->knownMnc:Ljava/lang/String;

    .line 576
    .end local v1    # "customerId":Ljava/lang/String;
    .end local v2    # "mMobileIP_NAIs":[Ljava/lang/String;
    .end local v3    # "mSimpleIP_NAIs":[Ljava/lang/String;
    .end local v4    # "mcc":Ljava/lang/String;
    :cond_2
    :goto_4
    return-void

    .restart local p2    # "cdmaIccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_3
    move-object v4, v6

    .line 518
    goto :goto_2

    .line 553
    .end local p2    # "cdmaIccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v1    # "customerId":Ljava/lang/String;
    .restart local v2    # "mMobileIP_NAIs":[Ljava/lang/String;
    .restart local v3    # "mSimpleIP_NAIs":[Ljava/lang/String;
    .restart local v4    # "mcc":Ljava/lang/String;
    :cond_4
    const-string v5, "INDIA_RELIANCE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 554
    iget-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 555
    iput-object v1, p1, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    .line 556
    const-string v5, "404"

    iput-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    .line 557
    const-string v5, "09"

    iput-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->knownMnc:Ljava/lang/String;

    goto :goto_4

    .line 560
    :cond_5
    const-string v5, "INDIA_MTS"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 561
    iget-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 562
    iput-object v1, p1, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    .line 563
    iput-object v6, p1, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    .line 564
    iput-object v6, p1, Lcom/android/internal/telephony/HtcIccType;->knownMnc:Ljava/lang/String;

    goto :goto_4

    .line 540
    :catch_0
    move-exception v5

    goto :goto_3

    .line 513
    .end local v1    # "customerId":Ljava/lang/String;
    .end local v2    # "mMobileIP_NAIs":[Ljava/lang/String;
    .end local v3    # "mSimpleIP_NAIs":[Ljava/lang/String;
    .end local v4    # "mcc":Ljava/lang/String;
    .restart local p2    # "cdmaIccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    :catch_1
    move-exception v5

    goto/16 :goto_1

    .line 501
    :catch_2
    move-exception v5

    goto/16 :goto_0
.end method

.method private updateKnownFields([Lcom/android/internal/telephony/HtcIccType;)V
    .locals 11
    .param p1, "accountInfos"    # [Lcom/android/internal/telephony/HtcIccType;

    .prologue
    const/16 v10, 0x4b

    const/16 v9, 0x1b

    const/4 v8, 0x0

    const/4 v7, 0x3

    .line 904
    if-nez p1, :cond_1

    .line 973
    :cond_0
    return-void

    .line 907
    :cond_1
    move-object v1, p1

    .local v1, "arr$":[Lcom/android/internal/telephony/HtcIccType;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 908
    .local v0, "accInfo":Lcom/android/internal/telephony/HtcIccType;
    if-eqz v0, :cond_2

    .line 909
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

    if-eqz v5, :cond_4

    .line 910
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 911
    const-string v5, "ro.cid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    .line 912
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    .line 913
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 914
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_3

    .line 915
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    .line 907
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 918
    :cond_3
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    goto :goto_1

    .line 923
    :cond_4
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    if-eqz v5, :cond_c

    .line 924
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    if-nez v5, :cond_5

    .line 925
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    if-eqz v5, :cond_5

    .line 926
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 927
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    const-string v6, "311480"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 931
    const/16 v5, 0xd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    .line 932
    const-string v5, "311"

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    .line 933
    const-string v5, "480"

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownMnc:Ljava/lang/String;

    .line 938
    :cond_5
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    if-nez v5, :cond_2

    .line 939
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 940
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 941
    .local v4, "mcc":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    const-string v6, "46605"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 942
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    .line 943
    const-string v5, "466"

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    .line 944
    const-string v5, "05"

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownMnc:Ljava/lang/String;

    goto :goto_1

    .line 946
    :cond_6
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    const-string v6, "46003"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    const-string v6, "45502"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 948
    :cond_7
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    .line 949
    const-string v5, "460"

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    .line 950
    const-string v5, "03"

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownMnc:Ljava/lang/String;

    goto/16 :goto_1

    .line 952
    :cond_8
    const-string v5, "440"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "441"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 954
    :cond_9
    const/16 v5, 0x1f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    .line 955
    iput-object v4, v0, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    .line 956
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    goto/16 :goto_1

    .line 958
    :cond_a
    const-string v5, "460"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 960
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    goto/16 :goto_1

    .line 962
    :cond_b
    const-string v5, "466"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 964
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    goto/16 :goto_1

    .line 969
    .end local v4    # "mcc":Ljava/lang/String;
    :cond_c
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    if-eqz v5, :cond_2

    goto/16 :goto_1
.end method

.method private updateSubscriptionSourceResult(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x2f

    .line 1040
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1042
    .local v0, "ar":Landroid/os/AsyncResult;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1043
    .local v4, "strTail":Ljava/lang/StringBuilder;
    const-string v5, ", cnt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    iget v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionTryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1045
    const-string v5, ", quIdx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1047
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1048
    iget v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionQuerying:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1050
    const/4 v1, 0x0

    .line 1051
    .local v1, "isFinalResult":Z
    iget v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionTryCount:I

    if-lez v5, :cond_0

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionQuerying:I

    if-ne v5, v6, :cond_0

    .line 1052
    iget v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionTryCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionTryCount:I

    .line 1053
    iget v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionQuerying:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionQuerying:I

    .line 1054
    iget v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionTryCount:I

    if-lez v5, :cond_2

    .line 1055
    iget-object v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x5

    iget v7, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionQuerying:I

    invoke-virtual {p0, v6, v7, v9}, Lcom/android/internal/telephony/HtcAccountInfos;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaSubscriptionSource(Landroid/os/Message;)V

    .line 1056
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionTryCount:I

    .line 1063
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1064
    .local v3, "strBuf":Ljava/lang/StringBuilder;
    const-string v5, "AccIs-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    const-string v5, "CDMA from : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_4

    .line 1067
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    aget v2, v5, v9

    .line 1069
    .local v2, "newSubscriptionSource":I
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1070
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1071
    iget v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mPreviousPossibleResult:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1072
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    const-string v5, "PHONE"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    if-eqz v1, :cond_3

    .line 1076
    iput v2, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCurrentSubscriptionSource:I

    .line 1093
    .end local v2    # "newSubscriptionSource":I
    :cond_1
    :goto_1
    return-void

    .line 1059
    .end local v3    # "strBuf":Ljava/lang/StringBuilder;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1079
    .restart local v2    # "newSubscriptionSource":I
    .restart local v3    # "strBuf":Ljava/lang/StringBuilder;
    :cond_3
    iput v2, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mPreviousPossibleResult:I

    goto :goto_1

    .line 1083
    .end local v2    # "newSubscriptionSource":I
    :cond_4
    if-eqz v1, :cond_1

    .line 1085
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1086
    iget v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mPreviousPossibleResult:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1087
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    const-string v5, "PHONE"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    iget v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mPreviousPossibleResult:I

    iput v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCurrentSubscriptionSource:I

    goto :goto_1
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 82
    iget-boolean v0, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRegisterCdmaSubscription:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaSubscriptionChanged(Landroid/os/Handler;)V

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRegisterCdmaSubscription:Z

    .line 90
    :cond_0
    return-void
.end method

.method public getAccountInfos(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)[Landroid/os/Parcelable;
    .locals 8
    .param p1, "mActivePhone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "mGsmPhone"    # Lcom/android/internal/telephony/Phone;
    .param p3, "mSubGsmPhone"    # Lcom/android/internal/telephony/Phone;
    .param p4, "mCdmaPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 774
    const/4 v0, 0x0

    .line 777
    .local v0, "accountInfos":[Lcom/android/internal/telephony/HtcIccType;
    invoke-static {}, Lcom/android/internal/telephony/HtcAccountInfos;->getAccountCapability()[Z

    move-result-object v1

    .line 778
    .local v1, "cap":[Z
    aget-boolean v2, v1, v3

    if-eqz v2, :cond_5

    .line 783
    if-eqz p1, :cond_0

    .line 784
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 867
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcAccountInfos;->updateKnownFields([Lcom/android/internal/telephony/HtcIccType;)V

    .line 900
    return-object v0

    .line 786
    :pswitch_0
    aget-boolean v2, v1, v5

    if-eqz v2, :cond_1

    .line 791
    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/HtcAccountInfos;->newIccTypeFromGsm(Lcom/android/internal/telephony/Phone;Z)Lcom/android/internal/telephony/HtcIccType;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcAccountInfos;->extendIccTypes([Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/HtcIccType;)[Lcom/android/internal/telephony/HtcIccType;

    move-result-object v0

    goto :goto_0

    .line 793
    :cond_1
    aget-boolean v2, v1, v6

    if-eqz v2, :cond_3

    move-object v2, p1

    .line 795
    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/uicc/IccCardProxy;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 800
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/HtcAccountInfos;->newIccTypeFromCdma(Lcom/android/internal/telephony/Phone;Z)Lcom/android/internal/telephony/HtcIccType;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcAccountInfos;->extendIccTypes([Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/HtcIccType;)[Lcom/android/internal/telephony/HtcIccType;

    move-result-object v0

    goto :goto_0

    .line 806
    :cond_2
    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/HtcAccountInfos;->newIccTypeFromGsm(Lcom/android/internal/telephony/Phone;Z)Lcom/android/internal/telephony/HtcIccType;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcAccountInfos;->extendIccTypes([Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/HtcIccType;)[Lcom/android/internal/telephony/HtcIccType;

    move-result-object v0

    goto :goto_0

    .line 809
    :cond_3
    aget-boolean v2, v1, v7

    if-eqz v2, :cond_0

    .line 813
    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/HtcAccountInfos;->newIccTypeFromGsm(Lcom/android/internal/telephony/Phone;Z)Lcom/android/internal/telephony/HtcIccType;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcAccountInfos;->extendIccTypes([Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/HtcIccType;)[Lcom/android/internal/telephony/HtcIccType;

    move-result-object v0

    goto :goto_0

    .line 817
    :pswitch_1
    aget-boolean v2, v1, v5

    if-eqz v2, :cond_4

    .line 821
    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/HtcAccountInfos;->newIccTypeFromCdma(Lcom/android/internal/telephony/Phone;Z)Lcom/android/internal/telephony/HtcIccType;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcAccountInfos;->extendIccTypes([Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/HtcIccType;)[Lcom/android/internal/telephony/HtcIccType;

    move-result-object v0

    .line 823
    :cond_4
    aget-boolean v2, v1, v6

    if-eqz v2, :cond_0

    .line 827
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/HtcAccountInfos;->newIccTypeFromCdma(Lcom/android/internal/telephony/Phone;Z)Lcom/android/internal/telephony/HtcIccType;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcAccountInfos;->extendIccTypes([Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/HtcIccType;)[Lcom/android/internal/telephony/HtcIccType;

    move-result-object v0

    goto :goto_0

    .line 835
    :cond_5
    aget-boolean v2, v1, v7

    if-eqz v2, :cond_6

    .line 839
    if-eqz p2, :cond_6

    .line 840
    invoke-direct {p0, p2, v3}, Lcom/android/internal/telephony/HtcAccountInfos;->newIccTypeFromGsm(Lcom/android/internal/telephony/Phone;Z)Lcom/android/internal/telephony/HtcIccType;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcAccountInfos;->extendIccTypes([Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/HtcIccType;)[Lcom/android/internal/telephony/HtcIccType;

    move-result-object v0

    .line 843
    :cond_6
    const/4 v2, 0x3

    aget-boolean v2, v1, v2

    if-eqz v2, :cond_7

    .line 847
    if-eqz p3, :cond_7

    .line 848
    invoke-direct {p0, p3, v3}, Lcom/android/internal/telephony/HtcAccountInfos;->newIccTypeFromGsm(Lcom/android/internal/telephony/Phone;Z)Lcom/android/internal/telephony/HtcIccType;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcAccountInfos;->extendIccTypes([Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/HtcIccType;)[Lcom/android/internal/telephony/HtcIccType;

    move-result-object v0

    .line 851
    :cond_7
    if-eqz p4, :cond_0

    .line 852
    aget-boolean v2, v1, v5

    if-eqz v2, :cond_8

    .line 856
    invoke-direct {p0, p4, v4}, Lcom/android/internal/telephony/HtcAccountInfos;->newIccTypeFromCdma(Lcom/android/internal/telephony/Phone;Z)Lcom/android/internal/telephony/HtcIccType;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcAccountInfos;->extendIccTypes([Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/HtcIccType;)[Lcom/android/internal/telephony/HtcIccType;

    move-result-object v0

    .line 858
    :cond_8
    aget-boolean v2, v1, v6

    if-eqz v2, :cond_0

    .line 862
    invoke-direct {p0, p4, v3}, Lcom/android/internal/telephony/HtcAccountInfos;->newIccTypeFromCdma(Lcom/android/internal/telephony/Phone;Z)Lcom/android/internal/telephony/HtcIccType;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcAccountInfos;->extendIccTypes([Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/HtcIccType;)[Lcom/android/internal/telephony/HtcIccType;

    move-result-object v0

    goto/16 :goto_0

    .line 784
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1101
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1103
    :pswitch_0
    invoke-direct {p0, v1, v1}, Lcom/android/internal/telephony/HtcAccountInfos;->tryToUpdateSubscriptionSource(ZZ)V

    goto :goto_0

    .line 1106
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mGetRadioOn:Z

    if-nez v0, :cond_0

    .line 1107
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mGetRadioOn:Z

    .line 1108
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcAccountInfos;->tryToUpdateSubscriptionSource(ZZ)V

    goto :goto_0

    .line 1112
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mGetRadioAvaliable:Z

    if-nez v0, :cond_0

    .line 1113
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mGetRadioAvaliable:Z

    .line 1114
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcAccountInfos;->tryToUpdateSubscriptionSource(ZZ)V

    goto :goto_0

    .line 1118
    :pswitch_3
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mGetRadioOn:Z

    .line 1119
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mGetRadioAvaliable:Z

    .line 1120
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/HtcAccountInfos;->tryToUpdateSubscriptionSource(ZZ)V

    goto :goto_0

    .line 1123
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcAccountInfos;->updateSubscriptionSourceResult(Landroid/os/Message;)V

    goto :goto_0

    .line 1101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
