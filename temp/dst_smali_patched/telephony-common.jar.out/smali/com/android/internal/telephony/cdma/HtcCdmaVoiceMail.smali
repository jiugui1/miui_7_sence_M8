.class public Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;
.super Landroid/os/Handler;
.source "HtcCdmaVoiceMail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$1;,
        Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;
    }
.end annotation


# static fields
.field private static final CHAR_COLON:C = ':'

.field private static final CHAR_SLASH:[C

.field private static final DEBUG:Z

.field private static final EVENT__FETCH_CARRIER_ID:I = 0x1

.field private static final EVENT__FETCH_CARRIER_ID2:I = 0x2

.field private static final EVENT__FETCH_CARRIER_ID3:I = 0x3

.field private static final EVENT__MDN_SETUP:I = 0xb

.field private static final EVENT__MDN_TO_DEFAULT:I = 0xa

.field private static final EVENT__TAG_MDN_SETUP:I = 0xc

.field private static final EVENT__UNSOL_CDMA_MWI:I = 0x64

.field private static final EVENT__UPDATE_USIM_DONE:I = 0xd

.field private static final LOG_PREFIX:Ljava/lang/String; = "VM-"

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field public static final REASON_MDN_LOADED:I = 0x3

.field public static final REASON_NVREADY_DEFAULT_FILLIN:I = 0x2

.field public static final REASON_OTASP_UPDATE:I = 0x5

.field public static final REASON_POWERON_DEFAULT_FILLIN:I = 0x1

.field public static final REASON_RADIO_OFF:I = 0x4

.field public static final REASON_TAG_MDN_EXTERN_UPDATE:I = 0x6

.field private static final REQUEST_STATUS__CID_CHK:I = 0x2

.field private static final REQUEST_STATUS__NEED_RUN:I = 0x1

.field private static final REQUEST_STATUS__NONE:I = 0x0

.field private static final SECURITY_DEBUG:Z = false

.field private static final spVoiceMail_prev_number:Ljava/lang/String; = "vm_prev_number_key_cdma"


# instance fields
.field private mCarrierId:Ljava/lang/Integer;

.field private mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mUnsolCdmaMWIenable:Z

.field private mVmRequestList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;",
            ">;"
        }
    .end annotation
.end field

.field private spVoiceMail_number:Ljava/lang/String;

.field private voicemailNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->DEBUG:Z

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->CHAR_SLASH:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x2fs
        0x5cs
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/PhoneNotifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "countPartSharePref"    # Ljava/lang/String;
    .param p4, "numberPartSharePref"    # Ljava/lang/String;
    .param p5, "tagPartSharePref"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mVmRequestList:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iput-object p4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->spVoiceMail_number:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mUnsolCdmaMWIenable:Z

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->cdmaWMIfromTraditionalWmInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForMsgWaitIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mUnsolCdmaMWIenable:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "CDMA"

    const-string v1, "VM-No RIL for MWI support"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private broadcastVMNumChanged()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.htc.intent.action.VMNumChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "vm_intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v1, :cond_0

    const-string v1, "phone_type"

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "CDMA"

    const-string v2, "VM-broadcastVMNumChanged:mCdmaPhone is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private completeVmRequest(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;)V
    .locals 6
    .param p1, "completedRequest"    # Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, "strBuf":Ljava/lang/StringBuilder;
    const-string v2, "VM-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "done request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->CHAR_SLASH:[C

    aget-char v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->reason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->CHAR_SLASH:[C

    aget-char v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->number:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->CHAR_SLASH:[C

    aget-char v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mVmRequestList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->CHAR_SLASH:[C

    aget-char v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->voicemailNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CDMA"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mVmRequestList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mVmRequestList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;

    .local v0, "request":Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->response:Landroid/os/Message;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->response:Landroid/os/Message;

    invoke-static {v2, v5, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->response:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mVmRequestList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mVmRequestList:Ljava/util/LinkedList;

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "request":Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;
    check-cast v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;

    .restart local v0    # "request":Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mVmRequestList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestType:I

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->sendMessage(Landroid/os/Message;)Z

    .end local v0    # "request":Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;
    :cond_3
    return-void
.end method

.method private decodeCarrierId(Landroid/os/AsyncResult;)Ljava/lang/Integer;
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v0, 0x0

    .local v0, "cid":Ljava/lang/Integer;
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    :try_start_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "command":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xa

    const/16 v4, 0xc

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x8

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v1    # "command":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getGsmIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .local v1, "iccr":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/uicc/IccCardProxy;

    move-result-object v0

    .local v0, "iccCdPxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .end local v0    # "iccCdPxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    :cond_0
    return-object v1
.end method

.method private mdnSetup(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;)V
    .locals 6
    .param p1, "request"    # Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;

    .prologue
    const/4 v1, 0x2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->number:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->needCarrierId()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestStatus:I

    if-ge v0, v1, :cond_1

    iput v1, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestStatus:I

    const/4 v0, 0x1

    iget v1, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestType:I

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->number:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    iget v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->reason:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->updateNumber(Landroid/content/SharedPreferences;ZLjava/lang/String;Ljava/lang/Integer;I)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->completeVmRequest(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;)V

    goto :goto_0
.end method

.method private mdnToDefault(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;)V
    .locals 8
    .param p1, "request"    # Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    .local v2, "forceUpdate":Z
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .local v3, "currentMdn":Ljava/lang/String;
    iget v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->reason:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->needCarrierId()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestStatus:I

    if-ge v0, v6, :cond_2

    iput v6, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestStatus:I

    iget v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestType:I

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v4, "cdma_set_default_vm_number_as_mdn"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    const/4 v3, 0x0

    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    iget v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->reason:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->updateNumber(Landroid/content/SharedPreferences;ZLjava/lang/String;Ljava/lang/Integer;I)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->completeVmRequest(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->needCarrierId()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestStatus:I

    if-ge v0, v6, :cond_4

    iput v6, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestStatus:I

    iget v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestType:I

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->isUpdateVmNumberAfterProvisionByCarrierId(I)Z

    move-result v2

    sget-boolean v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "carrier id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", forceUpdate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_2
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    const/4 v3, 0x0

    goto :goto_2

    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->needCarrierId()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestStatus:I

    if-ge v0, v6, :cond_6

    iput v6, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestStatus:I

    iget v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestType:I

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private needCarrierId()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "cdma_get_vm_number_by_nv_carrier_id"

    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getVoiceMailNumberByCarrierId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private processVmRequestMessage(Landroid/os/Message;)Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;

    .local v0, "request":Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestStatus:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mVmRequestList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestStatus:I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mVmRequestList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mVmRequestList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private tagMdnSetup(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;)V
    .locals 7
    .param p1, "request"    # Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->number:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->needCarrierId()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestStatus:I

    if-ge v0, v1, :cond_1

    iput v1, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestStatus:I

    iget v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestType:I

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->number:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    iget v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->reason:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->updateNumber(Landroid/content/SharedPreferences;ZLjava/lang/String;Ljava/lang/Integer;I)V

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->useGsmSIMtoStoreNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->getGsmIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v6

    .local v6, "iccr":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v6, :cond_2

    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VM-Update SIM, by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->reason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->number:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->tag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->number:Ljava/lang/String;

    const/16 v2, 0xd

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .end local v6    # "iccr":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->completeVmRequest(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;)V

    goto/16 :goto_0
.end method

.method private updateCarrierId(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "cid"    # Ljava/lang/Integer;

    .prologue
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "carrierId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    if-eq p2, v1, :cond_0

    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update carrier id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "persist.radio.acg_carrier"

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .local v0, "onComplete":Landroid/os/Message;
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method private updateCdmaMWI(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .local v0, "mwis":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateMessageWaitingIndicator(I)V

    .end local v0    # "mwis":[I
    :goto_0
    return-void

    .restart local v0    # "mwis":[I
    :cond_0
    const-string v1, "CDMA"

    const-string v2, "VM-MWI length not enough"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "mwis":[I
    :cond_1
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VM-MWI exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateNumber(Landroid/content/SharedPreferences;ZLjava/lang/String;Ljava/lang/Integer;I)V
    .locals 10
    .param p1, "sp"    # Landroid/content/SharedPreferences;
    .param p2, "forceUpdate"    # Z
    .param p3, "currentMdn"    # Ljava/lang/String;
    .param p4, "nvCarrierId"    # Ljava/lang/Integer;
    .param p5, "reason"    # I

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x3a

    move-object v3, p1

    .local v3, "spf":Landroid/content/SharedPreferences;
    if-nez v3, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->spVoiceMail_number:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    :cond_0
    const/4 v6, 0x0

    .local v6, "voiceMailNum":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "updateSp":Z
    if-eqz p2, :cond_5

    const/4 v5, 0x1

    move-object v6, p3

    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .local v4, "strBuf":Ljava/lang/StringBuilder;
    const-string v7, "VM-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Update "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", by "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "CDMA"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isForceUpdateVoiceMailNumberAfterSimChangedSupported()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .local v1, "line1Number":Ljava/lang/String;
    const-string v7, "vm_prev_number_key_cdma"

    invoke-interface {v3, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "prevMdn":Ljava/lang/String;
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7, v9}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getVoiceMailNumberByCarrierId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    const-string v7, "CDMA"

    const-string v8, "force update voice mail number after sim changed"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v1

    const/4 v5, 0x1

    :cond_2
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    const-string v7, "vm_prev_number_key_cdma"

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "line1Number":Ljava/lang/String;
    .end local v2    # "prevMdn":Ljava/lang/String;
    :cond_3
    if-eqz v5, :cond_4

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->voicemailNumber:Ljava/lang/String;

    invoke-direct {p0, v3, v6, p4, p5}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->updateNumberToSharedPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;I)V

    :cond_4
    return-void

    .end local v4    # "strBuf":Ljava/lang/StringBuilder;
    :cond_5
    if-eqz v3, :cond_6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->spVoiceMail_number:Ljava/lang/String;

    invoke-interface {v3, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_6
    if-nez v6, :cond_1

    if-eqz p4, :cond_7

    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_1

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getVoiceMailNumberByCarrierId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_7
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private updateNumberToSharedPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 3
    .param p1, "sp"    # Landroid/content/SharedPreferences;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "nvCarrierId"    # Ljava/lang/Integer;
    .param p4, "reason"    # I

    .prologue
    move-object v1, p1

    .local v1, "spf":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->spVoiceMail_number:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->spVoiceMail_number:Ljava/lang/String;

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->broadcastVMNumChanged()V

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method private updateUsimDone(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->completeVmRequest(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;)V

    return-void
.end method

.method private useGsmSIMtoStoreNumber()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_ACCOUNT_CAPABILITIES:[I

    aget v0, v2, v1

    .local v0, "cdmaAccount":I
    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_0

    and-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_0

    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v3, "cdma_store_vm_number_on_usim"

    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mUnsolCdmaMWIenable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForMsgWaitIndicator(Landroid/os/Handler;)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mUnsolCdmaMWIenable:Z

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-string v0, "CDMA"

    const-string v1, "VM-dispose"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "CDMA"

    const-string v1, "VM-No RIL for MWI remove"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .local v2, "number":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->useGsmSIMtoStoreNumber()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->getGsmIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .local v0, "iccr":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VM-done query SIM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->voicemailNumber:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .end local v0    # "iccr":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v2    # "number":Ljava/lang/String;
    .local v3, "number":Ljava/lang/String;
    :goto_0
    return-object v3

    .end local v3    # "number":Ljava/lang/String;
    .restart local v2    # "number":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->spVoiceMail_number:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .local v4, "sp":Landroid/content/SharedPreferences;
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->spVoiceMail_number:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VM-done query SP "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->voicemailNumber:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->voicemailNumber:Ljava/lang/String;

    move-object v3, v2

    .end local v2    # "number":Ljava/lang/String;
    .restart local v3    # "number":Ljava/lang/String;
    goto :goto_0

    .end local v3    # "number":Ljava/lang/String;
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    .restart local v2    # "number":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->voicemailNumber:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->voicemailNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VM-done query SPM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->voicemailNumber:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .end local v2    # "number":Ljava/lang/String;
    .restart local v3    # "number":Ljava/lang/String;
    goto/16 :goto_0

    .end local v3    # "number":Ljava/lang/String;
    .restart local v2    # "number":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "id":I
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getVoiceMailNumberByCarrierId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VM-done query DB "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLine1Number()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->voicemailNumber:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .end local v2    # "number":Ljava/lang/String;
    .restart local v3    # "number":Ljava/lang/String;
    goto/16 :goto_0

    .end local v1    # "id":I
    .end local v3    # "number":Ljava/lang/String;
    .restart local v2    # "number":Ljava/lang/String;
    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getWaitingMails()Ljava/lang/Integer;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->processVmRequestMessage(Landroid/os/Message;)Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mdnToDefault(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->processVmRequestMessage(Landroid/os/Message;)Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mdnSetup(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->processVmRequestMessage(Landroid/os/Message;)Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->tagMdnSetup(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;)V

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v3, "C8F8000000"

    const/4 v4, 0x2

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->decodeCarrierId(Landroid/os/AsyncResult;)Ljava/lang/Integer;

    move-result-object v1

    .local v1, "cid":Ljava/lang/Integer;
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v3, "C826401F00"

    const/4 v4, 0x3

    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->updateCarrierId(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "cid":Ljava/lang/Integer;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->decodeCarrierId(Landroid/os/AsyncResult;)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->updateCarrierId(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->updateUsimDone(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;)V

    goto :goto_0

    :sswitch_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->updateCdmaMWI(Landroid/os/AsyncResult;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_6
        0x64 -> :sswitch_7
    .end sparse-switch
.end method

.method public increaseWaitingMails(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    return-void
.end method

.method public resetAlphaTagToDefault(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    return-void
.end method

.method public setAlphaTag(Ljava/lang/String;I)V
    .locals 0
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    return-void
.end method

.method public setNumber(Ljava/lang/String;I)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$1;)V

    .local v0, "request":Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;
    const/16 v1, 0xb

    iput v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestType:I

    iput p2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->reason:I

    iput-object p1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->number:Ljava/lang/String;

    iget v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestType:I

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setNumberToDefault(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$1;)V

    .local v0, "request":Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;
    const/16 v1, 0xa

    iput v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestType:I

    iput p1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->reason:I

    iget v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestType:I

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setTagAndNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 2
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceMailNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;
    .param p4, "reason"    # I

    .prologue
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$1;)V

    .local v0, "request":Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;
    const/16 v1, 0xc

    iput v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestType:I

    iput p4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->reason:I

    iput-object p1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->tag:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->number:Ljava/lang/String;

    iput-object p3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->response:Landroid/os/Message;

    iget v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestType:I

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setWaitingMails(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    return-void
.end method
