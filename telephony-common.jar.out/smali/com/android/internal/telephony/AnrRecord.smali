.class public Lcom/android/internal/telephony/AnrRecord;
.super Ljava/lang/Object;
.source "AnrRecord.java"


# static fields
.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_ANR_NUMBER_LENGTH:I = 0xa

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final SDBG:Z


# instance fields
.field public mAdnRecordNumber:I

.field public mAdnSFI:I

.field public mAnrId:I

.field public mClearExt1Record:Z

.field public mExtRecord:I

.field public mNumber:Ljava/lang/String;

.field public mRecordNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 78
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "adnSFI"    # I
    .param p2, "recordNumber"    # I
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 105
    iput p1, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 106
    iput p2, p0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    .line 107
    iput-object p3, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "recordNumber"    # I
    .param p2, "record"    # [B

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 90
    iput p1, p0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    .line 91
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/AnrRecord;->parseRecord([B)V

    .line 92
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 1
    .param p1, "recordNumber"    # I
    .param p2, "record"    # [B
    .param p3, "isIAP"    # Z

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 97
    iput p1, p0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/AnrRecord;->parseRecord(I[BZ)V

    .line 99
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "record"    # [B

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/AnrRecord;-><init>(I[B)V

    .line 85
    return-void
.end method

.method private parseRecord(I[BZ)V
    .locals 5
    .param p1, "recordNumber"    # I
    .param p2, "record"    # [B
    .param p3, "AnrPresentInIAP"    # Z

    .prologue
    .line 462
    const-string v2, "GSM"

    const-string v3, "parseRecord()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v1, 0x0

    .line 466
    .local v1, "offset":I
    aget-byte v2, p2, v1

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    .line 469
    const/4 v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v0, v2, 0xff

    .line 472
    .local v0, "numberLength":I
    const/4 v2, 0x2

    invoke-static {p2, v2, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 475
    const/16 v2, 0xe

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 477
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mExtRecord = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    if-eqz p3, :cond_1

    .line 481
    array-length v2, p2

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 483
    const/16 v2, 0xf

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 485
    const/16 v2, 0x10

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    iput p1, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    goto :goto_0
.end method

.method private parseRecord([B)V
    .locals 3
    .param p1, "record"    # [B

    .prologue
    .line 507
    const/4 v1, 0x0

    .line 508
    .local v1, "offset":I
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    .line 511
    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v0, v2, 0xff

    .line 514
    .local v0, "numberLength":I
    const/4 v2, 0x2

    invoke-static {p1, v2, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 517
    const/16 v2, 0xe

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 520
    const/16 v2, 0xf

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 523
    const/16 v2, 0x10

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    .line 533
    return-void
.end method


# virtual methods
.method public appendExtNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public appendExtRecord([B)V
    .locals 4
    .param p1, "extRecord"    # [B

    .prologue
    const/4 v3, 0x2

    .line 126
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 136
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAnrString(Ljava/util/ArrayList;I)[B
    .locals 13
    .param p2, "recordSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/HtcExt1Record;",
            ">;I)[B"
        }
    .end annotation

    .prologue
    .local p1, "ext1List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/HtcExt1Record;>;"
    const/4 v8, 0x0

    const/4 v12, 0x0

    const/16 v11, 0xff

    const/4 v10, 0x1

    .line 178
    new-array v6, p2, [B

    .line 181
    .local v6, "recordString":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_0

    .line 182
    const/4 v7, -0x1

    aput-byte v7, v6, v3

    .line 181
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 186
    :cond_0
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    if-lez v7, :cond_d

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    if-ge v7, v11, :cond_d

    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_d

    .line 189
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v12

    .line 191
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    const-string v9, "+"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v5, 0x15

    .line 195
    .local v5, "maxAnrNumberLength":I
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v5, :cond_6

    .line 197
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 199
    .local v0, "bcdNumber":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/AnrRecord;->hasExtendedRecord()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 201
    if-eqz p1, :cond_1

    .line 202
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v7, :cond_1

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v7, v8, :cond_1

    .line 203
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->clear()V

    .line 204
    iput-boolean v10, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 258
    :cond_1
    :goto_2
    array-length v7, v0

    int-to-byte v7, v7

    aput-byte v7, v6, v10

    .line 261
    const/4 v7, 0x2

    array-length v8, v0

    invoke-static {v0, v12, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    iget-boolean v7, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    if-eq v7, v10, :cond_2

    .line 265
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v7, :cond_2

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-ge v7, v11, :cond_2

    .line 267
    const/16 v7, 0xe

    iget v8, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 273
    :cond_2
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    if-lez v7, :cond_3

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    if-ge v7, v11, :cond_3

    .line 275
    const/16 v7, 0xf

    iget v8, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 279
    :cond_3
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    if-lez v7, :cond_4

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    if-ge v7, v11, :cond_4

    .line 281
    const/16 v7, 0x10

    iget v8, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 299
    .end local v0    # "bcdNumber":[B
    .end local v5    # "maxAnrNumberLength":I
    .end local v6    # "recordString":[B
    :cond_4
    :goto_3
    return-object v6

    .line 191
    .restart local v6    # "recordString":[B
    :cond_5
    const/16 v5, 0x14

    goto :goto_1

    .line 211
    .restart local v5    # "maxAnrNumberLength":I
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v7, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 214
    .restart local v0    # "bcdNumber":[B
    if-eqz p1, :cond_c

    .line 215
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "ext1SubString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/AnrRecord;->hasExtendedRecord()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 217
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v7, :cond_1

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v7, v8, :cond_1

    .line 219
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    .line 220
    .local v1, "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->buildExt1Record(Ljava/lang/String;)V

    goto :goto_2

    .line 225
    .end local v1    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    :cond_7
    const/4 v1, 0x0

    .line 227
    .restart local v1    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportSIMPhonebookbyIccIO()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 228
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_8

    .line 229
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 230
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    check-cast v1, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    .line 231
    .restart local v1    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->buildExt1Record(Ljava/lang/String;)V

    .line 232
    iget v7, v1, Lcom/android/internal/telephony/uicc/HtcExt1Record;->mRecId:I

    iput v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 248
    :cond_8
    :goto_5
    if-nez v1, :cond_1

    move-object v6, v8

    .line 249
    goto :goto_3

    .line 228
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 237
    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .line 238
    .local v4, "j":I
    move v3, v4

    :goto_6
    if-ltz v3, :cond_8

    .line 239
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 240
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    check-cast v1, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    .line 241
    .restart local v1    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->buildExt1Record(Ljava/lang/String;)V

    .line 242
    iget v7, v1, Lcom/android/internal/telephony/uicc/HtcExt1Record;->mRecId:I

    iput v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    goto :goto_5

    .line 238
    :cond_b
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .end local v1    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    .end local v2    # "ext1SubString":Ljava/lang/String;
    .end local v4    # "j":I
    :cond_c
    move-object v6, v8

    .line 253
    goto/16 :goto_3

    .line 288
    .end local v0    # "bcdNumber":[B
    .end local v5    # "maxAnrNumberLength":I
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/AnrRecord;->hasExtendedRecord()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 290
    if-eqz p1, :cond_4

    .line 291
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v7, :cond_4

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v7, v8, :cond_4

    .line 292
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->clear()V

    .line 293
    iput-boolean v10, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    goto/16 :goto_3
.end method

.method public buildAnrString(Ljava/util/ArrayList;IZ)[B
    .locals 10
    .param p2, "recordSize"    # I
    .param p3, "AnrPresentInIAP"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/HtcExt1Record;",
            ">;IZ)[B"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "ext1List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/HtcExt1Record;>;"
    const-string v7, "GSM"

    const-string v8, "buildAnrString()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-array v6, p2, [B

    .line 314
    .local v6, "recordString":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_0

    .line 315
    const/4 v7, -0x1

    aput-byte v7, v6, v3

    .line 314
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 318
    :cond_0
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    if-lez v7, :cond_d

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    const/16 v8, 0xff

    if-ge v7, v8, :cond_d

    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_d

    .line 321
    const/4 v7, 0x0

    iget v8, p0, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 323
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v5, 0x15

    .line 327
    .local v5, "maxAnrNumberLength":I
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v5, :cond_6

    .line 329
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 331
    .local v0, "bcdNumber":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/AnrRecord;->hasExtendedRecord()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 333
    if-eqz p1, :cond_1

    .line 334
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mExtRecord_1 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v7, :cond_1

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v7, v8, :cond_1

    .line 336
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->clear()V

    .line 337
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 394
    :cond_1
    :goto_2
    const/4 v7, 0x1

    array-length v8, v0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 397
    const/4 v7, 0x0

    const/4 v8, 0x2

    array-length v9, v0

    invoke-static {v0, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    iget-boolean v7, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    .line 400
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v7, :cond_2

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    const/16 v8, 0xff

    if-ge v7, v8, :cond_2

    .line 402
    const/16 v7, 0xe

    iget v8, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 403
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "recordString[14] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xe

    aget-byte v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_2
    const/4 v7, 0x1

    if-ne p3, v7, :cond_4

    const/16 v7, 0x11

    if-lt p2, v7, :cond_4

    .line 410
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    if-lez v7, :cond_3

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    const/16 v8, 0xff

    if-ge v7, v8, :cond_3

    .line 412
    const/16 v7, 0xf

    iget v8, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 416
    :cond_3
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    if-lez v7, :cond_4

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    const/16 v8, 0xff

    if-ge v7, v8, :cond_4

    .line 418
    const/16 v7, 0x10

    iget v8, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 439
    .end local v0    # "bcdNumber":[B
    .end local v5    # "maxAnrNumberLength":I
    .end local v6    # "recordString":[B
    :cond_4
    :goto_3
    return-object v6

    .line 323
    .restart local v6    # "recordString":[B
    :cond_5
    const/16 v5, 0x14

    goto/16 :goto_1

    .line 344
    .restart local v5    # "maxAnrNumberLength":I
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 347
    .restart local v0    # "bcdNumber":[B
    if-eqz p1, :cond_c

    .line 348
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "ext1SubString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/AnrRecord;->hasExtendedRecord()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 350
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mExtRecord_2 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v7, :cond_1

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v7, v8, :cond_1

    .line 353
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    .line 354
    .local v1, "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->buildExt1Record(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 359
    .end local v1    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    :cond_7
    const/4 v1, 0x0

    .line 361
    .restart local v1    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportSIMPhonebookbyIccIO()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 362
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_8

    .line 363
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 364
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    check-cast v1, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    .line 365
    .restart local v1    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->buildExt1Record(Ljava/lang/String;)V

    .line 366
    iget v7, v1, Lcom/android/internal/telephony/uicc/HtcExt1Record;->mRecId:I

    iput v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 383
    :cond_8
    :goto_5
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mExtRecord_3 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    if-nez v1, :cond_1

    .line 385
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 362
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 371
    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .line 372
    .local v4, "j":I
    move v3, v4

    :goto_6
    if-ltz v3, :cond_8

    .line 373
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 374
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    check-cast v1, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    .line 375
    .restart local v1    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->buildExt1Record(Ljava/lang/String;)V

    .line 376
    iget v7, v1, Lcom/android/internal/telephony/uicc/HtcExt1Record;->mRecId:I

    iput v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    goto :goto_5

    .line 372
    :cond_b
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 389
    .end local v1    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    .end local v2    # "ext1SubString":Ljava/lang/String;
    .end local v4    # "j":I
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 426
    .end local v0    # "bcdNumber":[B
    .end local v5    # "maxAnrNumberLength":I
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/AnrRecord;->hasExtendedRecord()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 428
    if-eqz p1, :cond_4

    .line 429
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v7, :cond_4

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v7, v8, :cond_4

    .line 430
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mExtRecord_4 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->clear()V

    .line 433
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    goto/16 :goto_3
.end method

.method public clear()V
    .locals 1

    .prologue
    const/16 v0, 0xff

    .line 166
    iput v0, p0, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    .line 167
    iput v0, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    .line 168
    iput v0, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 169
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    const/4 v0, 0x1

    .line 449
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
