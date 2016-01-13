.class public Landroid/media/medialinkhd/WirelessDisplayHelper;
.super Ljava/lang/Object;
.source "WirelessDisplayHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/medialinkhd/WirelessDisplayHelper$1;,
        Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;,
        Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "WirelessDisplayHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;

.field private mReceiver:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

.field private mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    iput-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mReceiver:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    iput-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mListener:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;

    iput-object p1, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mListener:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;

    iget-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v0

    iput-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-direct {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->registerReceiver()V

    const-string v0, "WirelessDisplayHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WirelessDisplayManager = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$100(Landroid/media/medialinkhd/WirelessDisplayHelper;)Lcom/htc/service/WirelessDisplayManager;
    .locals 1
    .param p0, "x0"    # Landroid/media/medialinkhd/WirelessDisplayHelper;

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/medialinkhd/WirelessDisplayHelper;)Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/medialinkhd/WirelessDisplayHelper;

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mListener:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;

    return-object v0
.end method

.method public static getIPLong(Ljava/lang/String;)J
    .locals 10
    .param p0, "ip"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    .local v2, "num":J
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    const-string v7, "\\."

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "addrArray":[Ljava/lang/String;
    const/16 v4, 0x20

    .local v4, "offset":I
    array-length v7, v0

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_0

    const-string v7, "WirelessDisplayHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addrArray("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v4, v4, -0x8

    aget-object v7, v0, v1

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .local v5, "token":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_1

    const-wide/16 v7, 0x100

    cmp-long v7, v5, v7

    if-ltz v7, :cond_4

    :cond_1
    const-wide/16 v2, -0x1

    .end local v5    # "token":J
    :cond_2
    const-string v7, "WirelessDisplayHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "long value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "addrArray":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v4    # "offset":I
    :cond_3
    return-wide v2

    .restart local v0    # "addrArray":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v4    # "offset":I
    .restart local v5    # "token":J
    :cond_4
    shl-long v7, v5, v4

    add-long/2addr v2, v7

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static getReadyDongle(Landroid/content/Context;)Lcom/htc/service/DongleInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getReadyDongle(Landroid/content/Context;Z)Lcom/htc/service/DongleInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getReadyDongle(Landroid/content/Context;Z)Lcom/htc/service/DongleInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "needConfig"    # Z

    .prologue
    const/4 v1, 0x0

    invoke-static {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v0

    .local v0, "wdMgr":Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->usedDongleFound()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "WirelessDisplayHelper"

    const-string v2, "[getReadyDongle]usedDongleFound() return true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/htc/service/DongleInfo;

    invoke-direct {v1}, Lcom/htc/service/DongleInfo;-><init>()V

    goto :goto_0

    :cond_1
    const-string v2, "WirelessDisplayHelper"

    const-string v3, "[getReadyDongle]usedDongleFound() return false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v0

    .local v0, "wdMgr":Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->getConnectedDongleIP()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "wireless_display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    return-object v0
.end method

.method public static final isInMirrorMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v1, "wireless_display"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .local v0, "wdMgr":Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v1

    goto :goto_0
.end method

.method private static isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z
    .locals 2
    .param p0, "mgr"    # Lcom/htc/service/WirelessDisplayManager;

    .prologue
    if-nez p0, :cond_0

    const-string v0, "WirelessDisplayHelper"

    const-string v1, "[isWirelessDisplayManagerNull][mgr is null]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final pauseMirror(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    invoke-static {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v1

    .local v1, "wdMgr":Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v1}, Landroid/media/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1, v2}, Lcom/htc/service/WirelessDisplayManager;->setMirrorDisplayOnOff(Z)I

    move-result v0

    .local v0, "nRet":I
    const-string v2, "WirelessDisplayHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[pauseMirror] nRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    new-instance v1, Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;-><init>(Landroid/media/medialinkhd/WirelessDisplayHelper;Landroid/media/medialinkhd/WirelessDisplayHelper$1;)V

    iput-object v1, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mReceiver:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mReceiver:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static final resumeMirror(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v1

    .local v1, "wdMgr":Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v1}, Landroid/media/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/service/WirelessDisplayManager;->setMirrorDisplayOnOff(Z)I

    move-result v0

    .local v0, "nRet":I
    const-string v2, "WirelessDisplayHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[resumeMirror] nRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final setDLNAPreloadFlag(Landroid/content/Context;Z)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # Z

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v0

    .local v0, "wdMgr":Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/htc/service/WirelessDisplayManager;->setDLNAPreloadEnable(Z)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static setDefaultDongleMirrorEnabled(Landroid/content/Context;Z)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    invoke-static {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v0

    .local v0, "wdMgr":Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->usedDongleFound()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "WirelessDisplayHelper"

    const-string v2, "[setDefaultDongleMirrorEnabled]usedDongleFound() return true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Lcom/htc/service/WirelessDisplayManager;->mirrorModeStartStop(Z)Z

    move-result v1

    goto :goto_0

    :cond_1
    const-string v2, "WirelessDisplayHelper"

    const-string v3, "[setDefaultDongleMirrorEnabled]usedDongleFound() return false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final shouldPlayOnTV(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const-string v3, "WirelessDisplayHelper"

    const-string v4, "[startMirror]"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v1

    .local v1, "wdMgr":Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v1}, Landroid/media/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getReadyDongle(Landroid/content/Context;)Lcom/htc/service/DongleInfo;

    move-result-object v0

    .local v0, "dongle":Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/htc/service/WirelessDisplayManager;->popDialog()Z

    move-result v2

    goto :goto_0
.end method

.method public static final startMirror(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v1, "WirelessDisplayHelper"

    const-string v2, "[startMirror]"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v0

    .local v0, "wdMgr":Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-string v1, "WirelessDisplayHelper"

    const-string v2, "[startMirror][mirrorNow]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->mirrorNow()V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static final stopMirror(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v1

    .local v1, "wdMgr":Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v1}, Landroid/media/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/service/WirelessDisplayManager;->mirrorModeStartStop(Z)Z

    move-result v0

    .local v0, "bRet":Z
    const-string v2, "WirelessDisplayHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[stopMirror] bRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mReceiver:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public getMirrorModeState()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->getMirrorModeState()I

    move-result v0

    goto :goto_0
.end method

.method public final isInMirrorMode()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMirrorRenderer(J)Z
    .locals 6
    .param p1, "ip"    # J

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v3}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v3}, Lcom/htc/service/WirelessDisplayManager;->getConnectedDongleIP()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getIPLong(Ljava/lang/String;)J

    move-result-wide v0

    .local v0, "dongleIP":J
    cmp-long v3, p1, v0

    if-nez v3, :cond_2

    const-string v2, "WirelessDisplayHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isMirrorRenderer] Dongle found with matching IP, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "WirelessDisplayHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isMirrorRenderer] In mirror mode, not mataching with dongle IP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", renderer IP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->unregisterReceiver()V

    iput-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mListener:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;

    iput-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mReceiver:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    iput-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    iput-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setDLNAPreloadFlag(Z)Z
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v0

    .local v0, "wdMgr":Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/htc/service/WirelessDisplayManager;->setDLNAPreloadEnable(Z)V

    const/4 v1, 0x1

    goto :goto_0
.end method
