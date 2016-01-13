.class Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PduParser"
.end annotation


# instance fields
.field dataCodingScheme:I

.field kddiDiscard:Z

.field kddiSmsTypeId:I

.field kddiSmsTypeIdSet:Z

.field mCur:I

.field mPdu:[B

.field mUserData:[B

.field mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

.field mUserDataSeptetPadding:I

.field mUserDataSize:I

.field scToa:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 894
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .line 895
    return-void
.end method

.method constructor <init>([B)V
    .locals 1
    .param p1, "pdu"    # [B

    .prologue
    const/4 v0, 0x0

    .line 897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 888
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    .line 889
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiDiscard:Z

    .line 890
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->dataCodingScheme:I

    .line 898
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    .line 899
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 900
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    .line 901
    return-void
.end method

.method private KddiReplaceUserData([B)[B
    .locals 11
    .param p1, "userData"    # [B

    .prologue
    .line 1268
    const/4 v3, 0x0

    .line 1270
    .local v3, "offset":I
    if-nez p1, :cond_1

    .line 1271
    const/4 v6, 0x0

    .line 1392
    :cond_0
    :goto_0
    return-object v6

    .line 1275
    :cond_1
    const/4 v9, 0x2

    new-array v2, v9, [B

    fill-array-data v2, :array_0

    .line 1276
    .local v2, "newSmsType":[B
    const/4 v9, 0x5

    new-array v7, v9, [[B

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [B

    fill-array-data v10, :array_1

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const/4 v10, 0x2

    new-array v10, v10, [B

    fill-array-data v10, :array_2

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const/4 v10, 0x2

    new-array v10, v10, [B

    fill-array-data v10, :array_3

    aput-object v10, v7, v9

    const/4 v9, 0x3

    const/4 v10, 0x2

    new-array v10, v10, [B

    fill-array-data v10, :array_4

    aput-object v10, v7, v9

    const/4 v9, 0x4

    const/4 v10, 0x2

    new-array v10, v10, [B

    fill-array-data v10, :array_5

    aput-object v10, v7, v9

    .line 1283
    .local v7, "smsType":[[B
    const/16 v9, 0xa

    new-array v8, v9, [B

    fill-array-data v8, :array_6

    .line 1291
    .local v8, "smsTypeEmailSig":[B
    const/16 v9, 0x1a

    new-array v6, v9, [B

    fill-array-data v6, :array_7

    .line 1308
    .local v6, "serviceData":[B
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    if-nez v9, :cond_3

    array-length v9, p1

    sub-int/2addr v9, v3

    const/16 v10, 0xa

    if-lt v9, v10, :cond_3

    .line 1309
    const/4 v1, 0x1

    .line 1310
    .local v1, "isEmailSig":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v9, v8

    if-ge v0, v9, :cond_2

    .line 1311
    aget-byte v9, v8, v0

    add-int v10, v3, v0

    aget-byte v10, p1, v10

    if-eq v9, v10, :cond_7

    .line 1312
    const/4 v1, 0x0

    .line 1316
    :cond_2
    if-eqz v1, :cond_3

    .line 1317
    const/high16 v9, 0x10000000

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeId:I

    .line 1318
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    .line 1327
    .end local v0    # "i":I
    .end local v1    # "isEmailSig":Z
    :cond_3
    array-length v9, p1

    sub-int/2addr v9, v3

    const/4 v10, 0x2

    if-lt v9, v10, :cond_9

    .line 1328
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v9, v7

    if-le v9, v0, :cond_4

    .line 1329
    aget-object v9, v7, v0

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    aget-byte v10, p1, v3

    if-ne v9, v10, :cond_8

    aget-object v9, v7, v0

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    const/4 v10, 0x1

    aget-byte v10, p1, v10

    if-ne v9, v10, :cond_8

    .line 1331
    packed-switch v0, :pswitch_data_0

    .line 1355
    :goto_3
    add-int/lit8 v3, v3, 0x2

    .line 1361
    :cond_4
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    if-nez v9, :cond_5

    .line 1362
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiJudgeCmail([BI)Z

    .line 1369
    :cond_5
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    if-nez v9, :cond_9

    .line 1370
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiJudgeOptionsServices([BI)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiJudgeOtherServices([BI)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1372
    :cond_6
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiDiscard:Z

    if-eqz v9, :cond_0

    move-object v6, p1

    .line 1377
    goto/16 :goto_0

    .line 1310
    .restart local v1    # "isEmailSig":Z
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1333
    .end local v1    # "isEmailSig":Z
    :pswitch_0
    const/16 v9, 0x201

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeId:I

    .line 1334
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    goto :goto_3

    .line 1337
    :pswitch_1
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeId:I

    .line 1338
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    goto :goto_3

    .line 1341
    :pswitch_2
    const/16 v9, 0x101

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeId:I

    .line 1342
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    goto :goto_3

    .line 1345
    :pswitch_3
    const/16 v9, 0x102

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeId:I

    .line 1346
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    goto :goto_3

    .line 1349
    :pswitch_4
    const/4 v9, 0x4

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeId:I

    .line 1350
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    goto :goto_3

    .line 1328
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1385
    .end local v0    # "i":I
    :cond_9
    array-length v9, p1

    sub-int v5, v9, v3

    .line 1386
    .local v5, "resultDataLen":I
    new-array v4, v5, [B

    .line 1387
    .local v4, "resultData":[B
    const/4 v9, 0x0

    invoke-static {p1, v3, v4, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v4

    .line 1392
    goto/16 :goto_0

    .line 1275
    nop

    :array_0
    .array-data 1
        0x0t
        0x70t
    .end array-data

    .line 1276
    nop

    :array_1
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x1t
        0x2t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x0t
        0x4t
    .end array-data

    .line 1283
    nop

    :array_6
    .array-data 1
        0x53t
        0x49t
        0x47t
        0x4et
        0x41t
        0x4ct
        0x55t
        0x49t
        0x44t
        0x3at
    .end array-data

    .line 1291
    nop

    :array_7
    .array-data 1
        -0x6ct
        -0xft
        -0x6ft
        -0x32t
        -0x77t
        -0x62t
        -0x7et
        -0x34t
        -0x7et
        -0x43t
        -0x7et
        -0x21t
        -0x6bt
        0x5ct
        -0x72t
        -0x5at
        -0x7et
        -0x3bt
        -0x7et
        -0x55t
        -0x7et
        -0x24t
        -0x7et
        -0x47t
        -0x7et
        -0xft
    .end array-data

    .line 1331
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private KddiformatSlamdownMessage([B)Ljava/lang/String;
    .locals 5
    .param p1, "userData"    # [B

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1242
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 1261
    :cond_0
    :goto_0
    return-object v0

    .line 1247
    :cond_1
    aget-byte v1, p1, v4

    if-nez v1, :cond_0

    aget-byte v1, p1, v3

    if-nez v1, :cond_0

    .line 1251
    const-string v0, "SmsMessage"

    const-string v1, "sms type: 0x0000"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeId:I

    .line 1255
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    .line 1261
    invoke-static {p1, v3}, Lcom/android/internal/telephony/HtcMessageHelper;->getKddiVoiceMailNotificationType1String([BZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p1, "x1"    # I

    .prologue
    .line 874
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getKddiUserDataShiftJis(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getKddiUserDataShiftJis(I)Ljava/lang/String;
    .locals 8
    .param p1, "byteCount"    # I

    .prologue
    .line 1217
    :try_start_0
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->dataCodingScheme:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    .line 1218
    new-array v4, p1, [B

    .line 1219
    .local v4, "userData":[B
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v4, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1221
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->KddiReplaceUserData([B)[B

    move-result-object v1

    .line 1222
    .local v1, "replacedUserData":[B
    new-instance v2, Ljava/lang/String;

    const-string v5, "SJIS"

    invoke-direct {v2, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1224
    .local v2, "ret":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->KddiformatSlamdownMessage([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1225
    .local v3, "slamDownMessage":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1226
    move-object v2, v3

    .line 1236
    .end local v1    # "replacedUserData":[B
    .end local v3    # "slamDownMessage":Ljava/lang/String;
    .end local v4    # "userData":[B
    :cond_0
    :goto_0
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v5, p1

    iput v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 1237
    return-object v2

    .line 1229
    .end local v2    # "ret":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    const-string v7, "SJIS"

    invoke-direct {v2, v5, v6, p1, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v2    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 1231
    .end local v2    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1232
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v2, ""

    .line 1233
    .restart local v2    # "ret":Ljava/lang/String;
    const-string v5, "SmsMessage"

    const-string v6, "can\'t decode SMS with shift-JIS"

    invoke-static {v5, v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private kddiJudgeCmail([BI)Z
    .locals 6
    .param p1, "userData"    # [B
    .param p2, "offset"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1402
    array-length v3, p1

    sub-int/2addr v3, p2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 1412
    :cond_0
    :goto_0
    return v1

    .line 1404
    :cond_1
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int v0, v3, v4

    .line 1405
    .local v0, "typeId":I
    const-string v3, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMAIL?> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    invoke-static {v0}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiSmsTypeCmail(I)Z

    move-result v3

    if-ne v3, v2, :cond_0

    .line 1408
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeId:I

    .line 1409
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    move v1, v2

    .line 1410
    goto :goto_0
.end method

.method private kddiJudgeOptionsServices([BI)Z
    .locals 6
    .param p1, "userData"    # [B
    .param p2, "offset"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1422
    array-length v3, p1

    sub-int/2addr v3, p2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 1431
    :cond_0
    :goto_0
    return v1

    .line 1423
    :cond_1
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int v0, v3, v4

    .line 1424
    .local v0, "typeId":I
    const-string v3, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Optional services?> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    invoke-static {v0}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiOptionService(I)Z

    move-result v3

    if-ne v3, v2, :cond_0

    .line 1426
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeId:I

    .line 1427
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    .line 1428
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiDiscard:Z

    move v1, v2

    .line 1429
    goto :goto_0
.end method

.method private kddiJudgeOtherServices([BI)Z
    .locals 5
    .param p1, "userData"    # [B
    .param p2, "offset"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1441
    array-length v3, p1

    sub-int/2addr v3, p2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 1454
    :cond_0
    :goto_0
    return v1

    .line 1442
    :cond_1
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int v0, v3, v4

    .line 1445
    .local v0, "typeId":I
    invoke-static {v0}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiOtherService(I)Z

    move-result v3

    if-ne v3, v2, :cond_0

    .line 1446
    const-string v1, "SmsMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "other services?> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeId:I

    .line 1448
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    .line 1449
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiDiscard:Z

    move v1, v2

    .line 1451
    goto :goto_0
.end method


# virtual methods
.method constructUserData(ZZ)I
    .locals 13
    .param p1, "hasUserDataHeader"    # Z
    .param p2, "dataInSeptets"    # Z

    .prologue
    const/4 v10, 0x0

    .line 1020
    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 1021
    .local v4, "offset":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .local v5, "offset":I
    aget-byte v9, v9, v4

    and-int/lit16 v8, v9, 0xff

    .line 1022
    .local v8, "userDataLength":I
    const/4 v3, 0x0

    .line 1023
    .local v3, "headerSeptets":I
    const/4 v7, 0x0

    .line 1025
    .local v7, "userDataHeaderLength":I
    if-eqz p1, :cond_7

    .line 1026
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    aget-byte v9, v9, v5

    and-int/lit16 v7, v9, 0xff

    .line 1028
    new-array v6, v7, [B

    .line 1029
    .local v6, "udh":[B
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    invoke-static {v9, v4, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1030
    invoke-static {v6}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1031
    add-int/2addr v4, v7

    .line 1033
    add-int/lit8 v9, v7, 0x1

    mul-int/lit8 v2, v9, 0x8

    .line 1034
    .local v2, "headerBits":I
    div-int/lit8 v3, v2, 0x7

    .line 1035
    rem-int/lit8 v9, v2, 0x7

    if-lez v9, :cond_1

    const/4 v9, 0x1

    :goto_0
    add-int/2addr v3, v9

    .line 1036
    mul-int/lit8 v9, v3, 0x7

    sub-int/2addr v9, v2

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    .line 1040
    .end local v2    # "headerBits":I
    .end local v6    # "udh":[B
    :goto_1
    if-eqz p2, :cond_2

    .line 1046
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    array-length v9, v9

    sub-int v0, v9, v4

    .line 1058
    .local v0, "bufferLen":I
    :cond_0
    :goto_2
    new-array v9, v0, [B

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    .line 1059
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    array-length v12, v12

    invoke-static {v9, v4, v11, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1060
    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 1062
    if-eqz p2, :cond_5

    .line 1064
    sub-int v1, v8, v3

    .line 1066
    .local v1, "count":I
    if-gez v1, :cond_4

    .line 1074
    .end local v1    # "count":I
    .end local v8    # "userDataLength":I
    :goto_3
    return v10

    .end local v0    # "bufferLen":I
    .restart local v2    # "headerBits":I
    .restart local v6    # "udh":[B
    .restart local v8    # "userDataLength":I
    :cond_1
    move v9, v10

    .line 1035
    goto :goto_0

    .line 1052
    .end local v2    # "headerBits":I
    .end local v6    # "udh":[B
    :cond_2
    if-eqz p1, :cond_3

    add-int/lit8 v9, v7, 0x1

    :goto_4
    sub-int v0, v8, v9

    .line 1053
    .restart local v0    # "bufferLen":I
    if-gez v0, :cond_0

    .line 1054
    const/4 v0, 0x0

    goto :goto_2

    .end local v0    # "bufferLen":I
    :cond_3
    move v9, v10

    .line 1052
    goto :goto_4

    .restart local v0    # "bufferLen":I
    .restart local v1    # "count":I
    :cond_4
    move v10, v1

    .line 1066
    goto :goto_3

    .line 1074
    .end local v1    # "count":I
    :cond_5
    if-eqz p1, :cond_6

    sub-int v9, v8, v7

    add-int/lit8 v8, v9, -0x1

    .end local v8    # "userDataLength":I
    :cond_6
    move v10, v8

    goto :goto_3

    .end local v0    # "bufferLen":I
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    .restart local v8    # "userDataLength":I
    :cond_7
    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_1
.end method

.method getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    .locals 6

    .prologue
    .line 954
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v4, v4, v5

    and-int/lit16 v0, v4, 0xff

    .line 955
    .local v0, "addressLength":I
    add-int/lit8 v4, v0, 0x1

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v2, v4, 0x2

    .line 958
    .local v2, "lengthBytes":I
    :try_start_0
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;-><init>([BII)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    .local v3, "ret":Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 967
    return-object v3

    .line 959
    .end local v3    # "ret":Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    :catch_0
    move-exception v1

    .line 960
    .local v1, "e":Ljava/text/ParseException;
    const/4 v3, 0x0

    .line 962
    .restart local v3    # "ret":Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method getByte()I
    .locals 3

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method getSCAddress()Ljava/lang/String;
    .locals 5

    .prologue
    .line 912
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 914
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 916
    const/4 v1, 0x0

    .line 931
    .local v1, "ret":Ljava/lang/String;
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 933
    return-object v1

    .line 920
    .end local v1    # "ret":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    invoke-static {v3, v4, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 923
    .restart local v1    # "ret":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->scToa:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 925
    .end local v1    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 926
    .local v2, "tr":Ljava/lang/RuntimeException;
    const-string v3, "SmsMessage"

    const-string v4, "invalid SC address: "

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 927
    const/4 v1, 0x0

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method getSCTimestampMillis()J
    .locals 13

    .prologue
    .line 977
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v8

    .line 978
    .local v8, "year":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v3

    .line 979
    .local v3, "month":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v0

    .line 980
    .local v0, "day":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v1

    .line 981
    .local v1, "hour":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v2

    .line 982
    .local v2, "minute":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v4

    .line 989
    .local v4, "second":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v7, v9, v10

    .line 992
    .local v7, "tzByte":B
    and-int/lit8 v9, v7, -0x9

    int-to-byte v9, v9

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v6

    .line 994
    .local v6, "timezoneOffset":I
    and-int/lit8 v9, v7, 0x8

    if-nez v9, :cond_0

    .line 996
    :goto_0
    new-instance v5, Landroid/text/format/Time;

    const-string v9, "UTC"

    invoke-direct {v5, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 999
    .local v5, "time":Landroid/text/format/Time;
    const/16 v9, 0x5a

    if-lt v8, v9, :cond_1

    add-int/lit16 v9, v8, 0x76c

    :goto_1
    iput v9, v5, Landroid/text/format/Time;->year:I

    .line 1000
    add-int/lit8 v9, v3, -0x1

    iput v9, v5, Landroid/text/format/Time;->month:I

    .line 1001
    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 1002
    iput v1, v5, Landroid/text/format/Time;->hour:I

    .line 1003
    iput v2, v5, Landroid/text/format/Time;->minute:I

    .line 1004
    iput v4, v5, Landroid/text/format/Time;->second:I

    .line 1007
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    mul-int/lit8 v11, v6, 0xf

    mul-int/lit8 v11, v11, 0x3c

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    sub-long/2addr v9, v11

    return-wide v9

    .line 994
    .end local v5    # "time":Landroid/text/format/Time;
    :cond_0
    neg-int v6, v6

    goto :goto_0

    .line 999
    .restart local v5    # "time":Landroid/text/format/Time;
    :cond_1
    add-int/lit16 v9, v8, 0x7d0

    goto :goto_1
.end method

.method getUserData()[B
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    return-object v0
.end method

.method getUserDataGSM7Bit(I)Ljava/lang/String;
    .locals 1
    .param p1, "septetCount"    # I

    .prologue
    const/4 v0, -0x1

    .line 1145
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getUserDataGSM7Bit(III)Ljava/lang/String;
    .locals 7
    .param p1, "septetCount"    # I
    .param p2, "languageTable"    # I
    .param p3, "languageShiftTable"    # I

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    move v2, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v6

    .line 1128
    .local v6, "ret":Ljava/lang/String;
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    mul-int/lit8 v1, p1, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 1130
    return-object v6
.end method

.method getUserDataGSM8Bit(I)Ljava/lang/String;
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .locals 1

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method getUserDataKSC5601(I)Ljava/lang/String;
    .locals 5
    .param p1, "byteCount"    # I

    .prologue
    .line 1191
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    const-string v4, "KSC5601"

    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1197
    .local v1, "ret":Ljava/lang/String;
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 1198
    return-object v1

    .line 1192
    .end local v1    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1193
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 1194
    .restart local v1    # "ret":Ljava/lang/String;
    const-string v2, "SmsMessage"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getUserDataSeptetPadding()I
    .locals 1

    .prologue
    .line 1097
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    return v0
.end method

.method getUserDataUCS2(I)Ljava/lang/String;
    .locals 6
    .param p1, "byteCount"    # I

    .prologue
    .line 1162
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiEmoji()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1165
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    const-string v5, "utf-16"

    invoke-direct {v2, v3, v4, p1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v2}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiReplaceKddiUcs2WithStandardEmoji(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1176
    .local v1, "ret":Ljava/lang/String;
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 1177
    return-object v1

    .line 1169
    .end local v1    # "ret":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    const-string v4, "utf-16"

    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 1171
    .end local v1    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1172
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 1173
    .restart local v1    # "ret":Ljava/lang/String;
    const-string v2, "SmsMessage"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method moreDataPresent()Z
    .locals 2

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setDataCodingScheme(I)V
    .locals 0
    .param p1, "dcs"    # I

    .prologue
    .line 1203
    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->dataCodingScheme:I

    .line 1204
    return-void
.end method
