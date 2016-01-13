.class public Lcom/htc/server/AMSCacheLogger;
.super Lcom/htc/service/HtcAbsCachedLogger;
.source "AMSCacheLogger.java"


# static fields
.field static final ENABLED:Z

.field static final FILE_PREFIX:Ljava/lang/String; = "ams_activity_"

.field static final TAG:Ljava/lang/String; = "AMSCacheLogger"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/server/AMSCacheLogger;->ENABLED:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    sget-wide v0, Lcom/htc/server/AMSCacheLogger;->MAX_BUFFER_SIZE:J

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/service/HtcAbsCachedLogger;-><init>(Ljava/lang/String;J)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/server/AMSCacheLogger;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/server/AMSCacheLogger;->mContext:Landroid/content/Context;

    return-void
.end method

.method private dumpToFile()V
    .locals 4

    .prologue
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .local v0, "ams":Lcom/android/server/am/ActivityManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->dumpBinderProxy()V

    :cond_0
    :try_start_0
    const-string v2, "ams_activity_"

    invoke-virtual {p0, v2}, Lcom/htc/server/AMSCacheLogger;->writeToFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AMSCacheLogger"

    const-string v3, "failed dump cached log to file"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private writeTracePoint()V
    .locals 4

    .prologue
    const-string v2, "ro.framework.tracepoint"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .local v1, "writeTracePoint":Z
    if-eqz v1, :cond_0

    const-string v2, "AMSCacheLogger"

    const-string v3, "send broadcast to write tracepoint"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.WRITE_TRACEPOINT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/server/AMSCacheLogger;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized onDump(IILandroid/os/Bundle;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "severity"    # I
    .param p3, "eventInfo"    # Landroid/os/Bundle;

    .prologue
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/htc/server/AMSCacheLogger;->ENABLED:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    :try_start_1
    invoke-direct {p0}, Lcom/htc/server/AMSCacheLogger;->dumpToFile()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_0
    :try_start_2
    invoke-direct {p0}, Lcom/htc/server/AMSCacheLogger;->writeTracePoint()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
