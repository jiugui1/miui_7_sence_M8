.class public final Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;
.super Landroid/os/Handler;
.source "HtcIccPbkEntryCache_QMI.java"

# interfaces
.implements Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field private static final ADN_ALPHA_TAG_LENGTH:I = 0x0

.field private static final ADN_NUMBER_LENGTH:I = 0x1

.field private static final ADN_RECORDS_CAPACITY:I = 0x2

.field private static final ANR_ENTRIES_PER_PBK:I = 0x3

.field static final ANR_ENTRY_INDEX_1:I = 0x0

.field static final ANR_ENTRY_INDEX_2:I = 0x1

.field static final DBG:Z

.field private static final EMAIL_ENTRIES_PER_PBK:I = 0x4

.field static final ERROR_ADN_FULL:I = 0x10

.field static final ERROR_ANR1_FULL:I = 0x2

.field static final ERROR_ANR2_FULL:I = 0x4

.field static final ERROR_EMAIL_FULL:I = 0x1

.field static final ERROR_NONE:I = 0x0

.field static final ERROR_UNKNOWN:I = 0x8

.field private static final EVENT_ADD_PB_ENTRY_DONE:I = 0x4

.field private static final EVENT_DELETE_PB_ENTRY_DONE:I = 0x6

.field private static final EVENT_GET_PB_LENGTH_DONE:I = 0x1

.field private static final EVENT_GET_PB_USED_NUM_DONE:I = 0x2

.field private static final EVENT_LOAD_PB_ADN_DONE:I = 0x9

.field private static final EVENT_LOAD_PB_ANR_DONE:I = 0xd

.field private static final EVENT_LOAD_PB_CC_DONE:I = 0x16

.field private static final EVENT_LOAD_PB_EMAIL_DONE:I = 0xc

.field private static final EVENT_LOAD_PB_ENTRIES_DONE:I = 0x3

.field private static final EVENT_LOAD_PB_EXT1_DONE:I = 0x8

.field private static final EVENT_LOAD_PB_IAP_DONE:I = 0xb

.field private static final EVENT_LOAD_PB_PBR_DONE:I = 0x7

.field private static final EVENT_LOAD_PB_PSC_DONE:I = 0x14

.field private static final EVENT_LOAD_PB_PUID_DONE:I = 0x18

.field private static final EVENT_LOAD_PB_UID_DONE:I = 0xa

.field private static final EVENT_UPDATE_ANR_DONE:I = 0x12

.field private static final EVENT_UPDATE_ANR_EXT1_DONE:I = 0x13

.field private static final EVENT_UPDATE_EMAIL_DONE:I = 0x11

.field private static final EVENT_UPDATE_EXT1_DONE:I = 0xf

.field private static final EVENT_UPDATE_IAP_DONE:I = 0x10

.field private static final EVENT_UPDATE_PB_CC_DONE:I = 0x17

.field private static final EVENT_UPDATE_PB_ENTRY_DONE:I = 0x5

.field private static final EVENT_UPDATE_PB_PSC_DONE:I = 0x15

.field private static final EVENT_UPDATE_PB_PUID_DONE:I = 0x19

.field private static final EVENT_UPDATE_PB_UID_DONE:I = 0xe

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final IAP_ENTRY_ANR_1_INDEX:I = 0x0

.field static final IAP_ENTRY_ANR_2_INDEX:I = 0x1

.field static final IAP_ENTRY_EMAIL_INDEX:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "HtcIccPbkEntryCache_QMI"

.field static final MAX_INT_VALUE:J = 0xffffffffL

.field static final MAX_NUM_ANR_PER_PBK_ENTRY:I = 0x2

.field static final MAX_SHORT_VALUE:I = 0xffff

.field private static final QUERY_SIM_CONTACT_FILE_TIMESTAMP:Ljava/lang/String; = "query_sim_contact_file_timestamp"

.field static final SDBG:Z


# instance fields
.field m2GPhonebook:Z

.field mADNRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/HtcAdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mANR_swap:Z

.field mAnrFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mAnrRecordLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AnrRecord;",
            ">;>;>;"
        }
    .end annotation
.end field

.field mChangeCounter:I

.field mDropSIMTimeStamp:J

.field mEmailFileList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mEmailRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/EmailRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mExt1RecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/HtcExt1Record;",
            ">;"
        }
    .end annotation
.end field

.field mIAPRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IAPRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mIap_Updatedata:[B

.field mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field mMsgNumber:I

.field mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

.field mPSC:J

.field mPUID:I

.field mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mRecordNums:I

.field mSimPbkEntryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/PhoneBookEntry;",
            ">;"
        }
    .end annotation
.end field

.field mSimPbkWaiters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field mSupportAnr:[Z

.field mSupportCC:Z

.field mSupportEmail:Z

.field mSupportPSC:Z

.field mSupportPUID:Z

.field private mTotal:I

.field mUIDRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/UIDRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUsed:I

.field mUserWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field misloading:Z

.field pollingContext:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 286
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    .line 240
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    .line 242
    iput v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    .line 244
    iput v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    .line 252
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    .line 254
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->misloading:Z

    .line 258
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    .line 260
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    .line 262
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    .line 267
    iput v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 269
    iput-wide v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 271
    iput v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 273
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    .line 275
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    .line 277
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    .line 281
    iput-wide v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    .line 287
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 288
    new-instance v0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    .line 289
    return-void
.end method

.method private addAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V
    .locals 8
    .param p1, "anrNumber"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/internal/telephony/PhoneBookEntry;
    .param p3, "anrEntryIndex"    # I

    .prologue
    const/4 v4, 0x1

    .line 2467
    const-string v0, "addAnrRecord()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 2468
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-lez v0, :cond_1

    .line 2469
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v0

    if-ne v0, v4, :cond_1

    .line 2470
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2472
    iget v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v7, v0, v1

    .line 2473
    .local v7, "num":I
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, v7, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v3

    .line 2474
    .local v3, "efid":I
    if-eqz v3, :cond_1

    .line 2476
    iget v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    iget v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v1, v7

    sub-int v6, v0, v1

    .line 2478
    .local v6, "adnRecordNumber":I
    const/4 v2, 0x0

    .line 2479
    .local v2, "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v0

    if-ne v0, v4, :cond_2

    .line 2480
    invoke-virtual {p0, v7, p3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;

    move-result-object v2

    .line 2481
    if-eqz v2, :cond_0

    .line 2482
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    iget v1, v2, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, p3

    .line 2506
    :cond_0
    :goto_0
    if-eqz v2, :cond_6

    .line 2507
    const/4 v0, 0x0

    iput v0, v2, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    .line 2508
    iput v6, v2, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    .line 2509
    iput-object p1, v2, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 2510
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v1, 0xc0

    invoke-virtual {v0, v7, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFSFI(II)I

    move-result v0

    iput v0, v2, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 2512
    iget v1, v2, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    const/16 v0, 0x12

    invoke-virtual {p0, v0, v7, p3, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateAnrByIndex(ILcom/android/internal/telephony/AnrRecord;IILandroid/os/Message;)V

    .line 2526
    .end local v2    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    .end local v3    # "efid":I
    .end local v6    # "adnRecordNumber":I
    .end local v7    # "num":I
    :cond_1
    :goto_1
    return-void

    .line 2486
    .restart local v2    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    .restart local v3    # "efid":I
    .restart local v6    # "adnRecordNumber":I
    .restart local v7    # "num":I
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 2487
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_4

    .line 2489
    if-lez v6, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v6, v0, :cond_3

    .line 2492
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    check-cast v2, Lcom/android/internal/telephony/AnrRecord;

    .restart local v2    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    goto :goto_0

    .line 2495
    :cond_3
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "out of anr index = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2498
    :cond_4
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "anrindex out of mAnrRecordLists.get(num).size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2502
    :cond_5
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "num out of mAnrRecordLists.size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2520
    :cond_6
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "Can not find empty ANR record"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkFilesStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/PhoneBookEntry;)I
    .locals 7
    .param p1, "number1"    # Ljava/lang/String;
    .param p2, "number2"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "num"    # I
    .param p5, "entry"    # Lcom/android/internal/telephony/PhoneBookEntry;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 2192
    const/4 v2, 0x0

    .line 2193
    .local v2, "error":I
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    .line 2195
    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v5, v5, v3

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v5, v5, v6

    if-nez v5, :cond_0

    .line 2260
    :goto_0
    return v3

    .line 2200
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-nez v5, :cond_1

    move v3, v4

    .line 2201
    goto :goto_0

    .line 2204
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v5

    if-nez v5, :cond_2

    move v3, v4

    .line 2205
    goto :goto_0

    .line 2208
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2209
    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-ne v4, v6, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    if-ne v4, v6, :cond_3

    .line 2210
    iget v4, p5, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-nez v4, :cond_3

    .line 2211
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getFirstEmptyEmailRecord(I)Lcom/android/internal/telephony/EmailRecord;

    move-result-object v1

    .line 2212
    .local v1, "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    if-nez v1, :cond_3

    .line 2213
    add-int/lit8 v2, v2, 0x1

    .line 2219
    .end local v1    # "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2220
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v3

    if-ne v4, v6, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v4

    if-ne v4, v6, :cond_4

    .line 2222
    iget-object v4, p5, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v4, v4, v3

    if-nez v4, :cond_4

    .line 2223
    invoke-virtual {p0, p4, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;

    move-result-object v0

    .line 2224
    .local v0, "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    if-nez v0, :cond_4

    .line 2225
    add-int/lit8 v2, v2, 0x2

    .line 2231
    .end local v0    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2232
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v3, v3, v6

    if-ne v3, v6, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v3

    if-ne v3, v6, :cond_5

    .line 2234
    iget-object v3, p5, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v3, v3, v6

    if-nez v3, :cond_5

    .line 2235
    invoke-virtual {p0, p4, v6}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;

    move-result-object v0

    .line 2236
    .restart local v0    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    if-nez v0, :cond_5

    .line 2237
    add-int/lit8 v2, v2, 0x4

    .end local v0    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    :cond_5
    :goto_1
    move v3, v2

    .line 2260
    goto :goto_0

    .line 2242
    :cond_6
    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    .line 2243
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v3, v3, v6

    if-ne v3, v6, :cond_8

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v3

    if-ne v3, v6, :cond_8

    .line 2245
    iget-object v3, p5, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v3, v3, v6

    if-nez v3, :cond_9

    .line 2246
    invoke-virtual {p0, p4, v6}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;

    move-result-object v0

    .line 2247
    .restart local v0    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    if-eqz v0, :cond_8

    .line 2248
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    .line 2255
    .end local v0    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    :cond_8
    :goto_2
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    if-ne v3, v6, :cond_5

    .line 2256
    add-int/lit8 v2, v2, -0x2

    goto :goto_1

    .line 2251
    :cond_9
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    goto :goto_2
.end method

.method private checkNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "number1"    # Ljava/lang/String;
    .param p3, "number2"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x2b

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/16 v1, 0x8

    const/4 v3, 0x1

    .line 2157
    const/4 v0, 0x0

    .line 2159
    .local v0, "error":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2160
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 2187
    .end local v0    # "error":I
    :cond_0
    :goto_0
    return v0

    .line 2165
    .restart local v0    # "error":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v2, v2, v5

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v2, v2, v3

    if-ne v2, v3, :cond_4

    .line 2166
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-nez v2, :cond_3

    move v0, v1

    .line 2167
    goto :goto_0

    .line 2170
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 2171
    goto :goto_0

    .line 2175
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v2, v2, v5

    if-ne v2, v3, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2176
    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_5

    move v0, v1

    .line 2177
    goto :goto_0

    .line 2181
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v2, v2, v5

    if-ne v2, v3, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2182
    invoke-virtual {p3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 2183
    goto :goto_0
.end method

.method private getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    .prologue
    .line 3328
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v0, :cond_0

    .line 3329
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 3331
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    goto :goto_0
.end method

.method private getPbkEntryListIfLoaded()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/PhoneBookEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private handleExt1loaded(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1527
    const-string v4, "handleExt1loaded"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1530
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1531
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    move-object v1, v4

    check-cast v1, Ljava/util/ArrayList;

    .line 1533
    .local v1, "ext1Data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1534
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1535
    .local v2, "ext1DataSize":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    .line 1536
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1537
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v6, v4}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->parseFromEf(I[B)Lcom/android/internal/telephony/uicc/HtcExt1Record;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1536
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1541
    .end local v2    # "ext1DataSize":I
    .end local v3    # "i":I
    :cond_0
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "Failed to load EF_EXT1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    :cond_1
    return-void
.end method

.method private handlePollPBResult(ILandroid/os/AsyncResult;)V
    .locals 5
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1547
    iget-object v3, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    if-eq v3, v4, :cond_1

    .line 1579
    :cond_0
    :goto_0
    return-void

    .line 1549
    :cond_1
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 1552
    const-string v3, "handlePollPBResult()"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1554
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 1555
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1557
    :pswitch_0
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 1559
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 1560
    .local v2, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/PhoneBookEntry;>;"
    if-eqz v2, :cond_0

    .line 1562
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePollPBResult() temp.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1565
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1566
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1568
    .local v0, "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePollPBResult() entry.index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1570
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 1571
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    iget v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1565
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1555
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private notifySimPbkWaiter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1515
    const-string v2, "notifySimPbkWaiter"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1517
    new-instance v0, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1518
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 1519
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1520
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.SIM_CONTACTS_READY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1521
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, -0x1

    invoke-static {v1, v3, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1524
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 7
    .param p2, "ar"    # Landroid/os/AsyncResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    const/4 v6, 0x0

    .line 2763
    if-nez p1, :cond_0

    .line 2778
    :goto_0
    return-void

    .line 2767
    :cond_0
    const-string v3, "HtcIccPbkEntryCache_QMI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyWaiters"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "s":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 2769
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 2770
    .local v2, "waiter":Landroid/os/Message;
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2772
    invoke-virtual {v2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2773
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2768
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2777
    .end local v2    # "waiter":Landroid/os/Message;
    :cond_2
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->misloading:Z

    goto :goto_0
.end method

.method private parserIAP(II[Z)V
    .locals 14
    .param p1, "num"    # I
    .param p2, "tag"    # I
    .param p3, "searchlist"    # [Z

    .prologue
    .line 3479
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parserIAP num:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " tag: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3480
    if-nez p3, :cond_1

    .line 3672
    :cond_0
    :goto_0
    return-void

    .line 3484
    :cond_1
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v12, :cond_0

    .line 3488
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    if-eqz v12, :cond_0

    .line 3492
    move-object/from16 v0, p3

    array-length v12, v0

    if-eqz v12, :cond_0

    .line 3496
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-le v12, p1, :cond_0

    .line 3500
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 3508
    :sswitch_0
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3517
    :cond_2
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move/from16 v0, p2

    invoke-virtual {v12, p1, v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v4

    .line 3518
    .local v4, "efid":I
    if-eqz v4, :cond_8

    .line 3519
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v12, p1, v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getIAPTagNumber(II)I

    move-result v10

    .line 3520
    .local v10, "position":I
    if-lez v10, :cond_8

    .line 3521
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 3522
    .local v11, "total":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v11, :cond_8

    .line 3523
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/IAPRecord;

    .line 3524
    .local v7, "iapRecord":Lcom/android/internal/telephony/IAPRecord;
    if-eqz v7, :cond_3

    .line 3525
    invoke-virtual {v7}, Lcom/android/internal/telephony/IAPRecord;->getBytes()[B

    move-result-object v3

    .line 3526
    .local v3, "data":[B
    if-eqz v3, :cond_3

    array-length v12, v3

    if-gt v10, v12, :cond_3

    .line 3527
    add-int/lit8 v12, v10, -0x1

    aget-byte v12, v3, v12

    and-int/lit16 v8, v12, 0xff

    .line 3528
    .local v8, "index":I
    const/16 v12, 0xff

    if-eq v8, v12, :cond_3

    .line 3529
    add-int/lit8 v8, v8, -0x1

    .line 3530
    if-ltz v8, :cond_3

    move-object/from16 v0, p3

    array-length v12, v0

    if-ge v8, v12, :cond_3

    aget-boolean v12, p3, v8

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 3532
    sparse-switch p2, :sswitch_data_1

    .line 3522
    .end local v3    # "data":[B
    .end local v8    # "index":I
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3502
    .end local v4    # "efid":I
    .end local v6    # "i":I
    .end local v7    # "iapRecord":Lcom/android/internal/telephony/IAPRecord;
    .end local v10    # "position":I
    .end local v11    # "total":I
    :sswitch_1
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v12

    if-nez v12, :cond_2

    goto/16 :goto_0

    .line 3534
    .restart local v3    # "data":[B
    .restart local v4    # "efid":I
    .restart local v6    # "i":I
    .restart local v7    # "iapRecord":Lcom/android/internal/telephony/IAPRecord;
    .restart local v8    # "index":I
    .restart local v10    # "position":I
    .restart local v11    # "total":I
    :sswitch_2
    const/4 v5, 0x0

    .line 3535
    .local v5, "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge p1, v12, :cond_4

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v8, v12, :cond_4

    .line 3538
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    check-cast v5, Lcom/android/internal/telephony/EmailRecord;

    .line 3541
    .restart local v5    # "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    :cond_4
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/internal/telephony/EmailRecord;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    .line 3543
    iget v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v12, p1

    add-int v1, v12, v6

    .line 3544
    .local v1, "adnRecNum":I
    if-ltz v1, :cond_3

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_3

    .line 3546
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 3548
    .local v9, "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v9, :cond_3

    .line 3549
    const/4 v12, 0x0

    aput-boolean v12, p3, v8

    .line 3550
    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBookEntry;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 3551
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pbkEntry.index = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3554
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "emailEntry.index = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v5, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3557
    const-string v12, "Becasue the corresponding pbkEntry entry is empty, clear email entry."

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3558
    invoke-virtual {v5}, Lcom/android/internal/telephony/EmailRecord;->clear()V

    goto/16 :goto_2

    .line 3561
    :cond_5
    iget v12, v5, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    iput v12, v9, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    .line 3562
    iget-object v12, v5, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    iput-object v12, v9, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 3563
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pbkEntry.index = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3566
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pbkEntry.indexEmail = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3569
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pbkEntry.email = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3578
    .end local v1    # "adnRecNum":I
    .end local v5    # "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    .end local v9    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    :sswitch_3
    const/4 v2, 0x0

    .line 3581
    .local v2, "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    if-eqz v12, :cond_6

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge p1, v12, :cond_6

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move/from16 v0, p2

    if-ge v0, v12, :cond_6

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v8, v12, :cond_6

    .line 3586
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    check-cast v2, Lcom/android/internal/telephony/AnrRecord;

    .line 3590
    .restart local v2    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    :cond_6
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/AnrRecord;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    .line 3591
    iget v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v12, p1

    add-int v1, v12, v6

    .line 3592
    .restart local v1    # "adnRecNum":I
    if-ltz v1, :cond_3

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_3

    .line 3594
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 3596
    .restart local v9    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v9, :cond_3

    .line 3597
    const/4 v12, 0x0

    aput-boolean v12, p3, v8

    .line 3598
    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBookEntry;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 3599
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pbkEntry.index = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3602
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ANREntry.index = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v2, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3605
    const-string v12, "Becasue the corresponding pbkEntry entry is empty, clear ANR entry."

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3606
    invoke-virtual {v2}, Lcom/android/internal/telephony/AnrRecord;->clear()V

    goto/16 :goto_2

    .line 3609
    :cond_7
    iget-object v12, v9, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    iget v13, v2, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    aput v13, v12, p2

    .line 3610
    iget-object v12, v9, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    iget-object v13, v2, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    aput-object v13, v12, p2

    .line 3611
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pbkEntry.index = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3614
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pbkEntry.adnumber["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v2, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3619
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pbkEntry.anr = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v2, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3636
    .end local v1    # "adnRecNum":I
    .end local v2    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    .end local v3    # "data":[B
    .end local v6    # "i":I
    .end local v7    # "iapRecord":Lcom/android/internal/telephony/IAPRecord;
    .end local v8    # "index":I
    .end local v9    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v10    # "position":I
    .end local v11    # "total":I
    :cond_8
    sparse-switch p2, :sswitch_data_2

    goto/16 :goto_0

    .line 3654
    :sswitch_4
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    move-object/from16 v0, p3

    array-length v12, v0

    if-ge v6, v12, :cond_0

    .line 3655
    aget-boolean v12, p3, v6

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    .line 3656
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    if-eqz v12, :cond_9

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge p1, v12, :cond_9

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move/from16 v0, p2

    if-ge v0, v12, :cond_9

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gt v6, v12, :cond_9

    .line 3660
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/AnrRecord;

    .line 3661
    .restart local v2    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    if-eqz v2, :cond_9

    .line 3662
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can not find the corresponding pbkEntry entry, clear ANR entry num: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "index: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3664
    invoke-virtual {v2}, Lcom/android/internal/telephony/AnrRecord;->clear()V

    .line 3654
    .end local v2    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3638
    .end local v6    # "i":I
    :sswitch_5
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    move-object/from16 v0, p3

    array-length v12, v0

    if-ge v6, v12, :cond_0

    .line 3639
    aget-boolean v12, p3, v6

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    .line 3640
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    if-eqz v12, :cond_a

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge p1, v12, :cond_a

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gt v6, v12, :cond_a

    .line 3642
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/EmailRecord;

    .line 3643
    .restart local v5    # "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    if-eqz v5, :cond_a

    .line 3644
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can not find the corresponding pbkEntry entry, clear email entry num: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "index: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3646
    invoke-virtual {v5}, Lcom/android/internal/telephony/EmailRecord;->clear()V

    .line 3638
    .end local v5    # "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 3500
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0xca -> :sswitch_1
    .end sparse-switch

    .line 3532
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_3
        0xca -> :sswitch_2
    .end sparse-switch

    .line 3636
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_4
        0xca -> :sswitch_5
    .end sparse-switch
.end method

.method private pollPBList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1664
    const/4 v3, 0x1

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    .line 1665
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    aput v5, v3, v5

    .line 1667
    const/4 v2, 0x0

    .local v2, "start":I
    const/4 v0, 0x0

    .line 1669
    .local v0, "end":I
    const-string v3, "pollPBList()"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1671
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    if-ge v0, v3, :cond_2

    .line 1672
    add-int/lit8 v2, v0, 0x1

    .line 1673
    add-int/lit8 v0, v2, 0xa

    .line 1675
    iget v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    if-le v0, v3, :cond_0

    .line 1676
    iget v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 1678
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    aget v4, v3, v5

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v5

    .line 1679
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1681
    .local v1, "response":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v3, :cond_1

    .line 1682
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v2, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookEntries(IILandroid/os/Message;)V

    .line 1687
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1684
    :cond_1
    const-string v3, "mPhone is null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1689
    .end local v1    # "response":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private sLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2882
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    .line 2781
    if-nez p1, :cond_1

    .line 2792
    :cond_0
    :goto_0
    return-void

    .line 2785
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2786
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2788
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2789
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 2795
    if-nez p1, :cond_1

    .line 2805
    :cond_0
    :goto_0
    return-void

    .line 2799
    :cond_1
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2801
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2802
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private setLocalMemberToDefault()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3412
    iput v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    .line 3413
    iput v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 3414
    iput v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUsed:I

    .line 3415
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    .line 3416
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    .line 3417
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aput-boolean v2, v0, v2

    .line 3418
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aput-boolean v2, v0, v1

    .line 3419
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->misloading:Z

    .line 3420
    iput v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 3421
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 3422
    iput v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 3423
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    .line 3424
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    .line 3425
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    .line 3426
    return-void
.end method

.method private setSIMSystemProperties(II)V
    .locals 5
    .param p1, "tag"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3337
    const/4 v0, 0x0

    .line 3338
    .local v0, "propertyName":Ljava/lang/String;
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3339
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 3406
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 3407
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3409
    :cond_2
    return-void

    .line 3341
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 3342
    const-string v0, "gsm.sim.alpha-tag.length"

    goto :goto_0

    .line 3343
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 3344
    const-string v0, "gsm.sub.icc.alpha-tag.length"

    goto :goto_0

    .line 3345
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 3346
    const-string v0, "gsm.cdma.sim.alpha-tag.length"

    goto :goto_0

    .line 3350
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 3351
    const-string v0, "gsm.sim.number.length"

    goto :goto_0

    .line 3352
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 3353
    const-string v0, "gsm.sub.icc.number.length"

    goto :goto_0

    .line 3354
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 3355
    const-string v0, "gsm.cdma.sim.number.length"

    goto :goto_0

    .line 3359
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v2, :cond_7

    .line 3360
    const-string v0, "gsm.sim.adn.records.capacity"

    goto :goto_0

    .line 3361
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v4, :cond_8

    .line 3362
    const-string v0, "gsm.sub.adn.records.capacity"

    goto :goto_0

    .line 3363
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 3364
    const-string v0, "gsm.cdma.adn.records.capacity"

    goto :goto_0

    .line 3368
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v2, :cond_9

    .line 3369
    const-string v0, "gsm.sim.anr.max-no"

    goto :goto_0

    .line 3370
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v4, :cond_a

    .line 3371
    const-string v0, "gsm.sub.icc.anr.max-no"

    goto/16 :goto_0

    .line 3372
    :cond_a
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 3373
    const-string v0, "gsm.cdma.sim.anr.max-no"

    goto/16 :goto_0

    .line 3377
    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v2, :cond_b

    .line 3378
    const-string v0, "gsm.sim.email.max-no"

    goto/16 :goto_0

    .line 3379
    :cond_b
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v4, :cond_c

    .line 3380
    const-string v0, "gsm.sub.icc.email.max-no"

    goto/16 :goto_0

    .line 3381
    :cond_c
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 3382
    const-string v0, "gsm.cdma.sim.email.max-no"

    goto/16 :goto_0

    .line 3387
    :cond_d
    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 3389
    :pswitch_5
    const-string v0, "gsm.usim.alpha-tag.length"

    .line 3390
    goto/16 :goto_0

    .line 3392
    :pswitch_6
    const-string v0, "gsm.usim.number.length"

    .line 3393
    goto/16 :goto_0

    .line 3395
    :pswitch_7
    const-string v0, "gsm.adn.records.capacity"

    .line 3396
    goto/16 :goto_0

    .line 3398
    :pswitch_8
    const-string v0, "gsm.usim.anr.max-no"

    .line 3399
    goto/16 :goto_0

    .line 3401
    :pswitch_9
    const-string v0, "gsm.usim.email.max-no"

    goto/16 :goto_0

    .line 3339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 3387
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private setSIMSystemPropertiesToDefault()V
    .locals 2

    .prologue
    .line 3429
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3430
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3431
    const-string v0, "gsm.sim.alpha-tag.length"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3433
    const-string v0, "gsm.sim.number.length"

    const-string v1, "20"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3434
    const-string v0, "gsm.sim.adn.records.capacity"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3436
    const-string v0, "gsm.sim.anr.max-no"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3438
    const-string v0, "gsm.sim.email.max-no"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3440
    const-string v0, "gsm.sim.email.length"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3476
    :cond_1
    :goto_0
    return-void

    .line 3442
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 3443
    const-string v0, "gsm.sub.icc.alpha-tag.length"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3445
    const-string v0, "gsm.sub.icc.number.length"

    const-string v1, "20"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3447
    const-string v0, "gsm.sub.adn.records.capacity"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3449
    const-string v0, "gsm.sub.icc.anr.max-no"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3451
    const-string v0, "gsm.sub.icc.email.max-no"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3453
    const-string v0, "gsm.sub.icc.email.length"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3455
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3456
    const-string v0, "gsm.cdma.sim.alpha-tag.length"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3458
    const-string v0, "gsm.cdma.sim.number.length"

    const-string v1, "20"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3459
    const-string v0, "gsm.cdma.adn.records.capacity"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3461
    const-string v0, "gsm.cdma.sim.anr.max-no"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3463
    const-string v0, "gsm.cdma.sim.email.max-no"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3465
    const-string v0, "gsm.cdma.sim.email.length"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3469
    :cond_4
    const-string v0, "gsm.usim.alpha-tag.length"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3470
    const-string v0, "gsm.usim.number.length"

    const-string v1, "20"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3471
    const-string v0, "gsm.adn.records.capacity"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3472
    const-string v0, "gsm.usim.anr.max-no"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3473
    const-string v0, "gsm.usim.email.max-no"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3474
    const-string v0, "gsm.usim.email.length"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2141
    if-nez p0, :cond_0

    .line 2142
    const/4 v4, 0x0

    .line 2153
    :goto_0
    return-object v4

    .line 2144
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2145
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2147
    .local v3, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 2148
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2149
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator_FDN(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2150
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2147
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2153
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updateADNRecord(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "entry"    # Lcom/android/internal/telephony/PhoneBookEntry;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2636
    const/4 v2, 0x0

    .line 2637
    .local v2, "efid":I
    iget v5, p3, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v3, v5, v6

    .line 2638
    .local v3, "num":I
    iget v5, p3, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    iget v6, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v6, v3

    sub-int v1, v5, v6

    .line 2640
    .local v1, "adnRecordNumber":I
    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    if-nez v5, :cond_1

    .line 2641
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v5, :cond_0

    .line 2642
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 2643
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v6, 0xc0

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    .line 2650
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 2651
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 2652
    if-lez v1, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v1, v5, :cond_2

    .line 2653
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/HtcAdnRecord;

    .line 2654
    .local v0, "adnRecord":Lcom/android/internal/telephony/uicc/HtcAdnRecord;
    iput-object p1, v0, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    .line 2655
    iput-object p2, v0, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->number:Ljava/lang/String;

    .line 2658
    iget v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    rem-int/lit16 v5, v5, 0xff

    iput v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    .line 2659
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    iget v6, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    invoke-virtual {v5, v6, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2661
    const/4 v5, 0x5

    iget v6, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    invoke-virtual {p0, v5, v6, v3, v0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 2663
    .local v4, "res":Landroid/os/Message;
    iget v5, v0, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->recordNumber:I

    invoke-virtual {p0, v5, v0, v2, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateADNByIndex(ILcom/android/internal/telephony/uicc/HtcAdnRecord;ILandroid/os/Message;)V

    .line 2676
    .end local v0    # "adnRecord":Lcom/android/internal/telephony/uicc/HtcAdnRecord;
    .end local v4    # "res":Landroid/os/Message;
    :goto_1
    return-void

    .line 2647
    :cond_1
    const/16 v2, 0x6f3a

    goto :goto_0

    .line 2665
    :cond_2
    const-string v5, "HtcIccPbkEntryCache_QMI"

    const-string v6, "adnRecordNumber out of mADNRecordList.get(num).size()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    const-string v5, "error"

    invoke-direct {p0, p4, v5}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1

    .line 2669
    :cond_3
    const-string v5, "HtcIccPbkEntryCache_QMI"

    const-string v6, "num out of mADNRecordList.size()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    const-string v5, "error"

    invoke-direct {p0, p4, v5}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1

    .line 2673
    :cond_4
    const-string v5, "HtcIccPbkEntryCache_QMI"

    const-string v6, "The efid of ADN is 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    const-string v5, "error"

    invoke-direct {p0, p4, v5}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V
    .locals 11
    .param p1, "anrNumber"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/internal/telephony/PhoneBookEntry;
    .param p3, "anrEntryIndex"    # I

    .prologue
    const/16 v5, 0xff

    const/16 v4, 0x12

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAnrRecord()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 2531
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-lez v0, :cond_0

    .line 2532
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v0

    if-ne v0, v9, :cond_0

    .line 2533
    iget v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v8, v0, v1

    .line 2534
    .local v8, "num":I
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, v8, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v3

    .line 2535
    .local v3, "efid":I
    if-eqz v3, :cond_0

    .line 2537
    iget v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    iget v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v1, v8

    sub-int v6, v0, v1

    .line 2539
    .local v6, "adnRecordNumber":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v9, :cond_4

    .line 2541
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 2542
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 2543
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-eq v0, v5, :cond_0

    .line 2545
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-lez v0, :cond_1

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v0, p3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v1, v0, :cond_1

    .line 2548
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v1, p3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/AnrRecord;

    .line 2551
    .local v2, "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    invoke-virtual {v2}, Lcom/android/internal/telephony/AnrRecord;->clear()V

    .line 2552
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v0, p3

    invoke-virtual {p0, v4, v8, p3, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateAnrByIndex(ILcom/android/internal/telephony/AnrRecord;IILandroid/os/Message;)V

    .line 2559
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aput v10, v0, p3

    .line 2560
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p3

    .line 2562
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v0

    if-ne v0, v9, :cond_0

    .line 2563
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getIAPIndex(I)I

    move-result v7

    .line 2564
    .local v7, "index":I
    if-ltz v7, :cond_0

    .line 2565
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v1, -0x1

    aput-byte v1, v0, v7

    .line 2633
    .end local v2    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    .end local v3    # "efid":I
    .end local v6    # "adnRecordNumber":I
    .end local v7    # "index":I
    .end local v8    # "num":I
    :cond_0
    :goto_0
    return-void

    .line 2569
    .restart local v3    # "efid":I
    .restart local v6    # "adnRecordNumber":I
    .restart local v8    # "num":I
    :cond_1
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "out of anr index = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v4, v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2574
    :cond_2
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "anrEntryIndex out of mAnrRecordLists.get(num).size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2578
    :cond_3
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "num out of mAnrRecordLists.size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2584
    :cond_4
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-eqz v0, :cond_9

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-eq v0, v5, :cond_9

    .line 2587
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v0

    if-ne v0, v9, :cond_5

    .line 2588
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getIAPIndex(I)I

    move-result v7

    .line 2589
    .restart local v7    # "index":I
    if-ltz v7, :cond_5

    .line 2590
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    iget-object v1, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v1, p3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 2594
    .end local v7    # "index":I
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_8

    .line 2595
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_7

    .line 2596
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-lez v0, :cond_6

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v0, p3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v1, v0, :cond_6

    .line 2599
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v1, p3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/AnrRecord;

    .line 2601
    .restart local v2    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    iput v10, v2, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    .line 2602
    iput v6, v2, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    .line 2603
    iput-object p1, v2, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 2604
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v1, 0xc0

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFSFI(II)I

    move-result v0

    iput v0, v2, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 2606
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v0, p3

    invoke-virtual {p0, v4, v8, p3, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateAnrByIndex(ILcom/android/internal/telephony/AnrRecord;IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2614
    .end local v2    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    :cond_6
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "out of anr index = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v4, v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2618
    :cond_7
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "anrEntryIndex out of mAnrRecordLists.get(num).size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2622
    :cond_8
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "num out of mAnrRecordLists.size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2627
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->addAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    goto/16 :goto_0
.end method

.method private updateEmailRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;)V
    .locals 11
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/internal/telephony/PhoneBookEntry;

    .prologue
    const/16 v10, 0xc0

    const/16 v9, 0x11

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2264
    const-string v4, "updateEmailRecord()"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 2265
    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-ne v4, v6, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-lez v4, :cond_0

    .line 2266
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v4

    if-ne v4, v6, :cond_0

    .line 2267
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v3, v4, v5

    .line 2268
    .local v3, "num":I
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v5, 0xca

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v1

    .line 2269
    .local v1, "efid":I
    if-eqz v1, :cond_0

    .line 2270
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    iget v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v5, v3

    sub-int v0, v4, v5

    .line 2271
    .local v0, "adnRecordNumber":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2273
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 2274
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-eqz v4, :cond_0

    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    const/16 v5, 0xff

    if-eq v4, v5, :cond_0

    .line 2275
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-lez v4, :cond_1

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v5, v4, :cond_1

    .line 2277
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/EmailRecord;

    .line 2279
    .local v2, "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    invoke-virtual {v2}, Lcom/android/internal/telephony/EmailRecord;->clear()V

    .line 2280
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-virtual {p0, v9, v3, v7, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v2, v5}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateEmailByIndex(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V

    .line 2286
    iput v7, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    .line 2287
    const-string v4, ""

    iput-object v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 2289
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    if-ne v4, v6, :cond_0

    .line 2290
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v5, -0x1

    aput-byte v5, v4, v8

    .line 2366
    .end local v0    # "adnRecordNumber":I
    .end local v1    # "efid":I
    .end local v2    # "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    .end local v3    # "num":I
    :cond_0
    :goto_0
    return-void

    .line 2293
    .restart local v0    # "adnRecordNumber":I
    .restart local v1    # "efid":I
    .restart local v3    # "num":I
    :cond_1
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "out of e-mail index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2297
    :cond_2
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "num out of mEmailRecordList.size()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2300
    :cond_3
    const/4 v2, 0x0

    .line 2303
    .restart local v2    # "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-eqz v4, :cond_7

    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    const/16 v5, 0xff

    if-eq v4, v5, :cond_7

    .line 2304
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    if-ne v4, v6, :cond_4

    .line 2305
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v8

    .line 2307
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 2308
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-lez v4, :cond_5

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v5, v4, :cond_5

    .line 2310
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    check-cast v2, Lcom/android/internal/telephony/EmailRecord;

    .line 2312
    .restart local v2    # "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    iput v0, v2, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    .line 2313
    iput-object p1, v2, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 2314
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4, v3, v10}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFSFI(II)I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    .line 2317
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-virtual {p0, v9, v3, v7, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v2, v5}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateEmailByIndex(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2324
    :cond_5
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "out of e-mail index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2327
    :cond_6
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "num out of mEmailRecordList.size()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2332
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    if-ne v4, v6, :cond_9

    .line 2333
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getFirstEmptyEmailRecord(I)Lcom/android/internal/telephony/EmailRecord;

    move-result-object v2

    .line 2334
    if-eqz v2, :cond_8

    .line 2335
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    iget v5, v2, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v8

    .line 2351
    :cond_8
    :goto_1
    if-eqz v2, :cond_c

    .line 2352
    iput v0, v2, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    .line 2353
    iput-object p1, v2, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 2354
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4, v3, v10}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFSFI(II)I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    .line 2356
    iget v4, v2, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    invoke-virtual {p0, v9, v3, v7, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v2, v5}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateEmailByIndex(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2338
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 2339
    if-lez v0, :cond_a

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v0, v4, :cond_a

    .line 2341
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    check-cast v2, Lcom/android/internal/telephony/EmailRecord;

    .restart local v2    # "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    goto :goto_1

    .line 2344
    :cond_a
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "out of e-mail index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2347
    :cond_b
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "num out of mEmailRecordList.size()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2359
    :cond_c
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "Can not find empty email record"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateIAP(IZ)V
    .locals 15
    .param p1, "index"    # I
    .param p2, "clear"    # Z

    .prologue
    .line 2369
    const-string v11, "updateIAP()"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 2370
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_0

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_0

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 2374
    :cond_0
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v11, :cond_3

    iget v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-lez v11, :cond_3

    .line 2375
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 2376
    add-int/lit8 v11, p1, -0x1

    iget v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v7, v11, v12

    .line 2378
    .local v7, "num":I
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v12, 0xc1

    invoke-virtual {v11, v7, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v3

    .line 2380
    .local v3, "efid_iap":I
    if-eqz v3, :cond_9

    .line 2381
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_8

    .line 2382
    iget v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v11, v7

    sub-int v9, p1, v11

    .line 2384
    .local v9, "recordNumber":I
    if-lez v9, :cond_7

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gt v9, v11, :cond_7

    .line 2386
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    add-int/lit8 v12, v9, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/IAPRecord;

    .line 2388
    .local v5, "iapRecord":Lcom/android/internal/telephony/IAPRecord;
    iget-object v11, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    array-length v11, v11

    new-array v10, v11, [B

    .line 2390
    .local v10, "recordString":[B
    const/4 v1, 0x0

    .line 2391
    .local v1, "doUpdate":Z
    const/4 v11, 0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_4

    .line 2392
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v11, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    array-length v11, v11

    if-ge v4, v11, :cond_1

    .line 2393
    const/4 v11, -0x1

    aput-byte v11, v10, v4

    .line 2392
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2395
    :cond_1
    const/4 v1, 0x1

    .line 2439
    .end local v4    # "i":I
    :cond_2
    :goto_1
    const/4 v11, 0x1

    if-ne v1, v11, :cond_3

    .line 2440
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "num ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " doUpdate = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " iapRecord.mRecordNumber = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 2443
    const/4 v11, 0x0

    iget-object v12, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    const/4 v13, 0x0

    iget-object v14, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    array-length v14, v14

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2446
    const/16 v11, 0x10

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v7, v12, v5}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {p0, v9, v5, v3, v11}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateIAPByIndex(ILcom/android/internal/telephony/IAPRecord;ILandroid/os/Message;)V

    .line 2463
    .end local v1    # "doUpdate":Z
    .end local v3    # "efid_iap":I
    .end local v5    # "iapRecord":Lcom/android/internal/telephony/IAPRecord;
    .end local v7    # "num":I
    .end local v9    # "recordNumber":I
    .end local v10    # "recordString":[B
    :cond_3
    :goto_2
    return-void

    .line 2397
    .restart local v1    # "doUpdate":Z
    .restart local v3    # "efid_iap":I
    .restart local v5    # "iapRecord":Lcom/android/internal/telephony/IAPRecord;
    .restart local v7    # "num":I
    .restart local v9    # "recordNumber":I
    .restart local v10    # "recordString":[B
    :cond_4
    iget-object v11, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    array-length v14, v14

    invoke-static {v11, v12, v10, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2399
    iget-boolean v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 2401
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v12, 0xca

    invoke-virtual {v11, v7, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    .line 2403
    .local v2, "efid":I
    if-eqz v2, :cond_5

    .line 2404
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11, v7, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getIAPTagNumber(II)I

    move-result v8

    .line 2405
    .local v8, "position":I
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v12, 0x2

    aget-byte v11, v11, v12

    if-eqz v11, :cond_5

    if-lez v8, :cond_5

    .line 2407
    add-int/lit8 v11, v8, -0x1

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v13, 0x2

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 2408
    const/4 v1, 0x1

    .line 2413
    .end local v2    # "efid":I
    .end local v8    # "position":I
    :cond_5
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v12, 0x0

    aget-boolean v11, v11, v12

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 2415
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x0

    invoke-virtual {v11, v7, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    .line 2416
    .restart local v2    # "efid":I
    if-eqz v2, :cond_6

    .line 2417
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11, v7, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getIAPTagNumber(II)I

    move-result v8

    .line 2418
    .restart local v8    # "position":I
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getIAPIndex(I)I

    move-result v6

    .line 2419
    .local v6, "index_iap":I
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    aget-byte v11, v11, v6

    if-eqz v11, :cond_6

    if-lez v8, :cond_6

    .line 2420
    add-int/lit8 v11, v8, -0x1

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    aget-byte v12, v12, v6

    aput-byte v12, v10, v11

    .line 2421
    const/4 v1, 0x1

    .line 2426
    .end local v2    # "efid":I
    .end local v6    # "index_iap":I
    .end local v8    # "position":I
    :cond_6
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v12, 0x1

    aget-boolean v11, v11, v12

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 2428
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x1

    invoke-virtual {v11, v7, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    .line 2429
    .restart local v2    # "efid":I
    if-eqz v2, :cond_2

    .line 2430
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11, v7, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getIAPTagNumber(II)I

    move-result v8

    .line 2431
    .restart local v8    # "position":I
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getIAPIndex(I)I

    move-result v6

    .line 2432
    .restart local v6    # "index_iap":I
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    aget-byte v11, v11, v6

    if-eqz v11, :cond_2

    if-lez v8, :cond_2

    .line 2433
    add-int/lit8 v11, v8, -0x1

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    aget-byte v12, v12, v6

    aput-byte v12, v10, v11

    .line 2434
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 2450
    .end local v1    # "doUpdate":Z
    .end local v2    # "efid":I
    .end local v5    # "iapRecord":Lcom/android/internal/telephony/IAPRecord;
    .end local v6    # "index_iap":I
    .end local v8    # "position":I
    .end local v10    # "recordString":[B
    :cond_7
    const-string v11, "HtcIccPbkEntryCache_QMI"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "out of mIAPRecordList.get(num).size()"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2454
    .end local v9    # "recordNumber":I
    :cond_8
    const-string v11, "HtcIccPbkEntryCache_QMI"

    const-string v12, "num out of mIAPRecordList.size()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2457
    :cond_9
    const-string v11, "HtcIccPbkEntryCache_QMI"

    const-string v12, "no EF-IAP"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private updatePSCRecord(ZII)V
    .locals 12
    .param p1, "addpbk"    # Z
    .param p2, "num"    # I
    .param p3, "index"    # I

    .prologue
    .line 2036
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    .line 2038
    .local v3, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const/4 v7, 0x0

    .line 2039
    .local v7, "updatePSC":Z
    const/4 v5, 0x0

    .line 2040
    .local v5, "resetAllUID":Z
    iget-boolean v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 2041
    iget v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 2043
    iget v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    const v9, 0xffff

    if-le v8, v9, :cond_0

    .line 2044
    const/4 v7, 0x1

    .line 2045
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 2048
    :cond_0
    const/4 v8, 0x2

    new-array v0, v8, [B

    .line 2049
    .local v0, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v8, 0x2

    if-ge v2, v8, :cond_1

    .line 2050
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v2

    mul-int/lit8 v4, v8, 0x8

    .line 2051
    .local v4, "offset":I
    iget v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    ushr-int/2addr v8, v4

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 2049
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2053
    .end local v4    # "offset":I
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update Change Counter: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 2055
    if-eqz v3, :cond_2

    .line 2056
    const/16 v8, 0x4f23

    const/16 v9, 0x17

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v3, v8, v0, v9}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 2060
    .end local v0    # "data":[B
    .end local v2    # "i":I
    :cond_2
    const/4 v8, 0x1

    if-ne p1, v8, :cond_7

    iget-boolean v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 2061
    iget v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPUID:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 2063
    iget v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPUID:I

    const v9, 0xffff

    if-le v8, v9, :cond_3

    .line 2065
    const/4 v7, 0x1

    .line 2066
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 2069
    :cond_3
    const/4 v8, 0x2

    new-array v0, v8, [B

    .line 2070
    .restart local v0    # "data":[B
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    const/4 v8, 0x2

    if-ge v2, v8, :cond_4

    .line 2071
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v2

    mul-int/lit8 v4, v8, 0x8

    .line 2072
    .restart local v4    # "offset":I
    iget v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPUID:I

    ushr-int/2addr v8, v4

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 2070
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2074
    .end local v4    # "offset":I
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update mPUID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 2076
    if-eqz v3, :cond_5

    .line 2077
    const/16 v8, 0x4f24

    const/16 v9, 0x19

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v3, v8, v0, v9}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 2081
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v8

    if-ge p2, v8, :cond_c

    .line 2082
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v9, 0xc9

    invoke-virtual {v8, p2, v9}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v1

    .line 2083
    .local v1, "efid":I
    if-eqz v1, :cond_b

    .line 2084
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge p2, v8, :cond_a

    .line 2085
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge p3, v8, :cond_9

    .line 2086
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    add-int/lit8 v9, p3, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/UIDRecord;

    .line 2087
    .local v6, "uidRecord":Lcom/android/internal/telephony/UIDRecord;
    array-length v8, v0

    iget-object v9, v6, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    array-length v9, v9

    if-ne v8, v9, :cond_7

    .line 2088
    const/4 v2, 0x0

    :goto_2
    iget-object v8, v6, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    array-length v8, v8

    if-ge v2, v8, :cond_6

    .line 2089
    iget-object v8, v6, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    aget-byte v9, v0, v2

    aput-byte v9, v8, v2

    .line 2088
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2091
    :cond_6
    new-instance v8, Lcom/android/internal/telephony/UIDRecordLoader;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v8, v9, v10}, Lcom/android/internal/telephony/UIDRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iget v9, v6, Lcom/android/internal/telephony/UIDRecord;->mRecordNumber:I

    const/16 v10, 0xe

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v8, v1, v9, v6, v10}, Lcom/android/internal/telephony/UIDRecordLoader;->updateEF(IILcom/android/internal/telephony/UIDRecord;Landroid/os/Message;)V

    .line 2119
    .end local v0    # "data":[B
    .end local v1    # "efid":I
    .end local v2    # "i":I
    .end local v6    # "uidRecord":Lcom/android/internal/telephony/UIDRecord;
    :cond_7
    :goto_3
    iget-boolean v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    const/4 v8, 0x1

    if-ne v7, v8, :cond_e

    .line 2120
    iget-wide v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPSC:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 2121
    iget-wide v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPSC:J

    const-wide v10, 0xffffffffL

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    .line 2122
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 2124
    :cond_8
    const/4 v8, 0x4

    new-array v0, v8, [B

    .line 2125
    .restart local v0    # "data":[B
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    const/4 v8, 0x4

    if-ge v2, v8, :cond_d

    .line 2126
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v2

    mul-int/lit8 v4, v8, 0x8

    .line 2127
    .restart local v4    # "offset":I
    iget-wide v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPSC:J

    ushr-long/2addr v8, v4

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 2125
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2096
    .end local v4    # "offset":I
    .restart local v1    # "efid":I
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "out of EFUID index = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto :goto_3

    .line 2099
    :cond_a
    const-string v8, "num out of mUIDRecordList().size()"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto :goto_3

    .line 2102
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can not find EFUID id num:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto :goto_3

    .line 2105
    .end local v1    # "efid":I
    :cond_c
    const-string v8, "num out of mPBRParser size()"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto :goto_3

    .line 2130
    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update PSC: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 2132
    if-eqz v3, :cond_e

    .line 2133
    const/16 v8, 0x4f22

    const/16 v9, 0x15

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v3, v8, v0, v9}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 2136
    .end local v0    # "data":[B
    .end local v2    # "i":I
    :cond_e
    return-void
.end method


# virtual methods
.method public addPBKEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)J
    .locals 18
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "number1"    # Ljava/lang/String;
    .param p4, "number2"    # Ljava/lang/String;
    .param p5, "emailAddress"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 1710
    const-string v16, "addPBKEntry()"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1711
    const-wide/16 v8, 0x0

    .line 1712
    .local v8, "index":J
    const/4 v4, 0x0

    .line 1714
    .local v4, "error":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 1715
    const-string v16, "mPhone null"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    move-wide v10, v8

    .line 1820
    .end local v8    # "index":J
    .local v10, "index":J
    :goto_0
    return-wide v10

    .line 1720
    .end local v10    # "index":J
    .restart local v8    # "index":J
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v6, v0, :cond_1

    .line 1721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-byte v17, v16, v6

    .line 1720
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1724
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1725
    .local v13, "phonenumber":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1726
    .local v14, "phonenumber1":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1728
    .local v15, "phonenumber2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->checkNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1730
    if-eqz v4, :cond_2

    .line 1731
    const-string v16, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    move-wide v10, v8

    .line 1732
    .end local v8    # "index":J
    .restart local v10    # "index":J
    goto :goto_0

    .line 1736
    .end local v10    # "index":J
    .restart local v8    # "index":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    .line 1739
    .local v7, "iccCardInterface":Lcom/android/internal/telephony/IccCard;
    if-eqz v7, :cond_4

    invoke-interface {v7}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v16

    sget-object v17, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_4

    sget-boolean v16, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-nez v16, :cond_4

    .line 1741
    const-string v16, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    :cond_3
    :goto_2
    move-wide v10, v8

    .line 1820
    .end local v8    # "index":J
    .restart local v10    # "index":J
    goto :goto_0

    .line 1746
    .end local v10    # "index":J
    .restart local v8    # "index":J
    :cond_4
    const/4 v3, 0x0

    .line 1748
    .local v3, "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v14, v15, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getFirstEmptyPbkRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/PhoneBookEntry;
    :try_end_0
    .catch Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache$IccPbkException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1768
    :goto_3
    if-eqz v3, :cond_3

    .line 1769
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v16, v0

    if-gtz v16, :cond_5

    .line 1770
    const-string v16, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_2

    .line 1749
    :catch_0
    move-exception v5

    .line 1750
    .local v5, "ex":Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache$IccPbkException;
    iget v0, v5, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache$IccPbkException;->mError:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 1764
    :pswitch_0
    const-string v16, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_3

    .line 1752
    :pswitch_1
    const-string v16, "AdnFull"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_3

    .line 1761
    :pswitch_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "MemoryFull:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v5, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache$IccPbkException;->mError:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_3

    .line 1772
    .end local v5    # "ex":Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache$IccPbkException;
    :cond_5
    iget v0, v3, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v17, v0

    div-int v12, v16, v17

    .line 1774
    .local v12, "num":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 1775
    move-object v15, v14

    .line 1776
    const-string v14, ""

    .line 1782
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 1783
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateEmailRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;)V

    .line 1789
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-boolean v16, v16, v17

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 1790
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v3, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->addAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1793
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget-boolean v16, v16, v17

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 1794
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v3, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->addAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1800
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 1801
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-boolean v16, v16, v17

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget-boolean v16, v16, v17

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 1803
    :cond_a
    iget v0, v3, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateIAP(IZ)V

    .line 1810
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v13, v3, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateADNRecord(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V

    .line 1812
    const/16 v16, 0x1

    iget v0, v3, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v12, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updatePSCRecord(ZII)V

    .line 1814
    iget v0, v3, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v8, v0

    goto/16 :goto_2

    .line 1750
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method checkSupportANR(I)Z
    .locals 1
    .param p1, "anrEntryIndex"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method checkSupportEmail()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    return v0
.end method

.method convertEventToTag(II)I
    .locals 1
    .param p1, "event"    # I
    .param p2, "index"    # I

    .prologue
    const/4 v0, 0x1

    .line 3203
    packed-switch p1, :pswitch_data_0

    .line 3224
    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 3206
    :pswitch_0
    const/16 v0, 0xc9

    goto :goto_0

    .line 3209
    :pswitch_1
    const/16 v0, 0xc0

    goto :goto_0

    .line 3211
    :pswitch_2
    const/16 v0, 0xc1

    goto :goto_0

    .line 3213
    :pswitch_3
    const/16 v0, 0xca

    goto :goto_0

    .line 3215
    :pswitch_4
    const/16 v0, 0xc2

    goto :goto_0

    .line 3217
    :pswitch_5
    if-nez p2, :cond_1

    .line 3219
    const/4 v0, 0x0

    goto :goto_0

    .line 3220
    :cond_1
    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 3203
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public deletePBKEntry(ILandroid/os/Message;)V
    .locals 9
    .param p1, "recordNumber"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1837
    const-string v4, "deletePBKEntry()"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1839
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v4, :cond_0

    .line 1840
    const-string v4, "mPhone null"

    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1844
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    .line 1847
    .local v1, "iccCardInterface":Lcom/android/internal/telephony/IccCard;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v5, :cond_1

    sget-boolean v4, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-nez v4, :cond_1

    .line 1849
    const-string v4, "error"

    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1904
    :goto_0
    return-void

    .line 1854
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    .line 1855
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1857
    .local v0, "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v0, :cond_2

    iget v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-gtz v4, :cond_3

    .line 1858
    :cond_2
    const-string v4, "error"

    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1863
    :cond_3
    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-ne v4, v6, :cond_4

    .line 1864
    invoke-direct {p0, v8, v0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateEmailRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;)V

    .line 1870
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v7

    if-ne v4, v6, :cond_5

    .line 1871
    invoke-direct {p0, v8, v0, v7}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1874
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v6

    if-ne v4, v6, :cond_6

    .line 1875
    invoke-direct {p0, v8, v0, v6}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1881
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1883
    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-eq v4, v6, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v7

    if-eq v4, v6, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v6

    if-ne v4, v6, :cond_8

    .line 1885
    :cond_7
    iget v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    invoke-direct {p0, v4, v6}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateIAP(IZ)V

    .line 1892
    :cond_8
    const/4 v2, 0x0

    .line 1893
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1894
    .local v3, "number":Ljava/lang/String;
    invoke-direct {p0, v2, v3, v0, p2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateADNRecord(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V

    .line 1896
    invoke-direct {p0, v7, v7, v7}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updatePSCRecord(ZII)V

    goto :goto_0

    .line 1900
    .end local v0    # "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "number":Ljava/lang/String;
    :cond_9
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "mSimPbkEntryList = null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    const-string v4, "error"

    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3253
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 3254
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v7, :cond_0

    .line 3255
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispose()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    new-instance v1, Ljava/lang/Exception;

    const-string v4, "SIM Phonebook Entries have been droped."

    invoke-direct {v1, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 3259
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v8, v8, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3260
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 3264
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    if-eqz v4, :cond_3

    .line 3265
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lt v4, v7, :cond_3

    .line 3266
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispose()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3267
    const/4 v2, 0x0

    .local v2, "msgNum":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gt v2, v4, :cond_3

    .line 3268
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 3269
    .local v3, "response":Landroid/os/Message;
    if-eqz v3, :cond_2

    .line 3270
    iget v4, v3, Landroid/os/Message;->what:I

    if-eqz v4, :cond_1

    .line 3271
    const-string v4, "error"

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 3273
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 3267
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3278
    .end local v2    # "msgNum":I
    .end local v3    # "response":Landroid/os/Message;
    :cond_3
    return-void
.end method

.method public dropSimPbkEntries()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2904
    const-string v1, "HtcIccPbkEntryCache_QMI"

    const-string v2, "dropSimPbkEntries()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2906
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    .line 2908
    const-string v1, "HtcIccPbkEntryCache_QMI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDropSIMTimeStamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->dispose()V

    .line 2912
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->setLocalMemberToDefault()V

    .line 2914
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->setSIMSystemPropertiesToDefault()V

    .line 2916
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_0

    .line 2917
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.SIM_CONTACTS_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2918
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 2921
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 2922
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2923
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 2925
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 2926
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2929
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 2930
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2934
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 2935
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2936
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    .line 2940
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 2941
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2945
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v1, :cond_6

    .line 2946
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->reset()V

    .line 2951
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    if-eqz v1, :cond_7

    .line 2952
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2955
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    .line 2956
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2959
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    .line 2960
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2964
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    .line 2965
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2968
    :cond_a
    return-void
.end method

.method getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;
    .locals 4
    .param p1, "num"    # I
    .param p2, "anrEntryIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 2742
    const/4 v0, 0x0

    .line 2744
    .local v0, "entry":Lcom/android/internal/telephony/AnrRecord;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p1, :cond_1

    :cond_0
    move-object v2, v3

    .line 2758
    :goto_0
    return-object v2

    .line 2746
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p2, :cond_2

    move-object v2, v3

    .line 2747
    goto :goto_0

    .line 2749
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 2750
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Lcom/android/internal/telephony/AnrRecord;
    check-cast v0, Lcom/android/internal/telephony/AnrRecord;

    .line 2752
    .restart local v0    # "entry":Lcom/android/internal/telephony/AnrRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/AnrRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    .line 2753
    goto :goto_0

    .line 2749
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object v2, v3

    .line 2758
    goto :goto_0
.end method

.method getFirstEmptyEmailRecord(I)Lcom/android/internal/telephony/EmailRecord;
    .locals 4
    .param p1, "num"    # I

    .prologue
    const/4 v3, 0x0

    .line 2723
    const/4 v0, 0x0

    .line 2725
    .local v0, "entry":Lcom/android/internal/telephony/EmailRecord;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p1, :cond_1

    :cond_0
    move-object v2, v3

    .line 2738
    :goto_0
    return-object v2

    .line 2729
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2730
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Lcom/android/internal/telephony/EmailRecord;
    check-cast v0, Lcom/android/internal/telephony/EmailRecord;

    .line 2732
    .restart local v0    # "entry":Lcom/android/internal/telephony/EmailRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/EmailRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 2733
    goto :goto_0

    .line 2729
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v3

    .line 2738
    goto :goto_0
.end method

.method getFirstEmptyPbkRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/PhoneBookEntry;
    .locals 10
    .param p1, "number1"    # Ljava/lang/String;
    .param p2, "number2"    # Ljava/lang/String;
    .param p3, "emailaddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache$IccPbkException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x10

    .line 2680
    const/4 v6, 0x1

    .line 2681
    .local v6, "adn_full":Z
    const/4 v7, 0x0

    .line 2682
    .local v7, "error":I
    const/4 v5, 0x0

    .line 2686
    .local v5, "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    iget v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-gtz v0, :cond_0

    .line 2687
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "mRecordNums <= 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    new-instance v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache$IccPbkException;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache$IccPbkException;-><init>(I)V

    throw v0

    .line 2689
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 2691
    :cond_1
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "mSimPbkEntryList == null || mSimPbkEntryList.size() == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    new-instance v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache$IccPbkException;

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache$IccPbkException;-><init>(I)V

    throw v0

    .line 2694
    :cond_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_5

    .line 2695
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    check-cast v5, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 2696
    .restart local v5    # "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    iget v0, v5, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v4, v0, v1

    .line 2697
    .local v4, "num":I
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBookEntry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2698
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2699
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->checkFilesStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/PhoneBookEntry;)I

    move-result v7

    .line 2700
    if-nez v7, :cond_3

    .line 2701
    return-object v5

    .line 2703
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v4, v0, :cond_5

    .line 2704
    iget v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    add-int/2addr v0, v8

    iget v1, v5, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    sub-int v8, v0, v1

    .line 2694
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2713
    .end local v4    # "num":I
    :cond_5
    const/4 v0, 0x1

    if-ne v6, v0, :cond_6

    .line 2714
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "IccPbk: ADN null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    new-instance v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache$IccPbkException;

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache$IccPbkException;-><init>(I)V

    throw v0

    .line 2717
    :cond_6
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IccPbk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2718
    new-instance v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache$IccPbkException;

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache$IccPbkException;-><init>(I)V

    throw v0
.end method

.method getIAPIndex(I)I
    .locals 1
    .param p1, "anrEntryIndex"    # I

    .prologue
    .line 3229
    packed-switch p1, :pswitch_data_0

    .line 3235
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 3231
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3233
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3229
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getNextEvent(III)I
    .locals 5
    .param p1, "event"    # I
    .param p2, "num"    # I
    .param p3, "index"    # I

    .prologue
    const/4 v4, 0x1

    .line 3165
    const/4 v0, 0x0

    .line 3166
    .local v0, "nextEvent":I
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->convertEventToTag(II)I

    move-result v1

    .line 3167
    .local v1, "tag":I
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v2, :cond_0

    .line 3168
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 3169
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    move p1, v0

    .line 3199
    .end local p1    # "event":I
    :cond_1
    :goto_1
    return p1

    .line 3174
    .restart local p1    # "event":I
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3177
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2, p2, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    if-eqz v2, :cond_3

    .line 3178
    const/16 p1, 0xb

    goto :goto_1

    .line 3181
    :cond_3
    const/16 v2, 0xc

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v0

    .line 3183
    goto :goto_0

    .line 3191
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2, p2, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    if-nez v2, :cond_1

    .line 3194
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v0

    goto :goto_0

    .line 3169
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 47
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 313
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v42, v0

    packed-switch v42, :pswitch_data_0

    .line 1512
    :cond_0
    :goto_0
    return-void

    .line 315
    :pswitch_0
    const-string v42, "EVENT_LOAD_PB_PBR_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    if-eqz v42, :cond_3

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_2

    .line 320
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v26

    .line 321
    .local v26, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v26, :cond_1

    .line 322
    const/16 v42, 0x4f22

    const/16 v43, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v43

    move-object/from16 v0, v26

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 335
    .end local v26    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_0

    .line 336
    new-instance v34, Landroid/os/Bundle;

    invoke-direct/range {v34 .. v34}, Landroid/os/Bundle;-><init>()V

    .line 337
    .local v34, "queryTimeStamp":Landroid/os/Bundle;
    const-string v42, "query_sim_contact_file_timestamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v43

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-wide/from16 v2, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 339
    new-instance v42, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v44, v0

    invoke-direct/range {v42 .. v44}, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v43, 0x6f4a

    const/16 v44, 0x8

    const/16 v45, 0x0

    const/16 v46, 0x6f4a

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move-object/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v44

    invoke-virtual/range {v42 .. v44}, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 327
    .end local v34    # "queryTimeStamp":Landroid/os/Bundle;
    :cond_2
    const-string v42, "Support Global phonebook"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 328
    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    goto :goto_1

    .line 332
    :cond_3
    const-string v42, "Support Global phonebook"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 333
    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    goto :goto_1

    .line 348
    :pswitch_1
    const-string v42, "EVENT_LOAD_PB_PSC_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 349
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 350
    .local v13, "ar":Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    if-nez v42, :cond_5

    .line 351
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, [B

    move-object/from16 v15, v42

    check-cast v15, [B

    .line 352
    .local v15, "data":[B
    if-eqz v15, :cond_4

    array-length v0, v15

    move/from16 v42, v0

    if-lez v42, :cond_4

    .line 353
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Phonebook Synchronisation Counter: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-static {v15}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 355
    invoke-static {v15}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v42

    const/16 v43, 0x10

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v42

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 356
    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    .line 363
    .end local v15    # "data":[B
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    if-eqz v42, :cond_0

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_0

    .line 365
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v26

    .line 366
    .restart local v26    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v26, :cond_0

    .line 367
    const/16 v42, 0x4f23

    const/16 v43, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v43

    move-object/from16 v0, v26

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 358
    .end local v26    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .restart local v15    # "data":[B
    :cond_4
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    goto :goto_2

    .line 361
    .end local v15    # "data":[B
    :cond_5
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    goto :goto_2

    .line 375
    .end local v13    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    const-string v42, "EVENT_UPDATE_PB_PSC_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 376
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 377
    .restart local v13    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    if-eqz v42, :cond_0

    .line 378
    const-string v42, "Update PB_PCS failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 383
    .end local v13    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    const-string v42, "EVENT_LOAD_PB_CC_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 384
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 385
    .restart local v13    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    if-nez v42, :cond_7

    .line 386
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, [B

    move-object/from16 v15, v42

    check-cast v15, [B

    .line 387
    .restart local v15    # "data":[B
    if-eqz v15, :cond_6

    array-length v0, v15

    move/from16 v42, v0

    if-lez v42, :cond_6

    .line 388
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Change Counter: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-static {v15}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 389
    invoke-static {v15}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v42

    const/16 v43, 0x10

    invoke-static/range {v42 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 390
    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    .line 397
    .end local v15    # "data":[B
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    if-eqz v42, :cond_0

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_0

    .line 399
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v26

    .line 400
    .restart local v26    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v26, :cond_0

    .line 401
    const/16 v42, 0x4f24

    const/16 v43, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v43

    move-object/from16 v0, v26

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 392
    .end local v26    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .restart local v15    # "data":[B
    :cond_6
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    goto :goto_3

    .line 395
    .end local v15    # "data":[B
    :cond_7
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    goto :goto_3

    .line 409
    .end local v13    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    const-string v42, "EVENT_UPDATE_PB_CC_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 411
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 412
    .restart local v13    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    if-eqz v42, :cond_0

    .line 413
    const-string v42, "Update PB_CC failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 419
    .end local v13    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    const-string v42, "EVENT_LOAD_PB_PUID_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 420
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 421
    .restart local v13    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    if-nez v42, :cond_9

    .line 422
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, [B

    move-object/from16 v15, v42

    check-cast v15, [B

    .line 423
    .restart local v15    # "data":[B
    if-eqz v15, :cond_8

    array-length v0, v15

    move/from16 v42, v0

    if-lez v42, :cond_8

    .line 424
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Previous Unique Identifier: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-static {v15}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 425
    invoke-static {v15}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v42

    const/16 v43, 0x10

    invoke-static/range {v42 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 426
    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    .line 434
    .end local v15    # "data":[B
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    if-eqz v42, :cond_0

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_0

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0xc2

    invoke-virtual/range {v42 .. v44}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v17

    .line 437
    .local v17, "efid":I
    if-eqz v17, :cond_a

    .line 438
    const/16 v42, 0x8

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v43

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 428
    .end local v17    # "efid":I
    .restart local v15    # "data":[B
    :cond_8
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    goto :goto_4

    .line 431
    .end local v15    # "data":[B
    :cond_9
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    goto :goto_4

    .line 440
    .restart local v17    # "efid":I
    :cond_a
    const/16 v42, 0x1

    const/16 v43, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->setSIMSystemProperties(II)V

    .line 441
    const/16 v42, 0x9

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v43

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 449
    .end local v13    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "efid":I
    :pswitch_6
    const-string v42, "EVENT_UPDATE_PB_PUID_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 451
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 452
    .restart local v13    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    if-eqz v42, :cond_0

    .line 453
    const-string v42, "Update PB_PUID failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 459
    .end local v13    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    const-string v42, "EVENT_LOAD_PB_UID_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 460
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 461
    .restart local v13    # "ar":Landroid/os/AsyncResult;
    const/16 v21, 0x0

    .line 462
    .local v21, "event":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 464
    .local v31, "num":I
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/Bundle;

    .line 466
    .local v33, "queryTimeBundle":Landroid/os/Bundle;
    const-string v42, "query_sim_contact_file_timestamp"

    const-wide/16 v43, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v42

    move-wide/from16 v2, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v34

    .line 469
    .local v34, "queryTimeStamp":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v42, v0

    cmp-long v42, v34, v42

    if-ltz v42, :cond_0

    .line 473
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    if-nez v42, :cond_c

    .line 474
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/util/ArrayList;

    move-object/from16 v41, v42

    check-cast v41, Ljava/util/ArrayList;

    .line 475
    .local v41, "uidRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/UIDRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v31

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 477
    add-int/lit8 v31, v31, 0x1

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v42

    move/from16 v0, v31

    move/from16 v1, v42

    if-ge v0, v1, :cond_b

    .line 479
    const/16 v42, 0xa

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v31

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 489
    .end local v41    # "uidRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/UIDRecord;>;"
    :goto_5
    if-eqz v21, :cond_0

    .line 490
    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v30

    .line 491
    .local v30, "next_event":I
    if-eqz v30, :cond_d

    .line 492
    const-string v42, "HtcIccPbkEntryCache_QMI"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "next_event = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 481
    .end local v30    # "next_event":I
    .restart local v41    # "uidRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/UIDRecord;>;"
    :cond_b
    const/16 v21, 0xb

    goto :goto_5

    .line 484
    .end local v41    # "uidRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/UIDRecord;>;"
    :cond_c
    const-string v42, "HtcIccPbkEntryCache_QMI"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "EVENT_LOAD_PB_UID_DONE Failed: num = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " ar.exception = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/16 v21, 0xb

    goto :goto_5

    .line 495
    .restart local v30    # "next_event":I
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 502
    .end local v13    # "ar":Landroid/os/AsyncResult;
    .end local v21    # "event":I
    .end local v30    # "next_event":I
    .end local v31    # "num":I
    .end local v33    # "queryTimeBundle":Landroid/os/Bundle;
    .end local v34    # "queryTimeStamp":J
    :pswitch_8
    const-string v42, "EVENT_UPDATE_PB_UID_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 504
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 505
    .restart local v13    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    if-eqz v42, :cond_0

    .line 506
    const-string v42, "Update PB_UID failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 513
    .end local v13    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    const-string v42, "EVENT_LOAD_PB_EXT1_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 514
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 515
    .restart local v13    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/Bundle;

    .line 517
    .restart local v33    # "queryTimeBundle":Landroid/os/Bundle;
    const-string v42, "query_sim_contact_file_timestamp"

    const-wide/16 v43, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v42

    move-wide/from16 v2, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v34

    .line 520
    .restart local v34    # "queryTimeStamp":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v42, v0

    cmp-long v42, v34, v42

    if-ltz v42, :cond_0

    .line 523
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    if-nez v42, :cond_e

    .line 524
    const/16 v42, 0x1

    const/16 v43, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->setSIMSystemProperties(II)V

    .line 525
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/util/ArrayList;

    check-cast v42, Ljava/util/ArrayList;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    .line 530
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v42, v0

    if-nez v42, :cond_10

    .line 531
    const/16 v42, 0x9

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v43

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v21

    .line 532
    .restart local v21    # "event":I
    if-eqz v21, :cond_f

    .line 533
    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 527
    .end local v21    # "event":I
    :cond_e
    const/16 v42, 0x1

    const/16 v43, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->setSIMSystemProperties(II)V

    goto :goto_6

    .line 535
    .restart local v21    # "event":I
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 538
    .end local v21    # "event":I
    :cond_10
    const-string v42, "query_sim_contact_file_timestamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v43

    move-object/from16 v0, v33

    move-object/from16 v1, v42

    move-wide/from16 v2, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 540
    new-instance v42, Lcom/android/internal/telephony/uicc/ADNRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v45, v0

    invoke-direct/range {v42 .. v45}, Lcom/android/internal/telephony/uicc/ADNRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v43, 0x6f3a

    const/16 v44, 0x9

    const/16 v45, 0x0

    const/16 v46, 0x6f3a

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move-object/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v44

    invoke-virtual/range {v42 .. v44}, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 549
    .end local v13    # "ar":Landroid/os/AsyncResult;
    .end local v33    # "queryTimeBundle":Landroid/os/Bundle;
    .end local v34    # "queryTimeStamp":J
    :pswitch_a
    const-string v42, "EVENT_LOAD_PB_ADN_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 551
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 552
    .restart local v13    # "ar":Landroid/os/AsyncResult;
    const/16 v21, 0x0

    .line 553
    .restart local v21    # "event":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 555
    .restart local v31    # "num":I
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/Bundle;

    .line 557
    .restart local v33    # "queryTimeBundle":Landroid/os/Bundle;
    const-string v42, "query_sim_contact_file_timestamp"

    const-wide/16 v43, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v42

    move-wide/from16 v2, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v34

    .line 560
    .restart local v34    # "queryTimeStamp":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v42, v0

    cmp-long v42, v34, v42

    if-ltz v42, :cond_0

    .line 564
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    if-nez v42, :cond_1b

    .line 565
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/util/ArrayList;

    move-object/from16 v6, v42

    check-cast v6, Ljava/util/ArrayList;

    .line 566
    .local v6, "adnRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/HtcAdnRecord;>;"
    if-nez v31, :cond_13

    .line 567
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    .line 569
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_12

    .line 570
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v42, v0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 577
    :cond_11
    :goto_7
    const/16 v42, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->setSIMSystemProperties(II)V

    .line 579
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v42, v0

    if-lez v42, :cond_13

    .line 580
    new-instance v42, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v43, v0

    invoke-direct/range {v42 .. v43}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    if-eqz v42, :cond_13

    .line 582
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v42, v0

    move/from16 v0, v24

    move/from16 v1, v42

    if-ge v0, v1, :cond_13

    .line 583
    new-instance v19, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBookEntry;-><init>()V

    .line 584
    .local v19, "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    add-int/lit8 v42, v24, 0x1

    move/from16 v0, v42

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    add-int/lit8 v24, v24, 0x1

    goto :goto_8

    .line 572
    .end local v19    # "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v24    # "i":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    if-eqz v42, :cond_11

    .line 573
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v43

    mul-int v42, v42, v43

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    goto :goto_7

    .line 591
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    if-eqz v42, :cond_1a

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 598
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/ArrayList;

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v24

    move/from16 v1, v42

    if-ge v0, v1, :cond_16

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/ArrayList;

    move-object/from16 v0, v42

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/HtcAdnRecord;

    .line 600
    .local v5, "adnRecord":Lcom/android/internal/telephony/uicc/HtcAdnRecord;
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->isEmpty()Z

    move-result v42

    if-nez v42, :cond_14

    .line 601
    const/4 v7, 0x0

    .line 602
    .local v7, "adnRecordNumber":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v42, v0

    mul-int v42, v42, v31

    iget v0, v5, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->recordNumber:I

    move/from16 v43, v0

    add-int v7, v42, v43

    .line 604
    if-lez v7, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v42

    if-gt v7, v0, :cond_15

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    add-int/lit8 v43, v7, -0x1

    invoke-virtual/range {v42 .. v43}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 608
    .local v32, "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 609
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 610
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    .line 612
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "pbkEntry.index = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 614
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "pbkEntry.indexEmail = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 617
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "pbkEntry.email = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 598
    .end local v7    # "adnRecordNumber":I
    .end local v32    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_14
    :goto_a
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_9

    .line 619
    .restart local v7    # "adnRecordNumber":I
    :cond_15
    const-string v42, "HtcIccPbkEntryCache_QMI"

    const-string v43, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 625
    .end local v5    # "adnRecord":Lcom/android/internal/telephony/uicc/HtcAdnRecord;
    .end local v7    # "adnRecordNumber":I
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v42, v0

    if-nez v42, :cond_19

    .line 626
    add-int/lit8 v31, v31, 0x1

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v42

    move/from16 v0, v31

    move/from16 v1, v42

    if-ge v0, v1, :cond_17

    .line 628
    const/16 v42, 0x9

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v31

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 636
    :goto_b
    if-eqz v21, :cond_0

    .line 637
    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v30

    .line 638
    .restart local v30    # "next_event":I
    if-eqz v30, :cond_18

    .line 639
    const-string v42, "HtcIccPbkEntryCache_QMI"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "next_event = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 632
    .end local v30    # "next_event":I
    :cond_17
    const/16 v21, 0xa

    goto :goto_b

    .line 642
    .restart local v30    # "next_event":I
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 646
    .end local v30    # "next_event":I
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 649
    .end local v24    # "i":I
    :cond_1a
    const-string v42, "HtcIccPbkEntryCache_QMI"

    const-string v43, "mSimPbkEntryList is null"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 653
    .end local v6    # "adnRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/HtcAdnRecord;>;"
    :cond_1b
    const-string v42, "HtcIccPbkEntryCache_QMI"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "EVENT_LOAD_PB_ADN_DONE Failed: num = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " ar.exception = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0xc0

    invoke-virtual/range {v42 .. v44}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    if-eqz v42, :cond_1c

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->clear()V

    .line 659
    const/16 v42, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 661
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 666
    .end local v13    # "ar":Landroid/os/AsyncResult;
    .end local v21    # "event":I
    .end local v31    # "num":I
    .end local v33    # "queryTimeBundle":Landroid/os/Bundle;
    .end local v34    # "queryTimeStamp":J
    :pswitch_b
    const-string v42, "EVENT_LOAD_PB_IAP_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 668
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 669
    .restart local v13    # "ar":Landroid/os/AsyncResult;
    const/16 v21, 0x0

    .line 670
    .restart local v21    # "event":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 671
    .restart local v31    # "num":I
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/Bundle;

    .line 673
    .restart local v33    # "queryTimeBundle":Landroid/os/Bundle;
    const-string v42, "query_sim_contact_file_timestamp"

    const-wide/16 v43, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v42

    move-wide/from16 v2, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v34

    .line 676
    .restart local v34    # "queryTimeStamp":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v42, v0

    cmp-long v42, v34, v42

    if-ltz v42, :cond_0

    .line 680
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    if-nez v42, :cond_1f

    .line 681
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/util/ArrayList;

    move-object/from16 v25, v42

    check-cast v25, Ljava/util/ArrayList;

    .line 682
    .local v25, "iapRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IAPRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v31

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 684
    add-int/lit8 v31, v31, 0x1

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v42

    move/from16 v0, v31

    move/from16 v1, v42

    if-ge v0, v1, :cond_1d

    .line 686
    const/16 v42, 0xb

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v31

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 691
    :goto_c
    if-eqz v21, :cond_0

    .line 692
    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v30

    .line 693
    .restart local v30    # "next_event":I
    if-eqz v30, :cond_1e

    .line 694
    const-string v42, "HtcIccPbkEntryCache_QMI"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "next_event = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 688
    .end local v30    # "next_event":I
    :cond_1d
    const/16 v21, 0xc

    goto :goto_c

    .line 697
    .restart local v30    # "next_event":I
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 701
    .end local v25    # "iapRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IAPRecord;>;"
    .end local v30    # "next_event":I
    :cond_1f
    const-string v42, "HtcIccPbkEntryCache_QMI"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "EVENT_LOAD_PB_IAP_DONE Failed: num = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " ar.exception = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->clear()V

    .line 705
    const/16 v21, 0xc

    .line 707
    const-string v42, "HtcIccPbkEntryCache_QMI"

    const-string v43, "remove IAP file from mPbrFile.mFileIds catch"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0xc1

    invoke-virtual/range {v42 .. v44}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v42

    if-eqz v42, :cond_20

    .line 711
    const/16 v21, 0x8

    .line 712
    const-string v42, "HtcIccPbkEntryCache_QMI"

    const-string v43, "remove E-mail file from mPbrFile.mFileIds catch"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0xca

    invoke-virtual/range {v42 .. v44}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 716
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v42

    if-nez v42, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    invoke-virtual/range {v42 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v42

    if-eqz v42, :cond_22

    .line 718
    :cond_21
    const/16 v21, 0x0

    .line 719
    const-string v42, "HtcIccPbkEntryCache_QMI"

    const-string v43, "remove ANR1 file from mPbrFile.mFileIds catch"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-virtual/range {v42 .. v44}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 722
    const-string v42, "HtcIccPbkEntryCache_QMI"

    const-string v43, "remove ANR2 file from mPbrFile.mFileIds catch"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0x1

    invoke-virtual/range {v42 .. v44}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 726
    :cond_22
    if-eqz v21, :cond_24

    .line 727
    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v30

    .line 728
    .restart local v30    # "next_event":I
    if-eqz v30, :cond_23

    .line 729
    const-string v42, "HtcIccPbkEntryCache_QMI"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "next_event = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 732
    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 735
    .end local v30    # "next_event":I
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 742
    .end local v13    # "ar":Landroid/os/AsyncResult;
    .end local v21    # "event":I
    .end local v31    # "num":I
    .end local v33    # "queryTimeBundle":Landroid/os/Bundle;
    .end local v34    # "queryTimeStamp":J
    :pswitch_c
    const-string v42, "EVENT_LOAD_PB_EMAIL_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 744
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 746
    .restart local v13    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/Bundle;

    .line 748
    .restart local v33    # "queryTimeBundle":Landroid/os/Bundle;
    const-string v42, "query_sim_contact_file_timestamp"

    const-wide/16 v43, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v42

    move-wide/from16 v2, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v34

    .line 751
    .restart local v34    # "queryTimeStamp":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v42, v0

    cmp-long v42, v34, v42

    if-ltz v42, :cond_0

    .line 755
    const/16 v21, 0x0

    .line 756
    .restart local v21    # "event":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 757
    .restart local v31    # "num":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    .line 758
    .restart local v17    # "efid":I
    const/4 v14, 0x0

    .line 760
    .local v14, "composeErr":Z
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    if-nez v42, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    if-eqz v42, :cond_2f

    .line 761
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/util/ArrayList;

    move-object/from16 v28, v42

    check-cast v28, Ljava/util/ArrayList;

    .line 763
    .local v28, "mailRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/EmailRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    move-object/from16 v42, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v42 .. v44}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v42

    move/from16 v0, v31

    move/from16 v1, v42

    if-ge v0, v1, :cond_2d

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v31

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 766
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v42

    new-array v0, v0, [Z

    move-object/from16 v40, v0

    .line 770
    .local v40, "searchErr":[Z
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/ArrayList;

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v24

    move/from16 v1, v42

    if-ge v0, v1, :cond_2c

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/ArrayList;

    move-object/from16 v0, v42

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/EmailRecord;

    .line 773
    .local v18, "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/EmailRecord;->isEmpty()Z

    move-result v42

    if-nez v42, :cond_25

    .line 774
    const/4 v7, 0x0

    .line 775
    .restart local v7    # "adnRecordNumber":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_2a

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFADNrecNum(I)I

    move-result v36

    .line 778
    .local v36, "recNum":I
    if-lez v36, :cond_29

    .line 779
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v42, v0

    if-eqz v42, :cond_28

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v42, v0

    const/16 v43, 0xff

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_28

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v43, v0

    move/from16 v0, v42

    move/from16 v1, v43

    if-gt v0, v1, :cond_28

    .line 782
    add-int/lit8 v42, v36, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v43, v0

    mul-int v42, v42, v43

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v43, v0

    add-int v7, v42, v43

    .line 788
    if-lez v7, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v42

    if-gt v7, v0, :cond_26

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    add-int/lit8 v43, v7, -0x1

    invoke-virtual/range {v42 .. v43}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 792
    .restart local v32    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v32, :cond_27

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/PhoneBookEntry;->isEmpty()Z

    move-result v42

    if-eqz v42, :cond_27

    .line 793
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "pbkEntry.index = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 795
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "emailEntry.index = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 798
    const-string v42, "Becasue the corresponding pbkEntry entry is empty, clear email entry."

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 799
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/EmailRecord;->clear()V

    .line 770
    .end local v7    # "adnRecordNumber":I
    .end local v32    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v36    # "recNum":I
    :cond_25
    :goto_e
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_d

    .line 805
    .restart local v7    # "adnRecordNumber":I
    .restart local v36    # "recNum":I
    :cond_26
    const-string v42, "Can not find the corresponding pbkEntry entry. Try to use EF-IAP to recover it."

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 806
    const/4 v14, 0x1

    .line 807
    const/16 v42, 0x1

    aput-boolean v42, v40, v24

    .line 826
    .end local v36    # "recNum":I
    :cond_27
    :goto_f
    if-lez v7, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v42

    if-gt v7, v0, :cond_2b

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    add-int/lit8 v43, v7, -0x1

    invoke-virtual/range {v42 .. v43}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 829
    .restart local v32    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v42, v0

    move/from16 v0, v42

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    .line 830
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 832
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "pbkEntry.index = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 834
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "pbkEntry.indexEmail = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 837
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "pbkEntry.email = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 810
    .end local v32    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    .restart local v36    # "recNum":I
    :cond_28
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "The emailRecord.mAdnRecordNumber:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " is incorrect, the mRecordNums:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 814
    const/4 v14, 0x1

    .line 815
    const/16 v42, 0x1

    aput-boolean v42, v40, v24

    goto/16 :goto_f

    .line 818
    :cond_29
    const-string v42, "Can not find the corresponding EF-ADN file. Try to use EF-IAP to recover it."

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 819
    const/4 v14, 0x1

    .line 820
    const/16 v42, 0x1

    aput-boolean v42, v40, v24

    goto/16 :goto_f

    .line 823
    .end local v36    # "recNum":I
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v42, v0

    mul-int v42, v42, v31

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v43, v0

    add-int v7, v42, v43

    goto/16 :goto_f

    .line 839
    :cond_2b
    const-string v42, "HtcIccPbkEntryCache_QMI"

    const-string v43, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 845
    .end local v7    # "adnRecordNumber":I
    .end local v18    # "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    :cond_2c
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "mEmailRecordList size = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/ArrayList;

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 847
    const/16 v42, 0x1

    move/from16 v0, v42

    if-ne v14, v0, :cond_2d

    .line 848
    const/16 v42, 0xca

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v42

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->parserIAP(II[Z)V

    .line 852
    .end local v24    # "i":I
    .end local v40    # "searchErr":[Z
    :cond_2d
    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    .line 853
    const/16 v42, 0x4

    const/16 v43, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->setSIMSystemProperties(II)V

    .line 855
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "mEmailRecordList num = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 857
    add-int/lit8 v31, v31, 0x1

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v42

    move/from16 v0, v31

    move/from16 v1, v42

    if-ge v0, v1, :cond_2e

    .line 859
    const/16 v42, 0xc

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v31

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 877
    .end local v28    # "mailRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/EmailRecord;>;"
    :goto_10
    if-eqz v21, :cond_0

    .line 878
    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v30

    .line 879
    .restart local v30    # "next_event":I
    if-eqz v30, :cond_30

    .line 880
    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 861
    .end local v30    # "next_event":I
    .restart local v28    # "mailRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/EmailRecord;>;"
    :cond_2e
    const/16 v21, 0xd

    goto :goto_10

    .line 864
    .end local v28    # "mailRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/EmailRecord;>;"
    :cond_2f
    const-string v42, "HtcIccPbkEntryCache_QMI"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "EVENT_LOAD_PB_EMAIL_DONE Failed: num = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " ar.exception = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/HashMap;->clear()V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->clear()V

    .line 869
    const/16 v21, 0xd

    .line 870
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    .line 871
    const/16 v42, 0x4

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->setSIMSystemProperties(II)V

    .line 873
    const-string v42, "HtcIccPbkEntryCache_QMI"

    const-string v43, "remove E-mail file from mPbrFile.mFileIds catch"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0xca

    invoke-virtual/range {v42 .. v44}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    goto/16 :goto_10

    .line 882
    .restart local v30    # "next_event":I
    :cond_30
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 889
    .end local v13    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "composeErr":Z
    .end local v17    # "efid":I
    .end local v21    # "event":I
    .end local v30    # "next_event":I
    .end local v31    # "num":I
    .end local v33    # "queryTimeBundle":Landroid/os/Bundle;
    .end local v34    # "queryTimeStamp":J
    :pswitch_d
    const-string v42, "EVENT_LOAD_PB_ANR_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 891
    :try_start_0
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 893
    .restart local v13    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/Bundle;

    .line 894
    .restart local v33    # "queryTimeBundle":Landroid/os/Bundle;
    const-string v42, "query_sim_contact_file_timestamp"

    const-wide/16 v43, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v42

    move-wide/from16 v2, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v34

    .line 896
    .restart local v34    # "queryTimeStamp":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v42, v0

    cmp-long v42, v34, v42

    if-ltz v42, :cond_0

    .line 900
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 901
    .restart local v31    # "num":I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    .line 902
    .local v8, "anrEntryIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1, v8}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v17

    .line 903
    .restart local v17    # "efid":I
    const/4 v14, 0x0

    .line 905
    .restart local v14    # "composeErr":Z
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    if-nez v42, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    if-eqz v42, :cond_43

    .line 906
    if-eqz v17, :cond_31

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v42

    if-ge v8, v0, :cond_33

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 914
    .local v9, "anrFileList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_11
    if-eqz v9, :cond_31

    .line 915
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v42

    if-ge v8, v0, :cond_34

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v0, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 924
    .end local v9    # "anrFileList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_31
    :goto_12
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/util/ArrayList;

    move-object/from16 v0, v42

    check-cast v0, Ljava/util/ArrayList;

    move-object v12, v0

    .line 927
    .local v12, "anrRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    if-nez v8, :cond_35

    .line 928
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 932
    .local v10, "anrLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    :goto_13
    if-eqz v10, :cond_42

    .line 933
    invoke-virtual {v10, v8, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 934
    if-nez v8, :cond_36

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 943
    :goto_14
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v42

    new-array v0, v0, [Z

    move-object/from16 v40, v0

    .line 945
    .restart local v40    # "searchErr":[Z
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_15
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v24

    move/from16 v1, v42

    if-ge v0, v1, :cond_3d

    .line 946
    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/AnrRecord;

    .line 948
    .local v11, "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    invoke-virtual {v11}, Lcom/android/internal/telephony/AnrRecord;->isEmpty()Z

    move-result v42

    if-nez v42, :cond_32

    .line 949
    const/4 v7, 0x0

    .line 950
    .restart local v7    # "adnRecordNumber":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_3b

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    iget v0, v11, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFADNrecNum(I)I

    move-result v36

    .line 953
    .restart local v36    # "recNum":I
    if-lez v36, :cond_3a

    .line 954
    iget v0, v11, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v42, v0

    if-eqz v42, :cond_39

    iget v0, v11, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v42, v0

    const/16 v43, 0xff

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_39

    iget v0, v11, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v43, v0

    move/from16 v0, v42

    move/from16 v1, v43

    if-gt v0, v1, :cond_39

    .line 957
    add-int/lit8 v42, v36, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v43, v0

    mul-int v42, v42, v43

    iget v0, v11, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v43, v0

    add-int v7, v42, v43

    .line 965
    if-lez v7, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v42

    if-gt v7, v0, :cond_37

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    add-int/lit8 v43, v7, -0x1

    invoke-virtual/range {v42 .. v43}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 970
    .restart local v32    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v32, :cond_38

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/PhoneBookEntry;->isEmpty()Z

    move-result v42

    if-eqz v42, :cond_38

    .line 971
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "pbkEntry.index = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 973
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "ANREntry.index = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    iget v0, v11, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 976
    const-string v42, "Becasue the corresponding pbkEntry entry is empty, clear ANR entry."

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 977
    invoke-virtual {v11}, Lcom/android/internal/telephony/AnrRecord;->clear()V

    .line 945
    .end local v7    # "adnRecordNumber":I
    .end local v32    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v36    # "recNum":I
    :cond_32
    :goto_16
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_15

    .line 912
    .end local v10    # "anrLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    .end local v11    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    .end local v12    # "anrRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    .end local v24    # "i":I
    .end local v40    # "searchErr":[Z
    :cond_33
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .restart local v9    # "anrFileList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto/16 :goto_11

    .line 919
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v0, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_12

    .line 1090
    .end local v8    # "anrEntryIndex":I
    .end local v9    # "anrFileList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v13    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "composeErr":Z
    .end local v17    # "efid":I
    .end local v31    # "num":I
    .end local v33    # "queryTimeBundle":Landroid/os/Bundle;
    .end local v34    # "queryTimeStamp":J
    :catch_0
    move-exception v16

    .line 1091
    .local v16, "e":Ljava/lang/Exception;
    const-string v42, "HtcIccPbkEntryCache_QMI"

    const-string v43, "ANR arraylist problem"

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1092
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 930
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v8    # "anrEntryIndex":I
    .restart local v12    # "anrRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    .restart local v13    # "ar":Landroid/os/AsyncResult;
    .restart local v14    # "composeErr":Z
    .restart local v17    # "efid":I
    .restart local v31    # "num":I
    .restart local v33    # "queryTimeBundle":Landroid/os/Bundle;
    .restart local v34    # "queryTimeStamp":J
    :cond_35
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .restart local v10    # "anrLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    goto/16 :goto_13

    .line 937
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_14

    .line 983
    .restart local v7    # "adnRecordNumber":I
    .restart local v11    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    .restart local v24    # "i":I
    .restart local v36    # "recNum":I
    .restart local v40    # "searchErr":[Z
    :cond_37
    const-string v42, "Can not find the corresponding pbkEntry entry. Try to use EF-IAP to recover it."

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 984
    const/4 v14, 0x1

    .line 985
    const/16 v42, 0x1

    aput-boolean v42, v40, v24

    .line 1008
    .end local v36    # "recNum":I
    :cond_38
    :goto_17
    if-lez v7, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v42

    if-gt v7, v0, :cond_3c

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    add-int/lit8 v43, v7, -0x1

    invoke-virtual/range {v42 .. v43}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1011
    .restart local v32    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    move-object/from16 v42, v0

    iget v0, v11, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v43, v0

    aput v43, v42, v8

    .line 1012
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    move-object/from16 v42, v0

    iget-object v0, v11, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v43, v0

    aput-object v43, v42, v8

    .line 1014
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "pbkEntry.index = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1016
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "pbkEntry.indexAnr = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    move-object/from16 v43, v0

    aget v43, v43, v8

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1020
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "pbkEntry.adnumber = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    move-object/from16 v43, v0

    aget-object v43, v43, v8

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 988
    .end local v32    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    .restart local v36    # "recNum":I
    :cond_39
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "The anrRecord.mAdnRecordNumber:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    iget v0, v11, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " is incorrect, the mRecordNums:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 992
    const/4 v14, 0x1

    .line 993
    const/16 v42, 0x1

    aput-boolean v42, v40, v24

    goto/16 :goto_17

    .line 996
    :cond_3a
    const-string v42, "Can not find the corresponding EF-ADN file. Try to use EF-IAP to recover it."

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 997
    const/4 v14, 0x1

    .line 998
    const/16 v42, 0x1

    aput-boolean v42, v40, v24

    goto/16 :goto_17

    .line 1001
    .end local v36    # "recNum":I
    :cond_3b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v42, v0

    mul-int v42, v42, v31

    iget v0, v11, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v43, v0

    add-int v7, v42, v43

    goto/16 :goto_17

    .line 1023
    :cond_3c
    const-string v42, "HtcIccPbkEntryCache_QMI"

    const-string v43, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 1030
    .end local v7    # "adnRecordNumber":I
    .end local v11    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    :cond_3d
    const/16 v42, 0x1

    move/from16 v0, v42

    if-ne v14, v0, :cond_3e

    .line 1031
    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v8, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->parserIAP(II[Z)V

    .line 1034
    :cond_3e
    const/16 v42, 0x2

    move/from16 v0, v42

    if-ge v8, v0, :cond_3f

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    move-object/from16 v42, v0

    const/16 v43, 0x1

    aput-boolean v43, v42, v8

    .line 1041
    const/16 v42, 0x3

    add-int/lit8 v43, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->setSIMSystemProperties(II)V

    .line 1044
    :cond_3f
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "mAnrRecordList num = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1046
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "mAnrRecordList anrEntryIndex = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1049
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "mAnrRecordList size = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1051
    add-int/lit8 v8, v8, 0x1

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getANRnums()I

    move-result v42

    move/from16 v0, v42

    if-ge v8, v0, :cond_40

    const/16 v42, 0x2

    move/from16 v0, v42

    if-ge v8, v0, :cond_40

    .line 1059
    const/16 v42, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 1061
    :cond_40
    add-int/lit8 v31, v31, 0x1

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v42

    move/from16 v0, v31

    move/from16 v1, v42

    if-ge v0, v1, :cond_41

    .line 1063
    const/4 v8, 0x0

    .line 1064
    const/16 v42, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 1068
    :cond_41
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 1072
    .end local v24    # "i":I
    .end local v40    # "searchErr":[Z
    :cond_42
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 1075
    .end local v10    # "anrLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    .end local v12    # "anrRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    :cond_43
    const-string v42, "HtcIccPbkEntryCache_QMI"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "EVENT_LOAD_PB_ANR_DONE Failed, num = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " anrEntryIndex = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " ar.exception = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->clear()V

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->clear()V

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-virtual/range {v42 .. v44}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0x1

    invoke-virtual/range {v42 .. v44}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 1084
    const/16 v42, 0x3

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->setSIMSystemProperties(II)V

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0x0

    aput-boolean v44, v42, v43

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    move-object/from16 v42, v0

    const/16 v43, 0x1

    const/16 v44, 0x0

    aput-boolean v44, v42, v43

    .line 1088
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1098
    .end local v8    # "anrEntryIndex":I
    .end local v13    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "composeErr":Z
    .end local v17    # "efid":I
    .end local v31    # "num":I
    .end local v33    # "queryTimeBundle":Landroid/os/Bundle;
    .end local v34    # "queryTimeStamp":J
    :pswitch_e
    const-string v42, "EVENT_GET_PB_USED_NUM_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1099
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1102
    .restart local v13    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    if-nez v42, :cond_46

    .line 1103
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/internal/telephony/PhoneBookMemory;

    .line 1105
    .local v27, "mPBMemory":Lcom/android/internal/telephony/PhoneBookMemory;
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "get PB length:total="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookMemory;->total:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " used="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookMemory;->used:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1106
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookMemory;->total:I

    move/from16 v42, v0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 1107
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookMemory;->used:I

    move/from16 v42, v0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUsed:I

    .line 1108
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "get PB length:total="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " used="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUsed:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1111
    new-instance v42, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v43, v0

    invoke-direct/range {v42 .. v43}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 1113
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v42, v0

    move/from16 v0, v24

    move/from16 v1, v42

    if-ge v0, v1, :cond_44

    .line 1114
    new-instance v19, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBookEntry;-><init>()V

    .line 1115
    .restart local v19    # "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    add-int/lit8 v42, v24, 0x1

    move/from16 v0, v42

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1113
    add-int/lit8 v24, v24, 0x1

    goto :goto_18

    .line 1119
    .end local v19    # "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_44
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v42, v0

    if-lez v42, :cond_45

    .line 1120
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->pollPBList()V

    goto/16 :goto_0

    .line 1122
    :cond_45
    const-string v42, "load PB complete!! mTotal = 0"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1123
    const/16 v42, 0x0

    move-object/from16 v0, v42

    iput-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1127
    .end local v24    # "i":I
    .end local v27    # "mPBMemory":Lcom/android/internal/telephony/PhoneBookMemory;
    :cond_46
    const-string v42, "Cannot get PB memory"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1130
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 1132
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v42, v0

    if-lez v42, :cond_48

    .line 1133
    new-instance v42, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v43, v0

    invoke-direct/range {v42 .. v43}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 1135
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v42, v0

    move/from16 v0, v24

    move/from16 v1, v42

    if-ge v0, v1, :cond_47

    .line 1136
    new-instance v19, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBookEntry;-><init>()V

    .line 1137
    .restart local v19    # "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    add-int/lit8 v42, v24, 0x1

    move/from16 v0, v42

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1135
    add-int/lit8 v24, v24, 0x1

    goto :goto_19

    .line 1141
    .end local v19    # "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_47
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->pollPBList()V

    goto/16 :goto_0

    .line 1143
    .end local v24    # "i":I
    :cond_48
    const-string v42, "load PB complete!! mTotal = 0"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1144
    const/16 v42, 0x0

    move-object/from16 v0, v42

    iput-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1153
    .end local v13    # "ar":Landroid/os/AsyncResult;
    :pswitch_f
    const-string v42, "EVENT_LOAD_PB_ENTRIES_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1154
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1155
    .restart local v13    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    if-nez v42, :cond_49

    .line 1156
    const-string v42, "EVENT_LOAD_PB_ENTRIES_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1157
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handlePollPBResult(ILandroid/os/AsyncResult;)V

    .line 1162
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    move-object/from16 v42, v0

    const/16 v43, 0x0

    aget v44, v42, v43

    add-int/lit8 v44, v44, -0x1

    aput v44, v42, v43

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    move-object/from16 v42, v0

    const/16 v43, 0x0

    aget v42, v42, v43

    if-nez v42, :cond_0

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iput-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1167
    const-string v42, "load Phonebook Entries Complete!! "

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1169
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v42

    if-nez v42, :cond_0

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1159
    :cond_49
    const-string v42, "Error on loading PB"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto :goto_1a

    .line 1181
    .end local v13    # "ar":Landroid/os/AsyncResult;
    :pswitch_10
    const-string v42, "EVENT_ADD_PB_ENTRY_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1182
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1183
    .restart local v13    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    .line 1184
    .local v29, "msgNum":I
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1185
    .restart local v19    # "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/os/Message;

    .line 1187
    .local v39, "response":Landroid/os/Message;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    if-nez v42, :cond_4a

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v43

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1189
    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1192
    :cond_4a
    const-string v42, "Cannot add PB entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1194
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBookEntry;->clear()V

    .line 1196
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v42, v0

    if-eqz v42, :cond_4b

    .line 1197
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/internal/telephony/CommandException;

    check-cast v42, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v20

    .line 1200
    .local v20, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v42, Lcom/android/internal/telephony/CommandException$Error;->PB_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v20

    move-object/from16 v1, v42

    if-ne v0, v1, :cond_4b

    .line 1201
    const-string v42, "Cannot add PB entry PB_MEM_FULL"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1202
    const-string v42, "AdnFull"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1207
    .end local v20    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_4b
    const-string v42, "add falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1214
    .end local v13    # "ar":Landroid/os/AsyncResult;
    .end local v19    # "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v29    # "msgNum":I
    .end local v39    # "response":Landroid/os/Message;
    :pswitch_11
    const-string v42, "EVENT_UPDATE_PB_ENTRY_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1215
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1216
    .restart local v13    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    .line 1217
    .restart local v29    # "msgNum":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v31, v0

    .line 1218
    .restart local v31    # "num":I
    iget-object v5, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/uicc/HtcAdnRecord;

    .line 1219
    .restart local v5    # "adnRecord":Lcom/android/internal/telephony/uicc/HtcAdnRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/os/Message;

    .line 1221
    .restart local v39    # "response":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1223
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    if-nez v42, :cond_55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    if-eqz v42, :cond_55

    .line 1224
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v42, v0

    mul-int v42, v42, v31

    iget v0, v5, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->recordNumber:I

    move/from16 v43, v0

    add-int v7, v42, v43

    .line 1226
    .restart local v7    # "adnRecordNumber":I
    if-lez v7, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v42

    if-gt v7, v0, :cond_54

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    add-int/lit8 v43, v7, -0x1

    invoke-virtual/range {v42 .. v43}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1228
    .restart local v32    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v32, :cond_4c

    .line 1229
    iget-object v0, v5, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 1230
    iget-object v0, v5, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->number:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 1231
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    move-object/from16 v42, v0

    if-eqz v42, :cond_4f

    .line 1232
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    .line 1241
    :cond_4c
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/ArrayList;

    iget v0, v5, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->recordNumber:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v43

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1244
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->hasExtendedRecord()Z

    move-result v42

    if-eqz v42, :cond_53

    .line 1246
    const/16 v17, 0x0

    .line 1247
    .restart local v17    # "efid":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v42, v0

    if-nez v42, :cond_50

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    if-eqz v42, :cond_4d

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_4d

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    const/16 v43, 0xc2

    move-object/from16 v0, v42

    move/from16 v1, v31

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v17

    .line 1257
    :cond_4d
    :goto_1c
    if-eqz v17, :cond_52

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    if-eqz v42, :cond_51

    .line 1260
    iget v0, v5, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->extRecord:I

    move/from16 v23, v0

    .line 1261
    .local v23, "ext1index":I
    if-lez v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v23

    move/from16 v1, v42

    if-gt v0, v1, :cond_0

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    add-int/lit8 v43, v23, -0x1

    invoke-virtual/range {v42 .. v43}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    .line 1264
    .local v22, "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v29

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1265
    const/16 v42, 0xf

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    move/from16 v43, v0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v43

    move/from16 v3, v44

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v38

    .line 1268
    .local v38, "res":Landroid/os/Message;
    iget-boolean v0, v5, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->mClearExt1Record:Z

    move/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_4e

    .line 1269
    const/16 v42, 0xff

    move/from16 v0, v42

    iput v0, v5, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->extRecord:I

    .line 1270
    const/16 v42, 0x0

    move/from16 v0, v42

    iput-boolean v0, v5, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->mClearExt1Record:Z

    .line 1272
    :cond_4e
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcExt1Record;->mRecId:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v22

    move/from16 v3, v17

    move-object/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateExt1ByIndex(ILcom/android/internal/telephony/uicc/HtcExt1Record;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1234
    .end local v17    # "efid":I
    .end local v22    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    .end local v23    # "ext1index":I
    .end local v38    # "res":Landroid/os/Message;
    :cond_4f
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    move-object/from16 v42, v0

    if-nez v42, :cond_4c

    .line 1235
    const/16 v42, -0x1

    move/from16 v0, v42

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    .line 1236
    const/16 v42, -0x1

    move/from16 v0, v42

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->hidden:I

    .line 1237
    const/16 v42, -0x1

    move/from16 v0, v42

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->adtype:I

    goto/16 :goto_1b

    .line 1255
    .restart local v17    # "efid":I
    :cond_50
    const/16 v17, 0x6f4a

    goto/16 :goto_1c

    .line 1275
    :cond_51
    const-string v42, "HtcIccPbkEntryCache_QMI"

    const-string v43, "mExt1RecordList is null, but it shall not"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1278
    :cond_52
    const-string v42, "update falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1281
    .end local v17    # "efid":I
    :cond_53
    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1284
    .end local v32    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_54
    const-string v42, "update falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1287
    .end local v7    # "adnRecordNumber":I
    :cond_55
    const-string v42, "Cannot update PB entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1289
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v42, v0

    if-eqz v42, :cond_56

    .line 1290
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/internal/telephony/CommandException;

    check-cast v42, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v20

    .line 1293
    .restart local v20    # "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v42, Lcom/android/internal/telephony/CommandException$Error;->PB_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v20

    move-object/from16 v1, v42

    if-ne v0, v1, :cond_56

    .line 1294
    const-string v42, "Cannot update PB entry PB_MEM_FULL"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1295
    const-string v42, "AdnFull"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1300
    .end local v20    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_56
    const-string v42, "update falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1306
    .end local v5    # "adnRecord":Lcom/android/internal/telephony/uicc/HtcAdnRecord;
    .end local v13    # "ar":Landroid/os/AsyncResult;
    .end local v29    # "msgNum":I
    .end local v31    # "num":I
    .end local v39    # "response":Landroid/os/Message;
    :pswitch_12
    const-string v42, "EVENT_UPDATE_EXT1_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1307
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1308
    .restart local v13    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    .line 1309
    .restart local v29    # "msgNum":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/os/Message;

    .line 1310
    .restart local v39    # "response":Landroid/os/Message;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    if-nez v42, :cond_57

    .line 1311
    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1313
    :cond_57
    const-string v42, "Cannot update EXT1 entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1314
    const-string v42, "update failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1320
    .end local v13    # "ar":Landroid/os/AsyncResult;
    .end local v29    # "msgNum":I
    .end local v39    # "response":Landroid/os/Message;
    :pswitch_13
    const-string v42, "EVENT_UPDATE_ANR_EXT1_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1321
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1323
    .restart local v13    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    if-nez v42, :cond_58

    .line 1324
    const-string v42, "Update EXT1 entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1326
    :cond_58
    const-string v42, "Cannot update EXT1 entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1332
    .end local v13    # "ar":Landroid/os/AsyncResult;
    :pswitch_14
    const-string v42, "EVENT_DELETE_PB_ENTRY_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1333
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1334
    .restart local v13    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    .line 1335
    .restart local v29    # "msgNum":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v37, v0

    .line 1336
    .local v37, "recordNumber":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/os/Message;

    .line 1338
    .restart local v39    # "response":Landroid/os/Message;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    if-nez v42, :cond_59

    .line 1339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    add-int/lit8 v43, v37, -0x1

    invoke-virtual/range {v42 .. v43}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1341
    .restart local v19    # "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBookEntry;->clear()V

    .line 1342
    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1344
    .end local v19    # "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_59
    const-string v42, "Cannot delete PB entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1345
    const-string v42, "delete falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1351
    .end local v13    # "ar":Landroid/os/AsyncResult;
    .end local v29    # "msgNum":I
    .end local v37    # "recordNumber":I
    .end local v39    # "response":Landroid/os/Message;
    :pswitch_15
    const-string v42, "EVENT_UPDATE_IAP_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1352
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1353
    .restart local v13    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 1354
    .restart local v31    # "num":I
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    if-nez v42, :cond_5c

    .line 1355
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/internal/telephony/IAPRecord;

    .line 1357
    .local v19, "entry":Lcom/android/internal/telephony/IAPRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v31

    move/from16 v1, v42

    if-ge v0, v1, :cond_5b

    .line 1358
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v42, v0

    if-lez v42, :cond_5a

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/ArrayList;

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v43

    move/from16 v1, v42

    if-gt v0, v1, :cond_5a

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v43

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1362
    const-string v42, "HtcIccPbkEntryCache_QMI"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "num = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    const-string v42, "HtcIccPbkEntryCache_QMI"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "IAPRecord.mRecordNumber = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1365
    :cond_5a
    const-string v42, "HtcIccPbkEntryCache_QMI"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "out of IAP index = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1368
    :cond_5b
    const-string v42, "HtcIccPbkEntryCache_QMI"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "out of mIAPRecordList.size() = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1371
    .end local v19    # "entry":Lcom/android/internal/telephony/IAPRecord;
    :cond_5c
    const-string v42, "Update IAP entry failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1377
    .end local v13    # "ar":Landroid/os/AsyncResult;
    .end local v31    # "num":I
    :pswitch_16
    const-string v42, "EVENT_UPDATE_EMAIL_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1379
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1380
    .restart local v13    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 1382
    .restart local v31    # "num":I
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    if-nez v42, :cond_61

    .line 1383
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/internal/telephony/EmailRecord;

    .line 1384
    .local v19, "entry":Lcom/android/internal/telephony/EmailRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v31

    move/from16 v1, v42

    if-ge v0, v1, :cond_60

    .line 1385
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/EmailRecord;->isEmpty()Z

    move-result v42

    if-nez v42, :cond_5d

    .line 1386
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v42, v0

    if-lez v42, :cond_5f

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/ArrayList;

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v43

    move/from16 v1, v42

    if-gt v0, v1, :cond_5f

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v43

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1390
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v42, v0

    mul-int v42, v42, v31

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v43, v0

    add-int v7, v42, v43

    .line 1391
    .restart local v7    # "adnRecordNumber":I
    if-lez v7, :cond_5e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v42

    if-gt v7, v0, :cond_5e

    .line 1393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    add-int/lit8 v43, v7, -0x1

    invoke-virtual/range {v42 .. v43}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1395
    .restart local v32    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v32, :cond_5d

    .line 1396
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v42, v0

    move/from16 v0, v42

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    .line 1397
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 1407
    .end local v7    # "adnRecordNumber":I
    .end local v32    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_5d
    :goto_1d
    const-string v42, "HtcIccPbkEntryCache_QMI"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "num = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    const-string v42, "HtcIccPbkEntryCache_QMI"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "EmailRecord.mRecordNumber = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    const-string v42, "HtcIccPbkEntryCache_QMI"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "EmailRecord.mAdnRecordNumber ="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v42, v0

    if-eqz v42, :cond_0

    .line 1412
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "EmailRecord.mEmailAddress ="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1400
    .restart local v7    # "adnRecordNumber":I
    :cond_5e
    const-string v42, "HtcIccPbkEntryCache_QMI"

    const-string v43, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 1404
    .end local v7    # "adnRecordNumber":I
    :cond_5f
    const-string v42, "HtcIccPbkEntryCache_QMI"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "out of E-mail index = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 1415
    :cond_60
    const-string v42, "HtcIccPbkEntryCache_QMI"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "out of mEmailRecordList.size() = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1418
    .end local v19    # "entry":Lcom/android/internal/telephony/EmailRecord;
    :cond_61
    const-string v42, "HtcIccPbkEntryCache_QMI"

    const-string v43, "updateEmailRecord failed"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1424
    .end local v13    # "ar":Landroid/os/AsyncResult;
    .end local v31    # "num":I
    :pswitch_17
    const-string v42, "EVENT_UPDATE_ANR_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1426
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 1427
    .restart local v31    # "num":I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    .line 1429
    .restart local v8    # "anrEntryIndex":I
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1431
    .restart local v13    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    if-nez v42, :cond_6a

    const/16 v42, 0x2

    move/from16 v0, v42

    if-ge v8, v0, :cond_6a

    .line 1432
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/internal/telephony/AnrRecord;

    .line 1434
    .local v19, "entry":Lcom/android/internal/telephony/AnrRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v31

    move/from16 v1, v42

    if-ge v0, v1, :cond_69

    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/ArrayList;

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v42

    if-ge v8, v0, :cond_68

    .line 1436
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/AnrRecord;->isEmpty()Z

    move-result v42

    if-nez v42, :cond_62

    .line 1438
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v42, v0

    if-lez v42, :cond_66

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/ArrayList;

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v43

    move/from16 v1, v42

    if-gt v0, v1, :cond_66

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v43

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1443
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v42, v0

    mul-int v42, v42, v31

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v43, v0

    add-int v7, v42, v43

    .line 1445
    .restart local v7    # "adnRecordNumber":I
    if-lez v7, :cond_65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v42

    if-gt v7, v0, :cond_65

    .line 1447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    add-int/lit8 v43, v7, -0x1

    invoke-virtual/range {v42 .. v43}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1449
    .restart local v32    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v32, :cond_62

    .line 1450
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    move-object/from16 v42, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v43, v0

    aput v43, v42, v8

    .line 1451
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v43, v0

    aput-object v43, v42, v8

    .line 1462
    .end local v7    # "adnRecordNumber":I
    .end local v32    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_62
    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    if-eqz v42, :cond_64

    .line 1463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_64

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    const/16 v43, 0xc2

    move-object/from16 v0, v42

    move/from16 v1, v31

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v17

    .line 1466
    .restart local v17    # "efid":I
    if-eqz v17, :cond_64

    .line 1467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    if-eqz v42, :cond_67

    .line 1468
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    move/from16 v23, v0

    .line 1469
    .restart local v23    # "ext1index":I
    if-lez v23, :cond_64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v23

    move/from16 v1, v42

    if-gt v0, v1, :cond_64

    .line 1471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    add-int/lit8 v43, v23, -0x1

    invoke-virtual/range {v42 .. v43}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    .line 1473
    .restart local v22    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    const/16 v42, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v38

    .line 1475
    .restart local v38    # "res":Landroid/os/Message;
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    move/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_63

    .line 1476
    const/16 v42, 0xff

    move/from16 v0, v42

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 1477
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 1479
    :cond_63
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcExt1Record;->mRecId:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v22

    move/from16 v3, v17

    move-object/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateExt1ByIndex(ILcom/android/internal/telephony/uicc/HtcExt1Record;ILandroid/os/Message;)V

    .line 1490
    .end local v17    # "efid":I
    .end local v22    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    .end local v23    # "ext1index":I
    .end local v38    # "res":Landroid/os/Message;
    :cond_64
    :goto_1f
    const-string v42, "HtcIccPbkEntryCache_QMI"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "num = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    const-string v42, "HtcIccPbkEntryCache_QMI"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "anrEntryIndex = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    const-string v42, "HtcIccPbkEntryCache_QMI"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "AnrRecord.mRecordNumber = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    const-string v42, "HtcIccPbkEntryCache_QMI"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "AnrRecord.mAdnRecordNumber ="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v42, v0

    if-eqz v42, :cond_0

    .line 1496
    const-string v42, "HtcIccPbkEntryCache_QMI"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "AnrRecord.mNumber ="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1454
    .restart local v7    # "adnRecordNumber":I
    :cond_65
    const-string v42, "HtcIccPbkEntryCache_QMI"

    const-string v43, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 1458
    .end local v7    # "adnRecordNumber":I
    :cond_66
    const-string v42, "HtcIccPbkEntryCache_QMI"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "out of Anr index = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 1483
    .restart local v17    # "efid":I
    :cond_67
    const-string v42, "HtcIccPbkEntryCache_QMI"

    const-string v43, "mExt1RecordList is null, but it shall not"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 1499
    .end local v17    # "efid":I
    :cond_68
    const-string v42, "HtcIccPbkEntryCache_QMI"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "anrEntryIndex out of mAnrRecordLists.get(num).size = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1503
    :cond_69
    const-string v42, "HtcIccPbkEntryCache_QMI"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "num out of mAnrRecordLists.size() = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1506
    .end local v19    # "entry":Lcom/android/internal/telephony/AnrRecord;
    :cond_6a
    const-string v42, "HtcIccPbkEntryCache_QMI"

    const-string v43, "updateAnrRecord failed"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 313
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_14
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_8
        :pswitch_12
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_13
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method handleNextSequence(III)V
    .locals 17
    .param p1, "event"    # I
    .param p2, "num"    # I
    .param p3, "index"    # I

    .prologue
    .line 2973
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v13, :cond_1

    .line 3159
    :cond_0
    :goto_0
    return-void

    .line 2977
    :cond_1
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 2978
    .local v11, "queryTimeBundle":Landroid/os/Bundle;
    const-string v13, "query_sim_contact_file_timestamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    invoke-virtual {v11, v13, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2980
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v13, :cond_0

    .line 2981
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 2982
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->convertEventToTag(II)I

    move-result v12

    .line 2983
    .local v12, "tag":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move/from16 v0, p2

    invoke-virtual {v13, v0, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v6

    .line 2984
    .local v6, "efid":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3060
    :pswitch_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Read EF-EXT1 num:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3064
    new-instance v13, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v13, v14, v15}, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v14, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v14, v1, v6, v11}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v6, v14}, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto :goto_0

    .line 2990
    :pswitch_1
    new-instance v13, Lcom/android/internal/telephony/UIDRecordLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v13, v14, v15}, Lcom/android/internal/telephony/UIDRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v14, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v14, v1, v6, v11}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v6, v14}, Lcom/android/internal/telephony/UIDRecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 3003
    :pswitch_2
    new-instance v13, Lcom/android/internal/telephony/uicc/ADNRecordLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v16, v0

    invoke-direct/range {v13 .. v16}, Lcom/android/internal/telephony/uicc/ADNRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v14, 0x9

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v14, v1, v6, v11}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v6, v14}, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 3012
    :pswitch_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Read EF-IAP num:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3016
    new-instance v13, Lcom/android/internal/telephony/IAPRecordLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v13, v14, v15}, Lcom/android/internal/telephony/IAPRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v14, 0xb

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v14, v1, v6, v11}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v6, v14}, Lcom/android/internal/telephony/IAPRecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 3024
    :pswitch_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Read EF-EMAIL num:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3025
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 3026
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 3027
    .local v7, "fileindex":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v7, v13, :cond_4

    .line 3028
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3030
    add-int/lit8 p2, p2, 0x1

    .line 3031
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v13

    move/from16 v0, p2

    if-ge v0, v13, :cond_2

    .line 3032
    const/16 v13, 0xc

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v13, v1, v14}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 3034
    :cond_2
    const/16 v13, 0xd

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v10

    .line 3035
    .local v10, "next_event":I
    if-eqz v10, :cond_3

    .line 3036
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v13, v14}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 3038
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 3042
    .end local v10    # "next_event":I
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fileindex:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ">"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "EmailRecordList.size():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3046
    .end local v7    # "fileindex":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v9

    .line 3051
    .local v9, "inIAP":Z
    new-instance v13, Lcom/android/internal/telephony/EmailRecordLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v13, v14, v15}, Lcom/android/internal/telephony/EmailRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v14, 0xc

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v14, v1, v6, v11}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v6, v9, v14}, Lcom/android/internal/telephony/EmailRecordLoader;->loadAllFromEF(IZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 3072
    .end local v9    # "inIAP":Z
    :pswitch_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Read EF-ANR num"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "index:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3073
    const/4 v8, 0x1

    .line 3074
    .local v8, "flag":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move/from16 v0, p3

    if-ge v0, v13, :cond_8

    .line 3075
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 3076
    .local v3, "anrFileList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 3077
    const/4 v8, 0x0

    .line 3078
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 3080
    .restart local v7    # "fileindex":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v7, v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move/from16 v0, p3

    if-ge v0, v13, :cond_d

    .line 3082
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 3087
    .local v5, "anrRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    if-nez p3, :cond_9

    .line 3088
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3093
    .local v4, "anrLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    :goto_1
    if-eqz v4, :cond_6

    .line 3094
    move/from16 v0, p3

    invoke-virtual {v4, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3095
    if-nez p3, :cond_a

    .line 3096
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v13, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3102
    :cond_6
    :goto_2
    const/4 v13, 0x2

    move/from16 v0, p3

    if-ge v0, v13, :cond_7

    .line 3108
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v14, 0x1

    aput-boolean v14, v13, p3

    .line 3109
    const/4 v13, 0x3

    add-int/lit8 v14, p3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->setSIMSystemProperties(II)V

    .line 3112
    :cond_7
    add-int/lit8 p3, p3, 0x1

    .line 3113
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getANRnums()I

    move-result v13

    move/from16 v0, p3

    if-ge v0, v13, :cond_b

    const/4 v13, 0x2

    move/from16 v0, p3

    if-ge v0, v13, :cond_b

    .line 3120
    const/16 v13, 0xd

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v13, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 3140
    .end local v3    # "anrFileList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v4    # "anrLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    .end local v5    # "anrRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    .end local v7    # "fileindex":I
    :cond_8
    :goto_3
    if-eqz v8, :cond_0

    .line 3141
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v9

    .line 3146
    .restart local v9    # "inIAP":Z
    new-instance v13, Lcom/android/internal/telephony/AnrRecordLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v16, v0

    invoke-direct/range {v13 .. v16}, Lcom/android/internal/telephony/AnrRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v14, 0xd

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v14, v1, v2, v11}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v6, v9, v14}, Lcom/android/internal/telephony/AnrRecordLoader;->loadAllFromEF(IZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 3090
    .end local v9    # "inIAP":Z
    .restart local v3    # "anrFileList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v5    # "anrRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    .restart local v7    # "fileindex":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .restart local v4    # "anrLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    goto :goto_1

    .line 3098
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v13, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3122
    :cond_b
    add-int/lit8 p2, p2, 0x1

    .line 3123
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v13

    move/from16 v0, p2

    if-ge v0, v13, :cond_c

    .line 3124
    const/16 v13, 0xd

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v13, v1, v14}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto :goto_3

    .line 3128
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto :goto_3

    .line 3132
    .end local v4    # "anrLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    .end local v5    # "anrRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    :cond_d
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fileindex:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " > "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "mAnrRecordLists.size():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "or index: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " > "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "mAnrRecordLists.get(fileindex).size():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2984
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isSIMPhonebookFileId(I)Z
    .locals 2
    .param p1, "efid"    # I

    .prologue
    .line 3296
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_0

    .line 3297
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3298
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isSIMPhonebookFileId(I)Z

    move-result v0

    .line 3301
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestLoadAllPBEntry(Landroid/os/Message;)V
    .locals 8
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/16 v7, 0x6f4a

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1605
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->misloading:Z

    if-nez v2, :cond_2

    .line 1606
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getPbkEntryListIfLoaded()Ljava/util/ArrayList;

    move-result-object v1

    .line 1610
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/PhoneBookEntry;>;"
    if-eqz v1, :cond_2

    .line 1611
    if-eqz p1, :cond_0

    .line 1612
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1613
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1615
    :cond_0
    const-string v2, "PB has already loaded"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1658
    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/PhoneBookEntry;>;"
    :cond_1
    :goto_0
    return-void

    .line 1619
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1621
    const-string v2, "HtcIccPbkEntryCache_QMI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLoadAllPBEntry()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v5, :cond_1

    .line 1636
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v2, v2, Lcom/android/internal/telephony/uicc/UsimFileHandler;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v2, v2, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v2, :cond_5

    .line 1638
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v2, :cond_4

    .line 1639
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->loadEfPBRFromUsim(Landroid/os/Message;)V

    .line 1657
    :cond_4
    :goto_1
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->misloading:Z

    goto :goto_0

    .line 1642
    :cond_5
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    .line 1643
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v2, :cond_6

    .line 1644
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->setPbrPresent(Z)V

    .line 1647
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1648
    .local v0, "queryTimeStamp":Landroid/os/Bundle;
    const-string v2, "query_sim_contact_file_timestamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1649
    new-instance v2, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v3, v4}, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v6, v7, v0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto :goto_1
.end method

.method public setupIccFileHandler(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 1
    .param p1, "iccFileHandler"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    .line 3313
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 3314
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_0

    .line 3315
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->setupIccFileHandler(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 3318
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-nez v0, :cond_1

    .line 3319
    const-string v0, "setupIccFileHandler: set mIccFileHandler to null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3322
    :cond_1
    return-void
.end method

.method updateADNByIndex(ILcom/android/internal/telephony/uicc/HtcAdnRecord;ILandroid/os/Message;)V
    .locals 4
    .param p1, "recordIndex"    # I
    .param p2, "adnRecord"    # Lcom/android/internal/telephony/uicc/HtcAdnRecord;
    .param p3, "efid"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2851
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateADNByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2857
    new-instance v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/ADNRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-virtual {v0, p3, p1, p2, p4}, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->updateEF(IILcom/android/internal/telephony/uicc/HtcAdnRecord;Landroid/os/Message;)V

    .line 2863
    :cond_0
    return-void
.end method

.method updateAnrByIndex(ILcom/android/internal/telephony/AnrRecord;IILandroid/os/Message;)V
    .locals 6
    .param p1, "recordIndex"    # I
    .param p2, "anrRecord"    # Lcom/android/internal/telephony/AnrRecord;
    .param p3, "efid"    # I
    .param p4, "anrEntryIndex"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 2824
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAnrByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v4

    .line 2827
    .local v4, "inIAP":Z
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2831
    new-instance v0, Lcom/android/internal/telephony/AnrRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/AnrRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    move v1, p3

    move v2, p1

    move-object v3, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/AnrRecordLoader;->updateEF(IILcom/android/internal/telephony/AnrRecord;ZLandroid/os/Message;)V

    .line 2835
    :cond_0
    return-void
.end method

.method updateEmailByIndex(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V
    .locals 6
    .param p1, "efid"    # I
    .param p2, "recordIndex"    # I
    .param p3, "emailRecord"    # Lcom/android/internal/telephony/EmailRecord;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2808
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEmailByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    .line 2811
    .local v4, "inIAP":Z
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2816
    new-instance v0, Lcom/android/internal/telephony/EmailRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/EmailRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/EmailRecordLoader;->updateEF(IILcom/android/internal/telephony/EmailRecord;ZLandroid/os/Message;)V

    .line 2820
    :cond_0
    return-void
.end method

.method updateExt1ByIndex(ILcom/android/internal/telephony/uicc/HtcExt1Record;ILandroid/os/Message;)V
    .locals 3
    .param p1, "recordIndex"    # I
    .param p2, "ext1Record"    # Lcom/android/internal/telephony/uicc/HtcExt1Record;
    .param p3, "efid"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2866
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateExt1ByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2872
    new-instance v0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-virtual {v0, p3, p1, p2, p4}, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->updateEF(IILcom/android/internal/telephony/uicc/HtcExt1Record;Landroid/os/Message;)V

    .line 2877
    :cond_0
    return-void
.end method

.method updateIAPByIndex(ILcom/android/internal/telephony/IAPRecord;ILandroid/os/Message;)V
    .locals 3
    .param p1, "recordIndex"    # I
    .param p2, "iapRecord"    # Lcom/android/internal/telephony/IAPRecord;
    .param p3, "efid"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2838
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIAPByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2839
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2844
    new-instance v0, Lcom/android/internal/telephony/IAPRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IAPRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-virtual {v0, p3, p1, p2, p4}, Lcom/android/internal/telephony/IAPRecordLoader;->updateEF(IILcom/android/internal/telephony/IAPRecord;Landroid/os/Message;)V

    .line 2848
    :cond_0
    return-void
.end method

.method public updatePBKEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 12
    .param p1, "recordNumber"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "number1"    # Ljava/lang/String;
    .param p5, "number2"    # Ljava/lang/String;
    .param p6, "newEmail"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 1921
    const-string v1, "updatePBKEntry()"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1923
    const/4 v7, 0x0

    .line 1925
    .local v7, "error":I
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v1, :cond_0

    .line 1926
    const-string v1, "mPhone null"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 2031
    :goto_0
    return-void

    .line 1930
    :cond_0
    invoke-static {p3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1931
    .local v10, "phonenumber":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1932
    .local v2, "phonenumber1":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1934
    .local v3, "phonenumber2":Ljava/lang/String;
    invoke-direct {p0, v10, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->checkNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1936
    if-eqz v7, :cond_1

    .line 1937
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1942
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v9

    .line 1945
    .local v9, "iccCardInterface":Lcom/android/internal/telephony/IccCard;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    array-length v1, v1

    if-ge v8, v1, :cond_2

    .line 1946
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v4, 0x0

    aput-byte v4, v1, v8

    .line 1945
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1951
    :cond_2
    if-eqz v9, :cond_3

    invoke-interface {v9}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v4, :cond_3

    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-nez v1, :cond_3

    .line 1953
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1958
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    .line 1959
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1961
    .local v6, "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v6, :cond_4

    iget v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-gtz v1, :cond_5

    .line 1962
    :cond_4
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1964
    :cond_5
    iget v1, v6, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v1, v1, -0x1

    iget v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v5, v1, v4

    .line 1965
    .local v5, "num":I
    const/4 v7, 0x0

    move-object v1, p0

    move-object/from16 v4, p6

    .line 1966
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->checkFilesStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/PhoneBookEntry;)I

    move-result v7

    .line 1967
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    const/4 v4, 0x1

    if-ne v1, v4, :cond_6

    .line 1968
    move-object v3, v2

    .line 1969
    const-string v2, ""

    .line 1972
    :cond_6
    if-eqz v7, :cond_7

    .line 1973
    packed-switch v7, :pswitch_data_0

    .line 1984
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1981
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MemoryFull:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1990
    :cond_7
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    const/4 v4, 0x1

    if-ne v1, v4, :cond_8

    .line 1991
    move-object/from16 v0, p6

    invoke-direct {p0, v0, v6}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateEmailRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;)V

    .line 1997
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v4, 0x0

    aget-boolean v1, v1, v4

    const/4 v4, 0x1

    if-ne v1, v4, :cond_9

    .line 1998
    const/4 v1, 0x0

    invoke-direct {p0, v2, v6, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 2001
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v4, 0x1

    aget-boolean v1, v1, v4

    const/4 v4, 0x1

    if-ne v1, v4, :cond_a

    .line 2002
    const/4 v1, 0x1

    invoke-direct {p0, v3, v6, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 2008
    :cond_a
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2009
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    const/4 v4, 0x1

    if-eq v1, v4, :cond_b

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v4, 0x0

    aget-boolean v1, v1, v4

    const/4 v4, 0x1

    if-eq v1, v4, :cond_b

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v4, 0x1

    aget-boolean v1, v1, v4

    const/4 v4, 0x1

    if-ne v1, v4, :cond_c

    .line 2011
    :cond_b
    iget v1, v6, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateIAP(IZ)V

    .line 2018
    :cond_c
    move-object/from16 v0, p7

    invoke-direct {p0, p2, v10, v6, v0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateADNRecord(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V

    .line 2022
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, v1, v4, v11}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updatePSCRecord(ZII)V

    goto/16 :goto_0

    .line 2027
    .end local v5    # "num":I
    .end local v6    # "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_d
    const-string v1, "HtcIccPbkEntryCache_QMI"

    const-string v4, "mSimPbkEntryList = null"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1973
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
