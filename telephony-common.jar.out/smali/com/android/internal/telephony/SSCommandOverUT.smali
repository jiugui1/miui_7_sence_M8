.class public Lcom/android/internal/telephony/SSCommandOverUT;
.super Landroid/os/Handler;
.source "SSCommandOverUT.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SSCommandOverUT$Command;
    }
.end annotation


# static fields
.field private static final CMD_QUERY_CALL_FORWARD:I = 0x67

.field private static final CMD_QUERY_CALL_WAITING:I = 0x65

.field private static final CMD_QUERY_CLIP:I = 0x69

.field private static final CMD_SET_CALL_FORWARD:I = 0x68

.field private static final CMD_SET_CALL_WAITING:I = 0x66

.field private static final CMD_SET_CLIP:I = 0x6a

.field private static final DISABLE_UT_DELAY:I = 0x3e8

.field private static final EVENT_QUERY_CALL_FORWARD:I = 0x5

.field private static final EVENT_QUERY_CALL_WAITING:I = 0x3

.field private static final EVENT_QUERY_CLIP:I = 0x7

.field private static final EVENT_SET_CALL_FORWARD:I = 0x6

.field private static final EVENT_SET_CALL_WAITING:I = 0x4

.field private static final EVENT_SET_CLIP:I = 0x8

.field private static final EVENT_SET_UT:I = 0x1

.field private static final EVENT_SET_UT_DONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "SSCommandOverUT"

.field private static final RETRY_TIMES_SET_UT:I = 0x0

.field private static final UT_PDP_DISABLE:I = 0x0

.field private static final UT_PDP_ENABLE:I = 0x1

.field private static final UT_PDP_ENABLE_FAIL:I = 0x3

.field private static final UT_PDP_ENABLE_PROCESS:I = 0x2

.field private static mRetryCount:I

.field private static mUTStatus:I


# instance fields
.field private final SET_UT_WAIT:I

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mCommandFinish:I

.field public mDisableUTRunnable:Ljava/lang/Runnable;

.field public mRetrySetUTRunnable:Ljava/lang/Runnable;

.field private mSS:Landroid/telephony/ServiceState;

.field private mSetUThandler:Landroid/os/Handler;

.field mWaitCommandList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SSCommandOverUT$Command;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 23
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mSS:Landroid/telephony/ServiceState;

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mSetUThandler:Landroid/os/Handler;

    .line 35
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->SET_UT_WAIT:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mWaitCommandList:Ljava/util/ArrayList;

    .line 368
    new-instance v0, Lcom/android/internal/telephony/SSCommandOverUT$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SSCommandOverUT$1;-><init>(Lcom/android/internal/telephony/SSCommandOverUT;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mDisableUTRunnable:Ljava/lang/Runnable;

    .line 378
    new-instance v0, Lcom/android/internal/telephony/SSCommandOverUT$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SSCommandOverUT$2;-><init>(Lcom/android/internal/telephony/SSCommandOverUT;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mRetrySetUTRunnable:Ljava/lang/Runnable;

    .line 72
    sput v2, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    .line 73
    iput v2, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCommandFinish:I

    .line 74
    iput-object p2, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mSS:Landroid/telephony/ServiceState;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setPhoneType(I)V

    .line 76
    sput v2, Lcom/android/internal/telephony/SSCommandOverUT;->mRetryCount:I

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/SSCommandOverUT;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SSCommandOverUT;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCommandFinish:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/SSCommandOverUT;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SSCommandOverUT;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 18
    sput p0, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    return p0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/android/internal/telephony/SSCommandOverUT;->mRetryCount:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 18
    sput p0, Lcom/android/internal/telephony/SSCommandOverUT;->mRetryCount:I

    return p0
.end method

.method static synthetic access$308()I
    .locals 2

    .prologue
    .line 18
    sget v0, Lcom/android/internal/telephony/SSCommandOverUT;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/internal/telephony/SSCommandOverUT;->mRetryCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/SSCommandOverUT;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SSCommandOverUT;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mSetUThandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/SSCommandOverUT;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SSCommandOverUT;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/internal/telephony/SSCommandOverUT;->sendCommand()V

    return-void
.end method

.method private sendCommand()V
    .locals 9

    .prologue
    .line 203
    const-string v0, "SSCommandOverUT"

    const-string v1, "sendCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mWaitCommandList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mWaitCommandList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/SSCommandOverUT$Command;

    .line 206
    .local v7, "com":Lcom/android/internal/telephony/SSCommandOverUT$Command;
    if-nez v7, :cond_0

    .line 204
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 207
    :cond_0
    iget v0, v7, Lcom/android/internal/telephony/SSCommandOverUT$Command;->method:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 209
    :pswitch_0
    iget-object v0, v7, Lcom/android/internal/telephony/SSCommandOverUT$Command;->parm:Landroid/os/Bundle;

    const-string v1, "serviceClass"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, v7, Lcom/android/internal/telephony/SSCommandOverUT$Command;->response:Landroid/os/Message;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SSCommandOverUT;->queryCallWaiting(ILandroid/os/Message;)V

    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mWaitCommandList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 213
    :pswitch_1
    iget-object v0, v7, Lcom/android/internal/telephony/SSCommandOverUT$Command;->parm:Landroid/os/Bundle;

    const-string v1, "enable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, v7, Lcom/android/internal/telephony/SSCommandOverUT$Command;->parm:Landroid/os/Bundle;

    const-string v2, "serviceClass"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, v7, Lcom/android/internal/telephony/SSCommandOverUT$Command;->response:Landroid/os/Message;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/SSCommandOverUT;->setCallWaiting(ZILandroid/os/Message;)V

    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mWaitCommandList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 217
    :pswitch_2
    iget-object v0, v7, Lcom/android/internal/telephony/SSCommandOverUT$Command;->parm:Landroid/os/Bundle;

    const-string v1, "cfReason"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, v7, Lcom/android/internal/telephony/SSCommandOverUT$Command;->parm:Landroid/os/Bundle;

    const-string v2, "serviceClass"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, v7, Lcom/android/internal/telephony/SSCommandOverUT$Command;->parm:Landroid/os/Bundle;

    const-string v3, "number"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v7, Lcom/android/internal/telephony/SSCommandOverUT$Command;->response:Landroid/os/Message;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/SSCommandOverUT;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mWaitCommandList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 221
    :pswitch_3
    iget-object v0, v7, Lcom/android/internal/telephony/SSCommandOverUT$Command;->parm:Landroid/os/Bundle;

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, v7, Lcom/android/internal/telephony/SSCommandOverUT$Command;->parm:Landroid/os/Bundle;

    const-string v2, "cfReason"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, v7, Lcom/android/internal/telephony/SSCommandOverUT$Command;->parm:Landroid/os/Bundle;

    const-string v3, "serviceClass"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iget-object v0, v7, Lcom/android/internal/telephony/SSCommandOverUT$Command;->parm:Landroid/os/Bundle;

    const-string v4, "number"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v7, Lcom/android/internal/telephony/SSCommandOverUT$Command;->parm:Landroid/os/Bundle;

    const-string v5, "timeSeconds"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, v7, Lcom/android/internal/telephony/SSCommandOverUT$Command;->response:Landroid/os/Message;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SSCommandOverUT;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mWaitCommandList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 225
    :pswitch_4
    iget-object v0, v7, Lcom/android/internal/telephony/SSCommandOverUT$Command;->response:Landroid/os/Message;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSCommandOverUT;->queryCLIP(Landroid/os/Message;)V

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mWaitCommandList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 229
    :pswitch_5
    iget-object v0, v7, Lcom/android/internal/telephony/SSCommandOverUT$Command;->parm:Landroid/os/Bundle;

    const-string v1, "CLIP"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, v7, Lcom/android/internal/telephony/SSCommandOverUT$Command;->response:Landroid/os/Message;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SSCommandOverUT;->setCLIP(ZLandroid/os/Message;)V

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mWaitCommandList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 234
    .end local v7    # "com":Lcom/android/internal/telephony/SSCommandOverUT$Command;
    :cond_1
    return-void

    .line 207
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private sendGenericFail(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 399
    if-eqz p1, :cond_0

    .line 400
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 402
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SSCommandOverUT;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestSetImsUtPdp(ILandroid/os/Message;)V

    .line 407
    sput v3, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    .line 408
    return-void
.end method


# virtual methods
.method public addCommand(ILandroid/os/Bundle;Landroid/os/Message;)V
    .locals 5
    .param p1, "method"    # I
    .param p2, "parm"    # Landroid/os/Bundle;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 81
    new-instance v0, Lcom/android/internal/telephony/SSCommandOverUT$Command;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/SSCommandOverUT$Command;-><init>(Lcom/android/internal/telephony/SSCommandOverUT;ILandroid/os/Bundle;Landroid/os/Message;)V

    .line 82
    .local v0, "com":Lcom/android/internal/telephony/SSCommandOverUT$Command;
    iget-object v1, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mWaitCommandList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v1, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->setUtPdpStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 85
    iget-object v1, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SSCommandOverUT;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->requestSetImsUtPdp(ILandroid/os/Message;)V

    .line 86
    sput v4, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    .line 87
    iget-object v1, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mSetUThandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mRetrySetUTRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetUtPdpStatus(Landroid/os/Handler;)V

    .line 397
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 241
    const/4 v1, 0x0

    .line 242
    .local v1, "isCommandFinishResponse":Z
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 346
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 347
    invoke-virtual {p0}, Lcom/android/internal/telephony/SSCommandOverUT;->onCommandFinished()V

    .line 350
    :cond_1
    return-void

    .line 244
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 245
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 246
    const-string v3, "SSCommandOverUT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 250
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    const-string v3, "SSCommandOverUT"

    const-string v4, "EVENT_SET_UT_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 252
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mSetUThandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mRetrySetUTRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 253
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_6

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_6

    .line 255
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v2, v3

    check-cast v2, [I

    .line 256
    .local v2, "result":[I
    sget v3, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 257
    aget v3, v2, v5

    if-ne v3, v6, :cond_3

    .line 258
    sput v6, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    .line 259
    const-string v3, "SSCommandOverUT"

    const-string v4, "EVENT_SET_UT_DONE sendCommand"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/SSCommandOverUT;->sendCommand()V

    goto :goto_0

    .line 261
    :cond_3
    aget v3, v2, v5

    if-nez v3, :cond_2

    .line 262
    const-string v3, "SSCommandOverUT"

    const-string v4, "EVENT_SET_UT_DONE enable UT fail"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v3, 0x3

    sput v3, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    goto :goto_1

    .line 268
    :cond_4
    aget v3, v2, v5

    sput v3, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    .line 269
    sget v3, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    if-nez v3, :cond_5

    .line 270
    iget-object v3, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mSetUThandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mDisableUTRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 273
    :cond_5
    const-string v3, "SSCommandOverUT"

    const-string v4, "EVENT_SET_UT_DONE disable UT fail"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 279
    .end local v2    # "result":[I
    :cond_6
    const-string v3, "SSCommandOverUT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SSCommandOverUT;->sendGenericFail(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 284
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    const-string v3, "SSCommandOverUT"

    const-string v4, "EVENT_QUERY_CALL_WAITING"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v1, 0x1

    .line 286
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 287
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_7

    .line 288
    const-string v3, "SSCommandOverUT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_7
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 291
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 294
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    const-string v3, "SSCommandOverUT"

    const-string v4, "EVENT_SET_CALL_WAITING"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v1, 0x1

    .line 296
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 297
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_8

    .line 298
    const-string v3, "SSCommandOverUT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_8
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 301
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 305
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    const-string v3, "SSCommandOverUT"

    const-string v4, "EVENT_QUERY_CALL_FORWARD"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v1, 0x1

    .line 307
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 308
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_9

    .line 309
    const-string v3, "SSCommandOverUT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_9
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 312
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 315
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    const-string v3, "SSCommandOverUT"

    const-string v4, "EVENT_SET_CALL_FORWARD"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v1, 0x1

    .line 317
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 318
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_a

    .line 319
    const-string v3, "SSCommandOverUT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_a
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 322
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 325
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    const-string v3, "SSCommandOverUT"

    const-string v4, "EVENT_QUERY_CLIP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v1, 0x1

    .line 327
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 328
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_b

    .line 329
    const-string v3, "SSCommandOverUT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_b
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 332
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 335
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    const-string v3, "SSCommandOverUT"

    const-string v4, "EVENT_SET_CLIP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v1, 0x1

    .line 337
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 338
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_c

    .line 339
    const-string v3, "SSCommandOverUT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_c
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 342
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected onCommandFinished()V
    .locals 4

    .prologue
    .line 354
    iget v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCommandFinish:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCommandFinish:I

    .line 355
    const-string v0, "SSCommandOverUT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCommandFinished "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCommandFinish:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCommandFinish:I

    if-nez v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mSetUThandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mDisableUTRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCommandFinish:I

    if-gez v0, :cond_0

    .line 363
    const-string v0, "SSCommandOverUT"

    const-string v1, "SSCommandOverUT: recordsToLoad <0, programmer error suspected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCommandFinish:I

    goto :goto_0
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x7

    .line 168
    const-string v0, "SSCommandOverUT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCLIP mUTStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget v0, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/SSCommandOverUT;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCLIP(Landroid/os/Message;)V

    .line 171
    iget v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCommandFinish:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCommandFinish:I

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    sget v0, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    if-nez v0, :cond_2

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0, p1}, Lcom/android/internal/telephony/SSCommandOverUT;->addCommand(ILandroid/os/Bundle;Landroid/os/Message;)V

    goto :goto_0

    .line 176
    :cond_2
    sget v0, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 177
    const-string v0, "SSCommandOverUT"

    const-string v1, "queryCLIP UT_PDP_ENABLE_FAIL Send Generic Fail "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SSCommandOverUT;->sendGenericFail(Landroid/os/Message;)V

    .line 179
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    goto :goto_0
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 127
    const-string v1, "SSCommandOverUT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCallForwardStatus mUTStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget v1, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 129
    iget-object v1, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x5

    invoke-virtual {p0, v2, p4}, Lcom/android/internal/telephony/SSCommandOverUT;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 130
    iget v1, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCommandFinish:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCommandFinish:I

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    sget v1, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    if-nez v1, :cond_2

    .line 133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v0, "parmBundle":Landroid/os/Bundle;
    const-string v1, "cfReason"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    const-string v1, "serviceClass"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    const-string v1, "number"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/16 v1, 0x67

    invoke-virtual {p0, v1, v0, p4}, Lcom/android/internal/telephony/SSCommandOverUT;->addCommand(ILandroid/os/Bundle;Landroid/os/Message;)V

    goto :goto_0

    .line 139
    .end local v0    # "parmBundle":Landroid/os/Bundle;
    :cond_2
    sget v1, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 140
    const-string v1, "SSCommandOverUT"

    const-string v2, "queryCallForwardStatus UT_PDP_ENABLE_FAIL Send Generic Fail "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/SSCommandOverUT;->sendGenericFail(Landroid/os/Message;)V

    .line 142
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    goto :goto_0
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 5
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x3

    .line 91
    const-string v1, "SSCommandOverUT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCallWaiting mUTStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget v1, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 93
    iget-object v1, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v4, p2}, Lcom/android/internal/telephony/SSCommandOverUT;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 94
    iget v1, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCommandFinish:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCommandFinish:I

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    sget v1, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    if-nez v1, :cond_2

    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v0, "parmBundle":Landroid/os/Bundle;
    const-string v1, "serviceClass"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/internal/telephony/SSCommandOverUT;->addCommand(ILandroid/os/Bundle;Landroid/os/Message;)V

    goto :goto_0

    .line 101
    .end local v0    # "parmBundle":Landroid/os/Bundle;
    :cond_2
    sget v1, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    if-ne v1, v4, :cond_0

    .line 102
    const-string v1, "SSCommandOverUT"

    const-string v2, "queryCallWaiting UT_PDP_ENABLE_FAIL Send Generic Fail "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SSCommandOverUT;->sendGenericFail(Landroid/os/Message;)V

    .line 104
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    goto :goto_0
.end method

.method public setCLIP(ZLandroid/os/Message;)V
    .locals 5
    .param p1, "CLIP"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x8

    .line 184
    const-string v1, "SSCommandOverUT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCLIP mUTStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    sget v1, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 186
    iget-object v1, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v4, p2}, Lcom/android/internal/telephony/SSCommandOverUT;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCLIP(ZLandroid/os/Message;)V

    .line 187
    iget v1, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCommandFinish:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCommandFinish:I

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    sget v1, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    if-nez v1, :cond_2

    .line 190
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 191
    .local v0, "parmBundle":Landroid/os/Bundle;
    const-string v1, "CLIP"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    invoke-virtual {p0, v4, v0, p2}, Lcom/android/internal/telephony/SSCommandOverUT;->addCommand(ILandroid/os/Bundle;Landroid/os/Message;)V

    goto :goto_0

    .line 194
    .end local v0    # "parmBundle":Landroid/os/Bundle;
    :cond_2
    sget v1, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 195
    const-string v1, "SSCommandOverUT"

    const-string v2, "setCLIP UT_PDP_ENABLE_FAIL Send Generic Fail "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SSCommandOverUT;->sendGenericFail(Landroid/os/Message;)V

    .line 197
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    goto :goto_0
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 8
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 146
    const-string v0, "SSCommandOverUT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallForward mUTStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget v0, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, p6}, Lcom/android/internal/telephony/SSCommandOverUT;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 149
    iget v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCommandFinish:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCommandFinish:I

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    sget v0, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    if-nez v0, :cond_2

    .line 152
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v7, "parmBundle":Landroid/os/Bundle;
    const-string v0, "action"

    invoke-virtual {v7, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    const-string v0, "cfReason"

    invoke-virtual {v7, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    const-string v0, "serviceClass"

    invoke-virtual {v7, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    const-string v0, "number"

    invoke-virtual {v7, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "timeSeconds"

    invoke-virtual {v7, v0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    const/16 v0, 0x68

    invoke-virtual {p0, v0, v7, p6}, Lcom/android/internal/telephony/SSCommandOverUT;->addCommand(ILandroid/os/Bundle;Landroid/os/Message;)V

    goto :goto_0

    .line 160
    .end local v7    # "parmBundle":Landroid/os/Bundle;
    :cond_2
    sget v0, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 161
    const-string v0, "SSCommandOverUT"

    const-string v1, "setCallForward UT_PDP_ENABLE_FAIL Send Generic Fail "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/SSCommandOverUT;->sendGenericFail(Landroid/os/Message;)V

    .line 163
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    goto :goto_0
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 109
    const-string v1, "SSCommandOverUT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallWaiting mUTStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget v1, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 111
    iget-object v1, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x4

    invoke-virtual {p0, v2, p3}, Lcom/android/internal/telephony/SSCommandOverUT;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 112
    iget v1, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCommandFinish:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/SSCommandOverUT;->mCommandFinish:I

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    sget v1, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    if-nez v1, :cond_2

    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    .local v0, "parmBundle":Landroid/os/Bundle;
    const-string v1, "enable"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 117
    const-string v1, "serviceClass"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    const/16 v1, 0x66

    invoke-virtual {p0, v1, v0, p3}, Lcom/android/internal/telephony/SSCommandOverUT;->addCommand(ILandroid/os/Bundle;Landroid/os/Message;)V

    goto :goto_0

    .line 120
    .end local v0    # "parmBundle":Landroid/os/Bundle;
    :cond_2
    sget v1, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 121
    const-string v1, "SSCommandOverUT"

    const-string v2, "setCallWaiting UT_PDP_ENABLE_FAIL Send Generic Fail "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/SSCommandOverUT;->sendGenericFail(Landroid/os/Message;)V

    .line 123
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I

    goto :goto_0
.end method
