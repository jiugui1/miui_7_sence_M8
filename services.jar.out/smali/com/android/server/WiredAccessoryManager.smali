.class final Lcom/android/server/WiredAccessoryManager;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
    }
.end annotation


# static fields
.field private static final BIT_BEATS_NOTIFICATION:I = 0x1

.field private static final BIT_DQ_NOTIFICATION:I = 0x1

.field private static final BIT_FM_NOTIFICATION:I = 0x1

.field private static final BIT_HDMI_AUDIO:I = 0x10

.field private static final BIT_HEADSET:I = 0x1

.field private static final BIT_HEADSET_NO_MIC:I = 0x2

.field private static final BIT_LISTEN_NOTIFICATION:I = 0x1

.field private static final BIT_USB_ACCESSORY:I = 0x40

.field private static final BIT_USB_DEVICE:I = 0x20

.field private static final BIT_USB_HEADSET_ANLG:I = 0x4

.field private static final BIT_USB_HEADSET_DGTL:I = 0x8

.field private static final LOG:Z = true

.field private static final MSG_NEW_DEVICE_STATE:I = 0x1

.field private static final NAME_BEATS:Ljava/lang/String; = "Beats"

.field private static final NAME_DQ:Ljava/lang/String; = "DQ"

.field private static final NAME_FM:Ljava/lang/String; = "FM"

.field private static final NAME_H2W:Ljava/lang/String; = "h2w"

.field private static final NAME_HDMI:Ljava/lang/String; = "hdmi"

.field private static final NAME_HDMI_AUDIO:Ljava/lang/String; = "hdmi_audio"

.field private static final NAME_LISTEN:Ljava/lang/String; = "Listen_notification"

.field private static final NAME_USB_AUDIO:Ljava/lang/String; = "usb_audio"

.field private static final NAME_USB_DEVICE:Ljava/lang/String; = "usb_audio_class"

.field private static final SUPPORTED_HEADSETS:I = 0x7f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBootflag:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetState:I

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field private final mLock:Ljava/lang/Object;

.field private final mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

.field private mSwitchValues:I

.field private final mUseDevInputEventForAudioJack:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/android/server/WiredAccessoryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputManager"    # Lcom/android/server/input/InputManagerService;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    .line 100
    iput-boolean v6, p0, Lcom/android/server/WiredAccessoryManager;->mBootflag:Z

    .line 240
    new-instance v3, Lcom/android/server/WiredAccessoryManager$2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5, v7}, Lcom/android/server/WiredAccessoryManager$2;-><init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v3, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    .line 103
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 104
    .local v2, "pm":Landroid/os/PowerManager;
    const-string v3, "WiredAccessoryManager"

    invoke-virtual {v2, v7, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 105
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 106
    const-string v3, "audio"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 107
    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111004f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    .line 112
    new-instance v3, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {v3, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object v3, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.htc.intent.action.HTC_BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    new-instance v1, Lcom/android/server/WiredAccessoryManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryManager$1;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    .line 131
    .local v1, "mbootreceiver":Landroid/content/BroadcastReceiver;
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WiredAccessoryManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mBootflag:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/WiredAccessoryManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/server/WiredAccessoryManager;->mBootflag:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/WiredAccessoryManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager;->bootCompleted()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/WiredAccessoryManager;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDevicesState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/WiredAccessoryManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/WiredAccessoryManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V

    return-void
.end method

.method private bootCompleted()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/16 v3, -0x100

    .line 136
    iget-boolean v1, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    if-eqz v1, :cond_2

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "switchValues":I
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x2

    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 139
    or-int/lit8 v0, v0, 0x4

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x4

    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 142
    or-int/lit8 v0, v0, 0x10

    .line 144
    :cond_1
    const-wide/16 v1, 0x0

    const/16 v3, 0x14

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/server/WiredAccessoryManager;->notifyWiredAccessoryChanged(JII)V

    .line 148
    .end local v0    # "switchValues":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->init()V

    .line 149
    return-void
.end method

.method private setDeviceStateLocked(IIILjava/lang/String;)V
    .locals 6
    .param p1, "headset"    # I
    .param p2, "headsetState"    # I
    .param p3, "prevHeadsetState"    # I
    .param p4, "headsetName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 266
    and-int v2, p2, p1

    and-int v3, p3, p1

    if-eq v2, v3, :cond_0

    .line 270
    and-int v2, p2, p1

    if-eqz v2, :cond_1

    .line 271
    const/4 v1, 0x1

    .line 276
    .local v1, "state":I
    :goto_0
    if-ne p1, v5, :cond_2

    .line 277
    const/4 v0, 0x4

    .line 296
    .local v0, "device":I
    :goto_1
    sget-object v3, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v1, v5, :cond_9

    const-string v2, " connected"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0, v1, p4}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    .line 300
    .end local v0    # "device":I
    .end local v1    # "state":I
    :cond_0
    :goto_3
    return-void

    .line 273
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "state":I
    goto :goto_0

    .line 278
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 279
    const/16 v0, 0x8

    .restart local v0    # "device":I
    goto :goto_1

    .line 280
    .end local v0    # "device":I
    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    .line 281
    const/16 v0, 0x800

    .restart local v0    # "device":I
    goto :goto_1

    .line 282
    .end local v0    # "device":I
    :cond_4
    const/16 v2, 0x8

    if-ne p1, v2, :cond_5

    .line 283
    const/16 v0, 0x1000

    .restart local v0    # "device":I
    goto :goto_1

    .line 284
    .end local v0    # "device":I
    :cond_5
    const/16 v2, 0x10

    if-ne p1, v2, :cond_6

    .line 285
    const/16 v0, 0x400

    .restart local v0    # "device":I
    goto :goto_1

    .line 286
    .end local v0    # "device":I
    :cond_6
    const/16 v2, 0x20

    if-ne p1, v2, :cond_7

    .line 287
    const/16 v0, 0x4000

    .restart local v0    # "device":I
    goto :goto_1

    .line 288
    .end local v0    # "device":I
    :cond_7
    const/16 v2, 0x40

    if-ne p1, v2, :cond_8

    .line 289
    const/16 v0, 0x2000

    .restart local v0    # "device":I
    goto :goto_1

    .line 291
    .end local v0    # "device":I
    :cond_8
    sget-object v2, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDeviceState() invalid headset type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 296
    .restart local v0    # "device":I
    :cond_9
    const-string v2, " disconnected"

    goto :goto_2
.end method

.method private setDevicesState(IILjava/lang/String;)V
    .locals 4
    .param p1, "headsetState"    # I
    .param p2, "prevHeadsetState"    # I
    .param p3, "headsetName"    # Ljava/lang/String;

    .prologue
    .line 253
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 254
    const/16 v0, 0x7f

    .line 255
    .local v0, "allHeadsets":I
    const/4 v1, 0x1

    .local v1, "curHeadset":I
    :goto_0
    if-eqz v0, :cond_1

    .line 256
    and-int v2, v1, v0

    if-eqz v2, :cond_0

    .line 257
    :try_start_0
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDeviceStateLocked(IIILjava/lang/String;)V

    .line 258
    xor-int/lit8 v2, v1, -0x1

    and-int/2addr v0, v2

    .line 255
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    :cond_1
    monitor-exit v3

    .line 262
    return-void

    .line 261
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private switchCodeToString(II)Ljava/lang/String;
    .locals 2
    .param p1, "switchValues"    # I
    .param p2, "switchMask"    # I

    .prologue
    .line 303
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 304
    .local v0, "sb":Ljava/lang/StringBuffer;
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    .line 306
    const-string v1, "SW_HEADPHONE_INSERT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    :cond_0
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1

    .line 310
    const-string v1, "SW_MICROPHONE_INSERT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateLocked(Ljava/lang/String;I)V
    .locals 10
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "newState"    # I

    .prologue
    .line 197
    and-int/lit8 v2, p2, 0x7f

    .line 198
    .local v2, "headsetState":I
    and-int/lit8 v5, v2, 0x4

    .line 199
    .local v5, "usb_headset_anlg":I
    and-int/lit8 v6, v2, 0x8

    .line 200
    .local v6, "usb_headset_dgtl":I
    and-int/lit8 v1, v2, 0x3

    .line 201
    .local v1, "h2w_headset":I
    const/4 v0, 0x1

    .line 202
    .local v0, "h2wStateChange":Z
    const/4 v4, 0x1

    .line 203
    .local v4, "usbStateChange":Z
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "newName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " newState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " headsetState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " prev headsetState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget v7, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    if-ne v7, v2, :cond_0

    .line 209
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v8, "No state change."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_0
    return-void

    .line 216
    :cond_0
    const/4 v7, 0x3

    if-ne v1, v7, :cond_1

    .line 217
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v8, "Invalid combination, unsetting h2w flag"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v0, 0x0

    .line 222
    :cond_1
    const/4 v7, 0x4

    if-ne v5, v7, :cond_2

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    .line 223
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v8, "Invalid combination, unsetting usb flag"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v4, 0x0

    .line 226
    :cond_2
    if-nez v0, :cond_3

    if-nez v4, :cond_3

    .line 227
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v8, "invalid transition, returning ..."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :cond_3
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 233
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    iget v9, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    invoke-virtual {v7, v8, v2, v9, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 235
    .local v3, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 237
    iput v2, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    goto :goto_0
.end method


# virtual methods
.method public notifyWiredAccessoryChanged(JII)V
    .locals 4
    .param p1, "whenNanos"    # J
    .param p3, "switchValues"    # I
    .param p4, "switchMask"    # I

    .prologue
    .line 153
    sget-object v1, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyWiredAccessoryChanged: when="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bits="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3, p4}, Lcom/android/server/WiredAccessoryManager;->switchCodeToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 159
    :try_start_0
    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    xor-int/lit8 v3, p4, -0x1

    and-int/2addr v1, v3

    or-int/2addr v1, p3

    iput v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    .line 160
    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    and-int/lit8 v1, v1, 0x14

    sparse-switch v1, :sswitch_data_0

    .line 178
    const/4 v0, 0x0

    .line 182
    .local v0, "headset":I
    :goto_0
    const-string v1, "h2w"

    iget v3, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    and-int/lit8 v3, v3, -0x4

    or-int/2addr v3, v0

    invoke-direct {p0, v1, v3}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V

    .line 183
    monitor-exit v2

    .line 184
    return-void

    .line 162
    .end local v0    # "headset":I
    :sswitch_0
    const/4 v0, 0x0

    .line 163
    .restart local v0    # "headset":I
    goto :goto_0

    .line 166
    .end local v0    # "headset":I
    :sswitch_1
    const/4 v0, 0x2

    .line 167
    .restart local v0    # "headset":I
    goto :goto_0

    .line 170
    .end local v0    # "headset":I
    :sswitch_2
    const/4 v0, 0x1

    .line 171
    .restart local v0    # "headset":I
    goto :goto_0

    .line 174
    .end local v0    # "headset":I
    :sswitch_3
    const/4 v0, 0x1

    .line 175
    .restart local v0    # "headset":I
    goto :goto_0

    .line 183
    .end local v0    # "headset":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 160
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x10 -> :sswitch_3
        0x14 -> :sswitch_2
    .end sparse-switch
.end method
