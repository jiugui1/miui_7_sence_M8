.class public Landroid/media/medialinkhd/HtcTvDisplayHelper;
.super Ljava/lang/Object;
.source "HtcTvDisplayHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/medialinkhd/HtcTvDisplayHelper$1;,
        Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;,
        Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;,
        Landroid/media/medialinkhd/HtcTvDisplayHelper$MirrorChangeListener;,
        Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;
    }
.end annotation


# static fields
.field private static final ENABLE_DLNA_HIDDEN_FUNC_FILE_NAME:Ljava/lang/String; = ".enableDLNAhiddnefunc"

.field private static final INTENT_WIRELESS_DISPLAY_MIRROR_RESULT:Ljava/lang/String; = "com.htc.intent.action.WIRELESS_DISPLAY_MIRROR_RESULT"

.field private static final LOG_TAG:Ljava/lang/String; = "WirelessDisplayHelper"

.field public static final MIRROR_MODE_DISABLED:I = 0x1

.field public static final MIRROR_MODE_ENABLED:I = 0x3

.field public static final MIRROR_MODE_PAUSE:I = 0x7

.field static final RET_DMR:I = 0x2711


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDongleConfigReceiver:Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;

.field private mDongleListReceiver:Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;

.field private mTvDisplayListener:Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

.field private mWDHelper:Landroid/media/medialinkhd/WirelessDisplayHelper;

.field private mWDListener:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mContext:Landroid/content/Context;

    iput-object v2, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mTvDisplayListener:Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

    iput-object v2, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mDongleListReceiver:Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;

    iput-object v2, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mDongleConfigReceiver:Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;

    iput-object v2, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mWDHelper:Landroid/media/medialinkhd/WirelessDisplayHelper;

    iput-object v2, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mWDListener:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;

    const-string v0, "WirelessDisplayHelper"

    const-string v1, "[HtcTvDisplayHelper]"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mTvDisplayListener:Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

    iget-object v0, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mTvDisplayListener:Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

    if-eqz v0, :cond_0

    const-string v0, "WirelessDisplayHelper"

    const-string v1, "[HtcTvDisplayHelper][registerReceivever]"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcTvDisplayHelper;->registerDongleListReceivever()V

    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcTvDisplayHelper;->registerDongleConfigReceivever()V

    new-instance v0, Landroid/media/medialinkhd/HtcTvDisplayHelper$MirrorChangeListener;

    invoke-direct {v0, p0, v2}, Landroid/media/medialinkhd/HtcTvDisplayHelper$MirrorChangeListener;-><init>(Landroid/media/medialinkhd/HtcTvDisplayHelper;Landroid/media/medialinkhd/HtcTvDisplayHelper$1;)V

    iput-object v0, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mWDListener:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;

    new-instance v0, Landroid/media/medialinkhd/WirelessDisplayHelper;

    iget-object v1, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mWDListener:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;

    invoke-direct {v0, p1, v1}, Landroid/media/medialinkhd/WirelessDisplayHelper;-><init>(Landroid/content/Context;Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;)V

    iput-object v0, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mWDHelper:Landroid/media/medialinkhd/WirelessDisplayHelper;

    :cond_0
    return-void
.end method

.method static synthetic access$300(Landroid/media/medialinkhd/HtcTvDisplayHelper;)Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcTvDisplayHelper;

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mTvDisplayListener:Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/medialinkhd/HtcTvDisplayHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/media/medialinkhd/HtcTvDisplayHelper;

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    invoke-static {}, Landroid/media/medialinkhd/HtcTvDisplayHelper;->isForceDisableDLNA()Z

    move-result v0

    return v0
.end method

.method private static enableDLNAHiddenFunc(Ljava/lang/String;)Z
    .locals 9
    .param p0, "func"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "bEnableFlag":Z
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .local v6, "sdcard":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v7, ".enableDLNAhiddnefunc"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v3, "fd":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz p0, :cond_3

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v4, "in":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .local v5, "len":I
    const/16 v7, 0x400

    :try_start_1
    new-array v1, v7, [B

    .local v1, "data":[B
    :cond_0
    const/4 v7, -0x1

    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-eq v7, v5, :cond_1

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v8, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    const/4 v0, 0x1

    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .end local v1    # "data":[B
    .end local v3    # "fd":Ljava/io/File;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v5    # "len":I
    .end local v6    # "sdcard":Ljava/io/File;
    :cond_2
    :goto_0
    return v0

    .restart local v3    # "fd":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "len":I
    .restart local v6    # "sdcard":Ljava/io/File;
    :catchall_0
    move-exception v7

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    throw v7
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v3    # "fd":Ljava/io/File;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v5    # "len":I
    .end local v6    # "sdcard":Ljava/io/File;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "fd":Ljava/io/File;
    .restart local v6    # "sdcard":Ljava/io/File;
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .end local v3    # "fd":Ljava/io/File;
    .end local v6    # "sdcard":Ljava/io/File;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static final isAnyDongleNearBy(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-static {}, Landroid/media/medialinkhd/HtcTvDisplayHelper;->isForceDisableDLNA()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getReadyDongle(Landroid/content/Context;Z)Lcom/htc/service/DongleInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isForceDisableDLNA()Z
    .locals 1

    .prologue
    const-string v0, "forceDisableDLNA"

    invoke-static {v0}, Landroid/media/medialinkhd/HtcTvDisplayHelper;->enableDLNAHiddenFunc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isReadyDongleNearBy(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/media/medialinkhd/HtcTvDisplayHelper;->isForceDisableDLNA()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0, v0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getReadyDongle(Landroid/content/Context;Z)Lcom/htc/service/DongleInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static final isTvOn(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "WirelessDisplayHelper"

    const-string v1, "[HtcTvDisplayHelper][isTvOn]"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/media/medialinkhd/HtcTvDisplayHelper;->isForceDisableDLNA()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final setDLNAPreloadFlag(Landroid/content/Context;Z)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # Z

    .prologue
    invoke-static {p0, p1}, Landroid/media/medialinkhd/WirelessDisplayHelper;->setDLNAPreloadFlag(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static final shouldPlayOnTv(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const-string v1, "WirelessDisplayHelper"

    const-string v2, "[HtcTvDisplayHelper][shouldPlayOnTv]"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/media/medialinkhd/HtcTvDisplayHelper;->isForceDisableDLNA()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->shouldPlayOnTV(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/media/medialinkhd/HtcTvDisplayHelper;->turnOnTv(Landroid/content/Context;)Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static final turnOffTv(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->stopMirror(Landroid/content/Context;)V

    return-void
.end method

.method public static final turnOnTv(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "WirelessDisplayHelper"

    const-string v1, "[HtcTvDisplayHelper][turnOnTv]"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->startMirror(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getMirrorModeState()I
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mWDHelper:Landroid/media/medialinkhd/WirelessDisplayHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mWDHelper:Landroid/media/medialinkhd/WirelessDisplayHelper;

    invoke-virtual {v1}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getMirrorModeState()I

    move-result v0

    .local v0, "state":I
    const-string v1, "WirelessDisplayHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcTvDisplayHelper][getMirrorModeState] state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "state":I
    :goto_0
    return v0

    :cond_0
    const-string v1, "WirelessDisplayHelper"

    const-string v2, "[HtcTvDisplayHelper][getMirrorModeState] mWDHelper == null, return MIRROR_MODE_DISABLED"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method final registerDongleConfigReceivever()V
    .locals 3

    .prologue
    new-instance v1, Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;-><init>(Landroid/media/medialinkhd/HtcTvDisplayHelper;Landroid/media/medialinkhd/HtcTvDisplayHelper$1;)V

    iput-object v1, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mDongleConfigReceiver:Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.htc.intent.action.WIRELESS_DISPLAY_MIRROR_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mDongleConfigReceiver:Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method final registerDongleListReceivever()V
    .locals 3

    .prologue
    new-instance v1, Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;-><init>(Landroid/media/medialinkhd/HtcTvDisplayHelper;Landroid/media/medialinkhd/HtcTvDisplayHelper$1;)V

    iput-object v1, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mDongleListReceiver:Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.htc.MIRROR_DONGLE_LIST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mDongleListReceiver:Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mWDHelper:Landroid/media/medialinkhd/WirelessDisplayHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mWDHelper:Landroid/media/medialinkhd/WirelessDisplayHelper;

    invoke-virtual {v0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->release()V

    :cond_0
    iput-object v1, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mWDHelper:Landroid/media/medialinkhd/WirelessDisplayHelper;

    iput-object v1, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mTvDisplayListener:Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcTvDisplayHelper;->unregisterReceiver()V

    iput-object v1, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method final unregisterReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mDongleListReceiver:Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mDongleListReceiver:Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mDongleListReceiver:Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;

    :cond_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mDongleConfigReceiver:Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mDongleConfigReceiver:Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Landroid/media/medialinkhd/HtcTvDisplayHelper;->mDongleConfigReceiver:Landroid/media/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;

    :cond_1
    return-void
.end method
