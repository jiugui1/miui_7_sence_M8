.class Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;
.super Ljava/lang/Object;
.source "HtcDLNARendererDiscoverer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/medialinkhd/HtcDLNARendererDiscoverer$ConnectTimerTask;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcDLNADiscoverRendererHelper"


# instance fields
.field private mDiscoverTimer:Ljava/util/Timer;

.field private mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

.field private mRendererDiscoverListener:Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

.field private mRendererID:Ljava/lang/String;

.field private mRendererIP:J

.field private mStatusBarData:Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;

.field private mTimeoutFlag:Z

.field private mTimerObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/media/medialinkhd/HtcDLNAServiceManager;)V
    .locals 3
    .param p1, "manager"    # Landroid/media/medialinkhd/HtcDLNAServiceManager;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mRendererID:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mRendererIP:J

    iput-object v2, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mStatusBarData:Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;

    iput-object v2, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

    iput-object v2, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mTimeoutFlag:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mTimerObj:Ljava/lang/Object;

    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    return-void
.end method

.method static synthetic access$000(Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mTimerObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mTimeoutFlag:Z

    return p1
.end method

.method static synthetic access$200(Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;)Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

    return-object v0
.end method

.method static synthetic access$202(Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;)Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;
    .locals 0
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;
    .param p1, "x1"    # Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

    .prologue
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

    return-object p1
.end method


# virtual methods
.method public cancelTimer()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mTimeoutFlag:Z

    return-void
.end method

.method public checkIfMatchRenderer(Lcom/htc/htcdlnainterface/InternalDLNARendererData;)Z
    .locals 6
    .param p1, "renderer"    # Lcom/htc/htcdlnainterface/InternalDLNARendererData;

    .prologue
    const/4 v1, 0x0

    const-string v2, "HtcDLNADiscoverRendererHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkIfMatchRenderer] ip = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getIpAddress()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", renderer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mTimerObj:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;
    if-nez v0, :cond_0

    monitor-exit v2

    :goto_0
    return v1

    :cond_0
    iget-boolean v3, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mTimeoutFlag:Z

    if-eqz v3, :cond_1

    monitor-exit v2

    goto :goto_0

    .end local v0    # "listener":Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "listener":Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getIpAddress()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->isRendererFound(J)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->isRendererFound(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;->onDiscovered(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getStatusBarData()Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mStatusBarData:Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;

    return-object v0
.end method

.method public isRendererFound(J)Z
    .locals 4
    .param p1, "ip"    # J

    .prologue
    const-string v0, "HtcDLNADiscoverRendererHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isRendererFound] ip = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRendererIP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mRendererIP:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mRendererIP:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRendererFound(Ljava/lang/String;)Z
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const-string v0, "HtcDLNADiscoverRendererHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isRendererFound] id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRendererID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mRendererID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mRendererID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setRendererID(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mRendererID:Ljava/lang/String;

    return-void
.end method

.method public setRendererIP(Ljava/lang/String;)V
    .locals 4
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getIPLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mRendererIP:J

    const-string v0, "HtcDLNADiscoverRendererHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRendererIP] ip = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", long = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mRendererIP:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setStatusBarData(Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;)V
    .locals 0
    .param p1, "statusBarData"    # Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;

    .prologue
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mStatusBarData:Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;

    return-void
.end method

.method public setTimeout(J)V
    .locals 2
    .param p1, "timeout"    # J

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mTimeoutFlag:Z

    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    new-instance v1, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer$ConnectTimerTask;

    invoke-direct {v1, p0}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer$ConnectTimerTask;-><init>(Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public startDiscover(Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

    .prologue
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->refreshRendererList()V

    return-void
.end method
