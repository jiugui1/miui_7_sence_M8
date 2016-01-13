.class public abstract Lcom/android/internal/telephony/InboundSmsHandler;
.super Lcom/android/internal/util/StateMachine;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;,
        Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;,
        Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;,
        Lcom/android/internal/telephony/InboundSmsHandler$IdleState;,
        Lcom/android/internal/telephony/InboundSmsHandler$StartupState;,
        Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;
    }
.end annotation


# static fields
.field static final ADDRESS_COLUMN:I = 0x6

.field static final COUNT_COLUMN:I = 0x5

.field static final DATE_COLUMN:I = 0x3

.field protected static final DBG:Z = true

.field static final DESTINATION_PORT_COLUMN:I = 0x2

.field static final EVENT_BROADCAST_COMPLETE:I = 0x3

.field public static final EVENT_BROADCAST_SMS:I = 0x2

.field public static final EVENT_NEW_SMS:I = 0x1

.field static final EVENT_RELEASE_WAKELOCK:I = 0x5

.field static final EVENT_RETURN_TO_IDLE:I = 0x4

.field public static final EVENT_START_ACCEPTING_SMS:I = 0x6

.field static final EVENT_UPDATE_PHONE_OBJECT:I = 0x7

.field static final ID_COLUMN:I = 0x7

.field protected static final PDU_COLUMN:I = 0x0

.field protected static final PDU_PROJECTION:[Ljava/lang/String;

.field protected static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

.field protected static final PREFIX_KILL_DEVICE:Ljava/lang/String; = "$%5&+4#\"5@#&5.?"

.field static final REFERENCE_NUMBER_COLUMN:I = 0x4

.field static final SELECT_BY_ID:Ljava/lang/String; = "_id=?"

.field public static final SELECT_BY_REFERENCE:Ljava/lang/String; = "address=? AND reference_number=? AND count=?"

.field static final SEQUENCE_COLUMN:I = 0x1

.field private static final VDBG:Z = false

.field private static final VZW_DIRECTED_SMS_INTENT:Ljava/lang/String; = "verizon.intent.action.DIRECTED_SMS_RECEIVED"

.field private static final VZW_VVM_ERROR_PATTERN:Ljava/lang/String; = "Visual Voice Mail activity received\\. Please select the Visual VM icon to reinstall\\. Free Message from Verizon Wireless\\."

.field private static final VZW_VVM_ERROR_PATTERN_WITH_CODE:Ljava/lang/String; = "Visual Voice Mail activity received\\. Please select the Visual VM icon to reinstall\\. Free Message from Verizon Wireless\\. \\([0-9]+\\)"

.field private static final VZW_VVM_LOGIN_PATTERN:Ljava/lang/String; = "Free Message from Verizon Wireless. Log into the Visual Voice Mail application on your phone or dial *86 to retrieve voicemail."

.field private static final VZW_VVM_SENDER_CODE:Ljava/lang/String; = "900080002021"

.field private static final VZW_VVM_SUCCESS_PATTERN:Ljava/lang/String; = "You have [0-9]+ unheard Visual Voice Mail messages\\. Please select the Visual VM icon to reinstall\\. Free Message from Verizon Wireless\\."

.field private static final WAKELOCK_TIMEOUT:I = 0xbb8

.field private static final WAKE_LOCK_TIMEOUT:I = 0x1388

.field public static final enableEDIAG:Z

.field protected static final sRawUri:Landroid/net/Uri;


# instance fields
.field protected mAckWaitMessageId:I

.field protected mCdmaCmasQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsMessageBase;",
            ">;"
        }
    .end annotation
.end field

.field protected mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

.field protected final mContext:Landroid/content/Context;

.field final mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

.field final mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

.field private mFakeReceiver:Lcom/android/internal/telephony/test/FakeSmsReceiver;

.field final mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected final mResolver:Landroid/content/ContentResolver;

.field protected mSecureMgr:Lcom/android/internal/telephony/TencentSecurityManager;

.field private final mSmsReceiveDisabled:Z

.field final mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

.field protected mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field final mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected final mWapPush:Lcom/android/internal/telephony/WapPushOverSms;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    .line 118
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    const-string v1, "sequence"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "destination_port"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "reference_number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 176
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CellBroadcastHandler;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p4, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p5, "cellBroadcastHandler"    # Lcom/android/internal/telephony/CellBroadcastHandler;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 258
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 188
    new-instance v4, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    .line 191
    new-instance v4, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    .line 194
    new-instance v4, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    .line 197
    new-instance v4, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    .line 200
    new-instance v4, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    .line 219
    iput v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mAckWaitMessageId:I

    .line 223
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCdmaCmasQueue:Ljava/util/ArrayList;

    .line 235
    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSecureMgr:Lcom/android/internal/telephony/TencentSecurityManager;

    .line 239
    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mFakeReceiver:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    .line 260
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 261
    iput-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 262
    iput-object p4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 263
    iput-object p5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    .line 264
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    .line 265
    new-instance v4, Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {v4, p2}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 267
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 269
    .local v1, "smsCapable":Z
    const-string v4, "telephony.sms.receive"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    .line 273
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportTencentBolockList()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    new-instance v2, Lcom/android/internal/telephony/TencentSecurityManager;

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/TencentSecurityManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSecureMgr:Lcom/android/internal/telephony/TencentSecurityManager;

    .line 275
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSecureMgr:Lcom/android/internal/telephony/TencentSecurityManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/TencentSecurityManager;->bindTencentSecurityManager()Z

    .line 279
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 280
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0, v3, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 281
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 283
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;)V

    .line 284
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 285
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 286
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 287
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 289
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->setInitialState(Lcom/android/internal/util/State;)V

    .line 292
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->registerReceiver(Landroid/content/Context;Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/test/FakeSmsReceiver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mFakeReceiver:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    .line 299
    const-string v2, "created InboundSmsHandler"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;)I
    .locals 29
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 1192
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getExtraData()Landroid/os/Bundle;

    move-result-object v10

    .line 1195
    .local v10, "bundle":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 1197
    const/4 v14, 0x0

    .line 1200
    .local v14, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSequenceNumber()I

    move-result v27

    .line 1203
    .local v27, "sequence":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 1204
    .local v8, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    .line 1205
    .local v23, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 1207
    .local v11, "count":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    .line 1210
    .local v26, "seqNumber":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v15, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v8, v15, v2

    const/4 v2, 0x1

    aput-object v23, v15, v2

    const/4 v2, 0x2

    aput-object v11, v15, v2

    .line 1211
    .local v15, "deleteWhereArgs":[Ljava/lang/String;
    const-string v2, "address=? AND reference_number=? AND count=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v15}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    const-string v5, "address=? AND reference_number=? AND count=? AND sequence=?"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v23, v6, v7

    const/4 v7, 0x2

    aput-object v11, v6, v7

    const/4 v7, 0x3

    aput-object v26, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1219
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discarding duplicate message segment, refNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seqNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1226
    if-eqz v10, :cond_5

    const-string v2, "isSprintReassembleSms"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1227
    const-string v2, "We have Sprint reassemble SMS but it has conflict seqNumber, dispatch it"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1240
    :cond_0
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1245
    if-eqz v14, :cond_1

    .line 1246
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1251
    :cond_1
    if-eqz v10, :cond_2

    const-string v2, "isSprintReassembleSms"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1256
    new-instance v16, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.ACTION_SPRINT_REASSEMBLE_SMS_DISPATCH"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1257
    .local v16, "dispatchIntent":Landroid/content/Intent;
    const-string v2, "count"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1258
    const-string v2, "address"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 1261
    .local v17, "dispatchPendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1262
    .local v12, "currentTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AlarmManager;

    .line 1263
    .local v9, "alarmManager":Landroid/app/AlarmManager;
    const/4 v2, 0x0

    const-wide/32 v3, 0x493e0

    add-long/2addr v3, v12

    move-object/from16 v0, v17

    invoke-virtual {v9, v2, v3, v4, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1264
    const-string v2, "Will check Sprint reassemble SMS in raw table after 5 min"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1269
    .end local v8    # "address":Ljava/lang/String;
    .end local v9    # "alarmManager":Landroid/app/AlarmManager;
    .end local v11    # "count":Ljava/lang/String;
    .end local v12    # "currentTime":J
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v15    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v16    # "dispatchIntent":Landroid/content/Intent;
    .end local v17    # "dispatchPendingIntent":Landroid/app/PendingIntent;
    .end local v23    # "refNumber":Ljava/lang/String;
    .end local v26    # "seqNumber":Ljava/lang/String;
    .end local v27    # "sequence":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getContentValues()Landroid/content/ContentValues;

    move-result-object v28

    .line 1272
    .local v28, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    move-object/from16 v0, v28

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v19

    .line 1273
    .local v19, "newUri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI of new row -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1276
    :try_start_1
    invoke-static/range {v19 .. v19}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v24

    .line 1277
    .local v24, "rowId":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1279
    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1281
    :cond_3
    const/4 v2, 0x1

    .line 1284
    .end local v19    # "newUri":Landroid/net/Uri;
    .end local v24    # "rowId":J
    .end local v28    # "values":Landroid/content/ContentValues;
    :cond_4
    :goto_0
    return v2

    .line 1230
    .restart local v8    # "address":Ljava/lang/String;
    .restart local v11    # "count":Ljava/lang/String;
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "deleteWhereArgs":[Ljava/lang/String;
    .restart local v23    # "refNumber":Ljava/lang/String;
    .restart local v26    # "seqNumber":Ljava/lang/String;
    .restart local v27    # "sequence":I
    :cond_5
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1231
    .local v21, "oldPduString":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v22

    .line 1232
    .local v22, "pdu":[B
    invoke-static/range {v21 .. v21}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v20

    .line 1233
    .local v20, "oldPdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v2

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: dup message segment PDU of length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is different from existing PDU of length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1237
    :cond_6
    const/4 v2, 0x5

    .line 1245
    if-eqz v14, :cond_4

    .line 1246
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1241
    .end local v8    # "address":Ljava/lang/String;
    .end local v11    # "count":Ljava/lang/String;
    .end local v15    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v20    # "oldPdu":[B
    .end local v21    # "oldPduString":Ljava/lang/String;
    .end local v22    # "pdu":[B
    .end local v23    # "refNumber":Ljava/lang/String;
    .end local v26    # "seqNumber":Ljava/lang/String;
    .end local v27    # "sequence":I
    :catch_0
    move-exception v18

    .line 1242
    .local v18, "e":Landroid/database/SQLException;
    :try_start_3
    const-string v2, "Can\'t access multipart SMS database"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1243
    const/4 v2, 0x2

    .line 1245
    if-eqz v14, :cond_4

    .line 1246
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1245
    .end local v18    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    if-eqz v14, :cond_7

    .line 1246
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2

    .line 1282
    .end local v14    # "cursor":Landroid/database/Cursor;
    .restart local v19    # "newUri":Landroid/net/Uri;
    .restart local v28    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v18

    .line 1283
    .local v18, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error parsing URI for new row: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1284
    const/4 v2, 0x2

    goto :goto_0
.end method

.method private getDeviceIdentity()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1935
    const/4 v2, 0x0

    .line 1937
    .local v2, "identity":Ljava/lang/String;
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    .line 1938
    .local v1, "htcTM":Lcom/htc/service/HtcTelephonyManager;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1939
    const-string v4, "KillDevice - This is World Phone!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1940
    if-eqz v1, :cond_0

    .line 1941
    const-string v4, "getIMEI"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1942
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v4, "getIMEI"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1954
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v2

    .line 1944
    :cond_1
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1946
    :cond_2
    const-string v4, "KillDevice - This is DD/DS Phone!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1947
    if-eqz v1, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/htc/service/HtcTelephonyManager;->getDeviceIdExt(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1950
    :cond_3
    const-string v4, "KillDevice - This is Pure GSM/CDMA Phone!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1951
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 1952
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getValidDirectedSmsReceivers(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 22
    .param p1, "candidatePrefix"    # Ljava/lang/String;
    .param p2, "bHasColon"    # Z

    .prologue
    .line 1726
    if-nez p1, :cond_0

    .line 1727
    const/16 v16, 0x0

    .line 1840
    :goto_0
    return-object v16

    .line 1730
    :cond_0
    const/4 v13, 0x0

    .line 1731
    .local v13, "packageName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1732
    .local v5, "appPrefix":Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1737
    .local v12, "outReceiver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Landroid/content/Intent;

    const-string v19, "verizon.intent.action.DIRECTED_SMS_RECEIVED"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1738
    .local v11, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    const/16 v20, 0x80

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v17

    .line 1739
    .local v17, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    if-gtz v19, :cond_2

    .line 1740
    :cond_1
    const-string v19, "No Receiver for DSMS Intent"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1741
    const/16 v16, 0x0

    goto :goto_0

    .line 1753
    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    .line 1756
    .local v2, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v2, :cond_e

    .line 1757
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 1758
    .local v10, "info":Landroid/content/pm/ResolveInfo;
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    .line 1759
    sget-boolean v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v19, :cond_3

    .line 1760
    const-string v19, "activity info is null!"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1756
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1763
    :cond_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "check ap: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/HtcMessageHelper;->isSystemAp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/HtcMessageHelper;->isVerizonConsignAp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/HtcMessageHelper;->isVerizonAvsAuthorized(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 1769
    const-string v19, "not SysAP or signed ap"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1774
    :cond_5
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1775
    .local v15, "receiverMetadata":Landroid/os/Bundle;
    if-nez v15, :cond_6

    .line 1776
    const-string v19, "receiver metadata is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1779
    :cond_6
    const/4 v4, 0x0

    .line 1780
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x0

    .line 1782
    .local v3, "apMetadata":Landroid/os/Bundle;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x80

    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1786
    :goto_3
    if-nez v4, :cond_c

    .line 1787
    const-string v19, "appinfo is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1791
    :cond_7
    :goto_4
    if-eqz v4, :cond_8

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    .line 1792
    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1795
    :cond_8
    if-nez v3, :cond_9

    if-eqz v15, :cond_3

    :cond_9
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v3, v15, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->isDefineDirectedSMSMetaData(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 1803
    const/16 v18, 0x0

    .line 1804
    .local v18, "tempPrefixs":Ljava/lang/String;
    if-eqz v15, :cond_d

    .line 1805
    const-string v19, "com.verizon.directedAppSMS"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1809
    :goto_5
    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1816
    .local v14, "realPrefixArray":[Ljava/lang/String;
    array-length v6, v14

    .line 1817
    .local v6, "arraylen":I
    const/4 v9, 0x0

    .local v9, "idx":I
    :goto_6
    if-ge v9, v6, :cond_3

    .line 1818
    aget-object v19, v14, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_b

    .line 1824
    if-eqz p2, :cond_a

    if-eqz p2, :cond_b

    aget-object v19, v14, v9

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 1825
    :cond_a
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1826
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1827
    aget-object v19, v14, v9

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1817
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 1783
    .end local v6    # "arraylen":I
    .end local v9    # "idx":I
    .end local v14    # "realPrefixArray":[Ljava/lang/String;
    .end local v18    # "tempPrefixs":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1784
    .local v7, "e":Ljava/lang/Exception;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getApplication Info exception: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1788
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_c
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    .line 1789
    const-string v19, "ap metaData is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1807
    .restart local v18    # "tempPrefixs":Ljava/lang/String;
    :cond_d
    const-string v19, "com.verizon.directedAppSMS"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_5

    .line 1834
    .end local v3    # "apMetadata":Landroid/os/Bundle;
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "info":Landroid/content/pm/ResolveInfo;
    .end local v15    # "receiverMetadata":Landroid/os/Bundle;
    .end local v18    # "tempPrefixs":Ljava/lang/String;
    :cond_e
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_f

    .line 1835
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1836
    .local v16, "result":[Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto/16 :goto_0

    .line 1840
    .end local v16    # "result":[Ljava/lang/String;
    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method private beforeDispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)Z
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const-string v10, "InboundSmsHandler"

    const-string v11, "before_dispatchIntent"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .local v1, "action":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "smsBlocked":Z
    const-string v10, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "pdus"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    .local v6, "pdusArray":[Ljava/lang/Object;
    array-length v10, v6

    new-array v5, v10, [[B

    .local v5, "pdus":[[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, v6

    if-ge v3, v10, :cond_0

    aget-object v10, v6, v3

    check-cast v10, [B

    move-object v0, v10

    check-cast v0, [B

    move-object v4, v0

    .local v4, "part":[B
    aput-object v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v4    # "part":[B
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->checkSmsCmd([[B)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "InboundSmsHandler"

    const-string v11, "checkSmsCmd is true, intercept this sms."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x1

    .end local v3    # "i":I
    .end local v5    # "pdus":[[B
    .end local v6    # "pdusArray":[Ljava/lang/Object;
    :cond_1
    :goto_1
    if-nez v9, :cond_2

    :try_start_1
    const-string v10, "security"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lmiui/security/ISecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityManager;

    move-result-object v8

    .local v8, "securityManager":Lmiui/security/ISecurityManager;
    invoke-interface {v8, p1}, Lmiui/security/ISecurityManager;->checkSmsBlocked(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    if-eqz v10, :cond_2

    const/4 v9, 0x1

    .end local v8    # "securityManager":Lmiui/security/ISecurityManager;
    :cond_2
    :goto_2
    if-eqz v9, :cond_3

    :try_start_2
    move-object/from16 v0, p4

    check-cast v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-object v7, v0

    .local v7, "receiver":Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    # getter for: Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->access_mDeleteWhere(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Ljava/lang/String;

    move-result-object v10

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->access_mDeleteWhereArgs(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)[Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v10, 0x1

    .end local v7    # "receiver":Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    :goto_3
    return v10

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "InboundSmsHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception before InboundSmsDispatcher: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v10, 0x0

    goto :goto_3
.end method

.method private checkSmsCmd([[B)Z
    .locals 8
    .param p1, "pdus"    # [[B

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    aget-object v6, p1, v5

    if-nez v6, :cond_2

    :cond_0
    move v4, v5

    :cond_1
    :goto_0
    return v4

    :cond_2
    aget-object v6, p1, v5

    invoke-static {v6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .local v0, "address":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, "body":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, p1

    if-ge v3, v6, :cond_3

    :try_start_0
    aget-object v6, p1, v3

    invoke-static {v6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string v6, "InboundSmsHandler"

    const-string v7, "NPE in checkSmsCmd: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v0, v7}, Lmiui/provider/MiCloudSmsCmd;->checkSmsCmd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v5, v0, v7}, Lmiui/provider/MiCloudSmsCmd;->checkAndDispatchActivationSms(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    move v4, v5

    goto :goto_0
.end method

.method static isCurrentFormat3gpp2()Z
    .locals 2

    .prologue
    .line 1293
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 1294
    .local v0, "activePhone":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDefineDirectedSMSMetaData(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 3
    .param p1, "apMetadata"    # Landroid/os/Bundle;
    .param p2, "receiverMetadata"    # Landroid/os/Bundle;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1851
    const/4 v0, 0x0

    .line 1854
    .local v0, "bmenifestcontainkey":Z
    if-eqz p1, :cond_0

    const-string v1, "com.verizon.directedAppSMS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AP metadata contain key value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.verizon.directedAppSMS"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1856
    const/4 v0, 0x1

    .line 1860
    :cond_0
    if-eqz p2, :cond_1

    const-string v1, "com.verizon.directedAppSMS"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver metadata contain key value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.verizon.directedAppSMS"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1862
    const/4 v0, 0x1

    .line 1865
    :cond_1
    return v0
.end method

.method private isVerizonVvmSms(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "originatingAddress"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 1523
    const-string v6, "You have [0-9]+ unheard Visual Voice Mail messages\\. Please select the Visual VM icon to reinstall\\. Free Message from Verizon Wireless\\."

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 1524
    .local v4, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1525
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1527
    const/16 v6, 0x9

    const/16 v7, 0x20

    const/16 v8, 0x9

    :try_start_0
    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1528
    .local v0, "count":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1529
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.htc.vvm.action.VVM_SUCCESS_PATTERN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1530
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "extra_unread_count"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1531
    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v7, "com.htc.permission.APP_DEFAULT"

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1568
    .end local v0    # "count":I
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return v5

    .line 1532
    :catch_0
    move-exception v1

    .line 1533
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1539
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v6, "Visual Voice Mail activity received\\. Please select the Visual VM icon to reinstall\\. Free Message from Verizon Wireless\\. \\([0-9]+\\)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 1540
    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1541
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1543
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.htc.vvm.action.VVM_ERROR_PATTERN_WITH_CODE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1544
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v7, "com.htc.permission.APP_DEFAULT"

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1545
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 1546
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1552
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v6, "Visual Voice Mail activity received\\. Please select the Visual VM icon to reinstall\\. Free Message from Verizon Wireless\\."

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 1553
    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1554
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1555
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.htc.vvm.action.VVM_ERROR_PATTERN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1556
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v7, "com.htc.permission.APP_DEFAULT"

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 1561
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    if-eqz p2, :cond_3

    const-string v6, "Free Message from Verizon Wireless. Log into the Visual Voice Mail application on your phone or dial *86 to retrieve voicemail."

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 1562
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.htc.vvm.action.VVM_OTHER_PATTERN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1563
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v7, "com.htc.permission.APP_DEFAULT"

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 1567
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v5, "No VVM SMS matched"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1568
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private matchKillDeviceMechanism()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 1967
    const-string v2, "ro.sf"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1968
    .local v0, "shippingFlag":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KillDevice - ro.sf=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1970
    if-eq v0, v1, :cond_0

    if-ne v0, v4, :cond_1

    .line 1972
    :cond_0
    const-string v1, "KillDevice - Shipping Rom, kill device function is disable!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1973
    const/4 v1, 0x0

    .line 1976
    :cond_1
    return v1
.end method

.method private resetLastSmsFingerprintForCmas(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 1397
    const-string v2, "cmas"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1398
    .local v0, "isCmas":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCmas: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1399
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isNotSupportCmasAck()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1400
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->resetLastSmsFingerprint()V

    .line 1401
    const/4 v1, 0x1

    .line 1405
    :cond_0
    return v1
.end method

.method private shouldWeDiscardMsg(Landroid/content/Intent;)Z
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x7

    const/4 v5, 0x0

    .line 1432
    const/4 v3, 0x0

    .line 1433
    .local v3, "isSms":Z
    const/4 v4, 0x0

    .line 1434
    .local v4, "msgs":[Landroid/telephony/SmsMessage;
    const-string v7, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1436
    :cond_0
    const/4 v3, 0x1

    .line 1437
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 1441
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportTencentBolockList()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1442
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSecureMgr:Lcom/android/internal/telephony/TencentSecurityManager;

    invoke-static {v7, p1, v4, v8}, Lcom/android/internal/telephony/HtcMessageHelper;->isNumberBlocked(Landroid/content/Context;Landroid/content/Intent;[Landroid/telephony/SmsMessage;Lcom/android/internal/telephony/TencentSecurityManager;)Z

    move-result v1

    .line 1443
    .local v1, "blocked":Z
    if-eqz v1, :cond_2

    .line 1444
    const-string v5, " sms or mms wap push is blocked"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1498
    .end local v1    # "blocked":Z
    :goto_0
    return v1

    .line 1448
    :cond_2
    if-nez v3, :cond_3

    move v1, v5

    goto :goto_0

    .line 1451
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportVzwNotificationSms()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1452
    if-eqz v4, :cond_7

    aget-object v7, v4, v5

    if-eqz v7, :cond_7

    .line 1453
    aget-object v7, v4, v5

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    .line 1455
    .local v2, "firstMessage":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1456
    const-string v7, "VZWPIN:"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_4

    .line 1457
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1458
    .local v0, "bintent":Landroid/content/Intent;
    const-string v5, "com.htc.mms.PIN_NOTIFICATION"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1459
    const-string v5, "PIN_NOTIFICATION"

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1460
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v7, "com.htc.permission.mms.VZW_HUXMAIL"

    invoke-virtual {v5, v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    move v1, v6

    .line 1461
    goto :goto_0

    .line 1462
    .end local v0    # "bintent":Landroid/content/Intent;
    :cond_4
    const-string v7, "VZWNMN:"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_5

    .line 1463
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1464
    .restart local v0    # "bintent":Landroid/content/Intent;
    const-string v5, "com.htc.mms.NEW_MAIL_NOTIFICATION"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1465
    const-string v5, "NEW_MAIL_NOTIFICATION"

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1466
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v7, "com.htc.permission.mms.VZW_HUXMAIL"

    invoke-virtual {v5, v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    move v1, v6

    .line 1467
    goto :goto_0

    .line 1468
    .end local v0    # "bintent":Landroid/content/Intent;
    :cond_5
    const-string v7, "VZWUEP:"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_6

    .line 1469
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1470
    .restart local v0    # "bintent":Landroid/content/Intent;
    const-string v5, "com.htc.mms.ACCOUNT_NOTIFICATION"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1471
    const-string v5, "ACCOUNT_CHANGE_NOTIFICATION"

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1472
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v7, "com.htc.permission.mms.VZW_HUXMAIL"

    invoke-virtual {v5, v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    move v1, v6

    .line 1473
    goto/16 :goto_0

    .line 1474
    .end local v0    # "bintent":Landroid/content/Intent;
    :cond_6
    const-string v7, "VZWRSC:"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_7

    move v1, v6

    .line 1481
    goto/16 :goto_0

    .line 1488
    .end local v2    # "firstMessage":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportFilterVerizonVvmSms()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1489
    if-eqz v4, :cond_8

    aget-object v7, v4, v5

    if-eqz v7, :cond_8

    .line 1490
    aget-object v7, v4, v5

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    .line 1491
    .restart local v2    # "firstMessage":Ljava/lang/String;
    aget-object v7, v4, v5

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->isVerizonVvmSms(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v1, v6

    .line 1492
    goto/16 :goto_0

    .end local v2    # "firstMessage":Ljava/lang/String;
    :cond_8
    move v1, v5

    .line 1498
    goto/16 :goto_0
.end method


# virtual methods
.method protected KddiNonOrederdBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1989
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1990
    return-void
.end method

.method public abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method protected addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 741
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 751
    :goto_0
    :sswitch_0
    return v0

    .line 743
    :sswitch_1
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 741
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public checkVZWDirectedSMSV17(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20
    .param p1, "bodyStr"    # Ljava/lang/String;
    .param p2, "senderAddr"    # Ljava/lang/String;

    .prologue
    .line 1585
    if-nez p1, :cond_0

    .line 1586
    const/16 v18, 0x0

    .line 1711
    :goto_0
    return v18

    .line 1594
    :cond_0
    const/4 v7, 0x0

    .line 1595
    .local v7, "candidatePrefixStr":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1596
    .local v13, "parameterStr":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 1597
    .local v6, "bodyLen":I
    const-string v18, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 1599
    .local v9, "colonIdx":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "bodylen/colonidx: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " / "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1601
    if-ltz v9, :cond_1

    const/4 v4, 0x1

    .line 1602
    .local v4, "beHasColon":Z
    :goto_1
    const-string v18, "//VZW"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    const-string v18, "//VZW"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_2

    const/4 v5, 0x1

    .line 1609
    .local v5, "beVZWstarted":Z
    :goto_2
    if-nez v9, :cond_3

    .line 1610
    const/16 v18, 0x0

    goto :goto_0

    .line 1601
    .end local v4    # "beHasColon":Z
    .end local v5    # "beVZWstarted":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 1602
    .restart local v4    # "beHasColon":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 1616
    .restart local v5    # "beVZWstarted":Z
    :cond_3
    if-lez v9, :cond_5

    .line 1623
    if-eqz v5, :cond_4

    const/16 v18, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1624
    :goto_3
    add-int/lit8 v18, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1636
    :goto_4
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_7

    .line 1637
    const/16 v18, 0x0

    goto :goto_0

    .line 1623
    :cond_4
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 1634
    :cond_5
    if-eqz v5, :cond_6

    const/16 v18, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :goto_5
    goto :goto_4

    :cond_6
    move-object/from16 v7, p1

    goto :goto_5

    .line 1644
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->getValidDirectedSmsReceivers(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v2

    .line 1646
    .local v2, "apArray":[Ljava/lang/String;
    if-eqz v2, :cond_b

    .line 1653
    array-length v0, v2

    move/from16 v18, v0

    div-int/lit8 v16, v18, 0x3

    .line 1655
    .local v16, "setCount":I
    const/4 v14, 0x0

    .line 1656
    .local v14, "pkgStr":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1657
    .local v8, "classStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1658
    .local v3, "apPrefixStr":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1659
    .local v17, "setStartIdx":I
    const/4 v11, 0x0

    .line 1660
    .local v11, "ifAnyMatched":Z
    const/4 v15, 0x0

    .line 1661
    .local v15, "preFixStr":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_6
    move/from16 v0, v16

    if-ge v10, v0, :cond_a

    .line 1665
    mul-int/lit8 v17, v10, 0x3

    .line 1666
    aget-object v14, v2, v17

    .line 1667
    add-int/lit8 v18, v17, 0x1

    aget-object v8, v2, v18

    .line 1668
    add-int/lit8 v18, v17, 0x2

    aget-object v3, v2, v18

    .line 1670
    move-object v15, v3

    .line 1676
    if-nez v4, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    .line 1677
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 1687
    :cond_8
    new-instance v12, Landroid/content/Intent;

    const-string v18, "verizon.intent.action.DIRECTED_SMS_RECEIVED"

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1688
    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual {v12, v14, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1689
    const-string v18, "originator"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1690
    const-string v18, "prefix"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1691
    if-eqz v13, :cond_9

    .line 1692
    const-string v18, "parameters"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1695
    :cond_9
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "broadcast DirectedSMSv17 intent out to: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " / "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1701
    const/4 v11, 0x1

    .line 1661
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    .line 1704
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_a
    if-eqz v11, :cond_c

    .line 1705
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 1707
    .end local v3    # "apPrefixStr":Ljava/lang/String;
    .end local v8    # "classStr":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "ifAnyMatched":Z
    .end local v14    # "pkgStr":Ljava/lang/String;
    .end local v15    # "preFixStr":Ljava/lang/String;
    .end local v16    # "setCount":I
    .end local v17    # "setStartIdx":I
    :cond_b
    const-string v18, "can not got mapping of candidatePrefixstr"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1710
    :cond_c
    const-string v18, "checkVZWDirectedSMSV17 return false"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1711
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method protected createFromPdu(Lcom/android/internal/telephony/InboundSmsTracker;[B)Landroid/telephony/SmsMessage;
    .locals 2
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "pdu"    # [B

    .prologue
    .line 2044
    const/4 v0, 0x0

    .line 2045
    .local v0, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2046
    const-string v1, "3gpp2"

    invoke-static {p2, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 2051
    :goto_0
    return-object v0

    .line 2048
    :cond_0
    const-string v1, "3gpp"

    invoke-static {p2, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    goto :goto_0
.end method

.method deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "deleteWhere"    # Ljava/lang/String;
    .param p2, "deleteWhereArgs"    # [Ljava/lang/String;

    .prologue
    .line 1172
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1173
    .local v0, "rows":I
    if-nez v0, :cond_0

    .line 1174
    const-string v1, "No rows were deleted from raw table!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1178
    :goto_0
    return-void

    .line 1176
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rows from raw table."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispatchFakeMessage(Landroid/telephony/SmsMessage;)V
    .locals 3
    .param p1, "sms"    # Landroid/telephony/SmsMessage;

    .prologue
    .line 1995
    if-nez p1, :cond_0

    .line 2002
    :goto_0
    return-void

    .line 1999
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2000
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v1

    .line 2001
    .local v1, "result":Landroid/os/AsyncResult;
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v7, 0x0

    .line 1151
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->shouldWeDiscardMsg(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1152
    if-eqz p4, :cond_0

    .line 1153
    instance-of v0, p4, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    if-eqz v0, :cond_0

    move-object v0, p4

    .line 1154
    check-cast v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->access$800(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Ljava/lang/String;

    move-result-object v0

    check-cast p4, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    .end local p4    # "resultReceiver":Landroid/content/BroadcastReceiver;
    # getter for: Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;
    invoke-static {p4}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->access$900(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1158
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    .line 1166
    :goto_0
    return-void

    .line 1163
    .restart local p4    # "resultReceiver":Landroid/content/BroadcastReceiver;
    :cond_1
    const/high16 v0, 0x8000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1164
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, -0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 1
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 601
    if-nez p1, :cond_0

    .line 602
    const-string v0, "dispatchSmsMessage: message is null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 603
    const/4 v0, 0x2

    .line 613
    :goto_0
    return v0

    .line 606
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    if-eqz v0, :cond_1

    .line 608
    const-string v0, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 610
    const/4 v0, 0x1

    goto :goto_0

    .line 613
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v0

    goto :goto_0
.end method

.method protected abstract dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;Landroid/content/Intent;)I
    .locals 17
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "inIntent"    # Landroid/content/Intent;

    .prologue
    .line 684
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v16

    .line 687
    .local v16, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v2, :cond_3

    .line 689
    :cond_0
    const/4 v2, 0x1

    new-array v14, v2, [[B

    .line 690
    .local v14, "pdus":[[B
    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    aput-object v3, v14, v2

    .line 693
    const/4 v5, -0x1

    .line 694
    .local v5, "destPort":I
    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v2, :cond_1

    .line 696
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v5, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 697
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destination port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 700
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZZ)V

    .line 704
    .local v1, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiAtMailWapPush()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 705
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v12, p1

    .line 706
    check-cast v12, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 707
    .local v12, "cdmaSms":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->isAtMailMessage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 708
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/InboundSmsTracker;->setIsAtMail(Z)V

    .line 726
    .end local v12    # "cdmaSms":Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v14    # "pdus":[[B
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/telephony/InboundSmsHandler;->packExtraBundle(Lcom/android/internal/telephony/SmsMessageBase;Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/InboundSmsTracker;->setExtraData(Landroid/os/Bundle;)V

    .line 730
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v2

    return v2

    .line 715
    .end local v1    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v5    # "destPort":I
    :cond_3
    move-object/from16 v0, v16

    iget-object v13, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 716
    .local v13, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move-object/from16 v0, v16

    iget-object v15, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 717
    .local v15, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    if-eqz v15, :cond_4

    iget v5, v15, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 719
    .restart local v5    # "destPort":I
    :goto_1
    new-instance v1, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    iget v8, v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    iget v9, v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v10, v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZLjava/lang/String;IIIZ)V

    .restart local v1    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    goto :goto_0

    .line 717
    .end local v1    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v5    # "destPort":I
    :cond_4
    const/4 v5, -0x1

    goto :goto_1
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 307
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportTencentBolockList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSecureMgr:Lcom/android/internal/telephony/TencentSecurityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSecureMgr:Lcom/android/internal/telephony/TencentSecurityManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/TencentSecurityManager;->unbindTencentSecurityManager()V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mFakeReceiver:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    if-eqz v0, :cond_1

    .line 314
    const-string v0, "mFakeReceiver.dispose()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mFakeReceiver:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dispose()V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mFakeReceiver:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    .line 322
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->quit()V

    .line 323
    return-void

    .line 318
    :cond_1
    const-string v0, "mFakeReceiver is null!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCellBroadcastHandler()Lcom/android/internal/telephony/CellBroadcastHandler;
    .locals 1

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    return-object v0
.end method

.method protected abstract handleCmasInEcmCallbackMode(Z)V
.end method

.method handleNewSms(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v1, 0x1

    .line 551
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 552
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception processing incoming SMS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    const/4 v2, 0x1

    .line 557
    .local v2, "result":I
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/SmsMessage;

    .line 566
    .local v3, "sms":Landroid/telephony/SmsMessage;
    :try_start_0
    iget-object v4, v3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 575
    :goto_1
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 576
    if-ne v2, v1, :cond_2

    .line 580
    .local v1, "handled":Z
    :goto_2
    iget-object v4, v3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->isCMAS()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isNotSupportCmasAck()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 581
    const-string v4, "isCmas & NotSupportCmasAck"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->resetLastSmsFingerprint()V

    goto :goto_0

    .line 568
    .end local v1    # "handled":Z
    :catch_0
    move-exception v0

    .line 569
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v4, "Exception dispatching message"

    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 570
    const/4 v2, 0x2

    goto :goto_1

    .line 576
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 587
    .restart local v1    # "handled":Z
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_0
.end method

.method protected abstract is3gpp2()Z
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1362
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1371
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1381
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1382
    return-void
.end method

.method notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 658
    if-nez p1, :cond_0

    .line 660
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 662
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 664
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 665
    return-void
.end method

.method protected onQuitting()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispose()V

    .line 339
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 342
    :cond_0
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 645
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdatePhoneObject: phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 647
    return-void
.end method

.method protected final packExtraBundle(Lcom/android/internal/telephony/SmsMessageBase;Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 4
    .param p1, "smb"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "inIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 2010
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2013
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "SimSmsRecordIndex"

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2015
    const-string v1, "isSprintReassembleSms"

    iget-boolean v2, p1, Lcom/android/internal/telephony/SmsMessageBase;->isSprintReassembleSms:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2016
    const-string v1, "address"

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2019
    if-eqz p2, :cond_0

    .line 2020
    const-string v1, "cmas"

    const-string v2, "cmas"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2021
    const-string v1, "earthquake_alert"

    const-string v2, "earthquake_alert"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2022
    const-string v1, "isCdma"

    const-string v2, "isCdma"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2023
    const-string v1, "is_cbm"

    const-string v2, "is_cbm"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2024
    const-string v1, "idxonsim"

    const-string v2, "idxonsim"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2025
    const-string v1, "kddi_bcsms"

    const-string v2, "kddi_bcsms"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2026
    const-string v1, "discard"

    const-string v2, "discard"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2027
    const-string v1, "isBroadcastType"

    const-string v2, "isBroadcastType"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2031
    :cond_0
    return-object v0
.end method

.method protected packagePdusAndExtra(Landroid/content/Intent;Lcom/android/internal/telephony/SmsMessageBase;[[B[IZZ)Landroid/content/Intent;
    .locals 2
    .param p1, "it"    # Landroid/content/Intent;
    .param p2, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p3, "pdus"    # [[B
    .param p4, "idxonsims"    # [I
    .param p5, "isDiscard"    # Z
    .param p6, "isBroadcastType"    # Z

    .prologue
    .line 1412
    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    .end local p1    # "it":Landroid/content/Intent;
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1413
    .restart local p1    # "it":Landroid/content/Intent;
    :cond_0
    const-string v0, "SimSmsRecordIndex"

    invoke-virtual {p2}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1414
    const-string v0, "pdus"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1415
    const-string v1, "format"

    iget-boolean v0, p2, Lcom/android/internal/telephony/SmsMessageBase;->isCdmaFormat:Z

    if-eqz v0, :cond_1

    const-string v0, "3gpp2"

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1417
    const-string v0, "idxonsims"

    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1418
    const-string v0, "discard"

    invoke-virtual {p1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1419
    const-string v0, "isBroadcastType"

    invoke-virtual {p1, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1420
    return-object p1

    .line 1415
    :cond_1
    const-string v0, "3gpp"

    goto :goto_0
.end method

.method processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 60
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 763
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v38

    .line 765
    .local v38, "messageCount":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v20

    .line 768
    .local v20, "destPort":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getExtraData()Landroid/os/Bundle;

    move-result-object v14

    .line 769
    .local v14, "bundle":Landroid/os/Bundle;
    const/16 v33, 0x0

    .line 771
    .local v33, "isBroadcastType":Z
    const/16 v21, 0x0

    .line 772
    .local v21, "discard":Z
    const/16 v53, -0x1

    .line 773
    .local v53, "simSmsRecordIndex":I
    const-string v15, ""

    .line 774
    .local v15, "bundleAddress":Ljava/lang/String;
    const/16 v28, 0x0

    .line 776
    .local v28, "idxonsimarray":[I
    if-eqz v14, :cond_0

    .line 777
    const-string v3, "isBroadcastType"

    invoke-virtual {v14, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v33

    .line 778
    const-string v3, "address"

    invoke-virtual {v14, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 781
    const-string v3, "discard"

    invoke-virtual {v14, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    .line 782
    const-string v3, "SimSmsRecordIndex"

    const/4 v4, -0x1

    invoke-virtual {v14, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v53

    .line 786
    :cond_0
    const/4 v3, 0x1

    move/from16 v0, v38

    if-ne v0, v3, :cond_4

    .line 788
    const/4 v3, 0x1

    new-array v0, v3, [[B

    move-object/from16 v45, v0

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v4

    aput-object v4, v45, v3

    .line 885
    .local v45, "pdus":[[B
    :cond_1
    :goto_0
    new-instance v50, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 887
    .local v50, "resultReceiver":Landroid/content/BroadcastReceiver;
    const/16 v3, 0xb84

    move/from16 v0, v20

    if-ne v0, v3, :cond_12

    .line 889
    new-instance v42, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v42 .. v42}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 890
    .local v42, "output":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v11, v45

    .local v11, "arr$":[[B
    array-length v0, v11

    move/from16 v35, v0

    .local v35, "len$":I
    const/16 v26, 0x0

    .local v26, "i$":I
    :goto_1
    move/from16 v0, v26

    move/from16 v1, v35

    if-ge v0, v1, :cond_f

    aget-object v44, v11, v26

    .line 892
    .local v44, "pdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v3

    if-nez v3, :cond_2

    .line 893
    const-string v3, "3gpp"

    move-object/from16 v0, v44

    invoke-static {v0, v3}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v39

    .line 894
    .local v39, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual/range {v39 .. v39}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v44

    .line 898
    .end local v39    # "msg":Landroid/telephony/SmsMessage;
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiAtMailWapPush()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 899
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->isAtMail()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 901
    const-string v3, "3gpp2"

    move-object/from16 v0, v44

    invoke-static {v0, v3}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v39

    .line 902
    .restart local v39    # "msg":Landroid/telephony/SmsMessage;
    invoke-virtual/range {v39 .. v39}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v44

    .line 907
    .end local v39    # "msg":Landroid/telephony/SmsMessage;
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, v44

    array-length v4, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 890
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 791
    .end local v11    # "arr$":[[B
    .end local v26    # "i$":I
    .end local v35    # "len$":I
    .end local v42    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v44    # "pdu":[B
    .end local v45    # "pdus":[[B
    .end local v50    # "resultReceiver":Landroid/content/BroadcastReceiver;
    :cond_4
    const/16 v18, 0x0

    .line 794
    .local v18, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v10

    .line 795
    .local v10, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v47

    .line 796
    .local v47, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 799
    .local v17, "count":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v10, v7, v3

    const/4 v3, 0x1

    aput-object v47, v7, v3

    const/4 v3, 0x2

    aput-object v17, v7, v3

    .line 800
    .local v7, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const-string v6, "address=? AND reference_number=? AND count=?"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 803
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v19

    .line 804
    .local v19, "cursorCount":I
    move/from16 v0, v19

    move/from16 v1, v38

    if-ge v0, v1, :cond_6

    .line 810
    const/4 v3, 0x0

    .line 879
    if-eqz v18, :cond_5

    .line 880
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1136
    .end local v7    # "whereArgs":[Ljava/lang/String;
    .end local v10    # "address":Ljava/lang/String;
    .end local v17    # "count":Ljava/lang/String;
    .end local v18    # "cursor":Landroid/database/Cursor;
    .end local v19    # "cursorCount":I
    .end local v47    # "refNumber":Ljava/lang/String;
    :cond_5
    :goto_2
    return v3

    .line 814
    .restart local v7    # "whereArgs":[Ljava/lang/String;
    .restart local v10    # "address":Ljava/lang/String;
    .restart local v17    # "count":Ljava/lang/String;
    .restart local v18    # "cursor":Landroid/database/Cursor;
    .restart local v19    # "cursorCount":I
    .restart local v47    # "refNumber":Ljava/lang/String;
    :cond_6
    :try_start_1
    move/from16 v0, v38

    new-array v0, v0, [[B

    move-object/from16 v45, v0

    .line 817
    .restart local v45    # "pdus":[[B
    move/from16 v0, v38

    new-array v0, v0, [J

    move-object/from16 v27, v0

    .line 819
    .local v27, "ids":[J
    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v28, v0

    .line 820
    :cond_7
    :goto_3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 822
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v52

    .line 823
    .local v52, "sequence":I
    const/16 v30, -0x1

    .line 824
    .local v30, "indexOnSim":I
    const/16 v3, 0xff

    move/from16 v0, v52

    if-le v0, v3, :cond_8

    .line 825
    shr-int/lit8 v30, v52, 0x10

    .line 827
    :cond_8
    move/from16 v0, v52

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    .line 831
    .local v29, "index":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v3

    sub-int v29, v29, v3

    .line 833
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v45, v29

    .line 834
    const/4 v3, 0x7

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v27, v29

    .line 835
    aput v30, v28, v29

    .line 839
    if-nez v29, :cond_7

    const/4 v3, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 840
    const/4 v3, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    .line 842
    .local v46, "port":I
    invoke-static/range {v46 .. v46}, Lcom/android/internal/telephony/InboundSmsTracker;->getRealDestPort(I)I

    move-result v46

    .line 843
    const/4 v3, -0x1

    move/from16 v0, v46

    if-eq v0, v3, :cond_7

    .line 844
    move/from16 v20, v46

    goto :goto_3

    .line 850
    .end local v29    # "index":I
    .end local v30    # "indexOnSim":I
    .end local v46    # "port":I
    .end local v52    # "sequence":I
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSprintReassembleSmsEnhance()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 851
    const/16 v51, 0x0

    .line 852
    .local v51, "sb":Ljava/lang/StringBuilder;
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_4
    move/from16 v0, v25

    move/from16 v1, v38

    if-ge v0, v1, :cond_c

    .line 853
    aget-object v3, v45, v25

    if-nez v3, :cond_a

    .line 855
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reassemble SMS lost pdus which sequence="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", refNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 857
    const/4 v3, 0x0

    .line 879
    if-eqz v18, :cond_5

    .line 880
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 860
    :cond_a
    if-nez v51, :cond_b

    .line 861
    :try_start_2
    new-instance v51, Ljava/lang/StringBuilder;

    .end local v51    # "sb":Ljava/lang/StringBuilder;
    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    .line 862
    .restart local v51    # "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v27, v25

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    :goto_5
    add-int/lit8 v25, v25, 0x1

    goto :goto_4

    .line 864
    :cond_b
    const-string v3, ","

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v5, v27, v25

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 875
    .end local v7    # "whereArgs":[Ljava/lang/String;
    .end local v10    # "address":Ljava/lang/String;
    .end local v17    # "count":Ljava/lang/String;
    .end local v19    # "cursorCount":I
    .end local v25    # "i":I
    .end local v27    # "ids":[J
    .end local v45    # "pdus":[[B
    .end local v47    # "refNumber":Ljava/lang/String;
    .end local v51    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v22

    .line 876
    .local v22, "e":Landroid/database/SQLException;
    :try_start_3
    const-string v3, "Can\'t access multipart SMS database"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 877
    const/4 v3, 0x0

    .line 879
    if-eqz v18, :cond_5

    .line 880
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 868
    .end local v22    # "e":Landroid/database/SQLException;
    .restart local v7    # "whereArgs":[Ljava/lang/String;
    .restart local v10    # "address":Ljava/lang/String;
    .restart local v17    # "count":Ljava/lang/String;
    .restart local v19    # "cursorCount":I
    .restart local v25    # "i":I
    .restart local v27    # "ids":[J
    .restart local v45    # "pdus":[[B
    .restart local v47    # "refNumber":Ljava/lang/String;
    .restart local v51    # "sb":Ljava/lang/StringBuilder;
    :cond_c
    if-eqz v51, :cond_d

    :try_start_4
    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_d

    .line 869
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id in ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    .line 870
    .local v59, "where":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete raw table where ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v59

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 871
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 879
    .end local v25    # "i":I
    .end local v51    # "sb":Ljava/lang/StringBuilder;
    .end local v59    # "where":Ljava/lang/String;
    :cond_d
    if-eqz v18, :cond_1

    .line 880
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 879
    .end local v7    # "whereArgs":[Ljava/lang/String;
    .end local v10    # "address":Ljava/lang/String;
    .end local v17    # "count":Ljava/lang/String;
    .end local v19    # "cursorCount":I
    .end local v27    # "ids":[J
    .end local v45    # "pdus":[[B
    .end local v47    # "refNumber":Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v18, :cond_e

    .line 880
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v3

    .line 911
    .end local v18    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "arr$":[[B
    .restart local v26    # "i$":I
    .restart local v35    # "len$":I
    .restart local v42    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v45    # "pdus":[[B
    .restart local v50    # "resultReceiver":Landroid/content/BroadcastReceiver;
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v41, v15

    .line 915
    .local v41, "origintingAddress":Ljava/lang/String;
    :goto_6
    const/16 v49, 0x1

    .line 922
    .local v49, "result":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v42 .. v42}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)I

    move-result v49

    .line 925
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchWapPdu() returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v49

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 927
    const/4 v3, -0x1

    move/from16 v0, v49

    if-ne v0, v3, :cond_11

    const/4 v3, 0x1

    goto/16 :goto_2

    .line 911
    .end local v41    # "origintingAddress":Ljava/lang/String;
    .end local v49    # "result":I
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v41

    goto :goto_6

    .line 927
    .restart local v41    # "origintingAddress":Ljava/lang/String;
    .restart local v49    # "result":I
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 931
    .end local v11    # "arr$":[[B
    .end local v26    # "i$":I
    .end local v35    # "len$":I
    .end local v41    # "origintingAddress":Ljava/lang/String;
    .end local v42    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v49    # "result":I
    :cond_12
    const/4 v12, 0x0

    .line 932
    .local v12, "bLBS":Z
    const/4 v3, -0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_1e

    .line 933
    new-instance v31, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SMS_DELIVER"

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 939
    .local v31, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportVzwDirectSms()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 940
    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    .line 941
    .restart local v51    # "sb":Ljava/lang/StringBuilder;
    const/16 v25, 0x0

    .restart local v25    # "i":I
    :goto_7
    move/from16 v0, v25

    move/from16 v1, v38

    if-ge v0, v1, :cond_13

    .line 942
    aget-object v3, v45, v25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->createFromPdu(Lcom/android/internal/telephony/InboundSmsTracker;[B)Landroid/telephony/SmsMessage;

    move-result-object v39

    .line 943
    .restart local v39    # "msg":Landroid/telephony/SmsMessage;
    invoke-virtual/range {v39 .. v39}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    add-int/lit8 v25, v25, 0x1

    goto :goto_7

    .line 946
    .end local v39    # "msg":Landroid/telephony/SmsMessage;
    :cond_13
    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    .line 948
    .local v56, "str":Ljava/lang/String;
    if-eqz v56, :cond_16

    .line 949
    const-string v3, "EMS check DirectedSMS V17"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 950
    const-string v3, "//VZW"

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "//VZW"

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_14

    const/4 v13, 0x1

    .line 954
    .local v13, "beVZWstarted":Z
    :goto_8
    const/4 v3, 0x0

    aget-object v3, v45, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->createFromPdu(Lcom/android/internal/telephony/InboundSmsTracker;[B)Landroid/telephony/SmsMessage;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->checkVZWDirectedSMSV17(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    .line 955
    const-string v3, "Directed SMS v17 true"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 958
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 959
    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    .line 962
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 950
    .end local v13    # "beVZWstarted":Z
    :cond_14
    const/4 v13, 0x0

    goto :goto_8

    .line 963
    .restart local v13    # "beVZWstarted":Z
    :cond_15
    if-eqz v13, :cond_16

    .line 964
    const/4 v12, 0x1

    .line 965
    const-string v3, "SMSV17dispatch/ isLBSMessage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 975
    .end local v13    # "beVZWstarted":Z
    .end local v25    # "i":I
    .end local v51    # "sb":Ljava/lang/StringBuilder;
    .end local v56    # "str":Ljava/lang/String;
    :cond_16
    :goto_9
    const/4 v3, 0x1

    if-ne v12, v3, :cond_1f

    .line 976
    const-string v3, "lbs"

    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 977
    const-string v3, "com.htc.mms.transaction.LBSMESSAGE_RECEIVE"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1003
    :cond_17
    :goto_a
    if-eqz v14, :cond_18

    .line 1004
    const-string v3, "discard"

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1006
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_18

    .line 1007
    const-string v3, "SimSmsRecordIndex"

    move-object/from16 v0, v31

    move/from16 v1, v53

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1011
    :cond_18
    const-string v3, "idxonsims"

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1013
    const-string v3, "pdus"

    move-object/from16 v0, v31

    move-object/from16 v1, v45

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1014
    const-string v3, "format"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1017
    if-eqz v14, :cond_19

    .line 1018
    const-string v3, "cmas"

    const-string v4, "cmas"

    invoke-virtual {v14, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1019
    const-string v3, "earthquake_alert"

    const-string v4, "earthquake_alert"

    invoke-virtual {v14, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1020
    const-string v3, "isCdma"

    const-string v4, "isCdma"

    invoke-virtual {v14, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1021
    const-string v3, "idxonsim"

    const-string v4, "idxonsim"

    invoke-virtual {v14, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1022
    const-string v3, "kddi_bcsms"

    const-string v4, "kddi_bcsms"

    invoke-virtual {v14, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1030
    :cond_19
    const-string v3, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual/range {v31 .. v31}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1033
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v16

    .line 1034
    .local v16, "componentName":Landroid/content/ComponentName;
    if-eqz v16, :cond_1a

    .line 1036
    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1037
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delivering SMS to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1044
    .end local v16    # "componentName":Landroid/content/ComponentName;
    :cond_1a
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportFilterAttVvmSms()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1045
    const/16 v3, 0x157b

    move/from16 v0, v20

    if-ne v0, v3, :cond_1b

    .line 1046
    new-instance v34, Landroid/content/Intent;

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1047
    .local v34, "it":Landroid/content/Intent;
    const-string v3, "com.htc.vvm.action.PORT_5499_VVM"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1048
    const-string v3, "com.htc.permission.APP_DEFAULT"

    const/16 v4, 0x10

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1061
    .end local v34    # "it":Landroid/content/Intent;
    :cond_1b
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportRedirectSmsToMobilBoxPro()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_24

    .line 1062
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v43

    .line 1063
    .local v43, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v24, 0x1

    .line 1064
    .local v24, "hasMbp":Z
    const/16 v36, 0x0

    .line 1066
    .local v36, "mbpEnableStatus":I
    :try_start_5
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getMobilBoxPro()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v36

    .line 1071
    :goto_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportRedirectSmsToMobilBoxPro hasMbp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1072
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportRedirectSmsToMobilBoxPro mbpEnableStatus : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1074
    if-eqz v24, :cond_24

    const/4 v3, 0x1

    move/from16 v0, v36

    if-eq v0, v3, :cond_1c

    if-nez v36, :cond_24

    .line 1078
    :cond_1c
    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    .line 1079
    .restart local v51    # "sb":Ljava/lang/StringBuilder;
    const/16 v40, 0x0

    .line 1080
    .local v40, "originatingAddress":Ljava/lang/String;
    const/16 v58, 0x0

    .line 1081
    .local v58, "userData":Ljava/lang/String;
    const/16 v25, 0x0

    .restart local v25    # "i":I
    :goto_c
    move/from16 v0, v25

    move/from16 v1, v38

    if-ge v0, v1, :cond_22

    .line 1082
    aget-object v3, v45, v25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->createFromPdu(Lcom/android/internal/telephony/InboundSmsTracker;[B)Landroid/telephony/SmsMessage;

    move-result-object v39

    .line 1083
    .restart local v39    # "msg":Landroid/telephony/SmsMessage;
    invoke-virtual/range {v39 .. v39}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    if-nez v25, :cond_1d

    .line 1085
    invoke-virtual/range {v39 .. v39}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v40

    .line 1081
    :cond_1d
    add-int/lit8 v25, v25, 0x1

    goto :goto_c

    .line 970
    .end local v24    # "hasMbp":Z
    .end local v25    # "i":I
    .end local v31    # "intent":Landroid/content/Intent;
    .end local v36    # "mbpEnableStatus":I
    .end local v39    # "msg":Landroid/telephony/SmsMessage;
    .end local v40    # "originatingAddress":Ljava/lang/String;
    .end local v43    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v51    # "sb":Ljava/lang/StringBuilder;
    .end local v58    # "userData":Ljava/lang/String;
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sms://localhost:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v57

    .line 971
    .local v57, "uri":Landroid/net/Uri;
    new-instance v31, Landroid/content/Intent;

    const-string v3, "android.intent.action.DATA_SMS_RECEIVED"

    move-object/from16 v0, v31

    move-object/from16 v1, v57

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v31    # "intent":Landroid/content/Intent;
    goto/16 :goto_9

    .line 978
    .end local v57    # "uri":Landroid/net/Uri;
    :cond_1f
    if-eqz v33, :cond_21

    .line 979
    const-string v3, "is_cbm"

    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 980
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiBcsms()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 981
    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_a

    .line 983
    :cond_20
    const-string v3, "com.htc.intent.action.CB_RECEIVED"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_a

    .line 990
    :cond_21
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSprintIgnoredSmsFormat()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 991
    const/4 v3, 0x0

    aget-object v3, v45, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->createFromPdu(Lcom/android/internal/telephony/InboundSmsTracker;[B)Landroid/telephony/SmsMessage;

    move-result-object v39

    .line 992
    .restart local v39    # "msg":Landroid/telephony/SmsMessage;
    invoke-virtual/range {v39 .. v39}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v23

    .line 993
    .local v23, "firstMessage":Ljava/lang/String;
    if-eqz v23, :cond_17

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_17

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_17

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_17

    .line 996
    const-string v3, "double slash started, change action"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 998
    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_a

    .line 1067
    .end local v23    # "firstMessage":Ljava/lang/String;
    .end local v39    # "msg":Landroid/telephony/SmsMessage;
    .restart local v24    # "hasMbp":Z
    .restart local v36    # "mbpEnableStatus":I
    .restart local v43    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v22

    .line 1068
    .local v22, "e":Ljava/lang/IllegalArgumentException;
    const/16 v24, 0x0

    goto/16 :goto_b

    .line 1088
    .end local v22    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v25    # "i":I
    .restart local v40    # "originatingAddress":Ljava/lang/String;
    .restart local v51    # "sb":Ljava/lang/StringBuilder;
    .restart local v58    # "userData":Ljava/lang/String;
    :cond_22
    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    .line 1090
    const-string v3, "3311"

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    if-eqz v58, :cond_24

    const-string v3, "Mobilbox Pro"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1092
    new-instance v32, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1093
    .local v32, "intentForQuery":Landroid/content/Intent;
    const/4 v3, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v55

    .line 1096
    .local v55, "smsReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v55 .. v55}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "i$":Ljava/util/Iterator;
    :cond_23
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/content/pm/ResolveInfo;

    .line 1097
    .local v48, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v48

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1098
    .local v9, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v9, :cond_23

    .line 1102
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getMobilBoxPro()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1103
    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1104
    new-instance v16, Landroid/content/ComponentName;

    iget-object v3, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    .restart local v16    # "componentName":Landroid/content/ComponentName;
    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1115
    .end local v9    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v16    # "componentName":Landroid/content/ComponentName;
    .end local v24    # "hasMbp":Z
    .end local v25    # "i":I
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v32    # "intentForQuery":Landroid/content/Intent;
    .end local v36    # "mbpEnableStatus":I
    .end local v40    # "originatingAddress":Ljava/lang/String;
    .end local v43    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v48    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v51    # "sb":Ljava/lang/StringBuilder;
    .end local v55    # "smsReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v58    # "userData":Ljava/lang/String;
    :cond_24
    if-eqz v33, :cond_26

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSenseVersion()F

    move-result v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x4018000000000000L    # 6.0

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_26

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiBcsms()Z

    move-result v3

    if-nez v3, :cond_26

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3gpp2"

    if-ne v3, v4, :cond_26

    .line 1119
    const-string v3, "Received CDMA Cell Broadcast Message!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1120
    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    .line 1121
    .restart local v51    # "sb":Ljava/lang/StringBuilder;
    move-object/from16 v11, v45

    .restart local v11    # "arr$":[[B
    array-length v0, v11

    move/from16 v35, v0

    .restart local v35    # "len$":I
    const/16 v26, 0x0

    .local v26, "i$":I
    :goto_d
    move/from16 v0, v26

    move/from16 v1, v35

    if-ge v0, v1, :cond_25

    aget-object v44, v11, v26

    .line 1122
    .restart local v44    # "pdu":[B
    invoke-static/range {v44 .. v44}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v54

    .line 1123
    .local v54, "sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual/range {v54 .. v54}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseBroadcastSms()Landroid/telephony/SmsCbMessage;

    move-result-object v37

    .line 1124
    .local v37, "message":Landroid/telephony/SmsCbMessage;
    invoke-virtual/range {v37 .. v37}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    add-int/lit8 v26, v26, 0x1

    goto :goto_d

    .line 1126
    .end local v37    # "message":Landroid/telephony/SmsCbMessage;
    .end local v44    # "pdu":[B
    .end local v54    # "sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    :cond_25
    const/4 v3, 0x0

    aget-object v3, v45, v3

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v54

    .line 1127
    .restart local v54    # "sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual/range {v54 .. v54}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseBroadcastSms()Landroid/telephony/SmsCbMessage;

    move-result-object v37

    .line 1128
    .restart local v37    # "message":Landroid/telephony/SmsCbMessage;
    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/telephony/SmsCbMessage;->setMessageBody(Ljava/lang/String;)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    move-object/from16 v0, v31

    move-object/from16 v1, v37

    move-object/from16 v2, v50

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/telephony/CellBroadcastHandler;->handleBroadcastSms(Landroid/content/Intent;Landroid/telephony/SmsCbMessage;Landroid/content/BroadcastReceiver;)V

    .line 1130
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 1134
    .end local v11    # "arr$":[[B
    .end local v26    # "i$":I
    .end local v35    # "len$":I
    .end local v37    # "message":Landroid/telephony/SmsCbMessage;
    .end local v51    # "sb":Ljava/lang/StringBuilder;
    .end local v54    # "sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    :cond_26
    const-string v3, "android.permission.RECEIVE_SMS"

    const/16 v4, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1136
    const/4 v3, 0x1

    goto/16 :goto_2
.end method

.method protected resetLastSmsFingerprint()V
    .locals 0

    .prologue
    .line 1385
    return-void
.end method

.method public updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 329
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    .line 330
    return-void
.end method

.method protected verifyAndKillDevice(Ljava/lang/String;)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1879
    const-string v5, "KillDevice - Acknowledge Incoming SMS before Kill process!"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1880
    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 1883
    if-nez p1, :cond_0

    .line 1884
    const-string v5, "KillDevice - Message is null!!!"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1926
    :goto_0
    return-void

    .line 1889
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "$%5&+4#\"5@#&5.?"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v5, v6, :cond_1

    .line 1890
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KillDevice - Invalid Message!!! The length of message = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1893
    :cond_1
    const-string v5, "$%5&+4#\"5@#&5.?"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1896
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->matchKillDeviceMechanism()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1897
    const-string v5, "KillDevice - This rom not support Kill Device Function!"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1902
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getDeviceIdentity()Ljava/lang/String;

    move-result-object v2

    .line 1903
    .local v2, "identity":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KillDevice - Device Identity=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1904
    if-nez v2, :cond_3

    .line 1905
    const-string v5, "KillDevice - Device Identity is null!!!"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1910
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "i":I
    :goto_1
    const/16 v5, 0x10

    if-ge v1, v5, :cond_4

    .line 1911
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1910
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1913
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KillDevice - NEW Device Identity=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1917
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1918
    .local v0, "bMessage":[B
    array-length v5, v0

    const/16 v6, 0x40

    if-eq v5, v6, :cond_5

    .line 1919
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KillDevice - Invalid Message, byte length =["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1923
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 1924
    .local v3, "pm":Landroid/os/PowerManager;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Landroid/os/PowerManager;->wipeSystem([B[B)Z

    move-result v4

    .line 1925
    .local v4, "result":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KillDevice - result=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
