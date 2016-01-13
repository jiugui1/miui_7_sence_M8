.class public Lcom/htc/server/ulog/UserBehaviorLoggingService;
.super Lcom/htc/utils/ulog/IUserBehaviorLoggingService$Stub;
.source "UserBehaviorLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/ulog/UserBehaviorLoggingService$1;,
        Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;,
        Lcom/htc/server/ulog/UserBehaviorLoggingService$CustomizationReceiver;,
        Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_CUSTOMIZATION:Ljava/lang/String; = "com.htc.intent.action.CUSTOMIZATION_CHANGE"

.field private static final ACTION_CUSTOMIZATION_FORCE:Ljava/lang/String; = "com.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE"

.field private static final ACTION_SEND_UP:Ljava/lang/String; = "com.htc.intent.action.SEND_UP"

.field static final ACTION_TELL_HTC_SETTING_CHANGED:Ljava/lang/String; = "com.htc.intent.action.TELLHTC_SETTING_CHANGE"

.field static final ACTION_ULOG_POLICY_CHANGED:Ljava/lang/String; = "com.htc.intent.action.ULOG_POLICY_CHANGED"

.field static final CRASH_SEND:I = 0x0

.field static final FOTA_UPGRADE_SEND:I = 0x3

.field private static final LOGCAT_TAG:Ljava/lang/String; = "UserBehaviorLoggingService"

.field private static final PERMISSION_CUSTOMIZATION_CHANGE:Ljava/lang/String; = "htc.permission.CUSTOMIZATION_CHANGE"

.field public static final PERMISSION_UBLS_PROTECTED_USAGE:Ljava/lang/String; = "com.htc.permission.UBLS_PROTECTED_USAGE"

.field static final REGULAR_SEND:I = 0x1

.field private static final SEND_ACTION:Ljava/lang/String; = "com.htc.updater.NOTIFY_SEND"

.field static final USER_TRAIL_SEND:I = 0x2

.field private static sInstance:Lcom/htc/server/ulog/UserBehaviorLoggingService;


# instance fields
.field private mAlarmScheduler:Lcom/htc/server/ulog/AlarmScheduler;

.field private mBroadcastReceiver:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCustomizationReceiver:Lcom/htc/server/ulog/UserBehaviorLoggingService$CustomizationReceiver;

.field private mEventLog:Lcom/htc/server/ulog/EventLogStore;

.field private mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

.field private mIV:[B

.field private mIsEngROM:Z

.field private mIsStopped:Z

.field private mKey:[B

.field private mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

.field private mReceiverHandler:Landroid/os/Handler;

.field private mSettingObserver:Lcom/htc/server/ulog/SettingObserver;

.field private final mStopLock:Ljava/lang/Object;

.field private mUBEventLog:Lcom/htc/server/ulog/HTCUBLogStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->sInstance:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/htc/utils/ulog/IUserBehaviorLoggingService$Stub;-><init>()V

    iput-boolean v11, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mIsEngROM:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mStopLock:Ljava/lang/Object;

    iput-object v10, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mKey:[B

    iput-object v10, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mIV:[B

    iput-object p1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->sInstance:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    if-nez v0, :cond_0

    sput-object p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->sInstance:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    :cond_0
    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mIsEngROM:Z

    const-string v0, "UserBehaviorLoggingService"

    const-string v1, "HTC_UB is disabled in UserBehaviorLoggingService"

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v6, Lcom/htc/server/ulog/DatabaseHelper;

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0, v10}, Lcom/htc/server/ulog/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .local v6, "dbHelper":Lcom/htc/server/ulog/DatabaseHelper;
    sget-boolean v0, Lcom/htc/server/ulog/Utils;->ENABLE_USER_POLICY:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/htc/server/ulog/PolicyStore;

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v6}, Lcom/htc/server/ulog/PolicyStore;-><init>(Landroid/content/Context;Lcom/htc/server/ulog/DatabaseHelper;)V

    iput-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

    :goto_0
    invoke-static {}, Lcom/htc/server/ulog/ReceiverThreadUtil;->getInstance()Lcom/htc/server/ulog/ReceiverThreadUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/server/ulog/ReceiverThreadUtil;->createReceiverHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mReceiverHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mReceiverHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    const-string v0, "UBLS uses main thread to receive broadcast messages"

    invoke-static {v0}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mReceiverHandler:Landroid/os/Handler;

    :cond_2
    new-instance v0, Lcom/htc/server/ulog/AlarmScheduler;

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mReceiverHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v3}, Lcom/htc/server/ulog/AlarmScheduler;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mAlarmScheduler:Lcom/htc/server/ulog/AlarmScheduler;

    new-instance v0, Lcom/htc/server/ulog/HTCUBLogStore;

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v6}, Lcom/htc/server/ulog/HTCUBLogStore;-><init>(Landroid/content/Context;Lcom/htc/server/ulog/DatabaseHelper;)V

    iput-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mUBEventLog:Lcom/htc/server/ulog/HTCUBLogStore;

    new-instance v0, Lcom/htc/server/ulog/EventLogStore;

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v6}, Lcom/htc/server/ulog/EventLogStore;-><init>(Landroid/content/Context;Lcom/htc/server/ulog/DatabaseHelper;)V

    iput-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mEventLog:Lcom/htc/server/ulog/EventLogStore;

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mEventLog:Lcom/htc/server/ulog/EventLogStore;

    invoke-virtual {v0, v1}, Lcom/htc/server/ulog/PolicyStore;->setPolicyListener(Lcom/htc/server/ulog/PolicyStore$PolicyListener;)V

    new-instance v8, Landroid/os/HandlerThread;

    const-string v0, "UDove_2"

    const/16 v1, 0xa

    invoke-direct {v8, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .local v8, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .local v2, "looper":Landroid/os/Looper;
    if-eqz v2, :cond_5

    new-instance v0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    iget-object v3, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mUBEventLog:Lcom/htc/server/ulog/HTCUBLogStore;

    iget-object v4, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mEventLog:Lcom/htc/server/ulog/EventLogStore;

    iget-object v5, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;-><init>(Lcom/htc/server/ulog/UserBehaviorLoggingService;Landroid/os/Looper;Lcom/htc/server/ulog/HTCUBLogStore;Lcom/htc/server/ulog/EventLogStore;Lcom/htc/server/ulog/PolicyStore;)V

    iput-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->sendEmptyMessage(I)Z

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .local v7, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.htc.updater.NOTIFY_SEND"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.htc.intent.action.SEND_UP"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v0, Lcom/htc/server/ulog/Utils;->ENABLE_USER_POLICY:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/htc/server/ulog/SettingObserver;

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    iget-object v3, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

    iget-object v5, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mEventLog:Lcom/htc/server/ulog/EventLogStore;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/htc/server/ulog/SettingObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/htc/server/ulog/PolicyStore;Lcom/htc/server/ulog/SettingObserver$SettingListener;)V

    iput-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mSettingObserver:Lcom/htc/server/ulog/SettingObserver;

    const-string v0, ""

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .local v9, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mSettingObserver:Lcom/htc/server/ulog/SettingObserver;

    invoke-virtual {v0, v9, v11, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .end local v9    # "uri":Landroid/net/Uri;
    :cond_3
    new-instance v0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;

    invoke-direct {v0, p0, v10}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;-><init>(Lcom/htc/server/ulog/UserBehaviorLoggingService;Lcom/htc/server/ulog/UserBehaviorLoggingService$1;)V

    iput-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mBroadcastReceiver:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mBroadcastReceiver:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;

    const-string v3, "com.htc.permission.UBLS_PROTECTED_USAGE"

    iget-object v4, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v7, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Lcom/htc/server/ulog/UserBehaviorLoggingService$CustomizationReceiver;

    invoke-direct {v0, p0, v10}, Lcom/htc/server/ulog/UserBehaviorLoggingService$CustomizationReceiver;-><init>(Lcom/htc/server/ulog/UserBehaviorLoggingService;Lcom/htc/server/ulog/UserBehaviorLoggingService$1;)V

    iput-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mCustomizationReceiver:Lcom/htc/server/ulog/UserBehaviorLoggingService$CustomizationReceiver;

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mCustomizationReceiver:Lcom/htc/server/ulog/UserBehaviorLoggingService$CustomizationReceiver;

    iget-object v3, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mReceiverHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v3}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->registerCustomizationReceiver(Landroid/content/Context;Lcom/htc/server/ulog/UserBehaviorLoggingService$CustomizationReceiver;Landroid/os/Handler;)V

    const-string v0, "UserBehaviorLoggingService"

    const-string v1, "UserBehaviorLoggingService.Constructor end"

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .end local v7    # "filter":Landroid/content/IntentFilter;
    :goto_1
    return-void

    .end local v2    # "looper":Landroid/os/Looper;
    .end local v8    # "thread":Landroid/os/HandlerThread;
    :cond_4
    const-string v0, "UserBehaviorLoggingService"

    const-string v1, "policy is disabled in UserBehaviorLoggingService"

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v2    # "looper":Landroid/os/Looper;
    .restart local v8    # "thread":Landroid/os/HandlerThread;
    :cond_5
    const-string v0, "UserBehaviorLoggingService"

    const-string v1, "UserBehaviorLoggingService.Constructor end abnormally, thread.getLooper() is null"

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$200(Lcom/htc/server/ulog/UserBehaviorLoggingService;)Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/ulog/UserBehaviorLoggingService;

    .prologue
    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/server/ulog/UserBehaviorLoggingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/ulog/UserBehaviorLoggingService;

    .prologue
    iget-boolean v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mIsEngROM:Z

    return v0
.end method

.method public static getInstance()Lcom/htc/server/ulog/UserBehaviorLoggingService;
    .locals 1

    .prologue
    sget-object v0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->sInstance:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    return-object v0
.end method

.method private static registerCustomizationReceiver(Landroid/content/Context;Lcom/htc/server/ulog/UserBehaviorLoggingService$CustomizationReceiver;Landroid/os/Handler;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cr"    # Lcom/htc/server/ulog/UserBehaviorLoggingService$CustomizationReceiver;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "htc.permission.CUSTOMIZATION_CHANGE"

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public addLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    iget-boolean v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mIsEngROM:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    const-string v1, "com.htc.permission.UBLS_WRITE_LOG"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "addLog() needs permission com.htc.permission.UBLS_WRITE_LOG"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public addLogEvent(Lcom/htc/utils/ulog/ParcelableULogData;)V
    .locals 3
    .param p1, "logData"    # Lcom/htc/utils/ulog/ParcelableULogData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/htc/server/ulog/Utils;->isLessThanSense55()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    const-string v1, "com.htc.permission.UBLS_WRITE_LOG"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    const-string v1, "com.htc.permission.APP_DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "addLogEvent() needs permission com.htc.permission.APP_DEFAULT"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/htc/server/ulog/Utils;->ENABLE_USER_PROFILING:Z

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/htc/utils/ulog/ParcelableULogData;->addRef()V

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public getAlarmScheduler()Lcom/htc/server/ulog/AlarmScheduler;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mAlarmScheduler:Lcom/htc/server/ulog/AlarmScheduler;

    return-object v0
.end method

.method public getBGHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    return-object v0
.end method

.method public getPolicy()Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    sget-boolean v1, Lcom/htc/server/ulog/Utils;->ENABLE_USER_POLICY:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    const-string v2, "com.htc.permission.UBLS_PROTECTED_USAGE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "getPolicy() needs permission com.htc.permission.UBLS_PROTECTED_USAGE"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

    invoke-virtual {v0}, Lcom/htc/server/ulog/PolicyStore;->getPolicy()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getSecurityProperties()Landroid/os/Bundle;
    .locals 7

    .prologue
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    const-string v5, "com.htc.permission.UBLS_PROTECTED_USAGE"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "getSecurityProperties() needs permission com.htc.permission.UBLS_PROTECTED_USAGE"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, "callingUid":I
    iget-object v4, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-nez v3, :cond_1

    const-string v4, "UserBehaviorLoggingService"

    const-string v5, "[getSecurityProperties] Access Denied, pacakage manager is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "packageName":Ljava/lang/String;
    const-string v4, "UserBehaviorLoggingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getSecurityProperties] Calling package name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "com.htc.reportagent"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x3e8

    if-eq v1, v4, :cond_2

    const-string v4, "UserBehaviorLoggingService"

    const-string v5, "[getSecurityProperties] Access Denied, Unknown pacakage name!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mKey:[B

    if-nez v4, :cond_3

    invoke-static {}, Lcom/htc/server/ulog/UserBehaviorPreference;->getInstance()Lcom/htc/server/ulog/UserBehaviorPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/server/ulog/UserBehaviorPreference;->getSecretKey()[B

    move-result-object v4

    iput-object v4, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mKey:[B

    :cond_3
    const-string v4, "ubls_secret_key"

    iget-object v5, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mKey:[B

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v4, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mIV:[B

    if-nez v4, :cond_4

    invoke-static {}, Lcom/htc/server/ulog/UserBehaviorPreference;->getInstance()Lcom/htc/server/ulog/UserBehaviorPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/server/ulog/UserBehaviorPreference;->getIV()[B

    move-result-object v4

    iput-object v4, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mIV:[B

    :cond_4
    const-string v4, "ubls_initialization_vector"

    iget-object v5, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mIV:[B

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method onFinishBooting()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method onShutdown()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mStopLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mIsStopped:Z

    if-eqz v1, :cond_1

    const-string v1, "UserBehaviorLoggingService"

    const-string v3, "stop() is called twice and ignored!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mIsStopped:Z

    const-string v1, "UserBehaviorLoggingService"

    const-string v3, "stop() is called at first time!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mUBEventLog:Lcom/htc/server/ulog/HTCUBLogStore;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mUBEventLog:Lcom/htc/server/ulog/HTCUBLogStore;

    invoke-virtual {v1}, Lcom/htc/server/ulog/HTCUBLogStore;->onShutdown()V

    :cond_2
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mEventLog:Lcom/htc/server/ulog/EventLogStore;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mEventLog:Lcom/htc/server/ulog/EventLogStore;

    invoke-virtual {v1}, Lcom/htc/server/ulog/EventLogStore;->onShutdown()V

    :cond_3
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mBroadcastReceiver:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mCustomizationReceiver:Lcom/htc/server/ulog/UserBehaviorLoggingService$CustomizationReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mAlarmScheduler:Lcom/htc/server/ulog/AlarmScheduler;

    invoke-virtual {v1}, Lcom/htc/server/ulog/AlarmScheduler;->onShutdown()V

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mSettingObserver:Lcom/htc/server/ulog/SettingObserver;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mSettingObserver:Lcom/htc/server/ulog/SettingObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_4
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    iget-object v2, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->sendMessage(Landroid/os/Message;)Z

    monitor-enter p0

    const-wide/16 v1, 0x1388

    :try_start_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v1, "UserBehaviorLoggingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[stop()] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public registerPolicyListener(Landroid/os/IRemoteCallback;)Z
    .locals 3
    .param p1, "listener"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    sget-boolean v1, Lcom/htc/server/ulog/Utils;->ENABLE_USER_POLICY:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    const-string v2, "com.htc.permission.UBLS_PROTECTED_USAGE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "registerPolicyListener(IRemoteCallback listener) needs permission com.htc.permission.UBLS_PROTECTED_USAGE"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

    invoke-virtual {v0, p1}, Lcom/htc/server/ulog/PolicyStore;->register(Landroid/os/IRemoteCallback;)Z

    move-result v0

    goto :goto_0
.end method

.method public setPolicy(Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "policy"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    sget-boolean v4, Lcom/htc/server/ulog/Utils;->ENABLE_USER_POLICY:Z

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v4, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    const-string v5, "com.htc.permission.UBLS_PROTECTED_USAGE"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "setPolicy(Bundle policy) needs permission com.htc.permission.UBLS_PROTECTED_USAGE"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v4, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_2

    const-string v4, "UserBehaviorLoggingService"

    const-string v5, "[setPolicy] Access Denied, pacakage manager is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "packageName":Ljava/lang/String;
    const-string v4, "UserBehaviorLoggingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setPolicy] Calling package name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "com.htc.reportagent"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "UserBehaviorLoggingService"

    const-string v5, "[setPolicy] Access Denied, Unknown pacakage name!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v3, "UserBehaviorLoggingService"

    const-string v4, "[setPolicy] function is called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    iget-object v4, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5, p1}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method
