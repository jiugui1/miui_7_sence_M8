.class public Lvenom/common/FlashLight;
.super Ljava/lang/Object;
.source "FlashLight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvenom/common/FlashLight$FlashTimer;
    }
.end annotation


# static fields
.field private static final FILE:Ljava/lang/String; = "/sys/class/leds/flashlight/brightness"

.field public static final SYSTEM_PROPERTY:Ljava/lang/String; = "sys.flashlight"

.field public static final TAG:Ljava/lang/String; = "m0narX_flashlight"

.field private static final WAKE_LOCK_TAG:Ljava/lang/String; = "TORCH_WAKE_LOCK"

.field private static mInstance:Lvenom/common/FlashLight;


# instance fields
.field private mBrightness:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lvenom/common/OnFlashLightChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTimer:Lvenom/common/FlashLight$FlashTimer;

.field private pm:Landroid/os/PowerManager;

.field private previouseSendedBrightness:I

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lvenom/common/FlashLight;->pm:Landroid/os/PowerManager;

    new-instance v0, Lvenom/common/FlashLight$1;

    invoke-direct {v0, p0}, Lvenom/common/FlashLight$1;-><init>(Lvenom/common/FlashLight;)V

    iput-object v0, p0, Lvenom/common/FlashLight;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvenom/common/FlashLight;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lvenom/common/FlashLight;->getCurrentBrightness()I

    move-result v0

    iput v0, p0, Lvenom/common/FlashLight;->mBrightness:I

    const/4 v0, -0x1

    iput v0, p0, Lvenom/common/FlashLight;->previouseSendedBrightness:I

    new-instance v0, Lvenom/common/FlashLight$FlashTimer;

    invoke-direct {v0, p0, v1}, Lvenom/common/FlashLight$FlashTimer;-><init>(Lvenom/common/FlashLight;Lvenom/common/FlashLight$FlashTimer;)V

    iput-object v0, p0, Lvenom/common/FlashLight;->mTimer:Lvenom/common/FlashLight$FlashTimer;

    iput-object p1, p0, Lvenom/common/FlashLight;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lvenom/common/FlashLight;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvenom/common/FlashLight;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lvenom/common/FlashLight;->pm:Landroid/os/PowerManager;

    :goto_0
    return-void

    :cond_0
    const-string v0, "m0narX_flashlight"

    const-string v1, "mContext is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$0(Lvenom/common/FlashLight;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lvenom/common/FlashLight;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lvenom/common/FlashLight;)I
    .locals 1

    iget v0, p0, Lvenom/common/FlashLight;->mBrightness:I

    return v0
.end method

.method static synthetic access$2(Lvenom/common/FlashLight;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lvenom/common/FlashLight;->setBrightness(IZ)V

    return-void
.end method

.method static synthetic access$3(Lvenom/common/FlashLight;I)V
    .locals 0

    iput p1, p0, Lvenom/common/FlashLight;->mBrightness:I

    return-void
.end method

.method static synthetic access$4(Lvenom/common/FlashLight;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lvenom/common/FlashLight;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lvenom/common/FlashLight;)V
    .locals 0

    invoke-direct {p0}, Lvenom/common/FlashLight;->stopWakeLock()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lvenom/common/FlashLight;
    .locals 1

    sget-object v0, Lvenom/common/FlashLight;->mInstance:Lvenom/common/FlashLight;

    if-nez v0, :cond_0

    new-instance v0, Lvenom/common/FlashLight;

    invoke-direct {v0, p0}, Lvenom/common/FlashLight;-><init>(Landroid/content/Context;)V

    sput-object v0, Lvenom/common/FlashLight;->mInstance:Lvenom/common/FlashLight;

    :cond_0
    sget-object v0, Lvenom/common/FlashLight;->mInstance:Lvenom/common/FlashLight;

    return-object v0
.end method

.method private setBrightness(IZ)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v1, "htchardware"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IHtcHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHtcHardwareService;

    move-result-object v0

    iput p1, p0, Lvenom/common/FlashLight;->mBrightness:I

    :try_start_0
    const-string v1, "sys.flashlight"

    iget v4, p0, Lvenom/common/FlashLight;->mBrightness:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lvenom/common/FlashLight;->mBrightness:I

    invoke-interface {v0, v1}, Landroid/os/IHtcHardwareService;->setFlashlightBrightness(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v1, p0, Lvenom/common/FlashLight;->mBrightness:I

    if-eqz v1, :cond_4

    iget-object v1, p0, Lvenom/common/FlashLight;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lvenom/common/FlashLight;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    iget-object v4, p0, Lvenom/common/FlashLight;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lvenom/common/FlashLight;->startWakeLock()V

    :cond_2
    iget-object v1, p0, Lvenom/common/FlashLight;->mTimer:Lvenom/common/FlashLight$FlashTimer;

    invoke-virtual {v1}, Lvenom/common/FlashLight$FlashTimer;->start()V

    :goto_2
    iget v1, p0, Lvenom/common/FlashLight;->previouseSendedBrightness:I

    iget v2, p0, Lvenom/common/FlashLight;->mBrightness:I

    if-ne v1, v2, :cond_5

    if-nez p2, :cond_5

    :goto_3
    return-void

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lvenom/common/FlashLight;->mTimer:Lvenom/common/FlashLight$FlashTimer;

    invoke-virtual {v1}, Lvenom/common/FlashLight$FlashTimer;->stop()V

    invoke-direct {p0}, Lvenom/common/FlashLight;->stopWakeLock()V

    goto :goto_2

    :cond_5
    iget v1, p0, Lvenom/common/FlashLight;->mBrightness:I

    iput v1, p0, Lvenom/common/FlashLight;->previouseSendedBrightness:I

    iget-object v1, p0, Lvenom/common/FlashLight;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private startWakeLock()V
    .locals 3

    iget-object v0, p0, Lvenom/common/FlashLight;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lvenom/common/FlashLight;->pm:Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvenom/common/FlashLight;->pm:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "TORCH_WAKE_LOCK"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lvenom/common/FlashLight;->wakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    :goto_0
    iget-object v0, p0, Lvenom/common/FlashLight;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lvenom/common/FlashLight;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :goto_1
    return-void

    :cond_1
    const-string v0, "m0narX_flashlight"

    const-string v1, "PowerManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "m0narX_flashlight"

    const-string v1, "wakeLock is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private stopWakeLock()V
    .locals 1

    iget-object v0, p0, Lvenom/common/FlashLight;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvenom/common/FlashLight;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvenom/common/FlashLight;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lvenom/common/FlashLight;->wakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentBrightness()I
    .locals 6

    new-instance v3, Ljava/io/File;

    const-string v5, "/sys/class/leds/flashlight/brightness"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    :goto_2
    return v5

    :cond_0
    int-to-char v5, v0

    :try_start_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception v5

    const/4 v5, 0x0

    goto :goto_2

    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lvenom/common/FlashLight;->getCurrentBrightness()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeOnFlashLightChangedLister(Lvenom/common/OnFlashLightChangedListener;)V
    .locals 2

    iget-object v1, p0, Lvenom/common/FlashLight;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lvenom/common/FlashLight;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvenom/common/FlashLight;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBrightness(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lvenom/common/FlashLight;->setBrightness(IZ)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x7f

    :goto_0
    invoke-virtual {p0, v0}, Lvenom/common/FlashLight;->setBrightness(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnFlashLightChangedLister(Lvenom/common/OnFlashLightChangedListener;)V
    .locals 2

    iget-object v1, p0, Lvenom/common/FlashLight;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lvenom/common/FlashLight;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lvenom/common/FlashLight;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lvenom/common/FlashLight;->getCurrentBrightness()I

    move-result v0

    iput v0, p0, Lvenom/common/FlashLight;->mBrightness:I

    iget v0, p0, Lvenom/common/FlashLight;->mBrightness:I

    invoke-interface {p1, v0}, Lvenom/common/OnFlashLightChangedListener;->onBrightnessChanged(I)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toogle()V
    .locals 1

    invoke-virtual {p0}, Lvenom/common/FlashLight;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lvenom/common/FlashLight;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
