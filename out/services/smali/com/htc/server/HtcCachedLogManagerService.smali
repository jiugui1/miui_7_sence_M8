.class public Lcom/htc/server/HtcCachedLogManagerService;
.super Lcom/htc/service/IHtcCachedLogManagerService$Stub;
.source "HtcCachedLogManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcCachedLogManagerService$WorkingHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_EVENT:I = -0x1

.field private static final HTC_CACHEDLOG_SERVICE_THREAD:Ljava/lang/String; = "HtcCachedLogServiceThread"

.field static final IS_DEBUG:Z

.field private static final MSG_KEY_EVENT:Ljava/lang/String; = "event"

.field private static final MSG_KEY_INFO:Ljava/lang/String; = "info"

.field private static final MSG_KEY_NAME:Ljava/lang/String; = "name"

.field private static final MSG_KEY_SEVERITY:Ljava/lang/String; = "severity"

.field private static final SCHEDULE_DUMP_MSG:I = 0x66

.field private static final SCHEDULE_TRIMCACHED_MSG:I = 0x65

.field private static final SCHEDULE_TRIMCACHED_TO_LWM_MSG:I = 0x64

.field private static final TAG:Ljava/lang/String; = "HtcCachedLogMgr"

.field private static final TIME_INTERVAL_LOG_CALLBACKS:I = 0x927c0


# instance fields
.field mCallbackMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field mLogCallbacksRunnable:Ljava/lang/Runnable;

.field private mWorkingHandler:Lcom/htc/server/HtcCachedLogManagerService$WorkingHandler;

.field private mWorkingThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/server/HtcCachedLogManagerService;->IS_DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Lcom/htc/service/IHtcCachedLogManagerService$Stub;-><init>()V

    .line 46
    iput-object v2, p0, Lcom/htc/server/HtcCachedLogManagerService;->mWorkingThread:Landroid/os/HandlerThread;

    .line 47
    iput-object v2, p0, Lcom/htc/server/HtcCachedLogManagerService;->mWorkingHandler:Lcom/htc/server/HtcCachedLogManagerService$WorkingHandler;

    .line 49
    new-instance v2, Lcom/htc/server/HtcCachedLogManagerService$1;

    invoke-direct {v2, p0}, Lcom/htc/server/HtcCachedLogManagerService$1;-><init>(Lcom/htc/server/HtcCachedLogManagerService;)V

    iput-object v2, p0, Lcom/htc/server/HtcCachedLogManagerService;->mLogCallbacksRunnable:Ljava/lang/Runnable;

    .line 73
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/htc/server/HtcCachedLogManagerService;->mCallbackMap:Ljava/util/Hashtable;

    .line 74
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "HtcCachedLogServiceThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/server/HtcCachedLogManagerService;->mWorkingThread:Landroid/os/HandlerThread;

    .line 75
    iget-object v2, p0, Lcom/htc/server/HtcCachedLogManagerService;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 76
    new-instance v2, Lcom/htc/server/HtcCachedLogManagerService$WorkingHandler;

    iget-object v3, p0, Lcom/htc/server/HtcCachedLogManagerService;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/htc/server/HtcCachedLogManagerService$WorkingHandler;-><init>(Lcom/htc/server/HtcCachedLogManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/htc/server/HtcCachedLogManagerService;->mWorkingHandler:Lcom/htc/server/HtcCachedLogManagerService$WorkingHandler;

    .line 78
    iget-object v2, p0, Lcom/htc/server/HtcCachedLogManagerService;->mWorkingHandler:Lcom/htc/server/HtcCachedLogManagerService$WorkingHandler;

    iget-object v3, p0, Lcom/htc/server/HtcCachedLogManagerService;->mLogCallbacksRunnable:Ljava/lang/Runnable;

    const-wide/32 v4, 0x927c0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/server/HtcCachedLogManagerService$WorkingHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    .line 79
    .local v1, "retPost":Z
    const-string v2, "HtcCachedLogMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retPost:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :try_start_0
    iget-object v2, p0, Lcom/htc/server/HtcCachedLogManagerService;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HtcCachedLogMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set thread priority fail, tid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/server/HtcCachedLogManagerService;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/server/HtcCachedLogManagerService;)Lcom/htc/server/HtcCachedLogManagerService$WorkingHandler;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/HtcCachedLogManagerService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/server/HtcCachedLogManagerService;->mWorkingHandler:Lcom/htc/server/HtcCachedLogManagerService$WorkingHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/server/HtcCachedLogManagerService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/HtcCachedLogManagerService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/htc/server/HtcCachedLogManagerService;->handleDump(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/server/HtcCachedLogManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/HtcCachedLogManagerService;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/htc/server/HtcCachedLogManagerService;->trimCacheToLWM()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/server/HtcCachedLogManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/HtcCachedLogManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/htc/server/HtcCachedLogManagerService;->trimCache(I)V

    return-void
.end method

.method private declared-synchronized addCallbackMap(Ljava/lang/String;Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/server/HtcCachedLogManagerService;->mCallbackMap:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;

    .line 149
    .local v1, "registeredCallback":Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;
    if-ne p2, v1, :cond_1

    .line 150
    sget-boolean v2, Lcom/htc/server/HtcCachedLogManagerService;->IS_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcCachedLogMgr"

    const-string v3, "You have registered the callback!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 154
    :cond_1
    if-eqz v1, :cond_2

    .line 156
    :try_start_1
    invoke-interface {v1}, Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;->onRelease()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/htc/server/HtcCachedLogManagerService;->mCallbackMap:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_2
    iget-object v2, p0, Lcom/htc/server/HtcCachedLogManagerService;->mCallbackMap:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/htc/server/HtcCachedLogManagerService;->callbackRegister(Ljava/lang/String;Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 147
    .end local v1    # "registeredCallback":Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 157
    .restart local v1    # "registeredCallback":Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized callbackRegister(Ljava/lang/String;Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;

    .prologue
    .line 171
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 173
    :try_start_0
    invoke-interface {p2}, Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;->onRegistered()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 176
    iget-object v1, p0, Lcom/htc/server/HtcCachedLogManagerService;->mCallbackMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/htc/server/HtcCachedLogManagerService;->mCallbackMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 171
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized handleDump(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    const-string v9, "event"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 210
    .local v4, "event":I
    const-string v9, "severity"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 211
    .local v8, "severity":I
    const-string v9, "name"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 212
    .local v7, "serviceName":Ljava/lang/String;
    const-string v9, "info"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 214
    .local v5, "eventInfo":Landroid/os/Bundle;
    sget-boolean v9, Lcom/htc/server/HtcCachedLogManagerService;->IS_DEBUG:Z

    if-eqz v9, :cond_0

    const-string v10, "HtcCachedLogMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onDumpbyname: serviceName = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v7, :cond_3

    const-string v9, "all"

    :goto_0
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", severity = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", event = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/htc/server/HtcCachedLogManagerService;->isSystemReady()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-direct {p0, v4}, Lcom/htc/server/HtcCachedLogManagerService;->isValidEvent(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 219
    const/4 v9, 0x7

    if-ne v4, v9, :cond_5

    .line 220
    if-eqz v7, :cond_1

    .line 221
    iget-object v9, p0, Lcom/htc/server/HtcCachedLogManagerService;->mCallbackMap:Ljava/util/Hashtable;

    invoke-virtual {v9, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    .local v0, "callback":Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;
    if-eqz v0, :cond_4

    .line 224
    :try_start_1
    invoke-interface {v0, v4, v8, v5}, Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;->onDump(IILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    .end local v0    # "callback":Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;
    :cond_1
    :goto_1
    :try_start_2
    sget-boolean v9, Lcom/htc/server/HtcCachedLogManagerService;->IS_DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "HtcCachedLogMgr"

    const-string v10, "handleDump() end"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 251
    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    move-object v9, v7

    .line 214
    goto :goto_0

    .line 225
    .restart local v0    # "callback":Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;
    :catch_0
    move-exception v3

    .line 226
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 209
    .end local v0    # "callback":Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "event":I
    .end local v5    # "eventInfo":Landroid/os/Bundle;
    .end local v7    # "serviceName":Ljava/lang/String;
    .end local v8    # "severity":I
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 229
    .restart local v0    # "callback":Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;
    .restart local v4    # "event":I
    .restart local v5    # "eventInfo":Landroid/os/Bundle;
    .restart local v7    # "serviceName":Ljava/lang/String;
    .restart local v8    # "severity":I
    :cond_4
    :try_start_4
    sget-boolean v9, Lcom/htc/server/HtcCachedLogManagerService;->IS_DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "HtcCachedLogMgr"

    const-string v10, "callback is null!"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 233
    .end local v0    # "callback":Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;
    :cond_5
    iget-object v9, p0, Lcom/htc/server/HtcCachedLogManagerService;->mCallbackMap:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 235
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 236
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 237
    .local v2, "cbName":Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/server/HtcCachedLogManagerService;->mCallbackMap:Ljava/util/Hashtable;

    invoke-virtual {v9, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 239
    .local v1, "callbackForEvent":Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;
    :try_start_5
    sget-boolean v9, Lcom/htc/server/HtcCachedLogManagerService;->IS_DEBUG:Z

    if-eqz v9, :cond_6

    const-string v9, "HtcCachedLogMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "callback: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":onDump"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_6
    const/4 v9, 0x2

    invoke-interface {v1, v4, v9, v5}, Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;->onDump(IILandroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 242
    :catch_1
    move-exception v3

    .line 243
    .restart local v3    # "e":Landroid/os/RemoteException;
    :try_start_6
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 248
    .end local v1    # "callbackForEvent":Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;
    .end local v2    # "cbName":Ljava/lang/String;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    sget-boolean v9, Lcom/htc/server/HtcCachedLogManagerService;->IS_DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "HtcCachedLogMgr"

    const-string v10, "System is not ready or you have a invalid event, dump failed!"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method private isSystemReady()Z
    .locals 1

    .prologue
    .line 326
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    return v0
.end method

.method private isValidEvent(I)Z
    .locals 2
    .param p1, "event"    # I

    .prologue
    const/4 v0, 0x1

    .line 330
    if-lt p1, v0, :cond_0

    const/4 v1, 0x7

    if-gt p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendImmediateMessage(IIILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "event"    # I
    .param p3, "severity"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "eventInfo"    # Landroid/os/Bundle;

    .prologue
    .line 300
    iget-object v2, p0, Lcom/htc/server/HtcCachedLogManagerService;->mWorkingHandler:Lcom/htc/server/HtcCachedLogManagerService$WorkingHandler;

    invoke-virtual {v2, p1}, Lcom/htc/server/HtcCachedLogManagerService$WorkingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 302
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 303
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "event"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 304
    const-string v2, "severity"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 305
    const-string v2, "name"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v2, "info"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 308
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 309
    iget-object v2, p0, Lcom/htc/server/HtcCachedLogManagerService;->mWorkingHandler:Lcom/htc/server/HtcCachedLogManagerService$WorkingHandler;

    invoke-virtual {v2, v1}, Lcom/htc/server/HtcCachedLogManagerService$WorkingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 310
    return-void
.end method

.method private declared-synchronized trimCache(I)V
    .locals 4
    .param p1, "severity"    # I

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/htc/server/HtcCachedLogManagerService;->mCallbackMap:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 315
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 316
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    .local v0, "callback":Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;
    :try_start_1
    invoke-interface {v0, p1}, Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;->onTrimCache(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v1

    .line 320
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 313
    .end local v0    # "callback":Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 323
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized trimCacheToLWM()V
    .locals 4

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/htc/server/HtcCachedLogManagerService;->mCallbackMap:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 282
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    .local v0, "callback":Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;
    :try_start_1
    invoke-interface {v0}, Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;->onTrimCacheToLWM()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 286
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 280
    .end local v0    # "callback":Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 290
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 94
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/server/HtcCachedLogManagerService;->scheduleDumpByEvent(ILandroid/os/Bundle;)V

    .line 95
    return-void
.end method

.method public getLogger(Ljava/lang/String;)Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 202
    if-eqz p1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/htc/server/HtcCachedLogManagerService;->mCallbackMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;

    .line 205
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerLogger(Ljava/lang/String;Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;

    .prologue
    .line 139
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 140
    invoke-direct {p0, p1, p2}, Lcom/htc/server/HtcCachedLogManagerService;->addCallbackMap(Ljava/lang/String;Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    sget-boolean v0, Lcom/htc/server/HtcCachedLogManagerService;->IS_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcCachedLogMgr"

    const-string v1, "You hava a null name or null callback, register failed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public scheduleDumpByEvent(ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "event"    # I
    .param p2, "eventInfo"    # Landroid/os/Bundle;

    .prologue
    .line 259
    const/16 v1, 0x66

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/server/HtcCachedLogManagerService;->sendImmediateMessage(IIILjava/lang/String;Landroid/os/Bundle;)V

    .line 260
    return-void
.end method

.method public scheduleDumpByName(Ljava/lang/String;I)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "severity"    # I

    .prologue
    .line 269
    const/16 v1, 0x66

    const/4 v2, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/server/HtcCachedLogManagerService;->sendImmediateMessage(IIILjava/lang/String;Landroid/os/Bundle;)V

    .line 270
    return-void
.end method

.method public scheduleTrimCache(I)V
    .locals 6
    .param p1, "severity"    # I

    .prologue
    const/4 v4, 0x0

    .line 296
    const/16 v1, 0x65

    const/4 v2, -0x1

    move-object v0, p0

    move v3, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/htc/server/HtcCachedLogManagerService;->sendImmediateMessage(IIILjava/lang/String;Landroid/os/Bundle;)V

    .line 297
    return-void
.end method

.method public scheduleTrimCacheToLWM()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 276
    const/16 v1, 0x64

    const/4 v2, -0x1

    const/4 v3, 0x2

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/htc/server/HtcCachedLogManagerService;->sendImmediateMessage(IIILjava/lang/String;Landroid/os/Bundle;)V

    .line 277
    return-void
.end method

.method public declared-synchronized unregisterLogger(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 188
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/server/HtcCachedLogManagerService;->mCallbackMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    :try_start_1
    iget-object v1, p0, Lcom/htc/server/HtcCachedLogManagerService;->mCallbackMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;

    invoke-interface {v1}, Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;->onRelease()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/htc/server/HtcCachedLogManagerService;->mCallbackMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    :cond_0
    monitor-exit p0

    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 188
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
