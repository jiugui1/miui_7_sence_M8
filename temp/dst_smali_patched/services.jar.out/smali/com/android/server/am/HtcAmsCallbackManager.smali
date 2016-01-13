.class public Lcom/android/server/am/HtcAmsCallbackManager;
.super Ljava/lang/Object;
.source "HtcAmsCallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/HtcAmsCallbackManager$1;,
        Lcom/android/server/am/HtcAmsCallbackManager$CallbackChecker;,
        Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;,
        Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;,
        Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;,
        Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;,
        Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;,
        Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    }
.end annotation


# static fields
.field private static final DEEP_DEBUG:Z = false

.field private static final FUNCID_ACTIVITY_PAUSED:I = 0x13

.field private static final FUNCID_ACTIVITY_RESUMED:I = 0x12

.field private static final FUNCID_ADD_RECENT_TASK:I = 0xb

.field private static final FUNCID_AFTER_START_ACTIVITY:I = 0x19

.field private static final FUNCID_APPLICATION_CRASH:I = 0xd

.field private static final FUNCID_APP_DIED:I = 0xe

.field private static final FUNCID_APP_DIED_V2:I = 0x1c

.field private static final FUNCID_ATTACH_APPLICATION:I = 0x9

.field private static final FUNCID_BEFORE_START_ACTIVITY:I = 0x18

.field private static final FUNCID_BROADCAST_INTENT:I = 0xc

.field private static final FUNCID_CLEAN_UP_APPLICATION_RECORD:I = 0x10

.field private static final FUNCID_CRASH_APPLICATION:I = 0xf

.field private static final FUNCID_FINISH_BOOTING:I = 0x2

.field private static final FUNCID_GENERATE_APPLICATION_PROVIDERS:I = 0xa

.field private static final FUNCID_GENERATE_PROCESS_ERROR:I = 0x1b

.field private static final FUNCID_GOING_TO_SLEEP:I = 0x3

.field private static final FUNCID_HIBERNATE:I = 0x14

.field private static final FUNCID_HIBERNATE_KILL_APP:I = 0x15

.field private static final FUNCID_MAIN:I = 0x1

.field private static final FUNCID_MAX:I = 0x1d

.field private static final FUNCID_MIN:I = 0x1

.field private static final FUNCID_REAL_APP_NOT_RESPONDING:I = 0x7

.field private static final FUNCID_REMOVE_PROCESS:I = 0x8

.field private static final FUNCID_RESUME_FROM_HIBERNATE:I = 0x16

.field private static final FUNCID_SHUTDOWN:I = 0x17

.field private static final FUNCID_START_ACTIVITY_NEW_INTENT:I = 0x1a

.field private static final FUNCID_START_PROCESS:I = 0x6

.field private static final FUNCID_START_PROCESS_NEW_PACKAGE:I = 0x5

.field private static final FUNCID_TOP_APP_CHANGED:I = 0x11

.field private static final FUNCID_WAKING_UP:I = 0x4

.field private static final HIBERNATE_TIMEOUT:J = 0xbb8L

.field private static final MAIN_TIMEOUT:J = 0xbb8L

.field private static final MESSAGE_TIMEOUT:J = 0x1f4L

.field private static final MSG_AMS_CALLBACK:I = 0x1

.field private static final MSG_WATCHDOG_CHECK_WORKING_THREAD:I = 0x2

.field private static final SHUTDOWN_TIMEOUT:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "HtcAmsCallbackManager"

.field private static final WATCHDOG_CHECK_WORKING_THREAD_DELAY:J = 0x2710L

.field private static final WATCHDOG_TIMEOUT:J = 0x7530L


# instance fields
.field private mCallbacks:[Ljava/util/ArrayList;

.field private mHibernateFinishSignal:Ljava/lang/Object;

.field private volatile mIsHibernateFinished:Z

.field private volatile mIsMainFinished:Z

.field private volatile mIsShutdownFinished:Z

.field private mMainFinishSignal:Ljava/lang/Object;

.field private mShutdownFinishSignal:Ljava/lang/Object;

.field private mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

.field private mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

.field private mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/16 v4, 0x1d

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    iput-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    new-array v1, v4, [Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-direct {v1, p0, v3}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;-><init>(Lcom/android/server/am/HtcAmsCallbackManager;Lcom/android/server/am/HtcAmsCallbackManager$1;)V

    iput-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mMainFinishSignal:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsMainFinished:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mHibernateFinishSignal:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsHibernateFinished:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mShutdownFinishSignal:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsShutdownFinished:Z

    const/4 v0, 0x1

    .local v0, "funcid":I
    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/am/HtcAmsCallbackListener;

    invoke-direct {v1}, Lcom/android/server/am/HtcAmsCallbackListener;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    new-instance v1, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;

    invoke-direct {v1}, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    new-instance v1, Lcom/htc/server/HtcDeviceInfoAmsListener;

    invoke-direct {v1}, Lcom/htc/server/HtcDeviceInfoAmsListener;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    new-instance v1, Lcom/htc/server/SystemCrashChecker;

    invoke-direct {v1}, Lcom/htc/server/SystemCrashChecker;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    new-instance v1, Lcom/htc/server/HtcHALAmsListener;

    invoke-direct {v1}, Lcom/htc/server/HtcHALAmsListener;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    new-instance v1, Lcom/htc/server/HtcBatteryAmsListener;

    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-direct {v1, v2}, Lcom/htc/server/HtcBatteryAmsListener;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    new-instance v1, Lcom/htc/server/HtcAlarmGroupingListener;

    invoke-direct {v1}, Lcom/htc/server/HtcAlarmGroupingListener;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    new-instance v1, Lcom/htc/server/HtcOOBEMonitorListener;

    invoke-direct {v1}, Lcom/htc/server/HtcOOBEMonitorListener;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    new-instance v1, Lcom/htc/server/ulog/AmsListenerForUlog;

    invoke-direct {v1}, Lcom/htc/server/ulog/AmsListenerForUlog;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    new-instance v1, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    const-string v2, "HtcAmsCallbackManager"

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;-><init>(Lcom/android/server/am/HtcAmsCallbackManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->start()V

    new-instance v1, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;-><init>(Lcom/android/server/am/HtcAmsCallbackManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/HtcAmsCallbackManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/HtcAmsCallbackManager;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/HtcAmsCallbackManager;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/HtcAmsCallbackManager;->handleAmsCallback(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/HtcAmsCallbackManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/HtcAmsCallbackManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    return-object v0
.end method

.method private handleActivityPaused(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    iget-object v0, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcWrapActivityRecord;

    .local v0, "activity":Lcom/android/server/am/HtcWrapActivityRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x13

    aget-object v1, v6, v7

    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v2, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onHandleActivityPaused(Lcom/android/server/am/HtcWrapActivityRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    return-void
.end method

.method private handleActivityResumed(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    iget-object v0, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcWrapActivityRecord;

    .local v0, "activity":Lcom/android/server/am/HtcWrapActivityRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x12

    aget-object v1, v6, v7

    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v2, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onHandleActivityResumed(Lcom/android/server/am/HtcWrapActivityRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    return-void
.end method

.method private handleAddRecentTask(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 9
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    iget-object v6, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/am/HtcWrapTaskRecord;

    .local v6, "task":Lcom/android/server/am/HtcWrapTaskRecord;
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapTaskRecord;

    .local v4, "prevTask":Lcom/android/server/am/HtcWrapTaskRecord;
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v8, 0xb

    aget-object v0, v7, v8

    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v6, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onAddRecentTask(Lcom/android/server/am/HtcWrapTaskRecord;Lcom/android/server/am/HtcWrapTaskRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " crashed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    return-void
.end method

.method private handleAfterStartActivity()V
    .locals 7

    .prologue
    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v6, 0x19

    aget-object v0, v5, v6

    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->afterStartActivityUncheckedLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v4

    .local v4, "strBuilder":Ljava/lang/StringBuilder;
    const-string v5, "Callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " crashed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "HtcAmsCallbackManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private handleAmsCallback(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleMain(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleFinishBooting()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleGoingToSleep()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleWakingUp()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleStartProcessNewPackage(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleStartProcess(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleRealAppNotResponding(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleRemoveProcess(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleAttachApplication(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleGenerateApplicationProviders(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleAddRecentTask(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleBroadcastIntent(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleApplicationCrash(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleAppDied(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleCrashApplication(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleCleanUpApplicationRecord(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleTopAppChanged(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleActivityResumed(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto/16 :goto_0

    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleActivityPaused(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto/16 :goto_0

    :pswitch_13
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleHibernate()V

    goto/16 :goto_0

    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleHibernateKillApp(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto/16 :goto_0

    :pswitch_15
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleResumeFromHibernate()V

    goto/16 :goto_0

    :pswitch_16
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleShutdown()V

    goto/16 :goto_0

    :pswitch_17
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleBeforeStartActivity()V

    goto/16 :goto_0

    :pswitch_18
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleAfterStartActivity()V

    goto/16 :goto_0

    :pswitch_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleStartActivityNewIntent(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto/16 :goto_0

    :pswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleGenerateProcessError(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto/16 :goto_0

    :pswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleAppDiedV2(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto/16 :goto_0

    nop

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
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method

.method private handleAppDied(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0xe

    aget-object v0, v6, v7

    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onAppDiedLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    return-void
.end method

.method private handleAppDiedV2(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x1c

    aget-object v0, v6, v7

    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onAppDiedLockedV2(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    return-void
.end method

.method private handleApplicationCrash(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 9
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    iget-object v5, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/HtcWrapProcessRecord;

    .local v5, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashSet;

    .local v4, "pkgList":Ljava/util/HashSet;
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v8, 0xd

    aget-object v0, v7, v8

    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v5, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onHandleApplicationCrashV2(Lcom/android/server/am/HtcWrapProcessRecord;Ljava/util/HashSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .local v6, "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " crashed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    return-void
.end method

.method private handleAttachApplication(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x9

    aget-object v0, v6, v7

    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onAttachApplicationLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    return-void
.end method

.method private handleBeforeStartActivity()V
    .locals 7

    .prologue
    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v6, 0x18

    aget-object v0, v5, v6

    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->beforeStartActivityUncheckedLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v4

    .local v4, "strBuilder":Ljava/lang/StringBuilder;
    const-string v5, "Callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " crashed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "HtcAmsCallbackManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private handleBroadcastIntent(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    .local v4, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0xc

    aget-object v0, v6, v7

    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onBroadcastIntentLocked(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    return-void
.end method

.method private handleCleanUpApplicationRecord(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x10

    aget-object v0, v6, v7

    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onCleanUpApplicationRecordLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    return-void
.end method

.method private handleCrashApplication(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 9
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    iget-object v5, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/HtcWrapProcessRecord;

    .local v5, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v2, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v2, Landroid/app/ApplicationErrorReport$CrashInfo;

    .local v2, "crashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v8, 0xf

    aget-object v0, v7, v8

    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v5, v2}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onCrashApplication(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .local v6, "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " crashed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    return-void
.end method

.method private handleFinishBooting()V
    .locals 7

    .prologue
    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v6, 0x2

    aget-object v0, v5, v6

    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onFinishBooting()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v4

    .local v4, "strBuilder":Ljava/lang/StringBuilder;
    const-string v5, "Callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " crashed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "HtcAmsCallbackManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private handleGenerateApplicationProviders(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 9
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    iget-object v5, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/HtcWrapProcessRecord;

    .local v5, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/ProviderInfo;

    .local v4, "pi":Landroid/content/pm/ProviderInfo;
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v8, 0xa

    aget-object v0, v7, v8

    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v5, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onGenerateApplicationProvidersLocked(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/content/pm/ProviderInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .local v6, "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " crashed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    return-void
.end method

.method private handleGenerateProcessError(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 13
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    iget-object v1, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/HtcWrapProcessRecord;

    .local v1, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v11, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "condition":I
    iget-object v3, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .local v3, "activity":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .local v4, "shortMsg":Ljava/lang/String;
    iget-object v5, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param5:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .local v5, "longMsg":Ljava/lang/String;
    iget-object v6, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .local v6, "stackTrace":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v12, 0x1b

    aget-object v7, v11, v12

    .local v7, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v0, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onGenerateProcessError(Lcom/android/server/am/HtcWrapProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v10

    .local v10, "strBuilder":Ljava/lang/StringBuilder;
    const-string v11, "Callback "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " crashed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "HtcAmsCallbackManager"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    return-void
.end method

.method private handleGoingToSleep()V
    .locals 7

    .prologue
    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v6, 0x3

    aget-object v0, v5, v6

    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onGoingToSleep()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v4

    .local v4, "strBuilder":Ljava/lang/StringBuilder;
    const-string v5, "Callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " crashed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "HtcAmsCallbackManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private handleHibernate()V
    .locals 11

    .prologue
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v8, 0x14

    aget-object v0, v7, v8

    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .local v4, "startTime":J
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onHibernate()V

    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x1f4

    add-long/2addr v9, v4

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .local v6, "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".onHibernate() is slow"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v4    # "startTime":J
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .restart local v6    # "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " crashed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v8, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mHibernateFinishSignal:Ljava/lang/Object;

    monitor-enter v8

    const/4 v7, 0x1

    :try_start_1
    iput-boolean v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsHibernateFinished:Z

    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mHibernateFinishSignal:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_2

    const-string v7, "HtcAmsCallbackManager"

    const-string v9, "onHibernate finished"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method private handleHibernateKillApp(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x15

    aget-object v0, v6, v7

    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onHibernateKillApp(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    return-void
.end method

.method private handleMain(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 10
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    const/4 v8, 0x1

    iget-object v5, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/ActivityManagerService;

    .local v5, "service":Lcom/android/server/am/ActivityManagerService;
    iget-object v2, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    .local v2, "context":Landroid/content/Context;
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    aget-object v0, v7, v8

    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v5, v2}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .local v6, "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " crashed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    iget-object v8, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mMainFinishSignal:Ljava/lang/Object;

    monitor-enter v8

    const/4 v7, 0x1

    :try_start_1
    iput-boolean v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsMainFinished:Z

    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mMainFinishSignal:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_1

    const-string v7, "HtcAmsCallbackManager"

    const-string v9, "onMain finished"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method private handleRealAppNotResponding(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v7, 0x7

    aget-object v0, v6, v7

    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onRealAppNotResponding(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    return-void
.end method

.method private handleRemoveProcess(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x8

    aget-object v0, v6, v7

    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onRemoveProcessLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    return-void
.end method

.method private handleResumeFromHibernate()V
    .locals 7

    .prologue
    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v6, 0x16

    aget-object v0, v5, v6

    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onResumeFromHibernate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v4

    .local v4, "strBuilder":Ljava/lang/StringBuilder;
    const-string v5, "Callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " crashed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "HtcAmsCallbackManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private handleShutdown()V
    .locals 11

    .prologue
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v8, 0x17

    aget-object v0, v7, v8

    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .local v4, "startTime":J
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onShutdown()V

    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x1f4

    add-long/2addr v9, v4

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .local v6, "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".onShutdown() is slow"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v4    # "startTime":J
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .restart local v6    # "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " crashed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v8, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mShutdownFinishSignal:Ljava/lang/Object;

    monitor-enter v8

    const/4 v7, 0x1

    :try_start_1
    iput-boolean v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsShutdownFinished:Z

    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mShutdownFinishSignal:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_2

    const-string v7, "HtcAmsCallbackManager"

    const-string v9, "onShutdown finished"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method private handleStartActivityNewIntent(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 9
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    iget-object v5, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/HtcWrapTaskRecord;

    .local v5, "prev":Lcom/android/server/am/HtcWrapTaskRecord;
    iget-object v2, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/HtcWrapTaskRecord;

    .local v2, "curr":Lcom/android/server/am/HtcWrapTaskRecord;
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v8, 0x1a

    aget-object v0, v7, v8

    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v5, v2}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onStartActivityUncheckedLockedNewIntent(Lcom/android/server/am/HtcWrapTaskRecord;Lcom/android/server/am/HtcWrapTaskRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .local v6, "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " crashed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    return-void
.end method

.method private handleStartProcess(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v7, 0x6

    aget-object v0, v6, v7

    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onStartProcessLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    return-void
.end method

.method private handleStartProcessNewPackage(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 9
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    iget-object v5, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/HtcWrapProcessRecord;

    .local v5, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v8, 0x5

    aget-object v0, v7, v8

    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v5, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onStartProcessLockedNewPackage(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .local v6, "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " crashed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    return-void
.end method

.method private handleTopAppChanged(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x11

    aget-object v0, v6, v7

    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onHandleTopAppChanged(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    return-void
.end method

.method private handleWakingUp()V
    .locals 7

    .prologue
    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v6, 0x4

    aget-object v0, v5, v6

    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onWakingUp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v4

    .local v4, "strBuilder":Ljava/lang/StringBuilder;
    const-string v5, "Callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " crashed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "HtcAmsCallbackManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method


# virtual methods
.method public addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V
    .locals 2
    .param p1, "callbacks"    # Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .prologue
    const/4 v0, 0x1

    .local v0, "funcid":I
    :goto_0
    const/16 v1, 0x1d

    if-ge v0, v1, :cond_1

    iget-object v1, p1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->mIsCallbackImplemented:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized onActivityPaused(Lcom/android/server/am/ActivityRecord;)V
    .locals 6
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/server/am/HtcWrapActivityRecord;

    invoke-direct {v1, p1}, Lcom/android/server/am/HtcWrapActivityRecord;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onActivityResumed(Lcom/android/server/am/ActivityRecord;)V
    .locals 6
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/server/am/HtcWrapActivityRecord;

    invoke-direct {v1, p1}, Lcom/android/server/am/HtcWrapActivityRecord;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onAddRecentTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "prev"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .local v1, "prevTask":Lcom/android/server/am/HtcWrapTaskRecord;
    if-eqz p2, :cond_2

    new-instance v1, Lcom/android/server/am/HtcWrapTaskRecord;

    .end local v1    # "prevTask":Lcom/android/server/am/HtcWrapTaskRecord;
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-direct {v1, v2}, Lcom/android/server/am/HtcWrapTaskRecord;-><init>(Lcom/android/server/am/TaskRecord;)V

    .restart local v1    # "prevTask":Lcom/android/server/am/HtcWrapTaskRecord;
    :cond_2
    new-instance v2, Lcom/android/server/am/HtcWrapTaskRecord;

    invoke-direct {v2, p1}, Lcom/android/server/am/HtcWrapTaskRecord;-><init>(Lcom/android/server/am/TaskRecord;)V

    invoke-static {v2, v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v4, 0x1

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    .end local v1    # "prevTask":Lcom/android/server/am/HtcWrapTaskRecord;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onAfterStartActivity()V
    .locals 5

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v1, 0x19

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v2, 0x1

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onAppDied(Lcom/android/server/am/ProcessRecord;I)V
    .locals 7
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "realPid"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v0

    .local v0, "htcApp":Lcom/android/server/am/HtcWrapProcessRecord;
    iput p2, v0, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    invoke-static {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v1

    .local v1, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v4, 0x1

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "htcApp":Lcom/android/server/am/HtcWrapProcessRecord;
    .end local v1    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onAppDiedV2(Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v3, 0x1c

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v0

    .local v0, "htcApp":Lcom/android/server/am/HtcWrapProcessRecord;
    invoke-static {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v1

    .local v1, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v4, 0x1

    const/16 v5, 0x1c

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "htcApp":Lcom/android/server/am/HtcWrapProcessRecord;
    .end local v1    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onApplicationCrash(Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v3, 0xd

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .local v1, "pkgListClone":Ljava/util/HashMap;
    if-eqz p1, :cond_2

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_2
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v4, 0x1

    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    .end local v1    # "pkgListClone":Ljava/util/HashMap;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onAttachApplication(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onBeforeStartActivity()V
    .locals 5

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v1, 0x18

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v2, 0x1

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onBroadcastIntent(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v6}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0xc

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "android.intent.action.NOTIFICATION_ADD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "android.intent.action.NOTIFICATION_UPDATE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v4, "newIntent":Landroid/content/Intent;
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "category":Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v0    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "category":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "HtcAmsCallbackManager"

    const-string v7, "Unable to copy Intent!"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    move-object p1, v4

    .end local v4    # "newIntent":Landroid/content/Intent;
    :cond_4
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v5

    .local v5, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v8, 0x1

    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10, v5}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .end local v5    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized onCleanUpApplicationRecord(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onCrashApplication(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onFinishBooting()V
    .locals 5

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onGenerateApplicationProviders(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "pi"    # Landroid/content/pm/ProviderInfo;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onGenerateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "condition"    # I
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "shortMsg"    # Ljava/lang/String;
    .param p5, "longMsg"    # Ljava/lang/String;
    .param p6, "stackTrace"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v1, 0x1b

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v6

    .local v6, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v2, 0x1

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v6    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onGoingToSleep()V
    .locals 5

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onHibernate()V
    .locals 9

    .prologue
    const/16 v3, 0x14

    const/4 v8, 0x1

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mHibernateFinishSignal:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsHibernateFinished:Z

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v4, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v5, 0x1

    const/16 v6, 0x14

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .local v0, "startTime":J
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mHibernateFinishSignal:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    iget-boolean v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsHibernateFinished:Z

    if-nez v2, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0xbb8

    add-long/2addr v6, v0

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsHibernateFinished:Z

    if-nez v2, :cond_4

    const-string v2, "HtcAmsCallbackManager"

    const-string v4, "Hibernate timeout!"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    # getter for: Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mAmsHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->access$400(Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;)Landroid/os/Handler;

    move-result-object v2

    const/16 v4, 0xbb8

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v2, v8}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->setHibernateMode(Z)V

    goto :goto_0

    .end local v0    # "startTime":J
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .restart local v0    # "startTime":J
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public declared-synchronized onHibernateKillApp(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 9
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v3}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mMainFinishSignal:Ljava/lang/Object;

    monitor-enter v4

    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsMainFinished:Z

    invoke-static {p1, p2}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .local v1, "startTime":J
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mMainFinishSignal:Ljava/lang/Object;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsMainFinished:Z

    if-nez v3, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0xbb8

    add-long/2addr v7, v1

    cmp-long v3, v5, v7

    if-lez v3, :cond_2

    :cond_3
    iget-boolean v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsMainFinished:Z

    if-nez v3, :cond_4

    const-string v3, "HtcAmsCallbackManager"

    const-string v5, "onMain timeout!"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    invoke-virtual {v3}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->dump()V

    :cond_4
    monitor-exit v4

    goto :goto_0

    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    .end local v1    # "startTime":J
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    .restart local v1    # "startTime":J
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public declared-synchronized onRealAppNotResponding(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onRemoveProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onResumeFromHibernate()V
    .locals 5

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v1, 0x16

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->setHibernateMode(Z)V

    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v2, 0x1

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onShutdown()V
    .locals 8

    .prologue
    const/16 v3, 0x17

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mShutdownFinishSignal:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsShutdownFinished:Z

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v4, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v5, 0x1

    const/16 v6, 0x17

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .local v0, "startTime":J
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mShutdownFinishSignal:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    iget-boolean v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsShutdownFinished:Z

    if-nez v2, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long/2addr v6, v0

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsShutdownFinished:Z

    if-nez v2, :cond_4

    const-string v2, "HtcAmsCallbackManager"

    const-string v4, "Shutdown timeout!"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->dump()V

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->dumpAllThreads()V

    :cond_4
    monitor-exit v3

    goto :goto_0

    .end local v0    # "startTime":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v0    # "startTime":J
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public declared-synchronized onStartActivityNewIntent(Lcom/android/server/am/HtcWrapTaskRecord;Lcom/android/server/am/HtcWrapTaskRecord;)V
    .locals 6
    .param p1, "prev"    # Lcom/android/server/am/HtcWrapTaskRecord;
    .param p2, "curr"    # Lcom/android/server/am/HtcWrapTaskRecord;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x1a

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, p2}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0x1a

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onStartProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onStartProcessNewPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onTopAppChanged(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onWakingUp()V
    .locals 5

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
