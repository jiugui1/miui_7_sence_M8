.class public Lcom/htc/service/HtcCachedLogManager;
.super Ljava/lang/Object;
.source "HtcCachedLogManager.java"


# static fields
.field public static final DUMP_EVENT_ANR:I = 0x1

.field public static final DUMP_EVENT_DUMPSYS:I = 0x6

.field public static final DUMP_EVENT_FINALIZE_TIMEOUT:I = 0x4

.field public static final DUMP_EVENT_SINGLE:I = 0x7

.field public static final DUMP_EVENT_SPIN_ON_SUSPEND:I = 0x5

.field public static final DUMP_EVENT_TELLHTC:I = 0x2

.field public static final DUMP_EVENT_WATCHDOG_TIMEOUT:I = 0x3

.field static final IS_DEBUG:Z

.field public static final SYSPROP_DISABLE_CACHEDLOG:Ljava/lang/String; = "debug.htccachedlog.disable"

.field private static final TAG:Ljava/lang/String; = "HtcCachedLogMgr"


# instance fields
.field private mService:Lcom/htc/service/IHtcCachedLogManagerService;


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
    sput-boolean v0, Lcom/htc/service/HtcCachedLogManager;->IS_DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/htc/service/IHtcCachedLogManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/htc/service/IHtcCachedLogManagerService;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/service/HtcCachedLogManager;->mService:Lcom/htc/service/IHtcCachedLogManagerService;

    return-void
.end method


# virtual methods
.method public registerLogger(Ljava/lang/String;Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;

    .prologue
    sget-boolean v1, Lcom/htc/service/HtcCachedLogManager;->IS_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcCachedLogMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HtcCachedLogManager -> registerLogger, callback :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/HtcCachedLogManager;->mService:Lcom/htc/service/IHtcCachedLogManagerService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/service/HtcCachedLogManager;->mService:Lcom/htc/service/IHtcCachedLogManagerService;

    invoke-interface {v1, p1, p2}, Lcom/htc/service/IHtcCachedLogManagerService;->registerLogger(Ljava/lang/String;Lcom/htc/service/callbacks/IHtcCachedLogServiceCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/htc/service/HtcCachedLogManager;->IS_DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "HtcCachedLogMgr"

    const-string v2, "registerLogger failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public scheduleDumpByEvent(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "eventInfo"    # Landroid/os/Bundle;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/HtcCachedLogManager;->mService:Lcom/htc/service/IHtcCachedLogManagerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/service/HtcCachedLogManager;->mService:Lcom/htc/service/IHtcCachedLogManagerService;

    invoke-interface {v1, p1, p2}, Lcom/htc/service/IHtcCachedLogManagerService;->scheduleDumpByEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    sget-boolean v1, Lcom/htc/service/HtcCachedLogManager;->IS_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcCachedLogMgr"

    const-string v2, "scheduleDumpByEvent: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public scheduleDumpByName(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "severity"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/HtcCachedLogManager;->mService:Lcom/htc/service/IHtcCachedLogManagerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/service/HtcCachedLogManager;->mService:Lcom/htc/service/IHtcCachedLogManagerService;

    invoke-interface {v1, p1, p2}, Lcom/htc/service/IHtcCachedLogManagerService;->scheduleDumpByName(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    sget-boolean v1, Lcom/htc/service/HtcCachedLogManager;->IS_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcCachedLogMgr"

    const-string v2, "scheduleDumpByName: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterLogger(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    sget-boolean v1, Lcom/htc/service/HtcCachedLogManager;->IS_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcCachedLogMgr"

    const-string v2, "HtcCachedLogManager -> unregisterLogger"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/HtcCachedLogManager;->mService:Lcom/htc/service/IHtcCachedLogManagerService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/service/HtcCachedLogManager;->mService:Lcom/htc/service/IHtcCachedLogManagerService;

    invoke-interface {v1, p1}, Lcom/htc/service/IHtcCachedLogManagerService;->unregisterLogger(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/htc/service/HtcCachedLogManager;->IS_DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "HtcCachedLogMgr"

    const-string v2, "unregisterLogger failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
