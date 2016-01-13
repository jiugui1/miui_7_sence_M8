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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v2, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mRendererID:Ljava/lang/String;

    .line 20
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mRendererIP:J

    .line 21
    iput-object v2, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mStatusBarData:Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;

    .line 22
    iput-object v2, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

    .line 24
    iput-object v2, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mTimeoutFlag:Z

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mTimerObj:Ljava/lang/Object;

    .line 30
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    .line 31
    return-void
.end method

.method static synthetic access$000(Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    .prologue
    .line 13
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mTimerObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mTimeoutFlag:Z

    return p1
.end method

.method static synthetic access$200(Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;)Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    .prologue
    .line 13
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

    return-object v0
.end method

.method static synthetic access$202(Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;)Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;
    .locals 0
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;
    .param p1, "x1"    # Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

    .prologue
    .line 13
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

    return-object p1
.end method


# virtual methods
.method public cancelTimer()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 54
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    .line 57
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mTimeoutFlag:Z

    .line 58
    return-void
.end method

.method public checkIfMatchRenderer(Lcom/htc/htcdlnainterface/InternalDLNARendererData;)Z
    .locals 6
    .param p1, "renderer"    # Lcom/htc/htcdlnainterface/InternalDLNARendererData;

    .prologue
    const/4 v1, 0x0

    .line 131
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

    .line 133
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mTimerObj:Ljava/lang/Object;

    monitor-enter v2

    .line 134
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

    .line 135
    .local v0, "listener":Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;
    if-nez v0, :cond_0

    .line 136
    monitor-exit v2

    .line 152
    :goto_0
    return v1

    .line 138
    :cond_0
    iget-boolean v3, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mTimeoutFlag:Z

    if-eqz v3, :cond_1

    .line 139
    monitor-exit v2

    goto :goto_0

    .line 150
    .end local v0    # "listener":Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 141
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

    .line 144
    :cond_2
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    if-eqz v1, :cond_3

    .line 145
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 146
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

    .line 147
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;->onDiscovered(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 150
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getStatusBarData()Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mStatusBarData:Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;

    return-object v0
.end method

.method public isRendererFound(J)Z
    .locals 4
    .param p1, "ip"    # J

    .prologue
    .line 107
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

    .line 108
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
    .line 117
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

    .line 118
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mRendererID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setRendererID(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mRendererID:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setRendererIP(Ljava/lang/String;)V
    .locals 4
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {p1}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getIPLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mRendererIP:J

    .line 98
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

    .line 99
    return-void
.end method

.method public setStatusBarData(Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;)V
    .locals 0
    .param p1, "statusBarData"    # Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;

    .prologue
    .line 175
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mStatusBarData:Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;

    .line 176
    return-void
.end method

.method public setTimeout(J)V
    .locals 2
    .param p1, "timeout"    # J

    .prologue
    .line 39
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 41
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mTimeoutFlag:Z

    .line 42
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    .line 43
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    new-instance v1, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer$ConnectTimerTask;

    invoke-direct {v1, p0}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer$ConnectTimerTask;-><init>(Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 44
    return-void
.end method

.method public startDiscover(Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

    .prologue
    .line 161
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

    .line 163
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->refreshRendererList()V

    .line 164
    return-void
.end method
