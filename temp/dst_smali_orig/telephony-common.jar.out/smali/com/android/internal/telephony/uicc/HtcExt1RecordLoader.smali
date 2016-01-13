.class Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;
.super Landroid/os/Handler;
.source "HtcExt1Record.java"


# static fields
.field static final EVENT_EXT1_LOAD_ALL_DONE:I = 0x1

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field ef:I

.field ext1List:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/HtcExt1Record;",
            ">;"
        }
    .end annotation
.end field

.field private mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field phone:Lcom/android/internal/telephony/PhoneBase;

.field recordNumber:I

.field result:Ljava/lang/Object;

.field userResponse:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 v0, 0x2c

    iput v0, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->ef:I

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "iccFileHandler"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 v0, 0x2c

    iput v0, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->ef:I

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    return-void
.end method

.method private getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x0

    :try_start_0
    iget v7, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v7, :pswitch_data_0

    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->result:Ljava/lang/Object;

    iput-object v8, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    iput-object v10, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->userResponse:Landroid/os/Message;

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    :try_start_1
    const-string v7, "GSM"

    const-string v8, "EVENT_UPDATE_RECORD_DONE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    move-object v0, v7

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "update EF email record failed"

    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v7, v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v2

    .local v2, "exc":Ljava/lang/RuntimeException;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v7

    iput-object v2, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    iput-object v10, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_0

    .end local v2    # "exc":Ljava/lang/RuntimeException;
    :pswitch_1
    :try_start_2
    const-string v7, "GSM"

    const-string v8, "EVENT_EXT1_LOAD_ALL_DONE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    move-object v0, v7

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    move-object v0, v7

    check-cast v0, Ljava/util/ArrayList;

    move-object v3, v0

    .local v3, "ext1Data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "load failed"

    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v7, v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->ext1List:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->ext1List:Ljava/util/ArrayList;

    iput-object v7, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->result:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "ext1DataSize":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_0

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-static {v8, v7}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->parseFromEf(I[B)Lcom/android/internal/telephony/uicc/HtcExt1Record;

    move-result-object v5

    .local v5, "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->ext1List:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method loadAllFromEF(ILandroid/os/Message;)V
    .locals 5
    .param p1, "ef"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    iput p1, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->ef:I

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->userResponse:Landroid/os/Message;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .local v0, "iccFileHander":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "GSM"

    const-string v2, "getIccFileHandler() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->userResponse:Landroid/os/Message;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getIccFileHandler() is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_0
.end method

.method updateEF(IILcom/android/internal/telephony/uicc/HtcExt1Record;Landroid/os/Message;)V
    .locals 6
    .param p1, "ef"    # I
    .param p2, "recordNumber"    # I
    .param p3, "ext1Record"    # Lcom/android/internal/telephony/uicc/HtcExt1Record;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    iput p1, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->ef:I

    iput p2, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->recordNumber:I

    iput-object p4, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->userResponse:Landroid/os/Message;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .local v0, "iccFileHander":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v0, :cond_1

    iget-object v3, p3, Lcom/android/internal/telephony/uicc/HtcExt1Record;->mRecordData:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "GSM"

    const-string v2, "getIccFileHandler() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->userResponse:Landroid/os/Message;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getIccFileHandler() is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_0
.end method
