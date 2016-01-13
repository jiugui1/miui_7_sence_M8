.class public Lcom/htc/service/HtcGestureManager;
.super Ljava/lang/Object;
.source "HtcGestureManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcGestureManager"

.field private static sInstance:Lcom/htc/service/HtcGestureManager;


# instance fields
.field private mService:Lcom/htc/service/IGestureService;


# direct methods
.method public constructor <init>(Lcom/htc/service/IGestureService;)V
    .locals 0
    .param p1, "service"    # Lcom/htc/service/IGestureService;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/service/HtcGestureManager;->mService:Lcom/htc/service/IGestureService;

    return-void
.end method

.method public static getInstance()Lcom/htc/service/HtcGestureManager;
    .locals 4

    .prologue
    const-class v2, Lcom/htc/service/HtcGestureManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/htc/service/HtcGestureManager;->sInstance:Lcom/htc/service/HtcGestureManager;

    if-nez v1, :cond_0

    const-string v1, "gesture"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Lcom/htc/service/HtcGestureManager;

    invoke-static {v0}, Lcom/htc/service/IGestureService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/service/IGestureService;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/htc/service/HtcGestureManager;-><init>(Lcom/htc/service/IGestureService;)V

    sput-object v1, Lcom/htc/service/HtcGestureManager;->sInstance:Lcom/htc/service/HtcGestureManager;

    :cond_0
    sget-object v1, Lcom/htc/service/HtcGestureManager;->sInstance:Lcom/htc/service/HtcGestureManager;

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public checkHtcGestureFilterOutList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public registerHtcGestureFilterOutList(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    return-void
.end method

.method public unregisterHtcGestureFilterOutList(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    return-void
.end method
