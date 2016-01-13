.class final Lcom/android/server/power/HtcAutoBrightnessCtrl;
.super Ljava/lang/Object;
.source "HtcAutoBrightnessCtrl.java"


# static fields
.field private static final AUTO_BRIGHTNESS_ALG_DEFAULT:I = 0x0

.field private static final AUTO_BRIGHTNESS_ALG_TAO:I = 0x1

.field private static final AUTO_BRIGHTNESS_ALG_TPE:I = 0x2

.field private static CAMERA_APP_MIN_DISPLAY_BRIGHTNESS_VALUE:I

.field private static DISPLAY_BRIGHTNESS_TO_POWER_SAVER_PERCENTAGE:F

.field private static MAX_AUTO_BRIGHTNESS_BASE_RATE:I

.field private static USE_NEW_BACKLIGHT_MECHANISM:Z

.field private static mLastLevel:I

.field private static mPrevLcdValue:I

.field private static mPrevLux:I


# instance fields
.field private final ACTION_AUDIO_STREAMING_MODE_CHANGE:Ljava/lang/String;

.field private final ACTION_BRIGHTER_ONLY_OFF:Ljava/lang/String;

.field private final ACTION_BRIGHTER_ONLY_ON:Ljava/lang/String;

.field private final ACTION_PREFIX:Ljava/lang/String;

.field private final AUDIO_STREAMING_TIMEOUT:I

.field private final BRIGHTER_ONLY_INITIAL_BRIGHTNESS:I

.field private final BRIGHTER_ONLY_TIMEOUT:I

.field private final DEBUG_ON:Z

.field private final DEFAULT_APP_ENTERING_TRANSITION_DELAY:I

.field private final DEFAULT_APP_LEAVING_TRANSITION_DELAY:I

.field private final DEFAULT_TRANSITION_DELAY:I

.field private final KEY_AUDIO_STREAMING_MODE:Ljava/lang/String;

.field private final KEY_AUDIO_STREAMING_UID:Ljava/lang/String;

.field private final KEY_BACKLIGHT_DELAY:Ljava/lang/String;

.field private final KEY_ENTERING_SCREEN_BRIGHTNESS:Ljava/lang/String;

.field private final MASTER_ENABLE:Z

.field private final TAG:Ljava/lang/String;

.field private final TRANSFORMED_LCD_VALUES:[I

.field private final VALID_MAX_TRANSITION_DELAY:I

.field private final VALID_MIN_TRANSITION_DELAY:I

.field dayDreamObserver:Landroid/os/FileObserver;

.field final dayDreamPath:Ljava/lang/String;

.field private mAudioStreamingMode:Z

.field private final mAudioStreamingModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mAudioStreamingTimeoutTask:Ljava/lang/Runnable;

.field private mAudioStreamingUid:I

.field private mAutoBrightnessAlgorithm:I

.field private final mBrighterOnlyReceiver:Landroid/content/BroadcastReceiver;

.field private final mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

.field private mButtonBacklightValues:[I

.field private mCameraEnteringDelay:I

.field private mCameraForceUpdateBrightness:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

.field private mDayDreamMode:Z

.field private final mDayDreamOffTask:Ljava/lang/Runnable;

.field private final mDayDreamOnTask:Ljava/lang/Runnable;

.field private mEnableBrighterOnly:Z

.field private mEnteringLcdValue:I

.field private mHandler:Landroid/os/Handler;

.field private mIWindowManager:Landroid/view/IWindowManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLightSensorLevels:[I

.field private mMaxBacklightValue:I

.field private mPowerSaverMode:Z

.field private final mPowerSaverReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenBrightness:[I

.field private mScreenBrightnessDown:[I

.field private mScreenBrightnessUp:[I

.field private mScreenState:Z

.field private final mTPEAlgorithmTimeoutTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 74
    const/16 v0, 0x32

    sput v0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->MAX_AUTO_BRIGHTNESS_BASE_RATE:I

    .line 130
    sput v1, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mLastLevel:I

    .line 131
    sput v1, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPrevLux:I

    .line 132
    sput v1, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPrevLcdValue:I

    .line 162
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->USE_NEW_BACKLIGHT_MECHANISM:Z

    .line 163
    const v0, 0x3f333333    # 0.7f

    sput v0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DISPLAY_BRIGHTNESS_TO_POWER_SAVER_PERCENTAGE:F

    .line 164
    const/16 v0, 0x7d0

    sput v0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->CAMERA_APP_MIN_DISPLAY_BRIGHTNESS_VALUE:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;[I[IZ)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dpcInternalAPI"    # Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    .param p3, "lux"    # [I
    .param p4, "screenBrightness"    # [I
    .param p5, "enableDisplayBrightness"    # Z

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v6, "HABCtrl"

    iput-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->TAG:Ljava/lang/String;

    .line 36
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    .line 39
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->MASTER_ENABLE:Z

    .line 42
    const-string v6, "com.android.server.HtcAutoBrightnessCtrl.action."

    iput-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->ACTION_PREFIX:Ljava/lang/String;

    .line 44
    const-string v6, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_ON"

    iput-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->ACTION_BRIGHTER_ONLY_ON:Ljava/lang/String;

    .line 46
    const-string v6, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_OFF"

    iput-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->ACTION_BRIGHTER_ONLY_OFF:Ljava/lang/String;

    .line 50
    const-string v6, "entering.screen.brightness"

    iput-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->KEY_ENTERING_SCREEN_BRIGHTNESS:Ljava/lang/String;

    .line 52
    const-string v6, "backlight.delay"

    iput-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->KEY_BACKLIGHT_DELAY:Ljava/lang/String;

    .line 55
    const v6, 0xea60

    iput v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->BRIGHTER_ONLY_TIMEOUT:I

    .line 57
    const/16 v6, 0x7f

    iput v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->BRIGHTER_ONLY_INITIAL_BRIGHTNESS:I

    .line 59
    const/16 v6, 0x10

    iput v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEFAULT_TRANSITION_DELAY:I

    .line 61
    const/16 v6, 0x14

    iput v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEFAULT_APP_ENTERING_TRANSITION_DELAY:I

    .line 62
    const/16 v6, 0x28

    iput v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEFAULT_APP_LEAVING_TRANSITION_DELAY:I

    .line 64
    const/16 v6, 0xfa

    iput v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->VALID_MAX_TRANSITION_DELAY:I

    .line 65
    const/16 v6, 0x10

    iput v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->VALID_MIN_TRANSITION_DELAY:I

    .line 68
    const-string v6, "com.htc.Audio.Streaming.ModeChange"

    iput-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->ACTION_AUDIO_STREAMING_MODE_CHANGE:Ljava/lang/String;

    .line 69
    const-string v6, "audio_streaming_status"

    iput-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->KEY_AUDIO_STREAMING_MODE:Ljava/lang/String;

    .line 70
    const-string v6, "uid"

    iput-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->KEY_AUDIO_STREAMING_UID:Ljava/lang/String;

    .line 78
    const/16 v6, 0x100

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    iput-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->TRANSFORMED_LCD_VALUES:[I

    .line 137
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mScreenState:Z

    .line 140
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mCameraForceUpdateBrightness:Z

    .line 141
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mCameraEnteringDelay:I

    .line 143
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    .line 144
    const/16 v6, 0x7f

    iput v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    .line 146
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    .line 147
    const/16 v6, 0x14

    iput v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    .line 150
    const v6, 0xea60

    iput v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->AUDIO_STREAMING_TIMEOUT:I

    .line 151
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    .line 152
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingUid:I

    .line 156
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->dayDreamObserver:Landroid/os/FileObserver;

    .line 157
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    .line 158
    const-string v6, "/sys/power/pnpmgr/apps/non_activity_trigger"

    iput-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->dayDreamPath:Ljava/lang/String;

    .line 315
    new-instance v6, Lcom/android/server/power/HtcAutoBrightnessCtrl$2;

    invoke-direct {v6, p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl$2;-><init>(Lcom/android/server/power/HtcAutoBrightnessCtrl;)V

    iput-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDayDreamOnTask:Ljava/lang/Runnable;

    .line 323
    new-instance v6, Lcom/android/server/power/HtcAutoBrightnessCtrl$3;

    invoke-direct {v6, p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl$3;-><init>(Lcom/android/server/power/HtcAutoBrightnessCtrl;)V

    iput-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDayDreamOffTask:Ljava/lang/Runnable;

    .line 519
    new-instance v6, Lcom/android/server/power/HtcAutoBrightnessCtrl$4;

    invoke-direct {v6, p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl$4;-><init>(Lcom/android/server/power/HtcAutoBrightnessCtrl;)V

    iput-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mTPEAlgorithmTimeoutTask:Ljava/lang/Runnable;

    .line 863
    new-instance v6, Lcom/android/server/power/HtcAutoBrightnessCtrl$5;

    invoke-direct {v6, p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl$5;-><init>(Lcom/android/server/power/HtcAutoBrightnessCtrl;)V

    iput-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingModeReceiver:Landroid/content/BroadcastReceiver;

    .line 883
    new-instance v6, Lcom/android/server/power/HtcAutoBrightnessCtrl$6;

    invoke-direct {v6, p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl$6;-><init>(Lcom/android/server/power/HtcAutoBrightnessCtrl;)V

    iput-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPowerSaverReceiver:Landroid/content/BroadcastReceiver;

    .line 918
    new-instance v6, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;

    invoke-direct {v6, p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;-><init>(Lcom/android/server/power/HtcAutoBrightnessCtrl;)V

    iput-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mBrighterOnlyReceiver:Landroid/content/BroadcastReceiver;

    .line 1195
    new-instance v6, Lcom/android/server/power/HtcAutoBrightnessCtrl$8;

    invoke-direct {v6, p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl$8;-><init>(Lcom/android/server/power/HtcAutoBrightnessCtrl;)V

    iput-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingTimeoutTask:Ljava/lang/Runnable;

    .line 1207
    new-instance v6, Lcom/android/server/power/HtcAutoBrightnessCtrl$9;

    invoke-direct {v6, p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl$9;-><init>(Lcom/android/server/power/HtcAutoBrightnessCtrl;)V

    iput-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    .line 1514
    new-instance v6, Lcom/android/server/power/HtcAutoBrightnessCtrl$10;

    invoke-direct {v6, p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl$10;-><init>(Lcom/android/server/power/HtcAutoBrightnessCtrl;)V

    iput-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 170
    iput-object p1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    .line 173
    sput-boolean p5, Lcom/android/server/power/HtcAutoBrightnessCtrl;->USE_NEW_BACKLIGHT_MECHANISM:Z

    .line 176
    iget-boolean v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v6, :cond_0

    .line 177
    const-string v6, "HABCtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Constructor: ENABLE=(true,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/server/power/HtcAutoBrightnessCtrl;->USE_NEW_BACKLIGHT_MECHANISM:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    .line 183
    iget-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mContentResolver:Landroid/content/ContentResolver;

    .line 184
    iput-object p2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    .line 187
    iput-object p3, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mLightSensorLevels:[I

    .line 188
    iput-object p4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mScreenBrightness:[I

    .line 190
    iget-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 193
    .local v5, "resources":Landroid/content/res/Resources;
    const v6, 0x10e004b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 195
    .local v4, "powerSaverPercentage":I
    int-to-float v6, v4

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    sput v6, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DISPLAY_BRIGHTNESS_TO_POWER_SAVER_PERCENTAGE:F

    .line 196
    const v6, 0x10e004c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Lcom/android/server/power/HtcAutoBrightnessCtrl;->CAMERA_APP_MIN_DISPLAY_BRIGHTNESS_VALUE:I

    .line 198
    const-string v6, "HABCtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Value=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DISPLAY_BRIGHTNESS_TO_POWER_SAVER_PERCENTAGE:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/server/power/HtcAutoBrightnessCtrl;->CAMERA_APP_MIN_DISPLAY_BRIGHTNESS_VALUE:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const v6, 0x10e002e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAutoBrightnessAlgorithm:I

    .line 204
    const v6, 0x1070021

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mScreenBrightnessUp:[I

    .line 207
    const v6, 0x1070022

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mScreenBrightnessDown:[I

    .line 210
    const v6, 0x1070023

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mButtonBacklightValues:[I

    .line 212
    iget-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mButtonBacklightValues:[I

    if-nez v6, :cond_1

    .line 213
    iget-boolean v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v6, :cond_1

    .line 214
    const-string v6, "HABCtrl"

    const-string v7, "Error in config.xml - config_autoBrightnessButtonBacklightValues returned null."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 221
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v6, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_ON"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string v6, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_OFF"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    iget-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mBrighterOnlyReceiver:Landroid/content/BroadcastReceiver;

    const-string v8, "com.htc.permission.APP_PLATFORM"

    iget-object v9, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v0, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 226
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 227
    .local v3, "filterPowerSaverMode":Landroid/content/IntentFilter;
    const-string v6, "com.htc.server.htcpowersaver.action.ON"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v6, "com.htc.server.htcpowersaver.action.OFF"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPowerSaverReceiver:Landroid/content/BroadcastReceiver;

    const-string v8, "android.permission.DEVICE_POWER"

    iget-object v9, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v3, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 233
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 234
    .local v1, "filterAudio":Landroid/content/IntentFilter;
    const-string v6, "com.htc.Audio.Streaming.ModeChange"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    iget-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingModeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v1, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 239
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 240
    .local v2, "filterPowerSaver":Landroid/content/IntentFilter;
    const-string v6, "com.htc.server.htcpowersaver.action.screenon"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string v6, "com.htc.server.htcpowersaver.action.screenoff"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    iget-object v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v8, "com.htc.permission.APP_PLATFORM"

    iget-object v9, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v2, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 246
    invoke-direct {p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->initObserver()V

    .line 251
    return-void

    .line 78
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x2
        0x3
        0x4
        0x5
        0x5
        0x6
        0x7
        0x8
        0x9
        0x9
        0xa
        0xb
        0xc
        0xd
        0xd
        0xe
        0xf
        0x10
        0x10
        0x11
        0x12
        0x13
        0x14
        0x14
        0x15
        0x16
        0x17
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1b
        0x1c
        0x1d
        0x1e
        0x1e
        0x1f
        0x20
        0x21
        0x21
        0x22
        0x23
        0x24
        0x24
        0x25
        0x26
        0x27
        0x27
        0x28
        0x29
        0x2a
        0x2a
        0x2b
        0x2c
        0x2d
        0x2d
        0x2e
        0x2f
        0x30
        0x30
        0x31
        0x32
        0x32
        0x33
        0x34
        0x35
        0x35
        0x36
        0x37
        0x37
        0x38
        0x39
        0x3a
        0x3a
        0x3b
        0x3c
        0x3c
        0x3d
        0x3e
        0x3e
        0x3f
        0x40
        0x40
        0x41
        0x42
        0x42
        0x43
        0x44
        0x44
        0x45
        0x46
        0x46
        0x47
        0x48
        0x48
        0x49
        0x4a
        0x4a
        0x4b
        0x4c
        0x4c
        0x4d
        0x4d
        0x4e
        0x4f
        0x4f
        0x50
        0x51
        0x51
        0x52
        0x52
        0x53
        0x54
        0x54
        0x55
        0x55
        0x56
        0x56
        0x57
        0x58
        0x58
        0x59
        0x59
        0x5a
        0x5a
        0x5b
        0x5c
        0x5c
        0x5d
        0x5d
        0x5e
        0x5e
        0x5f
        0x5f
        0x60
        0x60
        0x61
        0x61
        0x62
        0x62
        0x63
        0x63
        0x64
        0x64
        0x65
        0x65
        0x66
        0x66
        0x67
        0x67
        0x68
        0x68
        0x69
        0x69
        0x69
        0x6a
        0x6a
        0x6b
        0x6b
        0x6c
        0x6c
        0x6c
        0x6d
        0x6d
        0x6e
        0x6e
        0x6e
        0x6f
        0x6f
        0x70
        0x70
        0x70
        0x71
        0x71
        0x71
        0x72
        0x72
        0x72
        0x73
        0x73
        0x73
        0x74
        0x74
        0x74
        0x75
        0x75
        0x75
        0x76
        0x76
        0x76
        0x77
        0x77
        0x77
        0x77
        0x78
        0x78
        0x78
        0x79
        0x79
        0x79
        0x79
        0x7a
        0x7a
        0x7a
        0x7a
        0x7a
        0x7b
        0x7b
        0x7b
        0x7b
        0x7b
        0x7c
        0x7c
        0x7c
        0x7c
        0x7c
        0x7d
        0x7d
        0x7d
        0x7d
        0x7d
        0x7d
        0x7d
        0x7e
        0x7e
        0x7e
        0x7e
        0x7e
        0x7e
        0x7e
        0x7e
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x80
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAutoBrightnessCtrl;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAutoBrightnessCtrl;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDayDreamOnTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->USE_NEW_BACKLIGHT_MECHANISM:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/power/HtcAutoBrightnessCtrl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAutoBrightnessCtrl;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/power/HtcAutoBrightnessCtrl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    return p1
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->CAMERA_APP_MIN_DISPLAY_BRIGHTNESS_VALUE:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/power/HtcAutoBrightnessCtrl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mCameraEnteringDelay:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAutoBrightnessCtrl;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mScreenState:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAutoBrightnessCtrl;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAutoBrightnessCtrl;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAutoBrightnessCtrl;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mCameraForceUpdateBrightness:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/power/HtcAutoBrightnessCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mCameraForceUpdateBrightness:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/power/HtcAutoBrightnessCtrl;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/power/HtcAutoBrightnessCtrl;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->setBacklight(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAutoBrightnessCtrl;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAutoBrightnessCtrl;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/power/HtcAutoBrightnessCtrl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->reset(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/power/HtcAutoBrightnessCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcAutoBrightnessCtrl;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->resetAudioStreamingMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAutoBrightnessCtrl;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDayDreamOffTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/HtcAutoBrightnessCtrl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->setDayDreamMode(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAutoBrightnessCtrl;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/power/HtcAutoBrightnessCtrl;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->checkAudioStreamingMode(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/power/HtcAutoBrightnessCtrl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->setPowerSaverMode(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAutoBrightnessCtrl;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/power/HtcAutoBrightnessCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAutoBrightnessCtrl;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method private applyMaxAutoBrightnessModeLcdValue(II)I
    .locals 8
    .param p1, "lcdValue"    # I
    .param p2, "autoPercentage"    # I

    .prologue
    .line 678
    move v3, p1

    .line 680
    .local v3, "newLcdValue":I
    invoke-direct {p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 682
    if-ltz p2, :cond_0

    const/16 v5, 0x64

    if-le p2, v5, :cond_2

    .line 683
    :cond_0
    iget-boolean v5, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v5, :cond_1

    .line 684
    const-string v5, "HABCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "autoPercentage error:("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v4, v3

    .line 706
    .end local v3    # "newLcdValue":I
    .local v4, "newLcdValue":I
    :goto_0
    return v4

    .line 690
    .end local v4    # "newLcdValue":I
    .restart local v3    # "newLcdValue":I
    :cond_2
    :try_start_0
    sget v5, Lcom/android/server/power/HtcAutoBrightnessCtrl;->MAX_AUTO_BRIGHTNESS_BASE_RATE:I

    mul-int/2addr v5, v3

    div-int/lit8 v0, v5, 0x64

    .line 691
    .local v0, "baseLcdValue":I
    sub-int v5, v3, v0

    mul-int/2addr v5, p2

    div-int/lit8 v1, v5, 0x64
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    .local v1, "diffLcdValue":I
    add-int v3, v0, v1

    .line 702
    .end local v0    # "baseLcdValue":I
    .end local v1    # "diffLcdValue":I
    :cond_3
    :goto_1
    iget-boolean v5, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v5, :cond_4

    .line 703
    const-string v5, "HABCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getA:("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v4, v3

    .line 706
    .end local v3    # "newLcdValue":I
    .restart local v4    # "newLcdValue":I
    goto :goto_0

    .line 693
    .end local v4    # "newLcdValue":I
    .restart local v3    # "newLcdValue":I
    :catch_0
    move-exception v2

    .line 694
    .local v2, "e":Ljava/lang/Exception;
    iget-boolean v5, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v5, :cond_5

    .line 695
    const-string v5, "HABCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "apply: Exception caught. lcdValue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_5
    move v3, p1

    goto :goto_1
.end method

.method private checkAudioStreamingMode(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1042
    const-string v4, "audio_streaming_status"

    invoke-virtual {p1, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1043
    .local v0, "audioStreamingValue":Z
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    invoke-virtual {v4}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->getCurrentBrightness()I

    move-result v1

    .line 1044
    .local v1, "curLcdValue":I
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    invoke-virtual {v4}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->getTargetBrightness()I

    move-result v2

    .line 1046
    .local v2, "endLcdValue":I
    iget-boolean v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v4, :cond_0

    .line 1047
    const-string v4, "HABCtrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAudioStreamingMode : ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mScreenState:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_0
    if-ne v0, v9, :cond_3

    .line 1058
    const-string v4, "uid"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingUid:I

    .line 1060
    iget v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingUid:I

    if-gez v4, :cond_2

    .line 1062
    iget-boolean v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v4, :cond_1

    .line 1063
    const-string v4, "HABCtrl"

    const-string v5, "uid < 0"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_1
    :goto_0
    return-void

    .line 1069
    :cond_2
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1070
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingTimeoutTask:Ljava/lang/Runnable;

    const-wide/32 v6, 0xea60

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1072
    iget-boolean v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-nez v4, :cond_1

    .line 1076
    iput-boolean v9, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    .line 1078
    iget-boolean v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-eqz v4, :cond_1

    .line 1082
    iget-boolean v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v4, :cond_1

    .line 1086
    const/4 v3, -0x1

    .line 1088
    .local v3, "newLcdValue":I
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    invoke-virtual {v4}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->getCurrentBrightness()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getAudioStreamingModeLcdValue(I)I

    move-result v3

    .line 1090
    if-lez v3, :cond_1

    .line 1091
    invoke-direct {p0, v3, v8}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_0

    .line 1096
    .end local v3    # "newLcdValue":I
    :cond_3
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1098
    invoke-direct {p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->closeAudioStreamingMode()V

    goto :goto_0
.end method

.method private checkPlayAudioStreamingUid()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1105
    iget-boolean v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v4, :cond_0

    .line 1106
    const-string v4, "HABCtrl"

    const-string v6, "checkAudioStreamingUid"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1111
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 1113
    .local v2, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v2, :cond_1

    move v4, v5

    .line 1136
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v2    # "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :goto_0
    return v4

    .line 1117
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v2    # "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1119
    .local v3, "size":I
    iget-boolean v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v4, :cond_2

    .line 1120
    const-string v4, "HABCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Value ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_5

    .line 1124
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingUid:I

    if-ne v4, v6, :cond_4

    .line 1125
    iget-boolean v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v4, :cond_3

    .line 1126
    const-string v4, "HABCtrl"

    const-string v6, "Uid is running"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1128
    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .line 1123
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1132
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "i":I
    .end local v2    # "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v3    # "size":I
    :catch_0
    move-exception v4

    :cond_5
    move v4, v5

    .line 1136
    goto :goto_0
.end method

.method private closeAudioStreamingMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1141
    const/4 v0, -0x1

    .line 1143
    .local v0, "newLcdValue":I
    iget-boolean v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 1144
    const-string v1, "HABCtrl"

    const-string v2, "closeAudioStreamingMode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :cond_0
    iput v3, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingUid:I

    .line 1149
    iget-boolean v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-nez v1, :cond_2

    .line 1177
    :cond_1
    :goto_0
    return-void

    .line 1153
    :cond_2
    iput-boolean v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    .line 1155
    iget-boolean v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-eqz v1, :cond_1

    .line 1159
    iget-boolean v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v1, :cond_1

    .line 1163
    invoke-direct {p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1164
    iget-object v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    if-eqz v1, :cond_3

    .line 1165
    iget-object v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    invoke-virtual {v1, v3}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->forceBrightnessUpdate(I)V

    .line 1173
    :cond_3
    :goto_1
    if-lez v0, :cond_1

    .line 1174
    invoke-direct {p0, v0, v4}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_0

    .line 1167
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v1, :cond_5

    .line 1168
    invoke-direct {p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v0

    goto :goto_1

    .line 1170
    :cond_5
    invoke-direct {p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v0

    goto :goto_1
.end method

.method private getAudioStreamingModeLcdValue(I)I
    .locals 2
    .param p1, "lcdValue"    # I

    .prologue
    .line 801
    invoke-direct {p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    .line 803
    .local v0, "AUTO_BRIGHTNESS_MODE":Z
    if-eqz v0, :cond_0

    .line 804
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getAudioStreamingModeLcdValueInAuto(I)I

    move-result v1

    .line 806
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getAudioStreamingModeLcdValueInManual(I)I

    move-result v1

    goto :goto_0
.end method

.method private getAudioStreamingModeLcdValueInAuto(I)I
    .locals 4
    .param p1, "lcdValue"    # I

    .prologue
    .line 838
    move v0, p1

    .line 840
    .local v0, "newLcdValue":I
    iget-boolean v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v1, :cond_2

    .line 843
    sget-boolean v1, Lcom/android/server/power/HtcAutoBrightnessCtrl;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v1, :cond_0

    .line 844
    invoke-direct {p0, v0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getPowerSaverDisplayBrightnessValueInAuto(I)I

    move-result v1

    .line 860
    :goto_0
    return v1

    .line 848
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 849
    invoke-direct {p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v0

    .line 852
    :cond_1
    mul-int/lit8 v0, v0, 0x1

    .line 854
    iget-boolean v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_2

    .line 855
    const-string v1, "HABCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioStreaming:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v1, v0

    .line 860
    goto :goto_0
.end method

.method private getAudioStreamingModeLcdValueInManual(I)I
    .locals 5
    .param p1, "lcdValue"    # I

    .prologue
    .line 812
    move v0, p1

    .line 814
    .local v0, "newLcdValue":I
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-eqz v2, :cond_1

    .line 817
    sget-boolean v2, Lcom/android/server/power/HtcAutoBrightnessCtrl;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v2, :cond_0

    .line 818
    invoke-direct {p0, v0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getPowerSaverDisplayBrightnessValueInManual(I)I

    move-result v2

    .line 833
    :goto_0
    return v2

    .line 822
    :cond_0
    int-to-float v2, v0

    const/high16 v3, 0x437f0000    # 255.0f

    div-float v1, v2, v3

    .line 823
    .local v1, "ratio":F
    invoke-direct {p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 825
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 826
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAudioStreaming:("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "ratio":F
    :cond_1
    move v2, v0

    .line 833
    goto :goto_0
.end method

.method private getAutoBrightnessEnabled()Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1335
    const/4 v0, 0x0

    .line 1336
    .local v0, "autoBrightnessMode":I
    const/4 v2, 0x1

    .line 1338
    .local v2, "isAutoBrightnessAvailable":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "screen_brightness_mode"

    const/4 v7, 0x0

    const/4 v8, -0x2

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1340
    iget-object v5, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1344
    :goto_0
    if-ne v0, v3, :cond_0

    if-eqz v2, :cond_0

    :goto_1
    return v3

    .line 1341
    :catch_0
    move-exception v1

    .line 1342
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "HABCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAutoBrightnessEnabled: Exception caught: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move v3, v4

    .line 1344
    goto :goto_1
.end method

.method private getBrighterOnlyLcdValue(I)I
    .locals 4
    .param p1, "lcdValue"    # I

    .prologue
    .line 777
    move v0, p1

    .line 779
    .local v0, "newLcdValue":I
    iget-boolean v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v1, :cond_1

    .line 782
    sget-boolean v1, Lcom/android/server/power/HtcAutoBrightnessCtrl;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v1, :cond_2

    .line 783
    sget v1, Lcom/android/server/power/HtcAutoBrightnessCtrl;->CAMERA_APP_MIN_DISPLAY_BRIGHTNESS_VALUE:I

    if-ge v0, v1, :cond_0

    sget v0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->CAMERA_APP_MIN_DISPLAY_BRIGHTNESS_VALUE:I

    .line 789
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 790
    const-string v1, "HABCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBrighterOnly:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_1
    return v0

    .line 785
    :cond_2
    iget v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    :cond_3
    goto :goto_0
.end method

.method private getCustomizedBrightness(II)I
    .locals 5
    .param p1, "lcdValue"    # I
    .param p2, "autoPercentage"    # I

    .prologue
    .line 536
    const/4 v0, 0x1

    .line 537
    .local v0, "applyMaxAutoBrightness":Z
    move v1, p1

    .line 539
    .local v1, "newLcdValue":I
    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    .line 540
    const/16 v1, 0xff

    .line 544
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    if-eqz v2, :cond_4

    .line 546
    invoke-direct {p0, v1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getDayDreamingLcdValue(I)I

    move-result v1

    .line 557
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 558
    invoke-direct {p0, v1, p2}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->applyMaxAutoBrightnessModeLcdValue(II)I

    move-result v1

    .line 561
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_3

    .line 562
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCB:(true,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getValidLcdValue(I)I

    move-result v2

    return v2

    .line 547
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v2, :cond_5

    .line 548
    const/4 v0, 0x0

    .line 550
    invoke-direct {p0, v1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v1

    goto :goto_0

    .line 551
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-eqz v2, :cond_6

    .line 552
    invoke-direct {p0, v1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getAudioStreamingModeLcdValue(I)I

    move-result v1

    goto/16 :goto_0

    .line 553
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v2, :cond_1

    .line 554
    invoke-direct {p0, v1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v1

    goto/16 :goto_0
.end method

.method private getCustomizedDisplayBrightness(II)I
    .locals 5
    .param p1, "lcdValue"    # I
    .param p2, "autoPercentage"    # I

    .prologue
    .line 1427
    const/4 v0, 0x1

    .line 1428
    .local v0, "applyMaxAutoBrightness":Z
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getValidDisplayLcdValue(I)I

    move-result v1

    .line 1431
    .local v1, "newLcdValue":I
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    if-eqz v2, :cond_3

    .line 1433
    invoke-direct {p0, v1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getDayDreamingLcdValue(I)I

    move-result v1

    .line 1444
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1445
    invoke-direct {p0, v1, p2}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->applyMaxAutoBrightnessModeLcdValue(II)I

    move-result v1

    .line 1448
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_2

    .line 1449
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCDB:(true,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getValidDisplayLcdValue(I)I

    move-result v2

    return v2

    .line 1434
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v2, :cond_4

    .line 1435
    const/4 v0, 0x0

    .line 1437
    invoke-direct {p0, v1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v1

    goto :goto_0

    .line 1438
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-eqz v2, :cond_5

    .line 1439
    invoke-direct {p0, v1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getAudioStreamingModeLcdValue(I)I

    move-result v1

    goto/16 :goto_0

    .line 1440
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v2, :cond_0

    .line 1441
    invoke-direct {p0, v1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v1

    goto/16 :goto_0
.end method

.method private getDayDreamingLcdValue(I)I
    .locals 6
    .param p1, "lcdValue"    # I

    .prologue
    .line 747
    move v1, p1

    .line 749
    .local v1, "newLcdValue":I
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    if-eqz v2, :cond_0

    .line 753
    :try_start_0
    sget-boolean v2, Lcom/android/server/power/HtcAutoBrightnessCtrl;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v2, :cond_1

    .line 754
    invoke-direct {p0, v1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getPowerSaverDisplayBrightnessValue(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 766
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 767
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDD:("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_0
    return v1

    .line 756
    :cond_1
    const-wide v2, 0x3ff3333333333333L    # 1.2

    :try_start_1
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->TRANSFORMED_LCD_VALUES:[I

    aget v4, v4, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    goto :goto_0

    .line 759
    :catch_0
    move-exception v0

    .line 760
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_2

    .line 761
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDD: Exception caught. lcdValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_2
    move v1, p1

    goto :goto_0
.end method

.method private getIWindowManager()Landroid/view/IWindowManager;
    .locals 2

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    .line 1412
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mIWindowManager:Landroid/view/IWindowManager;

    .line 1413
    iget-object v0, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    .line 1414
    const-string v0, "HABCtrl"

    const-string v1, "getIWindowManager: Could not get IWindowManager."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    const/4 v0, 0x0

    .line 1418
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mIWindowManager:Landroid/view/IWindowManager;

    goto :goto_0
.end method

.method private getManualBrightness()I
    .locals 7

    .prologue
    .line 1348
    const/16 v0, 0x7f

    .line 1350
    .local v0, "currentLcdValue":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 1351
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v3

    .line 1353
    .local v3, "screenBrightnessSettingDefault":I
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_brightness"

    const/4 v6, -0x2

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1360
    .end local v2    # "pm":Landroid/os/PowerManager;
    .end local v3    # "screenBrightnessSettingDefault":I
    :goto_0
    sget-boolean v4, Lcom/android/server/power/HtcAutoBrightnessCtrl;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v4, :cond_0

    .line 1361
    invoke-direct {p0, v0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getManualDisplayBrightness(I)I

    move-result v0

    .line 1365
    :cond_0
    return v0

    .line 1355
    :catch_0
    move-exception v1

    .line 1356
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "HABCtrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getManualBrightness: Exception caught: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getManualDisplayBrightness(I)I
    .locals 1
    .param p1, "lcdValue"    # I

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    if-eqz v0, :cond_0

    .line 1470
    iget-object v0, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->getManualDisplayBrightness(I)I

    move-result p1

    .line 1472
    .end local p1    # "lcdValue":I
    :cond_0
    return p1
.end method

.method private getMappedValue_Hybrid(I[I)I
    .locals 5
    .param p1, "LUX"    # I
    .param p2, "table"    # [I

    .prologue
    .line 491
    const/4 v1, 0x0

    .line 493
    .local v1, "i":I
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mLightSensorLevels:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 494
    iget-object v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mLightSensorLevels:[I

    aget v2, v2, v1

    if-ge p1, v2, :cond_2

    .line 500
    :cond_0
    if-nez p2, :cond_3

    .line 514
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v1

    .line 493
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 504
    :cond_3
    aget v1, p2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_4

    .line 508
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMappedValue_Hybrid: Exception caught. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_4
    if-eqz p2, :cond_1

    .line 514
    const/16 v1, 0xff

    goto :goto_1
.end method

.method private getMaxBacklightValue()I
    .locals 5

    .prologue
    .line 1382
    :try_start_0
    iget v3, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    const/16 v4, 0x14

    if-le v3, v4, :cond_0

    .line 1383
    iget v3, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    .line 1393
    :goto_0
    return v3

    .line 1386
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1387
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x1070020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 1388
    .local v1, "mLcdBacklightValues":[I
    const/4 v3, 0x4

    aget v3, v1, v3

    iput v3, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1393
    .end local v1    # "mLcdBacklightValues":[I
    .end local v2    # "resources":Landroid/content/res/Resources;
    :goto_1
    iget v3, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    goto :goto_0

    .line 1389
    :catch_0
    move-exception v0

    .line 1390
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "HABCtrl"

    const-string v4, "getMaxBacklightValue: reset mMaxBacklightValue"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    const/16 v3, 0x78

    iput v3, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    goto :goto_1
.end method

.method private getPowerSaverDisplayBrightnessValue(I)I
    .locals 2
    .param p1, "displayValue"    # I

    .prologue
    .line 1477
    invoke-direct {p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    .line 1479
    .local v0, "autoMode":Z
    if-eqz v0, :cond_0

    .line 1480
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getPowerSaverDisplayBrightnessValueInAuto(I)I

    move-result v1

    .line 1482
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getPowerSaverDisplayBrightnessValueInManual(I)I

    move-result v1

    goto :goto_0
.end method

.method private getPowerSaverDisplayBrightnessValueInAuto(I)I
    .locals 4
    .param p1, "displayValue"    # I

    .prologue
    .line 1488
    move v0, p1

    .line 1490
    .local v0, "lcdValue":I
    int-to-float v1, v0

    sget v2, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DISPLAY_BRIGHTNESS_TO_POWER_SAVER_PERCENTAGE:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1492
    iget-boolean v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 1493
    const-string v1, "HABCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto DisBL=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    :cond_0
    return v0
.end method

.method private getPowerSaverDisplayBrightnessValueInManual(I)I
    .locals 4
    .param p1, "displayValue"    # I

    .prologue
    .line 1501
    move v0, p1

    .line 1503
    .local v0, "lcdValue":I
    int-to-float v1, v0

    sget v2, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DISPLAY_BRIGHTNESS_TO_POWER_SAVER_PERCENTAGE:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1505
    iget-boolean v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 1506
    const-string v1, "HABCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Manual DisBL=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    :cond_0
    return v0
.end method

.method private getPowerSaverLcdValue(I)I
    .locals 6
    .param p1, "lcdValue"    # I

    .prologue
    .line 711
    move v1, p1

    .line 713
    .local v1, "newLcdValue":I
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v2, :cond_1

    .line 716
    :try_start_0
    sget-boolean v2, Lcom/android/server/power/HtcAutoBrightnessCtrl;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v2, :cond_2

    .line 717
    invoke-direct {p0, v1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getPowerSaverDisplayBrightnessValue(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 735
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 736
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPS:("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_1
    return v1

    .line 719
    :cond_2
    const-wide v2, 0x3ff3333333333333L    # 1.2

    :try_start_1
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->TRANSFORMED_LCD_VALUES:[I

    aget v4, v4, v1

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 721
    mul-int/lit8 v2, v1, 0x66

    div-int/lit8 v1, v2, 0x75
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 722
    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    .line 723
    const/16 v1, 0x14

    goto :goto_0

    .line 728
    :catch_0
    move-exception v0

    .line 729
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_3

    .line 730
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPS: Exception caught. lcdValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_3
    move v1, p1

    goto :goto_0
.end method

.method private getValidDelay(I)I
    .locals 2
    .param p1, "delay"    # I

    .prologue
    const/16 v0, 0xfa

    const/16 v1, 0x10

    .line 1375
    if-ge p1, v1, :cond_0

    move p1, v1

    .line 1376
    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    .line 1377
    :cond_1
    return p1
.end method

.method private getValidDisplayLcdValue(I)I
    .locals 1
    .param p1, "lcdValue"    # I

    .prologue
    const/16 v0, 0x2800

    .line 1463
    if-le p1, v0, :cond_0

    move p1, v0

    .line 1464
    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 1465
    :cond_1
    return p1
.end method

.method private getValidLcdValue(I)I
    .locals 2
    .param p1, "lcdValue"    # I

    .prologue
    const/16 v1, 0xff

    const/16 v0, 0x14

    .line 1369
    if-le p1, v1, :cond_0

    move p1, v1

    .line 1370
    :cond_0
    if-ge p1, v0, :cond_1

    move p1, v0

    .line 1371
    :cond_1
    return p1
.end method

.method private initObserver()V
    .locals 3

    .prologue
    .line 255
    const-string v0, "HABCtrl"

    const-string v1, "initObserver"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v0, Lcom/android/server/power/HtcAutoBrightnessCtrl$1;

    const-string v1, "/sys/power/pnpmgr/apps/non_activity_trigger"

    const/16 v2, 0x8

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/power/HtcAutoBrightnessCtrl$1;-><init>(Lcom/android/server/power/HtcAutoBrightnessCtrl;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->dayDreamObserver:Landroid/os/FileObserver;

    .line 311
    iget-object v0, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->dayDreamObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 313
    return-void
.end method

.method private isKeyguardLocked()Z
    .locals 3

    .prologue
    .line 1397
    const/4 v0, 0x1

    .line 1399
    .local v0, "keyguardLocked":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getIWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->keyguardIsShowing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1403
    :goto_0
    if-eqz v0, :cond_0

    .line 1404
    const-string v1, "HABCtrl"

    const-string v2, "Keyguard is locked, skip"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    iget-object v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    invoke-virtual {v1}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->cancelAnimation()V

    .line 1407
    :cond_0
    return v0

    .line 1400
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private reset(I)V
    .locals 5
    .param p1, "delay"    # I

    .prologue
    const/4 v4, 0x0

    .line 1220
    invoke-direct {p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    .line 1221
    .local v0, "AUTO_BRIGHTNESS_MODE":Z
    iget-object v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1223
    if-nez v0, :cond_0

    .line 1225
    iget-object v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    invoke-virtual {v2, v4}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->setScreenBrightnessMode(I)V

    .line 1229
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v2, :cond_2

    .line 1266
    :cond_1
    :goto_0
    return-void

    .line 1233
    :cond_2
    iput-boolean v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    .line 1235
    const/4 v1, 0x0

    .line 1236
    .local v1, "manualBrightness":I
    if-eqz v0, :cond_3

    .line 1237
    iget-object v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    mul-int/lit8 v3, p1, 0x28

    invoke-virtual {v2, v3}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->forceBrightnessUpdate(I)V

    .line 1260
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 1261
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset:("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1239
    :cond_3
    invoke-direct {p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v1

    .line 1241
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    if-eqz v2, :cond_4

    .line 1242
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 1243
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset Skip. ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1249
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-eqz v2, :cond_6

    .line 1250
    invoke-direct {p0, v1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getAudioStreamingModeLcdValueInManual(I)I

    move-result v1

    .line 1256
    :cond_5
    :goto_2
    invoke-direct {p0, v1, p1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->setBacklightForCamera(II)V

    goto :goto_1

    .line 1251
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v2, :cond_5

    .line 1252
    invoke-direct {p0, v1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v1

    goto :goto_2
.end method

.method private resetAudioStreamingMode()V
    .locals 4

    .prologue
    .line 1180
    iget-boolean v0, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 1181
    const-string v0, "HABCtrl"

    const-string v1, "resetAudioStreamingMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1187
    invoke-direct {p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->checkPlayAudioStreamingUid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1188
    iget-object v0, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingTimeoutTask:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1193
    :goto_0
    return-void

    .line 1190
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->closeAudioStreamingMode()V

    goto :goto_0
.end method

.method private setBacklight(II)V
    .locals 5
    .param p1, "targetLcdValue"    # I
    .param p2, "delay"    # I

    .prologue
    const/4 v1, 0x0

    .line 1303
    const/16 v2, 0x10

    if-ge p2, v2, :cond_1

    const/4 v0, 0x1

    .line 1305
    .local v0, "noTransition":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-nez v2, :cond_2

    .line 1306
    iget-boolean v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 1307
    const-string v1, "HABCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBacklight: screen off. Skip.("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    :cond_0
    :goto_1
    return-void

    .end local v0    # "noTransition":Z
    :cond_1
    move v0, v1

    .line 1303
    goto :goto_0

    .line 1315
    .restart local v0    # "noTransition":Z
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_3

    .line 1316
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBacklight:("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :cond_3
    if-lez p1, :cond_0

    .line 1326
    if-eqz v0, :cond_4

    .line 1327
    iget-object v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->setSmoothBacklight(II)V

    goto :goto_1

    .line 1329
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getValidDelay(I)I

    move-result p2

    .line 1330
    iget-object v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    mul-int/lit8 v2, p2, 0x28

    invoke-virtual {v1, p1, v2}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->setSmoothBacklight(II)V

    goto :goto_1
.end method

.method private setBacklightForCamera(II)V
    .locals 5
    .param p1, "targetLcdValue"    # I
    .param p2, "delay"    # I

    .prologue
    const/4 v1, 0x0

    .line 1270
    const/16 v2, 0x10

    if-ge p2, v2, :cond_1

    const/4 v0, 0x1

    .line 1272
    .local v0, "noTransition":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-nez v2, :cond_2

    .line 1273
    iget-boolean v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 1274
    const-string v1, "HABCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBacklightForCamera: screen off. Skip.("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :cond_0
    :goto_1
    return-void

    .end local v0    # "noTransition":Z
    :cond_1
    move v0, v1

    .line 1270
    goto :goto_0

    .line 1282
    .restart local v0    # "noTransition":Z
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_3

    .line 1283
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBacklightForCamera:("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :cond_3
    if-lez p1, :cond_0

    .line 1293
    if-eqz v0, :cond_4

    .line 1294
    iget-object v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->setSmoothBacklight(II)V

    goto :goto_1

    .line 1296
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getValidDelay(I)I

    move-result p2

    .line 1297
    iget-object v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    mul-int/lit8 v2, p2, 0x28

    invoke-virtual {v1, p1, v2}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->setSmoothBacklightForCamera(II)V

    goto :goto_1
.end method

.method private setDayDreamMode(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 332
    const/4 v1, -0x1

    .line 334
    .local v1, "newLcdValue":I
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 335
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDDMode:("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mScreenState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    if-eqz p1, :cond_3

    .line 343
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    if-eqz v2, :cond_2

    .line 400
    :cond_1
    :goto_0
    return-void

    .line 347
    :cond_2
    iput-boolean v5, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    .line 349
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-eqz v2, :cond_1

    .line 353
    iget-object v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    invoke-virtual {v2}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->getCurrentBrightness()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getDayDreamingLcdValue(I)I

    move-result v1

    .line 355
    if-lez v1, :cond_1

    .line 356
    invoke-direct {p0, v1, v6}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_0

    .line 361
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    if-eqz v2, :cond_1

    .line 365
    iput-boolean v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    .line 367
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-eqz v2, :cond_1

    .line 371
    invoke-direct {p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 372
    iget-object v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    if-eqz v2, :cond_1

    .line 373
    iget-object v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->forceBrightnessUpdate(I)V

    goto :goto_0

    .line 376
    :cond_4
    const/4 v0, 0x0

    .line 377
    .local v0, "manualBrightness":I
    invoke-direct {p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v0

    .line 379
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v2, :cond_7

    .line 380
    invoke-direct {p0, v0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v0

    .line 381
    invoke-direct {p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    .line 382
    iget-object v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    invoke-virtual {v2, v5}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->setScreenBrightnessMode(I)V

    .line 384
    :cond_5
    iget-object v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 385
    iget-object v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 392
    :cond_6
    :goto_1
    if-lez v0, :cond_1

    .line 393
    invoke-direct {p0, v0, v6}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_0

    .line 386
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-eqz v2, :cond_8

    .line 387
    invoke-direct {p0, v0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getAudioStreamingModeLcdValueInManual(I)I

    move-result v0

    goto :goto_1

    .line 388
    :cond_8
    iget-boolean v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v2, :cond_6

    .line 389
    invoke-direct {p0, v0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v0

    goto :goto_1
.end method

.method private setPowerSaverMode(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 635
    iget-boolean v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    .line 636
    .local v1, "PREV_POWER_MODE":Z
    invoke-direct {p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    .line 637
    .local v0, "AUTO_BRIGHTNESS_MODE":Z
    const/4 v2, -0x1

    .line 639
    .local v2, "newLcdValue":I
    iput-boolean p1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    .line 641
    iget-boolean v3, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-nez v3, :cond_1

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-nez v3, :cond_0

    .line 649
    if-nez v1, :cond_4

    iget-boolean v3, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v3, :cond_4

    .line 650
    iget-object v3, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    invoke-virtual {v3}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->getCurrentBrightness()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v2

    .line 659
    :cond_2
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eq v3, v1, :cond_0

    .line 660
    iget-boolean v3, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v3, :cond_3

    .line 661
    const-string v3, "HABCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPSM:("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_3
    iput-boolean p1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    .line 670
    if-lez v2, :cond_0

    .line 671
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_0

    .line 651
    :cond_4
    if-eqz v1, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-nez v3, :cond_2

    .line 652
    if-eqz v0, :cond_5

    .line 653
    iget-object v3, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->forceBrightnessUpdate(I)V

    goto :goto_1

    .line 655
    :cond_5
    invoke-direct {p0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v2

    goto :goto_1
.end method


# virtual methods
.method protected getBrightnessBaseOnAlgorithm(ILandroid/util/Spline;)F
    .locals 9
    .param p1, "LUX"    # I
    .param p2, "screenBrightnessSpline"    # Landroid/util/Spline;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x2

    .line 408
    const/4 v0, -0x1

    .line 409
    .local v0, "lcdValue":I
    sget v4, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPrevLux:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getMappedValue_Hybrid(I[I)I

    move-result v3

    .line 410
    .local v3, "old_level":I
    invoke-direct {p0, p1, v5}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getMappedValue_Hybrid(I[I)I

    move-result v2

    .line 413
    .local v2, "new_level":I
    sget v4, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPrevLux:I

    int-to-float v4, v4

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAutoBrightnessAlgorithm:I

    if-nez v4, :cond_3

    .line 414
    :cond_0
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mScreenBrightness:[I

    invoke-direct {p0, p1, v4}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getMappedValue_Hybrid(I[I)I

    move-result v0

    .line 458
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAutoBrightnessAlgorithm:I

    if-ne v4, v8, :cond_2

    sget v4, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPrevLcdValue:I

    if-eq v0, v4, :cond_2

    .line 459
    const-string v4, "HABCtrl"

    const-string v5, "TPE algorithm. remove timeout."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mTPEAlgorithmTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 464
    :cond_2
    const-string v4, "HABCtrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ALG="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAutoBrightnessAlgorithm:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lsvalue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPrevLux:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "th)->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "th)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", last_level="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mLastLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lValue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPrevLcdValue:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    sput p1, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPrevLux:I

    .line 470
    sput v0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPrevLcdValue:I

    .line 472
    int-to-float v4, v0

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    return v4

    .line 416
    :cond_3
    sget v4, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPrevLux:I

    if-gt v4, p1, :cond_5

    .line 417
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mScreenBrightnessUp:[I

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAutoBrightnessAlgorithm:I

    if-ne v4, v8, :cond_4

    .line 418
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mScreenBrightnessUp:[I

    invoke-direct {p0, p1, v4}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getMappedValue_Hybrid(I[I)I

    move-result v0

    goto/16 :goto_0

    .line 420
    :cond_4
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mScreenBrightness:[I

    invoke-direct {p0, p1, v4}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getMappedValue_Hybrid(I[I)I

    move-result v0

    goto/16 :goto_0

    .line 423
    :cond_5
    sget v4, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPrevLux:I

    if-le v4, p1, :cond_b

    .line 424
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mScreenBrightnessDown:[I

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAutoBrightnessAlgorithm:I

    if-ne v4, v8, :cond_8

    .line 425
    sub-int v4, v3, v2

    if-ge v4, v8, :cond_6

    sget v4, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mLastLevel:I

    sub-int/2addr v4, v2

    if-lt v4, v8, :cond_7

    .line 427
    :cond_6
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mScreenBrightnessDown:[I

    invoke-direct {p0, p1, v4}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getMappedValue_Hybrid(I[I)I

    move-result v0

    .line 428
    sput v2, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mLastLevel:I

    goto/16 :goto_0

    .line 431
    :cond_7
    sget v0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPrevLcdValue:I

    .line 432
    sput v3, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mLastLevel:I

    .line 434
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_1

    .line 435
    const-string v4, "HABCtrl"

    const-string v5, "TPE algorithm. schedule timeout."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mTPEAlgorithmTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 439
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mTPEAlgorithmTimeoutTask:Ljava/lang/Runnable;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 444
    :cond_8
    iget v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAutoBrightnessAlgorithm:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 447
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mScreenBrightness:[I

    invoke-direct {p0, p1, v4}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getMappedValue_Hybrid(I[I)I

    move-result v1

    .line 448
    .local v1, "lcdValueDown":I
    sget v4, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPrevLcdValue:I

    if-ge v1, v4, :cond_9

    move v0, v1

    .line 450
    :goto_1
    goto/16 :goto_0

    .line 448
    :cond_9
    sget v0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mPrevLcdValue:I

    goto :goto_1

    .line 451
    .end local v1    # "lcdValueDown":I
    :cond_a
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mScreenBrightness:[I

    invoke-direct {p0, p1, v4}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getMappedValue_Hybrid(I[I)I

    move-result v0

    goto/16 :goto_0

    .line 454
    :cond_b
    const-string v4, "HABCtrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid light sensor value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected getButtonValue(I)I
    .locals 4
    .param p1, "LUX"    # I

    .prologue
    .line 476
    const/4 v0, 0x0

    .line 477
    .local v0, "buttonValue":I
    iget-object v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mButtonBacklightValues:[I

    if-eqz v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mButtonBacklightValues:[I

    invoke-direct {p0, p1, v1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getMappedValue_Hybrid(I[I)I

    move-result v0

    .line 481
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 482
    const-string v1, "HABCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getButton:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_1
    return v0
.end method

.method protected getCtrlBrightnessValue(II)I
    .locals 1
    .param p1, "lcdValue"    # I
    .param p2, "autoPercentage"    # I

    .prologue
    .line 532
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getCustomizedBrightness(II)I

    move-result v0

    return v0
.end method

.method protected getCtrlDisplayBrightnessValue(II)I
    .locals 1
    .param p1, "lcdValue"    # I
    .param p2, "autoPercentage"    # I

    .prologue
    .line 1423
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getCustomizedDisplayBrightness(II)I

    move-result v0

    return v0
.end method

.method protected screenState(Z)V
    .locals 7
    .param p1, "on"    # Z

    .prologue
    const/4 v6, 0x0

    .line 577
    iput-boolean p1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mScreenState:Z

    .line 579
    if-nez p1, :cond_3

    .line 581
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAutoBrightnessAlgorithm:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 582
    const-string v4, "HABCtrl"

    const-string v5, "TPE algorithm. remove timeout."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mTPEAlgorithmTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 588
    :cond_0
    iput-boolean v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    .line 589
    invoke-direct {p0, v6}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->reset(I)V

    .line 620
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-eqz v4, :cond_2

    .line 621
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 622
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mAudioStreamingTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 624
    :cond_2
    iput-boolean v6, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mCameraForceUpdateBrightness:Z

    .line 625
    return-void

    .line 593
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mCameraForceUpdateBrightness:Z

    if-eqz v4, :cond_1

    .line 594
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    if-eqz v4, :cond_8

    .line 595
    iget-boolean v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v4, :cond_4

    const-string v4, "HABCtrl"

    const-string v5, "CFUB"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_4
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    invoke-virtual {v4}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->getCurrentBrightness()I

    move-result v0

    .line 597
    .local v0, "curLcdValue":I
    iget-object v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    invoke-virtual {v4}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->getTargetBrightness()I

    move-result v1

    .line 601
    .local v1, "endLcdValue":I
    sget-boolean v4, Lcom/android/server/power/HtcAutoBrightnessCtrl;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v4, :cond_5

    .line 602
    sget v2, Lcom/android/server/power/HtcAutoBrightnessCtrl;->CAMERA_APP_MIN_DISPLAY_BRIGHTNESS_VALUE:I

    .line 608
    .local v2, "newLcdValue":I
    :goto_1
    if-le v2, v0, :cond_6

    .line 609
    :goto_2
    if-le v2, v1, :cond_7

    .line 611
    :goto_3
    invoke-direct {p0, v2}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v3

    .line 612
    .local v3, "target":I
    iget v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mCameraEnteringDelay:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_0

    .line 604
    .end local v2    # "newLcdValue":I
    .end local v3    # "target":I
    :cond_5
    iget v2, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    .restart local v2    # "newLcdValue":I
    goto :goto_1

    :cond_6
    move v2, v0

    .line 608
    goto :goto_2

    :cond_7
    move v2, v1

    .line 609
    goto :goto_3

    .line 614
    .end local v0    # "curLcdValue":I
    .end local v1    # "endLcdValue":I
    .end local v2    # "newLcdValue":I
    :cond_8
    iget-boolean v4, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v4, :cond_1

    const-string v4, "HABCtrl"

    const-string v5, "CFUB, mDPCInternalAPI null"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setLightSensorLevel(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 628
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getMappedValue_Hybrid(I[I)I

    move-result v0

    .line 629
    .local v0, "lightSensorLevel":I
    iget-boolean v1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 630
    const-string v1, "HABCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change ls ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_0
    return-void
.end method
