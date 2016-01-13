.class public Lcom/android/internal/telephony/HtcSequentialRadioPower;
.super Landroid/os/Handler;
.source "HtcSequentialRadioPower.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;
    }
.end annotation


# static fields
.field private static final CHAR_BRACKET:[C

.field private static final CHAR_COLON:C = ':'

.field private static final CHAR_MINUS:C = '-'

.field private static final CHAR_PLUS:C = '+'

.field private static final CHAR_SLASH:[C

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_SQUARE_BRACKET:[C

.field private static final DEBUG_DETAIL:Z

.field private static final DEBUG_SECURITY:Z = false

.field private static final EVENT_CMD_CELLUAR:I = 0x5

.field private static final EVENT_CMD_CELLULAR:I = 0x6

.field private static final EVENT_CMD_COMPLETE:I = 0x7

.field private static final EVENT_CMD_MSG_TIMEOUT:I = 0x8

.field private static final EVENT_CMD_RADIO:I = 0x4

.field private static final EVENT_INIT:I = 0x1

.field private static final EVENT_QUEUE_INSERT:I = 0x3

.field private static final EVENT_STOP:I = 0x2

.field private static final INTENT_COMMAND_ALARM:Ljava/lang/String; = "com.htc.intent.telephony.seq-radio"

.field private static final INTENT_COMMAND_EXTEA:Ljava/lang/String; = "seqNo"

.field private static final LOG_PREFIX:Ljava/lang/String; = "SeqRdo-"

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field private static final TIMEOUT_COMMAND_MS:I = 0x9c40

.field private static mReflectDetectComplete:Z

.field private static mReflectInterface:Ljava/lang/Object;

.field private static mRilFuncPowerControlObj:Ljava/lang/reflect/Method;


# instance fields
.field private mAsyncBcaseReceiver:Landroid/content/BroadcastReceiver;

.field private mBlockingCommandQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockingCommandUntilQuickbootOn:Ljava/lang/Boolean;

.field private mCommandAlarmIntent:Landroid/app/PendingIntent;

.field private mCommandRegistrants:Landroid/os/RegistrantList;

.field private mContext:Landroid/content/Context;

.field private mDenySimLockReported:Ljava/lang/Boolean;

.field private mLast_PartialControl_Radio:Ljava/lang/Boolean;

.field private mLast_PartialControl_Sim:Ljava/lang/Boolean;

.field private mPartialControlQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;",
            ">;"
        }
    .end annotation
.end field

.field private mPartialControl_Radio:[Ljava/lang/Boolean;

.field private mPartialControl_Sim:[Ljava/lang/Boolean;

.field private mProcessingIndex:I

.field private mProcessingRadioPartCommand:Ljava/lang/Boolean;

.field private mProcessingSimPartCommand:Ljava/lang/Boolean;

.field private mRil:Lcom/android/internal/telephony/CommandsInterface;

.field private mRilFuncCelluarPower:Ljava/lang/reflect/Method;

.field private mRilFuncCellularPower:Ljava/lang/reflect/Method;

.field private mStateMonitor:Ljava/lang/Object;

.field private mSyncBcaseReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->DEBUG_DETAIL:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mReflectInterface:Ljava/lang/Object;

    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->CHAR_BRACKET:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->CHAR_SQUARE_BRACKET:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->CHAR_SLASH:[C

    return-void

    :array_0
    .array-data 2
        0x28s
        0x29s
    .end array-data

    :array_1
    .array-data 2
        0x5bs
        0x5ds
    .end array-data

    :array_2
    .array-data 2
        0x2fs
        0x5cs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ril"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v4, 0x2

    const/4 v9, 0x1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandRegistrants:Landroid/os/RegistrantList;

    new-array v3, v4, [Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    new-array v3, v9, [Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControlQueue:Ljava/util/LinkedList;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandQueue:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    .local v0, "cls":Ljava/lang/Class;
    :try_start_0
    const-string v3, "com.android.internal.telephony.CommandsInterface"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v4, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mReflectInterface:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    const-string v3, "htcSequentialRadioControl"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    sget-object v3, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_0

    :try_start_3
    sget-object v3, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p0, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    :goto_2
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->sendEmptyMessage(I)Z

    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SeqRdo-CommandsInterface ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v3, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SeqRdo-htcSequentialRadioControl ex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    :catch_2
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    :try_start_6
    const-string v3, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SeqRdo-Unable to setup HTC power control : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/HtcSequentialRadioPower;Ljava/lang/Boolean;)C
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcSequentialRadioPower;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v0

    return v0
.end method

.method static synthetic access$100()[C
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->CHAR_BRACKET:[C

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/HtcSequentialRadioPower;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcSequentialRadioPower;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/HtcSequentialRadioPower;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcSequentialRadioPower;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/internal/telephony/HtcSequentialRadioPower;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcSequentialRadioPower;
    .param p1, "x1"    # Ljava/util/LinkedList;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandQueue:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/internal/telephony/HtcSequentialRadioPower;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcSequentialRadioPower;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mDenySimLockReported:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/HtcSequentialRadioPower;Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;ZLjava/lang/Boolean;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcSequentialRadioPower;
    .param p1, "x1"    # Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/Boolean;
    .param p4, "x4"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->internal_controlRadioPower(Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;ZLjava/lang/Boolean;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->DEBUG_DETAIL:Z

    return v0
.end method

.method static synthetic access$300()[C
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->CHAR_SLASH:[C

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/HtcSequentialRadioPower;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcSequentialRadioPower;

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    return v0
.end method

.method static synthetic access$508(Lcom/android/internal/telephony/HtcSequentialRadioPower;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcSequentialRadioPower;

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/HtcSequentialRadioPower;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcSequentialRadioPower;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->commandTimer(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/HtcSequentialRadioPower;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcSequentialRadioPower;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Radio:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/HtcSequentialRadioPower;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcSequentialRadioPower;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Sim:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/HtcSequentialRadioPower;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcSequentialRadioPower;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandUntilQuickbootOn:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/HtcSequentialRadioPower;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcSequentialRadioPower;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandUntilQuickbootOn:Ljava/lang/Boolean;

    return-object p1
.end method

.method private celluarPowerFailSuppliment(Ljava/lang/Boolean;I)V
    .locals 4
    .param p1, "celluarState"    # Ljava/lang/Boolean;
    .param p2, "sequenceNo"    # I

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Radio:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Sim:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p2, v3}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    return-void
.end method

.method private cellularPowerFailSuppliment(Ljava/lang/Boolean;I)V
    .locals 7
    .param p1, "cellularState"    # Ljava/lang/Boolean;
    .param p2, "sequenceNo"    # I

    .prologue
    const/4 v0, 0x1

    .local v0, "cellularPowerFail":Z
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncCelluarPower:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncCelluarPower:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {p0, v5, p2, v6, p1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    sget-boolean v1, Lcom/android/internal/telephony/HtcSequentialRadioPower;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_1

    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SeqRdo-No if for celluar - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->celluarPowerFailSuppliment(Ljava/lang/Boolean;I)V

    :cond_2
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private charLogBooleanValue(Ljava/lang/Boolean;)C
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x31

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x30

    goto :goto_0

    :cond_1
    const/16 v0, 0x2d

    goto :goto_0
.end method

.method private commandTimer(Ljava/lang/Integer;)V
    .locals 8
    .param p1, "seqNo"    # Ljava/lang/Integer;

    .prologue
    const-wide/32 v6, 0x9c40

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandAlarmIntent:Landroid/app/PendingIntent;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v5, v2, v4}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v6, v7}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.intent.telephony.seq-radio"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "seqNo"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandAlarmIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, v6

    iget-object v5, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ril"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    invoke-static {p1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    move-result-object v0

    .local v0, "seqPower":Lcom/android/internal/telephony/HtcSequentialRadioPower;
    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;

    .end local v0    # "seqPower":Lcom/android/internal/telephony/HtcSequentialRadioPower;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .restart local v0    # "seqPower":Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "PHONE"

    const-string v2, "SeqRdo-This RIL has been registerred."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static dispose(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 8
    .param p0, "ril"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v7, 0x2

    invoke-static {p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    move-result-object v1

    .local v1, "seqPower":Lcom/android/internal/telephony/HtcSequentialRadioPower;
    if-eqz v1, :cond_1

    sget-object v3, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mReflectInterface:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    sget-object v4, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x1

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->sendEmptyMessage(I)Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SeqRdo-Unable to clear HTC power control : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public static getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;
    .locals 7
    .param p0, "ril"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mReflectInterface:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .local v0, "obj":Ljava/lang/Object;
    :try_start_1
    sget-object v4, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x1

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .end local v0    # "obj":Ljava/lang/Object;
    :goto_0
    if-eqz v0, :cond_0

    :try_start_2
    check-cast v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;

    monitor-exit v3

    :goto_1
    return-object v0

    :cond_0
    monitor-exit v3

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .restart local v0    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private internalLocked_realControlRadioPower(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 6
    .param p1, "cmd_RadioPart"    # Ljava/lang/Boolean;
    .param p2, "cmd_SimPart"    # Ljava/lang/Boolean;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .local v1, "commandUpdate":Z
    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    aget-object v3, v3, v5

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    aget-object v3, v3, v5

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v0, 0x0

    .local v0, "cmdSimInQueue":I
    if-eqz p2, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-gez v0, :cond_5

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    aput-object p2, v3, v0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mDenySimLockReported:Ljava/lang/Boolean;

    if-nez v3, :cond_a

    invoke-static {}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->needToMaintainSimWhenRadioOff()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_9

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mDenySimLockReported:Ljava/lang/Boolean;

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    aput-object p1, v3, v5

    return v1

    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    aget-object v3, v3, v0

    invoke-virtual {v3, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    if-lez v0, :cond_6

    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    aget-object v3, v3, v0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    :goto_3
    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    aput-object p2, v3, v0

    goto :goto_1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    array-length v3, v3

    if-lt v0, v3, :cond_7

    add-int/lit8 v3, v0, 0x1

    new-array v2, v3, [Ljava/lang/Boolean;

    .local v2, "tmp":[Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    goto :goto_3

    .end local v2    # "tmp":[Ljava/lang/Boolean;
    :cond_9
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mDenySimLockReported:Ljava/lang/Boolean;

    goto :goto_2

    :cond_a
    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mDenySimLockReported:Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mDenySimLockReported:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mDenySimLockReported:Ljava/lang/Boolean;

    goto :goto_2

    :cond_b
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_c
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mDenySimLockReported:Ljava/lang/Boolean;

    goto :goto_2
.end method

.method private internal_controlRadioPower(Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;ZLjava/lang/Boolean;Landroid/os/Message;)V
    .locals 11
    .param p1, "cmd"    # Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;
    .param p2, "radioPartOn"    # Z
    .param p3, "simPartOn"    # Ljava/lang/Boolean;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .local v1, "cmd_RadioPart":Ljava/lang/Boolean;
    const/4 v2, 0x0

    .local v2, "cmd_SimPart":Ljava/lang/Boolean;
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->needToMaintainSimWhenRadioOff()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v2, p3

    :cond_0
    if-nez v2, :cond_1

    move-object v2, v1

    :cond_1
    const/4 v3, 0x0

    .local v3, "commandUpdate":Z
    iget-object v8, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v9, p1, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->duringQuickBoot:Ljava/lang/Boolean;

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandUntilQuickbootOn:Ljava/lang/Boolean;

    iput-object v9, p1, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->duringQuickBoot:Ljava/lang/Boolean;

    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandUntilQuickbootOn:Ljava/lang/Boolean;

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControlQueue:Ljava/util/LinkedList;

    invoke-virtual {v9, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->internalLocked_realControlRadioPower(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result v3

    invoke-direct {p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_logQueueCommands()V

    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    iget-object v9, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v9}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_4
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x3

    if-eqz v3, :cond_d

    :goto_1
    invoke-virtual {p0, v8, v7, v6}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_5
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandQueue:Ljava/util/LinkedList;

    invoke-virtual {v9, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandUntilQuickbootOn:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandQueue:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v5

    .local v5, "queueSize":I
    :goto_2
    if-lez v5, :cond_c

    iget-object v9, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandQueue:Ljava/util/LinkedList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;

    .local v4, "pendingCmd":Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;
    if-eqz v4, :cond_9

    iget-object v9, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControlQueue:Ljava/util/LinkedList;

    invoke-virtual {v9, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-boolean v9, v4, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->radioOn:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->needToMaintainSimWhenRadioOff()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v2, v4, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->simOn:Ljava/lang/Boolean;

    :cond_6
    if-nez v2, :cond_7

    move-object v2, v1

    :cond_7
    const/4 v0, 0x0

    .local v0, "anotherUpdate":Z
    if-gt v5, v7, :cond_a

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->internalLocked_realControlRadioPower(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result v0

    :goto_3
    if-nez v3, :cond_8

    if-eqz v0, :cond_b

    :cond_8
    move v3, v7

    .end local v0    # "anotherUpdate":Z
    :cond_9
    :goto_4
    iget-object v9, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandQueue:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v5

    goto :goto_2

    .restart local v0    # "anotherUpdate":Z
    :cond_a
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->internalLocked_realControlRadioPower(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result v0

    goto :goto_3

    :cond_b
    move v3, v6

    goto :goto_4

    .end local v0    # "anotherUpdate":Z
    .end local v4    # "pendingCmd":Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;
    :cond_c
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v9, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandUntilQuickbootOn:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_logQueueCommands()V

    goto :goto_0

    .end local v5    # "queueSize":I
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    :cond_d
    move v7, v6

    goto :goto_1
.end method

.method private lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "givenPartialControl"    # [Ljava/lang/Boolean;
    .param p2, "givenState"    # Ljava/lang/Boolean;

    .prologue
    const/4 v1, 0x0

    aput-object p2, p1, v1

    const/4 v0, 0x1

    .local v0, "index":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private lock_clearQueueAndSendBackNotifyAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControlQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControlQueue:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;

    .local v0, "cmd":Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->response:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->response:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    iget-object v1, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->response:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v0    # "cmd":Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method private lock_getLatestPartialControlState([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "partialControlStatus"    # [Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    .local v2, "latestState":Ljava/lang/Boolean;
    if-eqz p1, :cond_1

    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Boolean;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .local v4, "status":Ljava/lang/Boolean;
    if-eqz v4, :cond_0

    move-object v2, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/Boolean;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "status":Ljava/lang/Boolean;
    :cond_1
    return-object v2
.end method

.method private lock_logPartialControlCommands()Ljava/lang/String;
    .locals 7

    .prologue
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .local v5, "strBuf":Ljava/lang/StringBuffer;
    const-string v6, "Cmd "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    .local v0, "arr$":[Ljava/lang/Boolean;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .local v1, "cmdRadio":Ljava/lang/Boolean;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "cmdRadio":Ljava/lang/Boolean;
    :cond_0
    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .local v2, "cmdSim":Ljava/lang/Boolean;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2    # "cmdSim":Ljava/lang/Boolean;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private lock_logQueueCommands()V
    .locals 5

    .prologue
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .local v2, "strBuf":Ljava/lang/StringBuffer;
    const-string v3, "SeqRdo-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_logPartialControlCommands()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " queue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControlQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControlQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;

    .local v0, "cmd":Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;
    if-eqz v0, :cond_0

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "cmd":Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;
    :cond_1
    const-string v3, " dny"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mDenySimLockReported:Ljava/lang/Boolean;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v3, " pend"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandUntilQuickbootOn:Ljava/lang/Boolean;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v3, "PHONE"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private lock_removeFirstPartialControl([Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "givenPartialControl"    # [Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x1

    array-length v0, p1

    if-le v0, v2, :cond_0

    const/4 v0, 0x0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    aput-object v1, p1, v0

    return-void
.end method

.method public static needToMaintainSimWhenRadioOff()Z
    .locals 11

    .prologue
    const/4 v4, 0x0

    .local v4, "hasSimCard":Z
    const/4 v3, 0x0

    .local v3, "hasNVaccount":Z
    sget-object v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_ACCOUNT_CAPABILITIES:[I

    .local v1, "accounts":[I
    move-object v2, v1

    .local v2, "arr$":[I
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_3

    aget v0, v2, v5

    .local v0, "account":I
    and-int/lit8 v9, v0, 0x1

    if-nez v9, :cond_0

    and-int/lit8 v9, v0, 0x4

    if-nez v9, :cond_0

    and-int/lit8 v9, v0, 0x8

    if-nez v9, :cond_0

    and-int/lit8 v9, v0, 0x10

    if-eqz v9, :cond_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    and-int/lit8 v9, v0, 0x2

    if-eqz v9, :cond_2

    const/4 v3, 0x1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v0    # "account":I
    :cond_3
    const/high16 v9, -0x80000000

    sget v10, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v9, v10}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v6

    .local v6, "isWorldPhone":Z
    const/4 v8, 0x0

    .local v8, "needSimActive":Z
    if-eqz v4, :cond_4

    if-nez v3, :cond_4

    if-eqz v6, :cond_4

    :cond_4
    return v8
.end method

.method private processQueueCommands(Z)V
    .locals 21
    .param p1, "initialIssue"    # Z

    .prologue
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    if-eqz v13, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v10, 0x0

    .local v10, "queueBeforeDecision":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "queueAfterDecision":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "rilState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    if-nez v13, :cond_2

    monitor-exit v14

    goto :goto_0

    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    :cond_2
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_logPartialControlCommands()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_getLatestPartialControlState([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    .local v8, "lastSimCommand":Ljava/lang/Boolean;
    if-eqz p1, :cond_12

    const/4 v6, 0x0

    .local v6, "forceRadio":Ljava/lang/Boolean;
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    .end local v6    # "forceRadio":Ljava/lang/Boolean;
    :cond_4
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_logPartialControlCommands()Ljava/lang/String;

    move-result-object v9

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .local v12, "strBuf":Ljava/lang/StringBuffer;
    const-string v13, "SeqRdo-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, "Issue command"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez p1, :cond_16

    const/4 v13, 0x1

    :goto_3
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Radio:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Sim:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v13, 0x2b

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v13, "=>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v13, Lcom/android/internal/telephony/HtcSequentialRadioPower;->CHAR_SLASH:[C

    const/4 v14, 0x0

    aget-char v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v13, " ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, "]=>["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, "] cfg"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->needToMaintainSimWhenRadioOff()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v13, " dny"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mDenySimLockReported:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v13, "PHONE"

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    if-eqz v13, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Radio:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Sim:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    const/4 v15, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->obtainMessage(III)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->commandTimer(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .end local v12    # "strBuf":Ljava/lang/StringBuffer;
    .restart local v6    # "forceRadio":Ljava/lang/Boolean;
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_getLatestPartialControlState([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v7

    .local v7, "lastRadioCommand":Ljava/lang/Boolean;
    if-nez v8, :cond_6

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v15}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    array-length v13, v13

    const/4 v15, 0x1

    if-le v13, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v15, 0x1

    aget-object v13, v13, v15

    if-eqz v13, :cond_7

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v13}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    array-length v13, v13

    const/4 v15, 0x1

    if-le v13, v15, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v15, 0x1

    aget-object v13, v13, v15

    if-eqz v13, :cond_8

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    :cond_8
    if-eqz v11, :cond_9

    sget-object v13, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v11, v13, :cond_9

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    if-nez v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Sim:Ljava/lang/Boolean;

    if-nez v13, :cond_a

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Sim:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_3

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_c

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Sim:Ljava/lang/Boolean;

    if-nez v13, :cond_d

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Sim:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Radio:Ljava/lang/Boolean;

    if-nez v13, :cond_e

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Radio:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_f

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    :cond_10
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_11
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_1

    .end local v6    # "forceRadio":Ljava/lang/Boolean;
    .end local v7    # "lastRadioCommand":Ljava/lang/Boolean;
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    if-eqz v13, :cond_14

    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Sim:Ljava/lang/Boolean;

    if-eqz v13, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    if-eqz v13, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Sim:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-ne v13, v15, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_removeFirstPartialControl([Ljava/lang/Boolean;)V

    goto :goto_4

    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    goto/16 :goto_2

    :cond_14
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Radio:Ljava/lang/Boolean;

    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Radio:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-ne v13, v15, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_removeFirstPartialControl([Ljava/lang/Boolean;)V

    goto :goto_5

    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .restart local v12    # "strBuf":Ljava/lang/StringBuffer;
    :cond_16
    const/4 v13, 0x0

    goto/16 :goto_3

    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    if-eqz v13, :cond_0

    const/4 v5, 0x1

    .local v5, "cellularPowerFail":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Radio:Ljava/lang/Boolean;

    invoke-static {}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->needToMaintainSimWhenRadioOff()Z

    move-result v13

    if-eqz v13, :cond_1b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncCellularPower:Ljava/lang/reflect/Method;

    if-eqz v13, :cond_18

    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncCellularPower:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v5, 0x0

    :cond_18
    :goto_6
    if-eqz v5, :cond_1a

    sget-boolean v13, Lcom/android/internal/telephony/HtcSequentialRadioPower;->DEBUG_DETAIL:Z

    if-eqz v13, :cond_19

    const-string v13, "PHONE"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SeqRdo-No if for cellular - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->cellularPowerFailSuppliment(Ljava/lang/Boolean;I)V

    :cond_1a
    :goto_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->commandTimer(Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->cellularPowerFailSuppliment(Ljava/lang/Boolean;I)V

    goto :goto_7

    :catch_0
    move-exception v13

    goto :goto_6
.end method

.method private radioCommandComplete()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    .local v0, "tryToSubmitCommand":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_removeFirstPartialControl([Ljava/lang/Boolean;)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    array-length v1, v1

    if-le v1, v6, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_removeFirstPartialControl([Ljava/lang/Boolean;)V

    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    if-nez v1, :cond_5

    const-string v1, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SeqRdo-Ends all commands - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dny"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mDenySimLockReported:Ljava/lang/Boolean;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearQueueAndSendBackNotifyAll()V

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    iput-object v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SeqRdo-Check next "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dny"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mDenySimLockReported:Ljava/lang/Boolean;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->processQueueCommands(Z)V

    :cond_4
    return-void

    :cond_5
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_logPartialControlCommands()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V
    .locals 2
    .param p1, "radioPartOn"    # Z
    .param p2, "simPartOn"    # Ljava/lang/Boolean;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    new-instance v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;-><init>(Lcom/android/internal/telephony/HtcSequentialRadioPower;Lcom/android/internal/telephony/HtcSequentialRadioPower$1;)V

    .local v0, "cmd":Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;
    iput-boolean p1, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->radioOn:Z

    iput-object p2, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->simOn:Ljava/lang/Boolean;

    iput-object p3, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->response:Landroid/os/Message;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->pid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->uid:I

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->tid:I

    sget-boolean v1, Lcom/android/internal/telephony/HtcSequentialRadioPower;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->callStack:[Ljava/lang/StackTraceElement;

    :cond_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->internal_controlRadioPower(Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;ZLjava/lang/Boolean;Landroid/os/Message;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x7

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v13, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v2, 0x0

    .local v2, "cls":Ljava/lang/Class;
    :try_start_0
    const-string v7, "com.android.internal.telephony.CommandsInterface"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    sget-object v8, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mReflectInterface:Ljava/lang/Object;

    monitor-enter v8

    const/4 v5, 0x0

    .local v5, "setupSeqRadioCtl":Z
    if-eqz v2, :cond_2

    :try_start_1
    sget-object v7, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_1

    const/4 v5, 0x1

    :try_start_2
    const-string v7, "htcSequentialRadioControl"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Ljava/lang/Object;

    aput-object v11, v9, v10

    invoke-virtual {v2, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_2
    :try_start_3
    const-string v7, "setCelluarPower"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Landroid/os/Message;

    aput-object v11, v9, v10

    invoke-virtual {v2, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncCelluarPower:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    const-string v7, "setCellularPower"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Landroid/os/Message;

    aput-object v11, v9, v10

    invoke-virtual {v2, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncCellularPower:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    :goto_4
    if-eqz v5, :cond_3

    :try_start_5
    sget-object v7, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_3

    const-string v7, "PHONE"

    const-string v9, "SeqRdo-Late setup HTC power control"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    sget-object v7, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;

    iget-object v9, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p0, v10, v11

    invoke-virtual {v7, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_3
    :goto_5
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .local v6, "syncfilter":Landroid/content/IntentFilter;
    const-string v7, "com.htc.intent.telephony.seq-radio"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "com.htc.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v7, Lcom/android/internal/telephony/HtcSequentialRadioPower$1;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower$1;-><init>(Lcom/android/internal/telephony/HtcSequentialRadioPower;)V

    iput-object v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mSyncBcaseReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mSyncBcaseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v6, v13, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, "asyncfilter":Landroid/content/IntentFilter;
    const-string v7, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v7, Lcom/android/internal/telephony/HtcSequentialRadioPower$2;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower$2;-><init>(Lcom/android/internal/telephony/HtcSequentialRadioPower;)V

    iput-object v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mAsyncBcaseReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mAsyncBcaseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    .end local v1    # "asyncfilter":Landroid/content/IntentFilter;
    .end local v5    # "setupSeqRadioCtl":Z
    .end local v6    # "syncfilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SeqRdo-CommandsInterface event ex: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "setupSeqRadioCtl":Z
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_8
    const-string v7, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SeqRdo-htcSequentialRadioControl event ex: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v7

    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_9
    const-string v7, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SeqRdo-setCellularPower ex: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v7, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SeqRdo-setCellularPower ex: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .end local v3    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v4

    .local v4, "ex":Ljava/lang/Exception;
    const-string v7, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SeqRdo-Unable to setup HTC power control : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_5

    .end local v2    # "cls":Ljava/lang/Class;
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v5    # "setupSeqRadioCtl":Z
    :pswitch_1
    iget-object v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mAsyncBcaseReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mAsyncBcaseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v13, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mAsyncBcaseReceiver:Landroid/content/BroadcastReceiver;

    :cond_4
    invoke-direct {p0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->commandTimer(Ljava/lang/Integer;)V

    iget-object v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mSyncBcaseReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mSyncBcaseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v13, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mSyncBcaseReceiver:Landroid/content/BroadcastReceiver;

    goto/16 :goto_0

    :pswitch_2
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_5

    :goto_6
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->processQueueCommands(Z)V

    goto/16 :goto_0

    :cond_5
    move v7, v8

    goto :goto_6

    :pswitch_3
    iget v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v8, :cond_0

    iget v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->sendEmptyMessage(I)Z

    invoke-direct {p0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->commandTimer(Ljava/lang/Integer;)V

    goto/16 :goto_0

    :pswitch_4
    iget v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v8, :cond_0

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_6

    const-string v7, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SeqRdo-Execute cellular failure - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v7, v8}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->cellularPowerFailSuppliment(Ljava/lang/Boolean;I)V

    goto/16 :goto_0

    :cond_6
    iget v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->sendEmptyMessage(I)Z

    invoke-direct {p0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->commandTimer(Ljava/lang/Integer;)V

    goto/16 :goto_0

    :pswitch_5
    iget v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v8, :cond_0

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_7

    const-string v7, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SeqRdo-Execute celluar failure - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v7, v8}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->celluarPowerFailSuppliment(Ljava/lang/Boolean;I)V

    goto/16 :goto_0

    :cond_7
    iget v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->sendEmptyMessage(I)Z

    invoke-direct {p0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->commandTimer(Ljava/lang/Integer;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->radioCommandComplete()V

    goto/16 :goto_0

    :pswitch_7
    iget v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v8, :cond_0

    iget v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->sendEmptyMessage(I)Z

    invoke-direct {p0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->commandTimer(Ljava/lang/Integer;)V

    const-string v7, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SeqRdo-Command timeout event - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public hideSimLockFromUpperLayer()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "hide":Z
    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mDenySimLockReported:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mDenySimLockReported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_0
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public radioCommandExecuting()Ljava/lang/Boolean;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_getLatestPartialControlState([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerForCommandUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public simCommandExecuting()Ljava/lang/Boolean;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_getLatestPartialControlState([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForCommandUpdate(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
