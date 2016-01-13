.class Landroid/media/MediaPluginDLNA;
.super Landroid/media/MediaPlugin;
.source "MediaPluginDLNA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPluginDLNA$TVListener;,
        Landroid/media/MediaPluginDLNA$switchDimModeTimerTask;,
        Landroid/media/MediaPluginDLNA$EventHandler;,
        Landroid/media/MediaPluginDLNA$RendererListener;,
        Landroid/media/MediaPluginDLNA$ControllerListener;
    }
.end annotation


# static fields
.field public static final MEDIA_DLNAMIDDLELAYER_CONNECTED:I = 0x1000

.field public static final MEDIA_END:I = 0x1200

.field public static final MEDIA_ERROR:I = 0x1100

.field public static final MEDIA_IDLE:I = 0x1001

.field public static final MEDIA_INITIALIZED:I = 0x1002

.field public static final MEDIA_PAUSED:I = 0x1020

.field public static final MEDIA_PLAY_COMPLETED:I = 0x1080

.field public static final MEDIA_PREPARED:I = 0x1008

.field public static final MEDIA_PREPARE_DLNA_THUMBNAIL:I = 0x2001

.field public static final MEDIA_PREPARING:I = 0x1004

.field public static final MEDIA_SEEKED:I = 0x1400

.field public static final MEDIA_SEEK_COMPLETED:I = 0x2000

.field public static final MEDIA_STARTED:I = 0x1010

.field public static final MEDIA_STOPPED:I = 0x1040

.field public static final MEDIA_TRANSITIONING:I = 0x1800

.field public static final STATUS_CHANGE:I = 0x2010

.field public static final STATUS_ERROR:I = 0x2021

.field public static final STATUS_INIT_FAILED:I = 0x2041

.field public static final STATUS_PREPARE:I = 0x2080

.field public static final STATUS_PREPARE_FAILED:I = 0x2082

.field public static final STATUS_PREPARE_SUCCESS:I = 0x2081

.field public static final STATUS_RESPONSE:I = 0x2040

.field private static final TAG:Ljava/lang/String; = "[MediaPluginDLNA]"

.field private static sRegionCode:Ljava/lang/Integer;


# instance fields
.field private final COMMAND_SETAV_TIMEOUT:I

.field private final COMMAND_START_TIMEOUT:I

.field private final CONNECT_DELAY:I

.field private final FIND_MLHD_TIMEOUT:I

.field private MediaPluginDLNACookie:I

.field private final NOT_SEEKING:I

.field private final PAUSE_DELAY:I

.field private final SEEKING:I

.field private final SEEK_DELAY:I

.field private clientListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

.field private volatile ctx:Landroid/content/Context;

.field private eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;

.field private mControllerListener:Landroid/media/MediaPluginDLNA$ControllerListener;

.field private mDLNALock:Ljava/lang/Object;

.field private volatile mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

.field private mDataPath:Ljava/lang/String;

.field private final mDimModeDelay:I

.field private final mDimModeTimeout:I

.field private volatile mDimModeTimer:Ljava/util/Timer;

.field private mDmrID:Ljava/lang/String;

.field private mDuration:I

.field private mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

.field private mPackageName:Ljava/lang/String;

.field private final mPackageNamePrefix:Ljava/lang/String;

.field private final mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

.field private mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

.field private mPreSeekMSec:I

.field private mRendererListener:Landroid/media/MediaPluginDLNA$RendererListener;

.field private mSeeking:Ljava/lang/Integer;

.field private volatile mState:Ljava/lang/Integer;

.field private mStreamingPath:Z

.field private mTvHelper:Landroid/media/medialinkhd/HtcTvDisplayHelper;

.field private mbDualScreen:Z

.field private mbLocalProxy:Z

.field private statusBarData:Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;

.field private final switchDimModeOff:Ljava/lang/String;

.field private final switchDimModeOn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    sput-object v0, Landroid/media/MediaPluginDLNA;->sRegionCode:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/media/MediaPlugin$OnEventListener;Z)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "eventListener"    # Landroid/media/MediaPlugin$OnEventListener;
    .param p4, "bEnableDualScreen"    # Z

    .prologue
    const/16 v8, 0x2041

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 126
    invoke-direct {p0}, Landroid/media/MediaPlugin;-><init>()V

    .line 56
    const/4 v3, -0x1

    iput v3, p0, Landroid/media/MediaPluginDLNA;->MediaPluginDLNACookie:I

    .line 57
    const-string v3, "com.android.server.HtcDongleMode.ON"

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->switchDimModeOn:Ljava/lang/String;

    .line 58
    const-string v3, "com.android.server.HtcDongleMode.OFF"

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->switchDimModeOff:Ljava/lang/String;

    .line 59
    iput-object v5, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    .line 60
    new-instance v3, Landroid/media/MediaPluginDLNA$ControllerListener;

    invoke-direct {v3, p0, v5}, Landroid/media/MediaPluginDLNA$ControllerListener;-><init>(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$1;)V

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->mControllerListener:Landroid/media/MediaPluginDLNA$ControllerListener;

    .line 61
    new-instance v3, Landroid/media/MediaPluginDLNA$RendererListener;

    invoke-direct {v3, p0, v5}, Landroid/media/MediaPluginDLNA$RendererListener;-><init>(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$1;)V

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->mRendererListener:Landroid/media/MediaPluginDLNA$RendererListener;

    .line 62
    iput-object v5, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    .line 63
    const-string v3, ""

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    .line 64
    const-string v3, ""

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;

    .line 65
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v7}, Ljava/lang/Integer;-><init>(I)V

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Ljava/lang/Integer;

    .line 66
    iput-boolean v7, p0, Landroid/media/MediaPluginDLNA;->mStreamingPath:Z

    .line 67
    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x1001

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->mState:Ljava/lang/Integer;

    .line 68
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->mDLNALock:Ljava/lang/Object;

    .line 69
    iput v7, p0, Landroid/media/MediaPluginDLNA;->mPreSeekMSec:I

    .line 70
    new-instance v3, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;

    invoke-direct {v3}, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;-><init>()V

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->statusBarData:Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;

    .line 96
    iput v7, p0, Landroid/media/MediaPluginDLNA;->CONNECT_DELAY:I

    .line 97
    const/16 v3, 0x64

    iput v3, p0, Landroid/media/MediaPluginDLNA;->PAUSE_DELAY:I

    .line 98
    const/16 v3, 0x3e8

    iput v3, p0, Landroid/media/MediaPluginDLNA;->SEEK_DELAY:I

    .line 99
    const/16 v3, 0x1f4

    iput v3, p0, Landroid/media/MediaPluginDLNA;->COMMAND_START_TIMEOUT:I

    .line 100
    const/16 v3, 0xbb8

    iput v3, p0, Landroid/media/MediaPluginDLNA;->COMMAND_SETAV_TIMEOUT:I

    .line 101
    const v3, 0xea60

    iput v3, p0, Landroid/media/MediaPluginDLNA;->FIND_MLHD_TIMEOUT:I

    .line 102
    iput v7, p0, Landroid/media/MediaPluginDLNA;->NOT_SEEKING:I

    .line 103
    const/4 v3, 0x1

    iput v3, p0, Landroid/media/MediaPluginDLNA;->SEEKING:I

    .line 105
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    .line 106
    iget-object v3, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    .line 111
    iput-object v5, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    .line 112
    const v3, 0xc350

    iput v3, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimeout:I

    .line 113
    const/16 v3, 0x2710

    iput v3, p0, Landroid/media/MediaPluginDLNA;->mDimModeDelay:I

    .line 115
    iput-object v5, p0, Landroid/media/MediaPluginDLNA;->mTvHelper:Landroid/media/medialinkhd/HtcTvDisplayHelper;

    .line 117
    iput-boolean v7, p0, Landroid/media/MediaPluginDLNA;->mbLocalProxy:Z

    .line 118
    const-string v3, "PackageName://"

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->mPackageNamePrefix:Ljava/lang/String;

    .line 119
    const-string v3, ""

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->mPackageName:Ljava/lang/String;

    .line 120
    iput-boolean v7, p0, Landroid/media/MediaPluginDLNA;->mbDualScreen:Z

    .line 121
    iput v7, p0, Landroid/media/MediaPluginDLNA;->mDuration:I

    .line 167
    new-instance v3, Landroid/media/MediaPluginDLNA$1;

    invoke-direct {v3, p0}, Landroid/media/MediaPluginDLNA$1;-><init>(Landroid/media/MediaPluginDLNA;)V

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->clientListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 127
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    .line 128
    iput-object p3, p0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    .line 129
    new-instance v3, Landroid/media/MediaPluginDLNA$EventHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/media/MediaPluginDLNA$EventHandler;-><init>(Landroid/media/MediaPluginDLNA;Landroid/os/Looper;)V

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;

    .line 130
    iput-object p2, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    .line 131
    iput-boolean p4, p0, Landroid/media/MediaPluginDLNA;->mbDualScreen:Z

    .line 132
    const-string v3, "[MediaPluginDLNA]"

    const-string v4, "[InitDLNA]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v3, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    if-eqz v3, :cond_3

    .line 135
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    const-string v4, "MEDIA_PLAYER_DLNA_PLUGIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 136
    .local v2, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 137
    .local v0, "PE":Landroid/content/SharedPreferences$Editor;
    const-string v3, "MediaPluginDLNACookie"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/media/MediaPluginDLNA;->MediaPluginDLNACookie:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    iget v4, p0, Landroid/media/MediaPluginDLNA;->MediaPluginDLNACookie:I

    invoke-static {v3, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isCookieValid(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 138
    :cond_0
    iget-object v3, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    invoke-static {v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->generateNewSessionCookie(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Landroid/media/MediaPluginDLNA;->MediaPluginDLNACookie:I

    .line 139
    :cond_1
    const-string v3, "MediaPluginDLNACookie"

    iget v4, p0, Landroid/media/MediaPluginDLNA;->MediaPluginDLNACookie:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    const-string v3, "[MediaPluginDLNA]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[InitDLNA]cookie: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/media/MediaPluginDLNA;->MediaPluginDLNACookie:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v3, Landroid/media/medialinkhd/HtcDLNAServiceManager;

    iget-object v4, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    iget v5, p0, Landroid/media/MediaPluginDLNA;->MediaPluginDLNACookie:I

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Landroid/media/medialinkhd/HtcDLNAServiceManager;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    .line 143
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->releaseTVHelper()V

    .line 144
    new-instance v3, Landroid/media/medialinkhd/HtcTvDisplayHelper;

    iget-object v4, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    new-instance v5, Landroid/media/MediaPluginDLNA$TVListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/media/MediaPluginDLNA$TVListener;-><init>(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$1;)V

    invoke-direct {v3, v4, v5}, Landroid/media/medialinkhd/HtcTvDisplayHelper;-><init>(Landroid/content/Context;Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;)V

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->mTvHelper:Landroid/media/medialinkhd/HtcTvDisplayHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v0    # "PE":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "settings":Landroid/content/SharedPreferences;
    :goto_0
    iget-object v3, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    if-nez v3, :cond_2

    .line 150
    const-string v3, "[MediaPluginDLNA]"

    const-string v4, "[InitDLNA] mDLNAManager == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v3, p0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    invoke-interface {v3, v8, v7}, Landroid/media/MediaPlugin$OnEventListener;->onResponse(II)V

    .line 165
    :goto_1
    return-void

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "[MediaPluginDLNA]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[InitDLNA] init HtcDLNAServiceManager failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v3, p0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    invoke-interface {v3, v8, v7}, Landroid/media/MediaPlugin$OnEventListener;->onResponse(II)V

    goto :goto_0

    .line 154
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v3, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    iget-object v4, p0, Landroid/media/MediaPluginDLNA;->clientListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    invoke-virtual {v3, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setDLNAServiceStatusListener(Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;)I

    .line 155
    iget-object v3, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    iget-object v4, p0, Landroid/media/MediaPluginDLNA;->mControllerListener:Landroid/media/MediaPluginDLNA$ControllerListener;

    invoke-virtual {v3, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setControllerStatusListener(Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;)I

    .line 156
    iget-object v3, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    iget-object v4, p0, Landroid/media/MediaPluginDLNA;->mRendererListener:Landroid/media/MediaPluginDLNA$RendererListener;

    invoke-virtual {v3, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setRendererStatusListener(Landroid/media/medialinkhd/HtcDLNARendererStatusListener;)I

    .line 158
    invoke-virtual {p0}, Landroid/media/MediaPluginDLNA;->connect()V

    .line 159
    const-string v3, "[MediaPluginDLNA]"

    const-string v4, "[InitDLNA] out"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 161
    :cond_3
    const-string v3, "[MediaPluginDLNA]"

    const-string v4, "[InitDLNA] ctx = null... failed!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v3, p0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    invoke-interface {v3, v8, v7}, Landroid/media/MediaPlugin$OnEventListener;->onResponse(II)V

    .line 163
    const-string v3, "[MediaPluginDLNA]"

    const-string v4, "[InitDLNA] out"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$1000(Landroid/media/MediaPluginDLNA;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPluginDLNA;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->leaveDimMode()V

    return-void
.end method

.method static synthetic access$1100(Landroid/media/MediaPluginDLNA;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPluginDLNA;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/media/MediaPluginDLNA;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPluginDLNA;

    .prologue
    .line 54
    iget v0, p0, Landroid/media/MediaPluginDLNA;->mPreSeekMSec:I

    return v0
.end method

.method static synthetic access$1202(Landroid/media/MediaPluginDLNA;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPluginDLNA;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Landroid/media/MediaPluginDLNA;->mPreSeekMSec:I

    return p1
.end method

.method static synthetic access$1302(Landroid/media/MediaPluginDLNA;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPluginDLNA;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA$EventHandler;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPluginDLNA;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/media/MediaPluginDLNA;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPluginDLNA;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MediaPluginDLNA;)Landroid/media/medialinkhd/HtcDLNAServiceManager;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPluginDLNA;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/MediaPluginDLNA;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPluginDLNA;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$402(Landroid/media/MediaPluginDLNA;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPluginDLNA;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 54
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$600(Landroid/media/MediaPluginDLNA;)Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPluginDLNA;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->statusBarData:Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPluginDLNA;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    return-object v0
.end method

.method static synthetic access$800(Landroid/media/MediaPluginDLNA;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPluginDLNA;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/media/MediaPluginDLNA;->setState(I)V

    return-void
.end method

.method static synthetic access$900(Landroid/media/MediaPluginDLNA;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPluginDLNA;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->enterDimMode()V

    return-void
.end method

.method private enterDimMode()V
    .locals 3

    .prologue
    .line 681
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 682
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[enterDimMode]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.HtcDongleMode.ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 684
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 686
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static getIsRegionSupported()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 951
    sget-object v5, Landroid/media/MediaPluginDLNA;->sRegionCode:Ljava/lang/Integer;

    if-nez v5, :cond_0

    .line 952
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v1

    .line 954
    .local v1, "customizationManager":Lcom/htc/customization/HtcCustomizationManager;
    if-eqz v1, :cond_0

    .line 955
    const-string v5, "system"

    invoke-virtual {v1, v5, v4, v4}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    .line 957
    .local v2, "customizationReader":Lcom/htc/customization/HtcCustomizationReader;
    if-eqz v2, :cond_1

    .line 959
    const-string v5, "region"

    invoke-interface {v2, v5, v3}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sput-object v5, Landroid/media/MediaPluginDLNA;->sRegionCode:Ljava/lang/Integer;

    .line 975
    .end local v2    # "customizationReader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_0
    :goto_0
    sget-object v5, Landroid/media/MediaPluginDLNA;->sRegionCode:Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 976
    const/4 v0, 0x1

    .line 977
    .local v0, "NORTH_AMERICA":I
    sget-object v5, Landroid/media/MediaPluginDLNA;->sRegionCode:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_2

    .line 979
    const-string v4, "[MediaPluginDLNA]"

    const-string v5, "[getIsRegionSupported] In North America, Can\'t use DLNAOutput"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    .end local v0    # "NORTH_AMERICA":I
    :goto_1
    return v3

    .line 965
    .restart local v2    # "customizationReader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_1
    const-string v5, "[MediaPluginDLNA]"

    const-string v6, "[getIsRegionSupported] HtcCustomizationReader is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 984
    .end local v2    # "customizationReader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_2
    const-string v3, "[MediaPluginDLNA]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getIsRegionSupported] sRegionCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/media/MediaPluginDLNA;->sRegionCode:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 986
    goto :goto_1
.end method

.method public static getMirrorModeState(Lcom/htc/service/WirelessDisplayManager;)I
    .locals 4
    .param p0, "wdMgr"    # Lcom/htc/service/WirelessDisplayManager;

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/htc/service/WirelessDisplayManager;->getMirrorModeState()I

    move-result v0

    .line 847
    .local v0, "state":I
    const-string v1, "[MediaPluginDLNA]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getMirrorModeState][Return state]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    return v0
.end method

.method private getState()I
    .locals 2

    .prologue
    .line 711
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mState:Ljava/lang/Integer;

    monitor-enter v1

    .line 712
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1

    return v0

    .line 713
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getWirelessDisplayStatus(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 722
    if-nez p0, :cond_0

    .line 723
    const-string v2, "[MediaPluginDLNA]"

    const-string v3, "context is null, can\'t getMirrorDisplayStatus!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :goto_0
    return v1

    .line 726
    :cond_0
    const-string v2, "wireless_display"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .line 727
    .local v0, "mgr":Lcom/htc/service/WirelessDisplayManager;
    if-nez v0, :cond_1

    .line 728
    const-string v2, "[MediaPluginDLNA]"

    const-string v3, "getSystemService failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 731
    :cond_1
    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 732
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "in Mirror mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const/4 v1, 0x1

    goto :goto_0

    .line 744
    :cond_2
    const-string v2, "[MediaPluginDLNA]"

    const-string v3, "not in Mirror mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isStreamingPath(Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 913
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 917
    :cond_0
    :goto_0
    return v0

    .line 914
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rtsp://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 915
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 917
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStreamingPathSupportedByMediaLinkHD(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 921
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 922
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 928
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[isStreamingPathSupportedByMediaLinkHD] Contains Https. Dongle doesn\'t support https. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 931
    :cond_1
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[isStreamingPathSupportedByMediaLinkHD] dongle support http"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const/4 v0, 0x1

    goto :goto_1

    .line 934
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 935
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[isStreamingPathSupportedByMediaLinkHD] dongle doesn\'t support https"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 936
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rtsp://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[isStreamingPathSupportedByMediaLinkHD] dongle doesn\'t support rtsp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private leaveDimMode()V
    .locals 3

    .prologue
    .line 689
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 690
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[leaveDimMode]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.HtcDongleMode.OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 692
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 694
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private releaseTVHelper()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 890
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaPluginDLNA;->mDLNALock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 891
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mTvHelper:Landroid/media/medialinkhd/HtcTvDisplayHelper;

    if-eqz v1, :cond_0

    .line 892
    const-string v1, "[MediaPluginDLNA]"

    const-string v3, "[releaseTVHelper]release TVHelper"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mTvHelper:Landroid/media/medialinkhd/HtcTvDisplayHelper;

    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcTvDisplayHelper;->release()V

    .line 894
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->mTvHelper:Landroid/media/medialinkhd/HtcTvDisplayHelper;

    .line 896
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 900
    :goto_0
    iput-object v4, p0, Landroid/media/MediaPluginDLNA;->mTvHelper:Landroid/media/medialinkhd/HtcTvDisplayHelper;

    .line 902
    return-void

    .line 896
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_4
    const-string v1, "[MediaPluginDLNA]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[releaseTVHelper]release TVHelper failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 900
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    iput-object v4, p0, Landroid/media/MediaPluginDLNA;->mTvHelper:Landroid/media/medialinkhd/HtcTvDisplayHelper;

    throw v1
.end method

.method private declared-synchronized resetParams()V
    .locals 4

    .prologue
    .line 598
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaPluginDLNA;->mDLNALock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 599
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    if-eqz v1, :cond_3

    .line 600
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setAutoReleaseAfterPlayCompleted(Z)I

    .line 601
    iget-boolean v1, p0, Landroid/media/MediaPluginDLNA;->mbLocalProxy:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/media/MediaPluginDLNA;->mbDualScreen:Z

    if-nez v1, :cond_1

    .line 602
    :cond_0
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->release()I

    .line 603
    const-string v1, "[MediaPluginDLNA]"

    const-string v3, "[resetParams]after release"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_1
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->disconnect()V

    .line 606
    const-string v1, "[MediaPluginDLNA]"

    const-string v3, "[resetParams]after disconnect"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-boolean v1, p0, Landroid/media/MediaPluginDLNA;->mbLocalProxy:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/media/MediaPluginDLNA;->mbDualScreen:Z

    if-nez v1, :cond_3

    .line 608
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    .line 610
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    :try_start_2
    iget-boolean v1, p0, Landroid/media/MediaPluginDLNA;->mbLocalProxy:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Landroid/media/MediaPluginDLNA;->mbDualScreen:Z

    if-nez v1, :cond_5

    .line 615
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 619
    :cond_5
    :goto_0
    :try_start_3
    iget-object v2, p0, Landroid/media/MediaPluginDLNA;->mDLNALock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 620
    :try_start_4
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    if-eqz v1, :cond_6

    .line 621
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 622
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 623
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    .line 625
    :cond_6
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 629
    const/4 v1, 0x0

    :try_start_5
    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    .line 632
    :goto_1
    iget-boolean v1, p0, Landroid/media/MediaPluginDLNA;->mbLocalProxy:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Landroid/media/MediaPluginDLNA;->mbDualScreen:Z

    if-nez v1, :cond_8

    .line 633
    :cond_7
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/media/MediaPluginDLNA;->setWirelessDisplayStatus(Landroid/content/Context;Z)V

    .line 634
    :cond_8
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->releaseTVHelper()V

    .line 635
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->leaveDimMode()V

    .line 636
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/media/MediaPluginDLNA;->setSeeking(I)V

    .line 637
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    .line 638
    invoke-virtual {p0}, Landroid/media/MediaPluginDLNA;->unlockCommand()V

    .line 639
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/MediaPluginDLNA;->mbLocalProxy:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 640
    monitor-exit p0

    return-void

    .line 610
    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_8
    const-string v1, "[MediaPluginDLNA]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[resetParams]reset DLNA params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 614
    :try_start_9
    iget-boolean v1, p0, Landroid/media/MediaPluginDLNA;->mbLocalProxy:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Landroid/media/MediaPluginDLNA;->mbDualScreen:Z

    if-nez v1, :cond_5

    .line 615
    :cond_9
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    .line 598
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 614
    :catchall_2
    move-exception v1

    :try_start_a
    iget-boolean v2, p0, Landroid/media/MediaPluginDLNA;->mbLocalProxy:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Landroid/media/MediaPluginDLNA;->mbDualScreen:Z

    if-nez v2, :cond_b

    .line 615
    :cond_a
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    .line 614
    :cond_b
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 625
    :catchall_3
    move-exception v1

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 626
    :catch_1
    move-exception v0

    .line 627
    .restart local v0    # "ex":Ljava/lang/Exception;
    :try_start_d
    const-string v1, "[MediaPluginDLNA]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[resetParams]reset dim params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 629
    const/4 v1, 0x0

    :try_start_e
    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    goto :goto_1

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_4
    move-exception v1

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 705
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mState:Ljava/lang/Integer;

    monitor-enter v1

    .line 706
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mState:Ljava/lang/Integer;

    .line 707
    monitor-exit v1

    .line 708
    return-void

    .line 707
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setWirelessDisplayStatus(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # Z

    .prologue
    .line 852
    if-nez p0, :cond_0

    .line 853
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "mContext is null, can\'t setMirrorDisplayOnOff!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :goto_0
    return-void

    .line 856
    :cond_0
    const-string v2, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWirelessDisplayStatus to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_1

    const-string v1, "TRUE"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const-string v1, "wireless_display"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .line 858
    .local v0, "mgr":Lcom/htc/service/WirelessDisplayManager;
    if-nez v0, :cond_2

    .line 859
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "getSystemService failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 856
    .end local v0    # "mgr":Lcom/htc/service/WirelessDisplayManager;
    :cond_1
    const-string v1, "FALSE"

    goto :goto_1

    .line 863
    .restart local v0    # "mgr":Lcom/htc/service/WirelessDisplayManager;
    :cond_2
    if-eqz p1, :cond_3

    .line 864
    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->getMirrorModeState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 865
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "MirrorState is ENABLED."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 869
    :cond_3
    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->getMirrorModeState()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    .line 870
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "MirrorState is PAUSED."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 875
    :cond_4
    invoke-virtual {v0, p1}, Lcom/htc/service/WirelessDisplayManager;->setMirrorDisplayOnOff(Z)I

    goto :goto_0
.end method


# virtual methods
.method public connect()V
    .locals 10

    .prologue
    .line 410
    iget-object v7, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    if-eqz v7, :cond_1

    .line 411
    const-string v7, "[MediaPluginDLNA]"

    const-string v8, "[connect]"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v7, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 416
    .local v6, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v7, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 417
    .local v5, "packageName":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 418
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iput-object v5, p0, Landroid/media/MediaPluginDLNA;->mPackageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_1
    check-cast v7, Ljava/lang/String;

    move-object v1, v7

    check-cast v1, Ljava/lang/String;

    .line 427
    .local v1, "applicationName":Ljava/lang/String;
    :try_start_1
    iget-object v7, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 428
    .local v3, "currentAPIntent":Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 429
    iget-object v7, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0x8000000

    invoke-static {v7, v8, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 430
    .local v2, "contentIntent":Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    .line 431
    iget-object v7, p0, Landroid/media/MediaPluginDLNA;->statusBarData:Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;

    invoke-virtual {v7, v2}, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->setContentIntent(Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 436
    .end local v2    # "contentIntent":Landroid/app/PendingIntent;
    .end local v3    # "currentAPIntent":Landroid/content/Intent;
    :cond_0
    :goto_2
    iget-object v7, p0, Landroid/media/MediaPluginDLNA;->statusBarData:Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;

    invoke-virtual {v7, v1}, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->setAppName(Ljava/lang/String;)V

    .line 437
    iget-object v7, p0, Landroid/media/MediaPluginDLNA;->statusBarData:Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;

    invoke-virtual {v7, v1}, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->setControllerName(Ljava/lang/String;)V

    .line 438
    iget-object v7, p0, Landroid/media/MediaPluginDLNA;->statusBarData:Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->setFilterType(I)V

    .line 440
    iget-object v7, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v7}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->connect()I

    .line 442
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "applicationName":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    return-void

    .line 419
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v4

    .line 420
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v5, 0x0

    .line 421
    .restart local v5    # "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 424
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const-string v7, ""

    goto :goto_1

    .line 433
    .restart local v1    # "applicationName":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 434
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public getCurrentState()I
    .locals 1

    .prologue
    .line 465
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 909
    iget v0, p0, Landroid/media/MediaPluginDLNA;->mDuration:I

    return v0
.end method

.method public handleGetCurrentPosition()I
    .locals 2

    .prologue
    .line 546
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    if-nez v1, :cond_0

    .line 547
    const/4 v0, 0x0

    .line 549
    :goto_0
    return v0

    .line 548
    :cond_0
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getCurrentPosition()I

    move-result v1

    mul-int/lit16 v0, v1, 0x3e8

    .line 549
    .local v0, "nPos":I
    goto :goto_0
.end method

.method public handleOnBufferUpdate(I)V
    .locals 2
    .param p1, "percent"    # I

    .prologue
    .line 653
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleOnBufferUpdate]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    return-void
.end method

.method public handleOnPlayComplete()V
    .locals 2

    .prologue
    .line 648
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleOnPlayComplete]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/16 v0, 0x1080

    invoke-direct {p0, v0}, Landroid/media/MediaPluginDLNA;->setState(I)V

    .line 650
    return-void
.end method

.method public handleOnPrepared()V
    .locals 3

    .prologue
    .line 643
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const/16 v0, 0x1008

    invoke-direct {p0, v0}, Landroid/media/MediaPluginDLNA;->setState(I)V

    .line 645
    return-void
.end method

.method public handlePause()V
    .locals 3

    .prologue
    .line 485
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[handlePause]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    if-nez v1, :cond_0

    .line 487
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[handlePause][SKIP][manager is null]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :goto_0
    return-void

    .line 491
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->pause()I

    move-result v1

    const/16 v2, -0x3e8

    if-eq v1, v2, :cond_1

    .line 492
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "handlePause failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 495
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v1, 0xbb8

    :try_start_1
    invoke-virtual {p0, v1}, Landroid/media/MediaPluginDLNA;->lockCommand(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public declared-synchronized handleRelease()V
    .locals 3

    .prologue
    const/16 v2, 0x1200

    .line 589
    monitor-enter p0

    :try_start_0
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleRelease]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 591
    const/16 v0, 0x1200

    invoke-direct {p0, v0}, Landroid/media/MediaPluginDLNA;->setState(I)V

    .line 592
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->resetParams()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    :cond_0
    monitor-exit p0

    return-void

    .line 589
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleReset()V
    .locals 2

    .prologue
    .line 581
    monitor-enter p0

    :try_start_0
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleReset]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v0

    const/16 v1, 0x1200

    if-eq v0, v1, :cond_0

    .line 583
    const/16 v0, 0x1001

    invoke-direct {p0, v0}, Landroid/media/MediaPluginDLNA;->setState(I)V

    .line 584
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->resetParams()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    :cond_0
    monitor-exit p0

    return-void

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleSeekComplete()V
    .locals 2

    .prologue
    .line 553
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleSeekComplete]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-void
.end method

.method public handleSeekTo(I)V
    .locals 5
    .param p1, "msec"    # I

    .prologue
    const/16 v4, 0x1080

    .line 502
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[handleSeekTo]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/media/MediaPluginDLNA;->isSeeking()Z

    move-result v1

    if-nez v1, :cond_2

    .line 506
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/media/MediaPluginDLNA;->setSeeking(I)V

    .line 507
    const-string v1, "[MediaPluginDLNA]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleSeekTo] msec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit16 v3, p1, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    div-int/lit16 v2, p1, 0x3e8

    invoke-virtual {v1, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->seekTo(I)I

    move-result v1

    const/16 v2, -0x3e8

    if-eq v1, v2, :cond_1

    .line 509
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/media/MediaPluginDLNA;->setSeeking(I)V

    .line 510
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 511
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    const/16 v2, 0x2000

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/media/MediaPlugin$OnEventListener;->onStateChanged(II)V

    .line 512
    :cond_0
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "handleSeekTo failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :goto_0
    return-void

    .line 516
    :cond_1
    const/16 v1, 0xbb8

    invoke-virtual {p0, v1}, Landroid/media/MediaPluginDLNA;->lockCommand(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 518
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v1

    if-eq v1, v4, :cond_3

    .line 519
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    const/16 v2, 0x2000

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/media/MediaPlugin$OnEventListener;->onStateChanged(II)V

    .line 520
    :cond_3
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "seeking is in progress, reject this seek..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public handleSetDataSource(Ljava/lang/String;)V
    .locals 22
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 323
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/media/MediaPluginDLNA;->setSeeking(I)V

    .line 324
    const-string v6, ""

    .line 325
    .local v6, "localIp":Ljava/lang/String;
    const-string v8, ""

    .line 327
    .local v8, "mirrorInterface":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "wireless_display"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/service/WirelessDisplayManager;

    .line 328
    .local v7, "mgr":Lcom/htc/service/WirelessDisplayManager;
    if-eqz v7, :cond_0

    .line 329
    invoke-virtual {v7}, Lcom/htc/service/WirelessDisplayManager;->getInterface()Ljava/lang/String;

    move-result-object v8

    .line 330
    const-string v17, "[MediaPluginDLNA]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "NetworkInterface: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v5

    .line 334
    .local v5, "ifaces":Ljava/util/Enumeration;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 335
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 336
    .local v4, "iface":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 337
    const-string v17, "[MediaPluginDLNA]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "skip Real iface addresses: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 360
    .end local v4    # "iface":Ljava/net/NetworkInterface;
    .end local v5    # "ifaces":Ljava/util/Enumeration;
    .end local v7    # "mgr":Lcom/htc/service/WirelessDisplayManager;
    :catch_0
    move-exception v3

    .line 361
    .local v3, "e":Ljava/lang/Exception;
    const-string v17, "[MediaPluginDLNA]"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    .line 365
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_3

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "http://localhost"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "http://localhost"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "http://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    .line 368
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/media/MediaPluginDLNA;->mbLocalProxy:Z

    .line 376
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "MEDIA_PLAYER_DLNA_PLUGIN"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 377
    .local v12, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 378
    .local v2, "PE":Landroid/content/SharedPreferences$Editor;
    const-string v17, "MediaPluginDLNAPath"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 381
    .local v9, "oldPath":Ljava/lang/String;
    const-string v17, "[MediaPluginDLNA]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[handleSetDataSource]current state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v17

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaPluginDLNA;->mbLocalProxy:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaPluginDLNA;->mbDualScreen:Z

    move/from16 v17, v0

    if-nez v17, :cond_d

    .line 386
    :cond_5
    const-string v17, "MediaPluginDLNAPath"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 387
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 389
    const/16 v17, 0x1002

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/media/MediaPluginDLNA;->setState(I)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/media/MediaPluginDLNA;->isStreamingPath(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setAVTransportURI(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x3e8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 394
    const/16 v17, 0x1100

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/media/MediaPluginDLNA;->setState(I)V

    .line 395
    const-string v17, "[MediaPluginDLNA]"

    const-string v18, "onError: setAVTransportURI failed!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/media/MediaPlugin$OnEventListener;->onError(II)V

    .line 407
    :cond_6
    :goto_2
    return-void

    .line 340
    .end local v2    # "PE":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "oldPath":Ljava/lang/String;
    .end local v12    # "settings":Landroid/content/SharedPreferences;
    .restart local v4    # "iface":Ljava/net/NetworkInterface;
    .restart local v5    # "ifaces":Ljava/util/Enumeration;
    .restart local v7    # "mgr":Lcom/htc/service/WirelessDisplayManager;
    :cond_7
    :try_start_1
    const-string v17, "[MediaPluginDLNA]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Real iface addresses: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getSubInterfaces()Ljava/util/Enumeration;

    move-result-object v16

    .line 342
    .local v16, "virtualIfaces":Ljava/util/Enumeration;
    :cond_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 343
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/net/NetworkInterface;

    .line 344
    .local v15, "viface":Ljava/net/NetworkInterface;
    const-string v17, "[MediaPluginDLNA]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " VIRT "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {v15}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v14

    .line 346
    .local v14, "vaddrs":Ljava/util/Enumeration;
    :goto_3
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 347
    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/InetAddress;

    .line 348
    .local v13, "vaddr":Ljava/net/InetAddress;
    const-string v17, "[MediaPluginDLNA]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "vaddr \t"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 351
    .end local v13    # "vaddr":Ljava/net/InetAddress;
    .end local v14    # "vaddrs":Ljava/util/Enumeration;
    .end local v15    # "viface":Ljava/net/NetworkInterface;
    :cond_9
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v11

    .line 352
    .local v11, "raddrs":Ljava/util/Enumeration;
    :cond_a
    :goto_4
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 353
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/InetAddress;

    .line 354
    .local v10, "raddr":Ljava/net/InetAddress;
    instance-of v0, v10, Ljava/net/Inet4Address;

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 355
    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 356
    const-string v17, "[MediaPluginDLNA]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "raddr \t"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 370
    .end local v4    # "iface":Ljava/net/NetworkInterface;
    .end local v5    # "ifaces":Ljava/util/Enumeration;
    .end local v7    # "mgr":Lcom/htc/service/WirelessDisplayManager;
    .end local v10    # "raddr":Ljava/net/InetAddress;
    .end local v11    # "raddrs":Ljava/util/Enumeration;
    .end local v16    # "virtualIfaces":Ljava/util/Enumeration;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "http://127.0.0.1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "http://127.0.0.1"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "http://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    .line 372
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/media/MediaPluginDLNA;->mbLocalProxy:Z

    goto/16 :goto_1

    .line 399
    .restart local v2    # "PE":Landroid/content/SharedPreferences$Editor;
    .restart local v9    # "oldPath":Ljava/lang/String;
    .restart local v12    # "settings":Landroid/content/SharedPreferences;
    :cond_c
    const-string v17, "[MediaPluginDLNA]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[handleSetDataSource] setStreamingDataSource: thumbnail: PackageName://"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "PackageName://"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v17 .. v20}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setStreamingDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 404
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v17

    const/16 v18, 0x1100

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    move-object/from16 v17, v0

    const/16 v18, 0x2080

    const/16 v19, 0x2081

    invoke-interface/range {v17 .. v19}, Landroid/media/MediaPlugin$OnEventListener;->onResponse(II)V

    goto/16 :goto_2
.end method

.method public handleSetLooping(Z)V
    .locals 4
    .param p1, "looping"    # Z

    .prologue
    .line 540
    const-string v2, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleSetLooping]:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string v1, "true"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 542
    .local v0, "repeat":I
    :goto_1
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1, v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setRepeat(I)I

    .line 543
    return-void

    .line 540
    .end local v0    # "repeat":I
    :cond_0
    const-string v1, "false"

    goto :goto_0

    .line 541
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public handleSetVolume(FF)V
    .locals 4
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    .line 528
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleSetVoleum]: left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", right:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    if-nez v0, :cond_0

    .line 537
    :goto_0
    return-void

    .line 533
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 534
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    mul-float v1, p1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setVolume(I)I

    goto :goto_0

    .line 536
    :cond_1
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    mul-float v1, p2, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setVolume(I)I

    goto :goto_0
.end method

.method public handleStart()V
    .locals 3

    .prologue
    .line 445
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[handleStart]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    if-nez v1, :cond_1

    .line 447
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[handleStart][SKIP][manager is null]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->play()I

    move-result v1

    const/16 v2, -0x3e8

    if-eq v1, v2, :cond_2

    .line 452
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[handleStart] failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 455
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v1

    const/16 v2, 0x1010

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v1

    const/16 v2, 0x1002

    if-eq v1, v2, :cond_0

    .line 456
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[handleStart] current state is not PLAYING, lock until DMR responds PLAYING state or timeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/16 v1, 0xbb8

    invoke-virtual {p0, v1}, Landroid/media/MediaPluginDLNA;->lockCommand(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public handleStop()V
    .locals 3

    .prologue
    .line 557
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[handleStop]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    if-nez v1, :cond_1

    .line 559
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[handleStop][SKIP][manager is null]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaPluginDLNA;->mbLocalProxy:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/media/MediaPluginDLNA;->mbDualScreen:Z

    if-nez v1, :cond_4

    .line 564
    :cond_2
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->stop()I

    move-result v1

    const/16 v2, -0x3e8

    if-eq v1, v2, :cond_3

    .line 565
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[handleStop] failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 568
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v1

    const/16 v2, 0x1040

    if-eq v1, v2, :cond_0

    .line 569
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[handleStop] current state is not STOPPED, lock until DMR responds STOPPED state or timeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/16 v1, 0xbb8

    invoke-virtual {p0, v1}, Landroid/media/MediaPluginDLNA;->lockCommand(I)V

    goto :goto_0

    .line 573
    :cond_4
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[handleStop][SKIP][not local proxy server...]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public isLocalProxy()Z
    .locals 1

    .prologue
    .line 945
    iget-boolean v0, p0, Landroid/media/MediaPluginDLNA;->mbLocalProxy:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 469
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v0

    const/16 v1, 0x1010

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSeeking()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 479
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Ljava/lang/Integer;

    monitor-enter v1

    .line 480
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public lockCommand(I)V
    .locals 5
    .param p1, "timeout"    # I

    .prologue
    .line 657
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[lockCommand]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 660
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    int-to-long v2, p1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    :goto_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 666
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[lockCommand][OUT]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-void

    .line 661
    :catch_0
    move-exception v0

    .line 662
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[lockCommand][InterruptedException]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "msec"    # I

    .prologue
    .line 905
    iput p1, p0, Landroid/media/MediaPluginDLNA;->mDuration:I

    .line 906
    return-void
.end method

.method public setPreSeek(I)V
    .locals 3
    .param p1, "msec"    # I

    .prologue
    .line 717
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreSeek: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iput p1, p0, Landroid/media/MediaPluginDLNA;->mPreSeekMSec:I

    .line 719
    return-void
.end method

.method public setSeeking(I)V
    .locals 2
    .param p1, "seek"    # I

    .prologue
    .line 473
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Ljava/lang/Integer;

    monitor-enter v1

    .line 474
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Ljava/lang/Integer;

    .line 475
    monitor-exit v1

    .line 476
    return-void

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unlockCommand()V
    .locals 2

    .prologue
    .line 670
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[unlockCommand]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 673
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 677
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[unlockCommand][OUT]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    return-void

    .line 675
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
