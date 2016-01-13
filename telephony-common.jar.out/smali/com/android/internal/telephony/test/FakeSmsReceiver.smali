.class public Lcom/android/internal/telephony/test/FakeSmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FakeSmsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;
    }
.end annotation


# static fields
.field private static final CDMA_FAKE_SMS:I = 0x1

.field public static CDMA_FAKE_SMS_ACTION:Ljava/lang/String; = null

.field private static final DEBUG:Z = true

.field private static final FAKE_CDMA_SMS_MESSAGE:I = 0x1

.field private static final FAKE_GSM_CB_MESSAGE:I = 0x3

.field private static final FAKE_GSM_SMS_MESSAGE:I = 0x2

.field public static GSM_FAKE_CB_ACTION:Ljava/lang/String; = null

.field private static final GSM_FAKE_SMS:I = 0x2

.field public static GSM_FAKE_SMS_ACTION:Ljava/lang/String; = null

.field private static final HTC_DEBUG:Z

.field private static final LOCAL_LOGV:Z = true

.field private static final NUMBERING_PLAN_DATA:B = 0x3t

.field private static final NUMBERING_PLAN_PRIVATE:B = 0x9t

.field private static final NUMBERING_PLAN_TELEPHONY:B = 0x1t

.field private static final NUMBERING_PLAN_TELEX:B = 0x4t

.field private static final NUMBERING_PLAN_UNKNOWN:B = 0x0t

.field private static final NUMBERING_TYPE_ABBREVIATED:B = 0x6t

.field private static final NUMBERING_TYPE_INTERNATIONAL:B = 0x1t

.field private static final NUMBERING_TYPE_INTERNET_EMAIL_ADDRESS:B = 0x2t

.field private static final NUMBERING_TYPE_INTERNET_PROTOCOL:B = 0x1t

.field private static final NUMBERING_TYPE_NATIONAL:B = 0x2t

.field private static final NUMBERING_TYPE_NETWORK_SPECIFIC:B = 0x3t

.field private static final NUMBERING_TYPE_SUBSCRIBER:B = 0x4t

.field private static final NUMBERING_TYPE_UNKNOWN:B = 0x0t

.field private static final SUBADDRESS_TYPE_NSAP:B = 0x0t

.field private static final SUBADDRESS_TYPE_USER_SPECIFIED:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "FakeSmsReceiver"

.field private static final TYPE_ABBREVIATED:I = 0x5

.field private static final TYPE_INTERNATIONAL:I = 0x1

.field private static final TYPE_INTERNET_EMAIL_ADDRESS:I = 0x8

.field private static final TYPE_INTERNET_PROTOCOL:I = 0x7

.field private static final TYPE_NATIONAL:I = 0x2

.field private static final TYPE_NETWORK_SPECIFIC:I = 0x3

.field private static final TYPE_RESERVED:I = 0x9

.field private static final TYPE_SUBSCRIBER:I = 0x4

.field private static final TYPE_UNKNOWN:I = 0x0

.field private static final TYPE_UNKNOWN_DATA_NETWORK:I = 0x6

.field private static final bitsMaskRight:[S

.field private static final dtmfDigitToAscII:[B

.field private static mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;


# instance fields
.field TransportParam_subAddr:[B

.field TransportParam_subAddrType:B

.field private dataEnd:I

.field public mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

.field private mContext:Landroid/content/Context;

.field public mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field private mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

.field private mMsgType:B

.field private mParcel:Landroid/os/Parcel;

.field private mSenderThread:Landroid/os/HandlerThread;

.field private m_filter:Landroid/content/IntentFilter;

.field private param_len:S

.field private smsData:[B

.field private startBitIndex_decodeAddress:I

.field private startIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->HTC_DEBUG:Z

    .line 78
    const/16 v0, 0x9

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->bitsMaskRight:[S

    .line 79
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dtmfDigitToAscII:[B

    .line 102
    const-string v0, "com.android.mms.CDMAfakesms"

    sput-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->CDMA_FAKE_SMS_ACTION:Ljava/lang/String;

    .line 103
    const-string v0, "com.android.mms.GSMfakesms"

    sput-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->GSM_FAKE_SMS_ACTION:Ljava/lang/String;

    .line 104
    const-string v0, "com.android.mms.GSMfakecb"

    sput-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->GSM_FAKE_CB_ACTION:Ljava/lang/String;

    return-void

    .line 78
    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x3s
        0x7s
        0xfs
        0x1fs
        0x3fs
        0x7fs
        0xffs
    .end array-data

    .line 79
    nop

    :array_1
    .array-data 1
        0x0t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x2at
        0x23t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->m_filter:Landroid/content/IntentFilter;

    .line 85
    iput-object v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    .line 86
    iput-object v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    .line 87
    iput-object v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mContext:Landroid/content/Context;

    .line 95
    iput-object v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    .line 107
    const-string v0, "FakeSmsReceiver"

    const-string v1, "New FakeSmsThread! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iput-object p1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mContext:Landroid/content/Context;

    .line 109
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FakeSmsThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 111
    new-instance v0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;-><init>(Lcom/android/internal/telephony/test/FakeSmsReceiver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->m_filter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/internal/telephony/test/FakeSmsReceiver;->CDMA_FAKE_SMS_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->m_filter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/internal/telephony/test/FakeSmsReceiver;->GSM_FAKE_SMS_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->m_filter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/internal/telephony/test/FakeSmsReceiver;->GSM_FAKE_CB_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->m_filter:Landroid/content/IntentFilter;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p1, p0, v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 117
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->HTC_DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/test/FakeSmsReceiver;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/test/FakeSmsReceiver;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->parseCdmaSMS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/test/FakeSmsReceiver;)Landroid/os/Parcel;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/test/FakeSmsReceiver;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    return-object v0
.end method

.method private decodeAddress(IZI)[B
    .locals 9
    .param p1, "startBitIndex"    # I
    .param p2, "dtmfDigit"    # Z
    .param p3, "numberingType"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 276
    iget v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    add-int/lit8 v5, p1, 0x8

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-object v1

    .line 280
    :cond_1
    invoke-direct {p0, p1, v6}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v3

    .line 281
    .local v3, "numberOfCharacters":I
    add-int/lit8 p1, p1, 0x8

    .line 282
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeByte(B)V

    .line 284
    if-nez v3, :cond_2

    .line 285
    iput p1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startBitIndex_decodeAddress:I

    goto :goto_0

    .line 292
    :cond_2
    if-eqz p2, :cond_3

    .line 293
    iget v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    shl-int/lit8 v5, v3, 0x2

    add-int/2addr v5, p1

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-lt v4, v5, :cond_0

    .line 297
    new-array v1, v3, [B

    .line 298
    .local v1, "addressDecoded":[B
    const/4 v0, 0x0

    .local v0, "addrIndex":I
    :goto_1
    if-ge v0, v3, :cond_4

    .line 299
    const/4 v4, 0x4

    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 300
    add-int/lit8 p1, p1, 0x4

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 304
    .end local v0    # "addrIndex":I
    .end local v1    # "addressDecoded":[B
    :cond_3
    iget v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    shl-int/lit8 v5, v3, 0x3

    add-int/2addr v5, p1

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-lt v4, v5, :cond_0

    .line 307
    packed-switch p3, :pswitch_data_0

    .line 314
    new-array v1, v3, [B

    .line 315
    .restart local v1    # "addressDecoded":[B
    const/4 v0, 0x0

    .restart local v0    # "addrIndex":I
    :goto_2
    if-ge v0, v3, :cond_4

    .line 316
    invoke-direct {p0, p1, v6}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 317
    add-int/lit8 p1, p1, 0x8

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 310
    .end local v0    # "addrIndex":I
    .end local v1    # "addressDecoded":[B
    :pswitch_0
    invoke-direct {p0, p1, v6, v3}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStreamIntoBytes(III)[B

    move-result-object v1

    .line 311
    .restart local v1    # "addressDecoded":[B
    shl-int/lit8 v4, v3, 0x3

    add-int/2addr p1, v4

    .line 322
    :cond_4
    if-ne p3, v8, :cond_5

    .line 323
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [B

    .line 324
    .local v2, "addressInternational":[B
    const/16 v4, 0x2b

    aput-byte v4, v2, v7

    .line 325
    array-length v4, v1

    invoke-static {v1, v7, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    move-object v1, v2

    .line 328
    .end local v2    # "addressInternational":[B
    :cond_5
    iput p1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startBitIndex_decodeAddress:I

    goto :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private decodeBCDnumber(I)I
    .locals 4
    .param p1, "bcdOctet"    # I

    .prologue
    const/16 v3, 0x9

    .line 410
    shr-int/lit8 v2, p1, 0x4

    and-int/lit8 v0, v2, 0xf

    .line 411
    .local v0, "highBCD":I
    and-int/lit8 v1, p1, 0xf

    .line 412
    .local v1, "lowBCD":I
    if-gt v0, v3, :cond_0

    if-le v1, v3, :cond_1

    .line 413
    :cond_0
    const/4 v2, 0x0

    .line 415
    :goto_0
    return v2

    :cond_1
    mul-int/lit8 v2, v0, 0xa

    add-int/2addr v2, v1

    goto :goto_0
.end method

.method private decodeBitStream(II)I
    .locals 8
    .param p1, "startBitIndex"    # I
    .param p2, "lengthOfBits"    # I

    .prologue
    const/16 v7, 0x8

    .line 335
    shr-int/lit8 v2, p1, 0x3

    .line 336
    .local v2, "bytesOffset":I
    and-int/lit8 v0, p1, 0x7

    .line 337
    .local v0, "bitsOffset":I
    iget-object v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    aget-byte v5, v5, v2

    and-int/lit16 v4, v5, 0xff

    .line 339
    .local v4, "returnValue":I
    add-int v5, v0, p2

    if-gt v5, v7, :cond_1

    .line 340
    rsub-int/lit8 v5, v0, 0x8

    sub-int/2addr v5, p2

    shr-int v5, v4, v5

    sget-object v6, Lcom/android/internal/telephony/test/FakeSmsReceiver;->bitsMaskRight:[S

    aget-short v6, v6, p2

    and-int v4, v5, v6

    .line 356
    :cond_0
    :goto_0
    return v4

    .line 343
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/test/FakeSmsReceiver;->bitsMaskRight:[S

    rsub-int/lit8 v6, v0, 0x8

    aget-short v5, v5, v6

    and-int/2addr v4, v5

    .line 344
    add-int/lit8 v3, v2, 0x1

    .line 345
    .local v3, "bytesOffsetRemaining":I
    rsub-int/lit8 v5, v0, 0x8

    sub-int v1, p2, v5

    .line 346
    .local v1, "bitsRemaining":I
    :goto_1
    if-le v1, v7, :cond_2

    .line 347
    shl-int/lit8 v5, v4, 0x8

    iget-object v6, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    aget-byte v6, v6, v3

    and-int/lit16 v6, v6, 0xff

    or-int v4, v5, v6

    .line 348
    add-int/lit8 v3, v3, 0x1

    .line 349
    add-int/lit8 v1, v1, -0x8

    goto :goto_1

    .line 351
    :cond_2
    if-lez v1, :cond_0

    .line 352
    shl-int v5, v4, v1

    iget-object v6, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    aget-byte v6, v6, v3

    rsub-int/lit8 v7, v1, 0x8

    shr-int/2addr v6, v7

    sget-object v7, Lcom/android/internal/telephony/test/FakeSmsReceiver;->bitsMaskRight:[S

    aget-short v7, v7, v1

    and-int/2addr v6, v7

    or-int v4, v5, v6

    goto :goto_0
.end method

.method private decodeBitStreamIntoBytes(III)[B
    .locals 3
    .param p1, "startBitIndex"    # I
    .param p2, "lengthOfBits"    # I
    .param p3, "lengthOfBytes"    # I

    .prologue
    .line 262
    new-array v0, p3, [B

    .line 265
    .local v0, "byteArray":[B
    const/4 v1, 0x0

    .local v1, "copyIndex":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 267
    add-int/2addr p1, p2

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    :cond_0
    return-object v0
.end method

.method private decodeParameter_header()B
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 176
    iget v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    move v0, v1

    .line 186
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v0, v2, v3

    .line 181
    .local v0, "param_id":B
    iget-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    iput-short v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->param_len:S

    .line 182
    iget v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    .line 183
    iget v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    sub-int/2addr v2, v3

    iget-short v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->param_len:S

    if-ge v2, v3, :cond_0

    move v0, v1

    .line 184
    goto :goto_0
.end method

.method private decodeTransportParamAddress()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 360
    iget v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v10, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    sub-int/2addr v7, v10

    if-ge v7, v8, :cond_1

    .line 406
    :cond_0
    return-void

    .line 364
    :cond_1
    const/4 v2, 0x0

    .line 365
    .local v2, "TransportParam_fromAddrType":I
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v10, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v7, v7, v10

    and-int/lit16 v7, v7, 0x80

    shr-int/lit8 v3, v7, 0x7

    .line 366
    .local v3, "digitMode":I
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v10, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v7, v7, v10

    and-int/lit8 v7, v7, 0x40

    shr-int/lit8 v5, v7, 0x6

    .line 370
    .local v5, "numberMode":I
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    iget v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    shl-int/lit8 v7, v7, 0x3

    add-int/lit8 v6, v7, 0x2

    .line 375
    .local v6, "startBitIndex":I
    if-eqz v3, :cond_4

    .line 376
    if-eqz v5, :cond_2

    move v7, v8

    :goto_0
    const/4 v10, 0x3

    invoke-direct {p0, v6, v10}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v10

    int-to-byte v10, v10

    invoke-direct {p0, v7, v10}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->translateAddrNumberType(ZB)I

    move-result v2

    .line 377
    add-int/lit8 v6, v6, 0x3

    .line 379
    if-nez v5, :cond_3

    .line 380
    iget v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    add-int/lit8 v10, v6, 0x4

    add-int/lit8 v10, v10, 0x7

    shr-int/lit8 v10, v10, 0x3

    if-lt v7, v10, :cond_0

    .line 384
    const/4 v7, 0x4

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v7

    int-to-byte v1, v7

    .line 385
    .local v1, "TransportParam_fromAddrPlan":I
    add-int/lit8 v6, v6, 0x4

    .line 396
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    if-nez v3, :cond_5

    :goto_2
    invoke-direct {p0, v6, v8, v2}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeAddress(IZI)[B

    move-result-object v0

    .line 400
    .local v0, "TransportParam_fromAddr":[B
    if-eqz v0, :cond_0

    .line 402
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    array-length v7, v0

    if-ge v4, v7, :cond_0

    .line 403
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    aget-byte v8, v0, v4

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 402
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v0    # "TransportParam_fromAddr":[B
    .end local v1    # "TransportParam_fromAddrPlan":I
    .end local v4    # "i":I
    :cond_2
    move v7, v9

    .line 376
    goto :goto_0

    .line 388
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "TransportParam_fromAddrPlan":I
    goto :goto_1

    .line 392
    .end local v1    # "TransportParam_fromAddrPlan":I
    :cond_4
    const/4 v2, 0x0

    .line 393
    const/4 v1, 0x0

    .restart local v1    # "TransportParam_fromAddrPlan":I
    goto :goto_1

    :cond_5
    move v8, v9

    .line 399
    goto :goto_2
.end method

.method private decodeTransportParamServiceCategory()V
    .locals 4

    .prologue
    .line 203
    iget v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 211
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 210
    .local v0, "service":I
    iget-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method private decodeTransportParamSubAddress()I
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/16 v11, 0x8

    const/4 v7, 0x0

    .line 421
    iget v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v9, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    sub-int/2addr v8, v9

    const/4 v9, 0x2

    if-ge v8, v9, :cond_1

    move v4, v7

    .line 535
    :cond_0
    :goto_0
    return v4

    .line 425
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v9, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xe0

    shr-int/lit8 v8, v8, 0x5

    int-to-byte v8, v8

    iput-byte v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddrType:B

    .line 426
    iget-object v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v9, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v8, v8, v9

    and-int/lit8 v8, v8, 0x10

    shr-int/lit8 v5, v8, 0x4

    .line 427
    .local v5, "oddCHARi":I
    iget-object v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v9, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v8, v8, v9

    and-int/lit8 v8, v8, 0xf

    shl-int/lit8 v8, v8, 0x4

    iget-object v9, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v10, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    add-int/lit8 v10, v10, 0x1

    aget-byte v9, v9, v10

    shr-int/lit8 v9, v9, 0x4

    and-int/lit8 v9, v9, 0xf

    or-int v4, v8, v9

    .line 430
    .local v4, "numberOfCharacters":I
    iget-object v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    iget-byte v9, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddrType:B

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    iget-object v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v8, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    if-nez v4, :cond_2

    move v4, v7

    .line 435
    goto :goto_0

    .line 437
    :cond_2
    shl-int/lit8 v8, v4, 0x1

    sub-int v4, v8, v5

    .line 438
    iget v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v9, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    sub-int/2addr v8, v9

    shr-int/lit8 v9, v4, 0x1

    add-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_3

    move v4, v7

    .line 439
    goto :goto_0

    .line 442
    :cond_3
    iget v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    shl-int/lit8 v8, v8, 0x3

    add-int/lit8 v6, v8, 0xc

    .line 446
    .local v6, "startBitIndex":I
    iget-byte v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddrType:B

    packed-switch v8, :pswitch_data_0

    move v4, v7

    .line 532
    goto :goto_0

    .line 448
    :pswitch_0
    iget v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    add-int/lit8 v9, v6, 0x8

    add-int/lit8 v9, v9, 0x7

    shr-int/lit8 v9, v9, 0x3

    if-ge v8, v9, :cond_4

    move v4, v7

    .line 449
    goto :goto_0

    .line 451
    :cond_4
    invoke-direct {p0, v6, v11}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v2

    .line 452
    .local v2, "afiField":I
    add-int/lit8 v6, v6, 0x8

    .line 453
    add-int/lit8 v4, v4, -0x2

    .line 455
    sparse-switch v2, :sswitch_data_0

    move v4, v7

    .line 523
    goto :goto_0

    .line 457
    :sswitch_0
    iget v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    add-int/lit8 v9, v6, 0x10

    add-int/lit8 v9, v9, 0x7

    shr-int/lit8 v9, v9, 0x3

    if-ge v8, v9, :cond_5

    move v4, v7

    .line 458
    goto/16 :goto_0

    .line 460
    :cond_5
    invoke-direct {p0, v6, v11}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBCDnumber(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x64

    add-int/lit8 v9, v6, 0x8

    invoke-direct {p0, v9, v11}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBCDnumber(I)I

    move-result v9

    add-int/2addr v8, v9

    int-to-short v0, v8

    .line 462
    .local v0, "NSAP_internetCodePoint":S
    add-int/lit8 v6, v6, 0x10

    .line 464
    packed-switch v0, :pswitch_data_1

    move v4, v7

    .line 494
    goto/16 :goto_0

    .line 466
    :pswitch_1
    iget v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    add-int/lit16 v9, v6, 0x80

    add-int/lit8 v9, v9, 0x7

    shr-int/lit8 v9, v9, 0x3

    if-ge v8, v9, :cond_6

    move v4, v7

    .line 467
    goto/16 :goto_0

    .line 469
    :cond_6
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 470
    .local v3, "ipAddress":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "addrIndex":I
    :goto_1
    if-ge v1, v11, :cond_8

    .line 471
    const/16 v7, 0x10

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 472
    add-int/lit8 v6, v6, 0x10

    .line 473
    const/4 v7, 0x7

    if-ge v1, v7, :cond_7

    .line 474
    new-instance v7, Ljava/lang/String;

    const-string v8, ":"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 470
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 477
    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    goto/16 :goto_0

    .line 480
    .end local v1    # "addrIndex":I
    .end local v3    # "ipAddress":Ljava/lang/String;
    :pswitch_2
    iget v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    add-int/lit8 v9, v6, 0x20

    add-int/lit8 v9, v9, 0x7

    shr-int/lit8 v9, v9, 0x3

    if-ge v8, v9, :cond_9

    move v4, v7

    .line 481
    goto/16 :goto_0

    .line 483
    :cond_9
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 484
    .restart local v3    # "ipAddress":Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "addrIndex":I
    :goto_2
    if-ge v1, v12, :cond_b

    .line 485
    invoke-direct {p0, v6, v11}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 486
    add-int/lit8 v6, v6, 0x8

    .line 487
    const/4 v7, 0x3

    if-ge v1, v7, :cond_a

    .line 488
    new-instance v7, Ljava/lang/String;

    const-string v8, "."

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 484
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 491
    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    goto/16 :goto_0

    .line 498
    .end local v0    # "NSAP_internetCodePoint":S
    .end local v1    # "addrIndex":I
    .end local v3    # "ipAddress":Ljava/lang/String;
    :sswitch_1
    shr-int/lit8 v4, v4, 0x1

    .line 499
    const/16 v7, 0x13

    if-le v4, v7, :cond_c

    .line 501
    const/16 v4, 0x13

    .line 503
    :cond_c
    new-array v7, v4, [B

    iput-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    .line 504
    const/4 v1, 0x0

    .restart local v1    # "addrIndex":I
    :goto_3
    if-ge v1, v4, :cond_0

    .line 505
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    invoke-direct {p0, v6, v11}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v8

    and-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    aput-byte v8, v7, v1

    .line 506
    add-int/lit8 v6, v6, 0x8

    .line 504
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 510
    .end local v1    # "addrIndex":I
    :sswitch_2
    shr-int/lit8 v4, v4, 0x1

    .line 511
    const/16 v7, 0x9

    if-le v4, v7, :cond_d

    .line 513
    const/16 v4, 0x9

    .line 515
    :cond_d
    new-array v7, v4, [B

    iput-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    .line 516
    const/4 v1, 0x0

    .restart local v1    # "addrIndex":I
    :goto_4
    if-ge v1, v4, :cond_0

    .line 517
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    invoke-direct {p0, v6, v11}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v8

    and-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    aput-byte v8, v7, v1

    .line 518
    add-int/lit8 v6, v6, 0x8

    .line 516
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 527
    .end local v1    # "addrIndex":I
    .end local v2    # "afiField":I
    :pswitch_3
    invoke-direct {p0, v6, v12, v4}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStreamIntoBytes(III)[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    .line 528
    shl-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    .line 530
    goto/16 :goto_0

    .line 446
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 455
    :sswitch_data_0
    .sparse-switch
        0x35 -> :sswitch_0
        0x50 -> :sswitch_1
        0x51 -> :sswitch_2
    .end sparse-switch

    .line 464
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private decodeTransportParamTeleserviceId()V
    .locals 4

    .prologue
    .line 191
    iget v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 199
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 197
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    iget-byte v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mMsgType:B

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 664
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 666
    iput-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    .line 668
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    .line 670
    iput-byte v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mMsgType:B

    .line 671
    iput v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startBitIndex_decodeAddress:I

    .line 672
    iput-byte v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddrType:B

    .line 673
    iput-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    .line 674
    iput v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    .line 675
    iput v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    .line 676
    iput-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    .line 677
    return-void
.end method

.method private parseCdmaSMS(Ljava/lang/String;)V
    .locals 9
    .param p1, "pdu"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 542
    invoke-direct {p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->init()V

    .line 543
    const/4 v3, -0x1

    .line 544
    .local v3, "preParam_id":I
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    .line 549
    iget v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    .line 550
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    aget-byte v4, v4, v7

    iput-byte v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mMsgType:B

    .line 551
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    array-length v4, v4

    iput v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    .line 554
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeParameter_header()B

    move-result v2

    .line 555
    .local v2, "param_id":B
    iget v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    .line 556
    .local v0, "current_dataEnd":I
    iget v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    iget-short v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->param_len:S

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    .line 557
    packed-switch v2, :pswitch_data_0

    .line 627
    :goto_0
    :pswitch_0
    iget v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iput v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    .line 628
    iput v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    .line 629
    iget v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    if-gt v4, v5, :cond_0

    .line 632
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 633
    const-string v4, "Jerry1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mParcel.size >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return-void

    .line 559
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeTransportParamTeleserviceId()V

    .line 560
    const/4 v3, 0x0

    .line 561
    goto :goto_0

    .line 563
    :pswitch_2
    if-gez v3, :cond_1

    .line 564
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    iget-byte v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mMsgType:B

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeByte(B)V

    .line 566
    const-string v4, "FakeSmsReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set empty tele id. type>0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mMsgType:B

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->toHexString(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v3, 0x0

    .line 569
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeTransportParamServiceCategory()V

    .line 570
    const/4 v3, 0x1

    .line 571
    goto :goto_0

    .line 573
    :pswitch_3
    if-nez v3, :cond_2

    .line 574
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    const/4 v3, 0x1

    .line 577
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeTransportParamAddress()V

    .line 578
    const/4 v3, 0x2

    .line 579
    goto :goto_0

    .line 581
    :pswitch_4
    if-nez v3, :cond_3

    .line 582
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    const/4 v3, 0x1

    .line 585
    :cond_3
    if-ne v3, v8, :cond_4

    .line 586
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 590
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeByte(B)V

    .line 591
    const/4 v3, 0x2

    .line 593
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeTransportParamSubAddress()I

    move-result v4

    if-lez v4, :cond_5

    .line 594
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    iget-object v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 595
    :cond_5
    const/4 v3, 0x3

    .line 596
    goto/16 :goto_0

    .line 598
    :pswitch_5
    if-nez v3, :cond_6

    .line 599
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    const/4 v3, 0x1

    .line 602
    :cond_6
    if-ne v3, v8, :cond_7

    .line 603
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeByte(B)V

    .line 608
    const/4 v3, 0x2

    .line 611
    :cond_7
    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    .line 612
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 614
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeByte(B)V

    .line 617
    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    iget-short v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->param_len:S

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-short v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->param_len:S

    if-ge v1, v4, :cond_9

    .line 619
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    iget-object v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v6, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    add-int/2addr v6, v1

    aget-byte v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeByte(B)V

    .line 618
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 622
    :cond_9
    const/16 v3, 0x8

    .line 623
    goto/16 :goto_0

    .line 557
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static registerReceiver(Landroid/content/Context;Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/test/FakeSmsReceiver;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inboundSmsHandler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 121
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    if-nez v0, :cond_1

    .line 122
    const-class v1, Lcom/android/internal/telephony/test/FakeSmsReceiver;

    monitor-enter v1

    .line 123
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    .line 126
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_1
    instance-of v0, p1, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    if-eqz v0, :cond_3

    .line 129
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    check-cast p1, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .end local p1    # "inboundSmsHandler":Lcom/android/internal/telephony/InboundSmsHandler;
    iput-object p1, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 133
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    return-object v0

    .line 126
    .restart local p1    # "inboundSmsHandler":Lcom/android/internal/telephony/InboundSmsHandler;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 130
    :cond_3
    instance-of v0, p1, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    if-eqz v0, :cond_2

    .line 131
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    check-cast p1, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .end local p1    # "inboundSmsHandler":Lcom/android/internal/telephony/InboundSmsHandler;
    iput-object p1, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    goto :goto_0
.end method

.method private translateAddrNumberType(ZB)I
    .locals 2
    .param p1, "dataNetwork"    # Z
    .param p2, "numberType"    # B

    .prologue
    .line 217
    const/16 v0, 0x9

    .line 218
    .local v0, "returnValue":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 219
    packed-switch p2, :pswitch_data_0

    .line 257
    :goto_0
    return v0

    .line 221
    :pswitch_0
    const/4 v0, 0x6

    .line 222
    goto :goto_0

    .line 224
    :pswitch_1
    const/4 v0, 0x7

    .line 225
    goto :goto_0

    .line 227
    :pswitch_2
    const/16 v0, 0x8

    .line 228
    goto :goto_0

    .line 234
    :cond_0
    packed-switch p2, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 236
    :pswitch_4
    const/4 v0, 0x0

    .line 237
    goto :goto_0

    .line 239
    :pswitch_5
    const/4 v0, 0x1

    .line 240
    goto :goto_0

    .line 242
    :pswitch_6
    const/4 v0, 0x2

    .line 243
    goto :goto_0

    .line 245
    :pswitch_7
    const/4 v0, 0x3

    .line 246
    goto :goto_0

    .line 248
    :pswitch_8
    const/4 v0, 0x4

    .line 249
    goto :goto_0

    .line 251
    :pswitch_9
    const/4 v0, 0x5

    .line 252
    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 234
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    const-string v0, "FakeSmsReceiver"

    const-string v1, "dispose()> "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v0, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->removeMessages(I)V

    .line 142
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v0, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->removeMessages(I)V

    .line 143
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v0, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->removeMessages(I)V

    .line 144
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iput-object v2, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    .line 145
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v0, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 146
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iput-object v2, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    .line 147
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v0, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    sput-object v2, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    const-string v0, "FakeSmsReceiver"

    const-string v1, "dispose()> mThis is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 159
    const-string v2, "Jerry1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received FakeSms Intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v2, "pdu"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "action":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/test/FakeSmsReceiver;->CDMA_FAKE_SMS_ACTION:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/test/FakeSmsReceiver;->GSM_FAKE_SMS_ACTION:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    iget-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 169
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/test/FakeSmsReceiver;->GSM_FAKE_CB_ACTION:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
