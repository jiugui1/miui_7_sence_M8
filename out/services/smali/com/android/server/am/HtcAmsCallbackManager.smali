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

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    .line 81
    iput-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    .line 82
    new-array v1, v4, [Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    .line 84
    new-instance v1, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-direct {v1, p0, v3}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;-><init>(Lcom/android/server/am/HtcAmsCallbackManager;Lcom/android/server/am/HtcAmsCallbackManager$1;)V

    iput-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    .line 379
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mMainFinishSignal:Ljava/lang/Object;

    .line 380
    iput-boolean v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsMainFinished:Z

    .line 430
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mHibernateFinishSignal:Ljava/lang/Object;

    .line 431
    iput-boolean v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsHibernateFinished:Z

    .line 486
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mShutdownFinishSignal:Ljava/lang/Object;

    .line 487
    iput-boolean v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsShutdownFinished:Z

    .line 87
    const/4 v0, 0x1

    .local v0, "funcid":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v2, v1, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    new-instance v1, Lcom/android/server/am/HtcAmsCallbackListener;

    invoke-direct {v1}, Lcom/android/server/am/HtcAmsCallbackListener;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    .line 92
    new-instance v1, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;

    invoke-direct {v1}, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    .line 93
    new-instance v1, Lcom/htc/server/HtcDeviceInfoAmsListener;

    invoke-direct {v1}, Lcom/htc/server/HtcDeviceInfoAmsListener;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    .line 94
    new-instance v1, Lcom/htc/server/SystemCrashChecker;

    invoke-direct {v1}, Lcom/htc/server/SystemCrashChecker;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    .line 96
    new-instance v1, Lcom/htc/server/HtcHALAmsListener;

    invoke-direct {v1}, Lcom/htc/server/HtcHALAmsListener;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    .line 98
    new-instance v1, Lcom/htc/server/HtcBatteryAmsListener;

    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-direct {v1, v2}, Lcom/htc/server/HtcBatteryAmsListener;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    .line 100
    new-instance v1, Lcom/htc/server/HtcAlarmGroupingListener;

    invoke-direct {v1}, Lcom/htc/server/HtcAlarmGroupingListener;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    .line 102
    new-instance v1, Lcom/htc/server/HtcOOBEMonitorListener;

    invoke-direct {v1}, Lcom/htc/server/HtcOOBEMonitorListener;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    .line 109
    new-instance v1, Lcom/htc/server/ulog/AmsListenerForUlog;

    invoke-direct {v1}, Lcom/htc/server/ulog/AmsListenerForUlog;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    .line 127
    new-instance v1, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    const-string v2, "HtcAmsCallbackManager"

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;-><init>(Lcom/android/server/am/HtcAmsCallbackManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    .line 128
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->start()V

    .line 129
    new-instance v1, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;-><init>(Lcom/android/server/am/HtcAmsCallbackManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    .line 131
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->init()V

    .line 132
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/HtcAmsCallbackManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/HtcAmsCallbackManager;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/HtcAmsCallbackManager;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/am/HtcAmsCallbackManager;->handleAmsCallback(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/HtcAmsCallbackManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/HtcAmsCallbackManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    return-object v0
.end method

.method private handleActivityPaused(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 1004
    iget-object v0, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcWrapActivityRecord;

    .line 1005
    .local v0, "activity":Lcom/android/server/am/HtcWrapActivityRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x13

    aget-object v1, v6, v7

    .line 1007
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

    .line 1009
    .local v2, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onHandleActivityPaused(Lcom/android/server/am/HtcWrapActivityRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1010
    :catch_0
    move-exception v3

    .line 1011
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1012
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

    .line 1013
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1016
    .end local v2    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 1017
    return-void
.end method

.method private handleActivityResumed(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 979
    iget-object v0, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcWrapActivityRecord;

    .line 980
    .local v0, "activity":Lcom/android/server/am/HtcWrapActivityRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x12

    aget-object v1, v6, v7

    .line 982
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

    .line 984
    .local v2, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onHandleActivityResumed(Lcom/android/server/am/HtcWrapActivityRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 985
    :catch_0
    move-exception v3

    .line 986
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 987
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

    .line 988
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 991
    .end local v2    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 992
    return-void
.end method

.method private handleAddRecentTask(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 9
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 772
    iget-object v6, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/am/HtcWrapTaskRecord;

    .line 773
    .local v6, "task":Lcom/android/server/am/HtcWrapTaskRecord;
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapTaskRecord;

    .line 774
    .local v4, "prevTask":Lcom/android/server/am/HtcWrapTaskRecord;
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v8, 0xb

    aget-object v0, v7, v8

    .line 776
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

    .line 778
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v6, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onAddRecentTask(Lcom/android/server/am/HtcWrapTaskRecord;Lcom/android/server/am/HtcWrapTaskRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 779
    :catch_0
    move-exception v2

    .line 780
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 781
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

    .line 782
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 785
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 786
    return-void
.end method

.method private handleAfterStartActivity()V
    .locals 7

    .prologue
    .line 1098
    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v6, 0x19

    aget-object v0, v5, v6

    .line 1100
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

    .line 1102
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->afterStartActivityUncheckedLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1103
    :catch_0
    move-exception v2

    .line 1104
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1105
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

    .line 1106
    const-string v5, "HtcAmsCallbackManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1109
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
    .line 262
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 376
    :goto_0
    return-void

    .line 265
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleMain(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 269
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleFinishBooting()V

    goto :goto_0

    .line 273
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleGoingToSleep()V

    goto :goto_0

    .line 277
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleWakingUp()V

    goto :goto_0

    .line 281
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleStartProcessNewPackage(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 285
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleStartProcess(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 289
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleRealAppNotResponding(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 293
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleRemoveProcess(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 297
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleAttachApplication(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 301
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleGenerateApplicationProviders(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 305
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleAddRecentTask(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 309
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleBroadcastIntent(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 313
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleApplicationCrash(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 317
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleAppDied(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 321
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleCrashApplication(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 325
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleCleanUpApplicationRecord(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 329
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleTopAppChanged(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 333
    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleActivityResumed(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto/16 :goto_0

    .line 337
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleActivityPaused(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto/16 :goto_0

    .line 341
    :pswitch_13
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleHibernate()V

    goto/16 :goto_0

    .line 345
    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleHibernateKillApp(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto/16 :goto_0

    .line 349
    :pswitch_15
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleResumeFromHibernate()V

    goto/16 :goto_0

    .line 353
    :pswitch_16
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleShutdown()V

    goto/16 :goto_0

    .line 357
    :pswitch_17
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleBeforeStartActivity()V

    goto/16 :goto_0

    .line 361
    :pswitch_18
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleAfterStartActivity()V

    goto/16 :goto_0

    .line 365
    :pswitch_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleStartActivityNewIntent(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto/16 :goto_0

    .line 369
    :pswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleGenerateProcessError(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto/16 :goto_0

    .line 373
    :pswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleAppDiedV2(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto/16 :goto_0

    .line 262
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
    .line 878
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 879
    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0xe

    aget-object v0, v6, v7

    .line 881
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

    .line 883
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onAppDiedLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 884
    :catch_0
    move-exception v2

    .line 885
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 886
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

    .line 887
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 890
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 891
    return-void
.end method

.method private handleAppDiedV2(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 1181
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 1182
    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x1c

    aget-object v0, v6, v7

    .line 1184
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

    .line 1186
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onAppDiedLockedV2(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1187
    :catch_0
    move-exception v2

    .line 1188
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1189
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

    .line 1190
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1193
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 1194
    return-void
.end method

.method private handleApplicationCrash(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 9
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 850
    iget-object v5, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 851
    .local v5, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashSet;

    .line 852
    .local v4, "pkgList":Ljava/util/HashSet;
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v8, 0xd

    aget-object v0, v7, v8

    .line 854
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

    .line 856
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v5, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onHandleApplicationCrashV2(Lcom/android/server/am/HtcWrapProcessRecord;Ljava/util/HashSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 857
    :catch_0
    move-exception v2

    .line 858
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 859
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

    .line 860
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 863
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 864
    return-void
.end method

.method private handleAttachApplication(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 717
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 718
    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x9

    aget-object v0, v6, v7

    .line 720
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

    .line 722
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onAttachApplicationLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 723
    :catch_0
    move-exception v2

    .line 724
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 725
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

    .line 726
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 729
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 730
    return-void
.end method

.method private handleBeforeStartActivity()V
    .locals 7

    .prologue
    .line 1076
    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v6, 0x18

    aget-object v0, v5, v6

    .line 1078
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

    .line 1080
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->beforeStartActivityUncheckedLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1081
    :catch_0
    move-exception v2

    .line 1082
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1083
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

    .line 1084
    const-string v5, "HtcAmsCallbackManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1087
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
    .line 819
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    .line 820
    .local v4, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0xc

    aget-object v0, v6, v7

    .line 822
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

    .line 824
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onBroadcastIntentLocked(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 825
    :catch_0
    move-exception v2

    .line 826
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 827
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

    .line 828
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 831
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 832
    return-void
.end method

.method private handleCleanUpApplicationRecord(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 929
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 930
    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x10

    aget-object v0, v6, v7

    .line 932
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

    .line 934
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onCleanUpApplicationRecordLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 935
    :catch_0
    move-exception v2

    .line 936
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 937
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

    .line 938
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 941
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 942
    return-void
.end method

.method private handleCrashApplication(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 9
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 903
    iget-object v5, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 904
    .local v5, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v2, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v2, Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 905
    .local v2, "crashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v8, 0xf

    aget-object v0, v7, v8

    .line 907
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

    .line 909
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v5, v2}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onCrashApplication(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 910
    :catch_0
    move-exception v3

    .line 911
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 912
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

    .line 913
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 916
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 917
    return-void
.end method

.method private handleFinishBooting()V
    .locals 7

    .prologue
    .line 549
    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v6, 0x2

    aget-object v0, v5, v6

    .line 551
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

    .line 553
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onFinishBooting()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 554
    :catch_0
    move-exception v2

    .line 555
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 556
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

    .line 557
    const-string v5, "HtcAmsCallbackManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 560
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
    .line 742
    iget-object v5, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 743
    .local v5, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/ProviderInfo;

    .line 744
    .local v4, "pi":Landroid/content/pm/ProviderInfo;
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v8, 0xa

    aget-object v0, v7, v8

    .line 746
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

    .line 748
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v5, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onGenerateApplicationProvidersLocked(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/content/pm/ProviderInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 749
    :catch_0
    move-exception v2

    .line 750
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 751
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

    .line 752
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 755
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 756
    return-void
.end method

.method private handleGenerateProcessError(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 13
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 1150
    iget-object v1, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 1151
    .local v1, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v11, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1152
    .local v2, "condition":I
    iget-object v3, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1153
    .local v3, "activity":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 1154
    .local v4, "shortMsg":Ljava/lang/String;
    iget-object v5, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param5:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 1155
    .local v5, "longMsg":Ljava/lang/String;
    iget-object v6, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 1156
    .local v6, "stackTrace":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v12, 0x1b

    aget-object v7, v11, v12

    .line 1158
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

    .line 1160
    .local v0, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onGenerateProcessError(Lcom/android/server/am/HtcWrapProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1161
    :catch_0
    move-exception v8

    .line 1162
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1163
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

    .line 1164
    const-string v11, "HtcAmsCallbackManager"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1167
    .end local v0    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 1168
    return-void
.end method

.method private handleGoingToSleep()V
    .locals 7

    .prologue
    .line 571
    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v6, 0x3

    aget-object v0, v5, v6

    .line 573
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

    .line 575
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onGoingToSleep()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 576
    :catch_0
    move-exception v2

    .line 577
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 578
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

    .line 579
    const-string v5, "HtcAmsCallbackManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 582
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private handleHibernate()V
    .locals 11

    .prologue
    .line 458
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v8, 0x14

    aget-object v0, v7, v8

    .line 460
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

    .line 462
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 463
    .local v4, "startTime":J
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onHibernate()V

    .line 464
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x1f4

    add-long/2addr v9, v4

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 465
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 466
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

    .line 467
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 469
    .end local v4    # "startTime":J
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 470
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 471
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

    .line 472
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 476
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v8, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mHibernateFinishSignal:Ljava/lang/Object;

    monitor-enter v8

    .line 477
    const/4 v7, 0x1

    :try_start_1
    iput-boolean v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsHibernateFinished:Z

    .line 478
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mHibernateFinishSignal:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 479
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_2

    const-string v7, "HtcAmsCallbackManager"

    const-string v9, "onHibernate finished"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_2
    monitor-exit v8

    .line 481
    return-void

    .line 480
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
    .line 1029
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 1030
    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x15

    aget-object v0, v6, v7

    .line 1032
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

    .line 1034
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onHibernateKillApp(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1035
    :catch_0
    move-exception v2

    .line 1036
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1037
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

    .line 1038
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1041
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 1042
    return-void
.end method

.method private handleMain(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 10
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    const/4 v8, 0x1

    .line 407
    iget-object v5, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/ActivityManagerService;

    .line 408
    .local v5, "service":Lcom/android/server/am/ActivityManagerService;
    iget-object v2, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    .line 409
    .local v2, "context":Landroid/content/Context;
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    aget-object v0, v7, v8

    .line 411
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

    .line 413
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v5, v2}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    :catch_0
    move-exception v3

    .line 415
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 416
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

    .line 417
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 420
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 422
    iget-object v8, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mMainFinishSignal:Ljava/lang/Object;

    monitor-enter v8

    .line 423
    const/4 v7, 0x1

    :try_start_1
    iput-boolean v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsMainFinished:Z

    .line 424
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mMainFinishSignal:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 425
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_1

    const-string v7, "HtcAmsCallbackManager"

    const-string v9, "onMain finished"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_1
    monitor-exit v8

    .line 427
    return-void

    .line 426
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
    .line 667
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 668
    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v7, 0x7

    aget-object v0, v6, v7

    .line 670
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

    .line 672
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onRealAppNotResponding(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 673
    :catch_0
    move-exception v2

    .line 674
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 675
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

    .line 676
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 679
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 680
    return-void
.end method

.method private handleRemoveProcess(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 692
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 693
    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x8

    aget-object v0, v6, v7

    .line 695
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

    .line 697
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onRemoveProcessLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 698
    :catch_0
    move-exception v2

    .line 699
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 700
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

    .line 701
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 704
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 705
    return-void
.end method

.method private handleResumeFromHibernate()V
    .locals 7

    .prologue
    .line 1054
    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v6, 0x16

    aget-object v0, v5, v6

    .line 1056
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

    .line 1058
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onResumeFromHibernate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1059
    :catch_0
    move-exception v2

    .line 1060
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1061
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

    .line 1062
    const-string v5, "HtcAmsCallbackManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1065
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private handleShutdown()V
    .locals 11

    .prologue
    .line 515
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v8, 0x17

    aget-object v0, v7, v8

    .line 517
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

    .line 519
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 520
    .local v4, "startTime":J
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onShutdown()V

    .line 521
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x1f4

    add-long/2addr v9, v4

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 522
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 523
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

    .line 524
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 526
    .end local v4    # "startTime":J
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 527
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 528
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

    .line 529
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 533
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v8, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mShutdownFinishSignal:Ljava/lang/Object;

    monitor-enter v8

    .line 534
    const/4 v7, 0x1

    :try_start_1
    iput-boolean v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsShutdownFinished:Z

    .line 535
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mShutdownFinishSignal:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 536
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_2

    const-string v7, "HtcAmsCallbackManager"

    const-string v9, "onShutdown finished"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_2
    monitor-exit v8

    .line 538
    return-void

    .line 537
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
    .line 1121
    iget-object v5, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/HtcWrapTaskRecord;

    .line 1122
    .local v5, "prev":Lcom/android/server/am/HtcWrapTaskRecord;
    iget-object v2, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/HtcWrapTaskRecord;

    .line 1123
    .local v2, "curr":Lcom/android/server/am/HtcWrapTaskRecord;
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v8, 0x1a

    aget-object v0, v7, v8

    .line 1125
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

    .line 1127
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v5, v2}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onStartActivityUncheckedLockedNewIntent(Lcom/android/server/am/HtcWrapTaskRecord;Lcom/android/server/am/HtcWrapTaskRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1128
    :catch_0
    move-exception v3

    .line 1129
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1130
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

    .line 1131
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1134
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 1135
    return-void
.end method

.method private handleStartProcess(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 642
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 643
    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v7, 0x6

    aget-object v0, v6, v7

    .line 645
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

    .line 647
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onStartProcessLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 648
    :catch_0
    move-exception v2

    .line 649
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 650
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

    .line 651
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 654
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 655
    return-void
.end method

.method private handleStartProcessNewPackage(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 9
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 616
    iget-object v5, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 617
    .local v5, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 618
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v8, 0x5

    aget-object v0, v7, v8

    .line 620
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

    .line 622
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v5, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onStartProcessLockedNewPackage(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 623
    :catch_0
    move-exception v2

    .line 624
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 625
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

    .line 626
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 629
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 630
    return-void
.end method

.method private handleTopAppChanged(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 954
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 955
    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x11

    aget-object v0, v6, v7

    .line 957
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

    .line 959
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onHandleTopAppChanged(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 960
    :catch_0
    move-exception v2

    .line 961
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 962
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

    .line 963
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 966
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 967
    return-void
.end method

.method private handleWakingUp()V
    .locals 7

    .prologue
    .line 593
    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v6, 0x4

    aget-object v0, v5, v6

    .line 595
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

    .line 597
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onWakingUp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 598
    :catch_0
    move-exception v2

    .line 599
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 600
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

    .line 601
    const-string v5, "HtcAmsCallbackManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 604
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
    .line 135
    const/4 v0, 0x1

    .local v0, "funcid":I
    :goto_0
    const/16 v1, 0x1d

    if-ge v0, v1, :cond_1

    .line 136
    iget-object v1, p1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->mIsCallbackImplemented:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_1
    return-void
.end method

.method public declared-synchronized onActivityPaused(Lcom/android/server/am/ActivityRecord;)V
    .locals 6
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 995
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 1000
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 997
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 998
    new-instance v1, Lcom/android/server/am/HtcWrapActivityRecord;

    invoke-direct {v1, p1}, Lcom/android/server/am/HtcWrapActivityRecord;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 999
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

    .line 995
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
    .line 970
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 975
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 972
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 973
    new-instance v1, Lcom/android/server/am/HtcWrapActivityRecord;

    invoke-direct {v1, p1}, Lcom/android/server/am/HtcWrapActivityRecord;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 974
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

    .line 970
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
    .line 759
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 768
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 761
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 762
    const/4 v1, 0x0

    .line 763
    .local v1, "prevTask":Lcom/android/server/am/HtcWrapTaskRecord;
    if-eqz p2, :cond_2

    .line 764
    new-instance v1, Lcom/android/server/am/HtcWrapTaskRecord;

    .end local v1    # "prevTask":Lcom/android/server/am/HtcWrapTaskRecord;
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-direct {v1, v2}, Lcom/android/server/am/HtcWrapTaskRecord;-><init>(Lcom/android/server/am/TaskRecord;)V

    .line 766
    .restart local v1    # "prevTask":Lcom/android/server/am/HtcWrapTaskRecord;
    :cond_2
    new-instance v2, Lcom/android/server/am/HtcWrapTaskRecord;

    invoke-direct {v2, p1}, Lcom/android/server/am/HtcWrapTaskRecord;-><init>(Lcom/android/server/am/TaskRecord;)V

    invoke-static {v2, v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 767
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

    .line 759
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
    .line 1090
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1094
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1092
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v1, 0x19

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1093
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

    .line 1090
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
    .line 867
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 874
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 869
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 870
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v0

    .line 871
    .local v0, "htcApp":Lcom/android/server/am/HtcWrapProcessRecord;
    iput p2, v0, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    .line 872
    invoke-static {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v1

    .line 873
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

    .line 867
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
    .line 1171
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 1177
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1173
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v3, 0x1c

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1174
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v0

    .line 1175
    .local v0, "htcApp":Lcom/android/server/am/HtcWrapProcessRecord;
    invoke-static {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v1

    .line 1176
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

    .line 1171
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
    .line 835
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 846
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 837
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v3, 0xd

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 838
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 839
    .local v1, "pkgListClone":Ljava/util/HashMap;
    if-eqz p1, :cond_2

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    if-eqz v2, :cond_2

    .line 840
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 842
    :cond_2
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 845
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

    .line 835
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
    .line 708
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 713
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 710
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 711
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 712
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

    .line 708
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onBeforeStartActivity()V
    .locals 5

    .prologue
    .line 1068
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1072
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1070
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v1, 0x18

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
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

    .line 1068
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onBroadcastIntent(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 789
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v6}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 815
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 791
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0xc

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 792
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

    .line 794
    :cond_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 796
    .local v4, "newIntent":Landroid/content/Intent;
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 797
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 798
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 799
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 800
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 802
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 803
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    .line 804
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

    .line 805
    .local v1, "category":Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 808
    .end local v0    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "category":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 809
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "HtcAmsCallbackManager"

    const-string v7, "Unable to copy Intent!"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 811
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    move-object p1, v4

    .line 813
    .end local v4    # "newIntent":Landroid/content/Intent;
    :cond_4
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v5

    .line 814
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

    .line 789
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
    .line 920
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 925
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 922
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 923
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 924
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

    .line 920
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
    .line 894
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 899
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 896
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 897
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 898
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

    .line 894
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onFinishBooting()V
    .locals 5

    .prologue
    .line 541
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 543
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 544
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

    .line 541
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
    .line 733
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 738
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 735
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 736
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 737
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

    .line 733
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
    .line 1139
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1146
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1141
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v1, 0x1b

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
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

    .line 1145
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

    .line 1139
    .end local v6    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onGoingToSleep()V
    .locals 5

    .prologue
    .line 563
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 565
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 566
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

    .line 563
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

    .line 434
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 437
    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mHibernateFinishSignal:Ljava/lang/Object;

    monitor-enter v3

    .line 438
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsHibernateFinished:Z

    .line 439
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v4, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v5, 0x1

    const/16 v6, 0x14

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 441
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 444
    .local v0, "startTime":J
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mHibernateFinishSignal:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
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

    .line 448
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsHibernateFinished:Z

    if-nez v2, :cond_4

    .line 449
    const-string v2, "HtcAmsCallbackManager"

    const-string v4, "Hibernate timeout!"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    # getter for: Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mAmsHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->access$400(Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;)Landroid/os/Handler;

    move-result-object v2

    const/16 v4, 0xbb8

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 452
    :cond_4
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 453
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v2, v8}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->setHibernateMode(Z)V

    goto :goto_0

    .line 452
    .end local v0    # "startTime":J
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 445
    .restart local v0    # "startTime":J
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public declared-synchronized onHibernateKillApp(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1020
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 1025
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1022
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1023
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 1024
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

    .line 1020
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

    .line 383
    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v3}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 386
    iget-object v4, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mMainFinishSignal:Ljava/lang/Object;

    monitor-enter v4

    .line 387
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsMainFinished:Z

    .line 388
    invoke-static {p1, p2}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 389
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 391
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 394
    .local v1, "startTime":J
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mMainFinishSignal:Ljava/lang/Object;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
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

    .line 398
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsMainFinished:Z

    if-nez v3, :cond_4

    .line 399
    const-string v3, "HtcAmsCallbackManager"

    const-string v5, "onMain timeout!"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    invoke-virtual {v3}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->dump()V

    .line 402
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

    .line 395
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
    .line 658
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 663
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 660
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 662
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

    .line 658
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
    .line 683
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 688
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 685
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 686
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 687
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

    .line 683
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onResumeFromHibernate()V
    .locals 5

    .prologue
    .line 1045
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1050
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1047
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v1, 0x16

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->setHibernateMode(Z)V

    .line 1049
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

    .line 1045
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onShutdown()V
    .locals 8

    .prologue
    const/16 v3, 0x17

    .line 490
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 493
    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mShutdownFinishSignal:Ljava/lang/Object;

    monitor-enter v3

    .line 494
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsShutdownFinished:Z

    .line 495
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->removeMessages(I)V

    .line 496
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v4, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v5, 0x1

    const/16 v6, 0x17

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 498
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 501
    .local v0, "startTime":J
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mShutdownFinishSignal:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
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

    .line 505
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsShutdownFinished:Z

    if-nez v2, :cond_4

    .line 506
    const-string v2, "HtcAmsCallbackManager"

    const-string v4, "Shutdown timeout!"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->dump()V

    .line 508
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->dumpAllThreads()V

    .line 510
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

    .line 502
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
    .line 1112
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 1117
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1114
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x1a

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1115
    invoke-static {p1, p2}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 1116
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

    .line 1112
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
    .line 633
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 638
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 635
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 637
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

    .line 633
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
    .line 607
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 612
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 609
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 611
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

    .line 607
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
    .line 945
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 950
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 947
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 948
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 949
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

    .line 945
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onWakingUp()V
    .locals 5

    .prologue
    .line 585
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 587
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 588
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

    .line 585
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
