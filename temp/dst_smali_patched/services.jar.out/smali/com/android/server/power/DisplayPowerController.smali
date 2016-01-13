.class final Lcom/android/server/power/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;,
        Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;,
        Lcom/android/server/power/DisplayPowerController$Callbacks;
    }
.end annotation


# static fields
.field private static final ANGLEDETECTOR_PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final ANGLEDETECTOR_PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static ANIMATION_MODE:I = 0x0

.field private static final ANIM_MODE_GOOGLE:I = 0x0

.field private static final ANIM_MODE_HTC:I = 0x1

.field private static AUTOBRIGHTNESS_ANIM_DURATION:I = 0x0

.field private static AUTODIMNESS_ANIM_DURATION:I = 0x0

.field private static AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I = 0x0

.field private static AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD:F = 0.0f

.field private static AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD_TEMP:I = 0x0

.field private static AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I = 0x0

.field private static AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I = 0x0

.field private static AUTO_BACKLIGHT_AVERAGE_ONE_SECOND:I = 0x0

.field private static AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I = 0x0

.field private static AUTO_BACKLIGHT_AVERAGE_STABLE_DEBOUNCE:I = 0x0

.field private static AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD:F = 0.0f

.field private static AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD_TEMP:I = 0x0

.field private static AUTO_BACKLIGHT_AVERAGE_STOP_UPDATE_DEBOUNCE:I = 0x0

.field private static AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD:F = 0.0f

.field private static AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD_TEMP:I = 0x0

.field private static BRIGHTENING_LIGHT_DEBOUNCE:J = 0x0L

.field private static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.1f

.field private static final BRIGHTNESS_ANIMATION_CAMERA_LEAVE_MODE:I = 0x1

.field private static final BRIGHTNESS_RAMP_RATE_BACKLIGHT_TO_NITS:I = 0x14

.field private static BRIGHTNESS_RAMP_RATE_FAST:I = 0x0

.field private static BRIGHTNESS_RAMP_RATE_SLOW:I = 0x0

.field private static DARKENING_BUTTON_LIGHT_DEBOUNCE:J = 0x0L

.field private static DARKENING_LIGHT_DEBOUNCE:J = 0x0L

.field private static final DARKENING_LIGHT_HYSTERESIS:F = 0.2f

.field private static DEBUG:Z = false

.field private static final DEBUG_ON:Z

.field private static final DEBUG_ON_A:Z

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field private static final DEBUG_PRETEND_PROXIMITY_SENSOR_ABSENT:Z = false

.field private static final DELAY_SCREEN_FAR:I = 0x0

.field private static final DELAY_SCREEN_NEAR:I = 0x1

.field private static DELAY_SCREEN_ON_FROM_FAR_ANGLE_DURATION:I = 0x0

.field private static DELAY_SCREEN_ON_FROM_FAR_TOTAL_DURATION:I = 0x0

.field private static DELAY_SCREEN_ON_FROM_NEAR_DURATION:I = 0x0

.field private static final DELAY_SCREEN_UNKNOWN:I = -0x1

.field private static final ELECTRON_BEAM_OFF_ANIMATION_DURATION_MILLIS:I = 0x190

.field private static final ELECTRON_BEAM_ON_ANIMATION_DURATION_MILLIS:I = 0xfa

.field private static IS_ANGLE_DETECTOR_SUPPORT:Z = false

.field private static final LIGHT_SENSOR_RATE_MILLIS:I = 0x3e8

.field private static final LONG_TERM_AVERAGE_LIGHT_TIME_CONSTANT:J = 0x1388L

.field private static final MSG_AUTO_BACKLIGHT_AVERAGE_SAMPLE:I = 0x8

.field private static final MSG_BUTTON_LIGHT_DEBOUNCED:I = 0x6

.field private static final MSG_DELAY_SCREEN_ON_DURATION:I = 0x7

.field private static final MSG_LIGHT_SENSOR_DEBOUNCED:I = 0x3

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field private static final MSG_UPDATE_BRIGHTNESS_STATE:I = 0x4

.field private static final MSG_UPDATE_BRIGHTNESS_STATE_FOR_CAMERA:I = 0x5

.field private static final MSG_UPDATE_POWER_STATE:I = 0x1

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0x0

.field private static PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT_MAX_GAMMA:F = 3.0f

.field private static final SCREEN_DIM_MINIMUM_REDUCTION:I = 0xa

.field private static final SHORT_TERM_AVERAGE_LIGHT_TIME_CONSTANT:J = 0x3e8L

.field private static final SYNTHETIC_LIGHT_SENSOR_RATE_MILLIS:I = 0x7d0

.field private static final SYS_PROP_AB_AVG_DEBOUNCE:Ljava/lang/String; = "persist.htc.pms.abavg.deb"

.field private static final SYS_PROP_AB_AVG_LOWER_THRESHOLD:Ljava/lang/String; = "persist.htc.pms.abavg.lth"

.field private static final SYS_PROP_AB_AVG_MIN_THRESHOLD_VALUE:Ljava/lang/String; = "persist.htc.pms.minth"

.field private static final SYS_PROP_AB_AVG_STABLE_DEBOUNCE:Ljava/lang/String; = "persist.htc.pms.abavgs.deb"

.field private static final SYS_PROP_AB_AVG_STABLE_THRESHOLD:Ljava/lang/String; = "persist.htc.pms.abavgs.th"

.field private static final SYS_PROP_AB_AVG_UPPER_THRESHOLD:Ljava/lang/String; = "persist.htc.pms.abavg.uth"

.field private static final SYS_PROP_ANIMATION_MODE:Ljava/lang/String; = "persist.htc.pms.anim.mode"

.field private static final SYS_PROP_BRIGHTEN_DEBOUNCE:Ljava/lang/String; = "persist.htc.pms.brighten.ls"

.field private static final SYS_PROP_BRIGHTEN_DURATION:Ljava/lang/String; = "persist.htc.pms.brighten.dur"

.field private static final SYS_PROP_DARKEN_DEBOUNCE:Ljava/lang/String; = "persist.htc.pms.darken.ls"

.field private static final SYS_PROP_DARKEN_DURATION:Ljava/lang/String; = "persist.htc.pms.darken.dur"

.field private static final TAG:Ljava/lang/String; = "XAN-DPC"

.field private static final TWILIGHT_ADJUSTMENT_MAX_GAMMA:F = 1.5f

.field private static final TWILIGHT_ADJUSTMENT_TIME:J = 0x6ddd00L

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_ELECTRON_BEAM_OFF_ANIMATION:Z

.field private static final USE_ELECTRON_BEAM_ON_ANIMATION:Z

.field private static USE_NEW_BACKLIGHT_MECHANISM:Z

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

.field private static final USE_TWILIGHT_ADJUSTMENT:Z

.field private static mPrevEBI:F


# instance fields
.field private mAmbientEBI:F

.field private mAmbientLux:F

.field private mAmbientLuxValid:Z

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mBacklightToDisplayBrightnessTable:[I

.field private mBrighteningLuxThreshold:F

.field private mButtonValue:I

.field private mCallbackHandler:Landroid/os/Handler;

.field private final mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

.field private final mCleanListener:Ljava/lang/Runnable;

.field private mCustomizeDuration:I

.field mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

.field private mDarkeningLuxThreshold:F

.field private mDebounceLuxDirection:I

.field private mDebounceLuxTime:J

.field private mDelayScreenOnReason:I

.field private final mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

.field private final mDisplayManager:Lcom/android/server/display/DisplayManagerService;

.field private mDisplayReadyLocked:Z

.field private final mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mEBIToDisplayBrightnessTable:[I

.field private mElectronBeamFadesConfig:Z

.field private mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

.field private mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

.field private final mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

.field private mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

.field private mHtcAutoBrightnessCtrl:Lcom/android/server/power/HtcAutoBrightnessCtrl;

.field private mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

.field private mLastAmbientEBI:F

.field private mLastAmbientEBITime:J

.field private mLastObservedEBI:F

.field private mLastObservedEBITime:J

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private mLastSampleTime:J

.field private mLastScreenAutoBrightnessGamma:F

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightSensorWarmUpTimeConfig:I

.field private final mLights:Lcom/android/server/LightsService;

.field private final mLock:Ljava/lang/Object;

.field private mLux:[I

.field private final mNotifier:Lcom/android/server/power/Notifier;

.field private final mOnAngleDetectorReadingDetectedRunnable:Ljava/lang/Runnable;

.field private final mOnAngleDetectorTalkingDetectedRunnable:Ljava/lang/Runnable;

.field private final mOnProximityNegativeRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveRunnable:Ljava/lang/Runnable;

.field private final mOnStateChangedRunnable:Ljava/lang/Runnable;

.field mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mPendingRequestChangedLocked:Z

.field private mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

.field private mPendingUpdatePowerStateLocked:Z

.field private mPendingWaitForNegativeProximityLocked:Z

.field private mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

.field private mPowerState:Lcom/android/server/power/DisplayPowerState;

.field private mProximity:I

.field private mProximityAfterEndCall:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private mRecentLightSamples:I

.field private mRecentLongTermAverageLux:F

.field private mRecentShortTermAverageLux:F

.field private mSampleFull:Z

.field private mSampleFullFirst:Z

.field private mSampleIndex:I

.field private mSampleLevel:[F

.field private mScreenAutoBrightness:I

.field private mScreenAutoBrightnessSpline:Landroid/util/Spline;

.field private final mScreenBrightnessDimConfig:I

.field private mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/power/RampAnimator",
            "<",
            "Lcom/android/server/power/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private mScreenOffBecauseOfProximity:Z

.field private mScreenOnBlockStartRealTime:J

.field private mScreenOnWasBlocked:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mTwilight:Lcom/android/server/TwilightService;

.field private mTwilightChanged:Z

.field private final mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

.field private mUseSoftwareAutoBrightnessConfig:Z

.field private mUsingScreenAutoBrightness:Z

.field private mWaitingForNegativeProximity:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x7d0

    const/16 v5, 0x7530

    const/16 v4, 0x3e8

    const/16 v3, 0x1f4

    const/4 v2, 0x0

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    sput-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    invoke-static {}, Landroid/os/PowerManager;->useScreenAutoBrightnessAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    invoke-static {}, Landroid/os/PowerManager;->useTwilightAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    sput v2, Lcom/android/server/power/DisplayPowerController;->PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I

    const/16 v0, 0xfa

    sput v0, Lcom/android/server/power/DisplayPowerController;->PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I

    const/16 v0, 0xc8

    sput v0, Lcom/android/server/power/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_FAST:I

    const/16 v0, 0x28

    sput v0, Lcom/android/server/power/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_SLOW:I

    const/4 v0, 0x1

    sput v0, Lcom/android/server/power/DisplayPowerController;->ANIMATION_MODE:I

    sput v3, Lcom/android/server/power/DisplayPowerController;->AUTOBRIGHTNESS_ANIM_DURATION:I

    sput v3, Lcom/android/server/power/DisplayPowerController;->AUTODIMNESS_ANIM_DURATION:I

    sput-wide v6, Lcom/android/server/power/DisplayPowerController;->BRIGHTENING_LIGHT_DEBOUNCE:J

    const-wide/16 v0, 0x1f40

    sput-wide v0, Lcom/android/server/power/DisplayPowerController;->DARKENING_LIGHT_DEBOUNCE:J

    sput-wide v6, Lcom/android/server/power/DisplayPowerController;->DARKENING_BUTTON_LIGHT_DEBOUNCE:J

    sput-boolean v2, Lcom/android/server/power/DisplayPowerController;->IS_ANGLE_DETECTOR_SUPPORT:Z

    sput v5, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_NEAR_DURATION:I

    const/16 v0, 0x7d0

    sput v0, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_FAR_ANGLE_DURATION:I

    sput v5, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_FAR_TOTAL_DURATION:I

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON_A:Z

    sput-boolean v2, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    sput v4, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_ONE_SECOND:I

    sput v3, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I

    sput v4, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I

    const/4 v0, 0x2

    sput v0, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    const/16 v0, 0x1388

    sput v0, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STOP_UPDATE_DEBOUNCE:I

    const v0, 0x3e19999a    # 0.15f

    sput v0, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD:F

    const/16 v0, 0xf

    sput v0, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD_TEMP:I

    const v0, 0x3ee66666    # 0.45f

    sput v0, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD:F

    const/16 v0, 0x2d

    sput v0, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD_TEMP:I

    const/4 v0, 0x5

    sput v0, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    sput v3, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STABLE_DEBOUNCE:I

    const v0, 0x3e6b851f    # 0.23f

    sput v0, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD:F

    const/16 v0, 0x17

    sput v0, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD_TEMP:I

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/android/server/power/DisplayPowerController;->mPrevEBI:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/power/Notifier;Lcom/android/server/LightsService;Lcom/android/server/TwilightService;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/power/DisplayBlanker;Lcom/android/server/power/DisplayPowerController$Callbacks;Landroid/os/Handler;Lcom/android/server/power/PowerManagerService$PMSInternalAPI;Z)V
    .locals 9
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "notifier"    # Lcom/android/server/power/Notifier;
    .param p4, "lights"    # Lcom/android/server/LightsService;
    .param p5, "twilight"    # Lcom/android/server/TwilightService;
    .param p6, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p7, "displayManager"    # Lcom/android/server/display/DisplayManagerService;
    .param p8, "displaySuspendBlocker"    # Lcom/android/server/power/SuspendBlocker;
    .param p9, "displayBlanker"    # Lcom/android/server/power/DisplayBlanker;
    .param p10, "callbacks"    # Lcom/android/server/power/DisplayPowerController$Callbacks;
    .param p11, "callbackHandler"    # Landroid/os/Handler;
    .param p12, "pmsInternalAPI"    # Lcom/android/server/power/PowerManagerService$PMSInternalAPI;
    .param p13, "enableDisplayBrightness"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mCustomizeDuration:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mButtonValue:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximityAfterEndCall:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mSampleLevel:[F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mSampleFull:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mSampleFullFirst:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mSampleIndex:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastSampleTime:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedEBITime:J

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastAmbientEBI:F

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastAmbientEBITime:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mBacklightToDisplayBrightnessTable:[I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mEBIToDisplayBrightnessTable:[I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    new-instance v1, Lcom/android/server/power/DisplayPowerController$1;

    invoke-direct {v1, p0}, Lcom/android/server/power/DisplayPowerController$1;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v1, Lcom/android/server/power/DisplayPowerController$2;

    invoke-direct {v1, p0}, Lcom/android/server/power/DisplayPowerController$2;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/power/DisplayPowerController$3;

    invoke-direct {v1, p0}, Lcom/android/server/power/DisplayPowerController$3;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/power/DisplayPowerController$4;

    invoke-direct {v1, p0}, Lcom/android/server/power/DisplayPowerController$4;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/power/DisplayPowerController$5;

    invoke-direct {v1, p0}, Lcom/android/server/power/DisplayPowerController$5;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/power/DisplayPowerController$6;

    invoke-direct {v1, p0}, Lcom/android/server/power/DisplayPowerController$6;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnAngleDetectorTalkingDetectedRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/power/DisplayPowerController$7;

    invoke-direct {v1, p0}, Lcom/android/server/power/DisplayPowerController$7;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnAngleDetectorReadingDetectedRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/power/DisplayPowerController$9;

    invoke-direct {v1, p0}, Lcom/android/server/power/DisplayPowerController$9;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    new-instance v1, Lcom/android/server/power/DisplayPowerController$10;

    invoke-direct {v1, p0}, Lcom/android/server/power/DisplayPowerController$10;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    new-instance v1, Lcom/android/server/power/DisplayPowerController$11;

    invoke-direct {v1, p0}, Lcom/android/server/power/DisplayPowerController$11;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

    new-instance v1, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/power/DisplayPowerController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    iput-object p3, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    sput-boolean p13, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    iput-object p4, p0, Lcom/android/server/power/DisplayPowerController;->mLights:Lcom/android/server/LightsService;

    iput-object p5, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    iput-object p6, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .local v7, "resources":Landroid/content/res/Resources;
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/server/power/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_FAST:I

    mul-int/lit8 v1, v1, 0x14

    sput v1, Lcom/android/server/power/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_FAST:I

    sget v1, Lcom/android/server/power/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_SLOW:I

    mul-int/lit8 v1, v1, 0x14

    sput v1, Lcom/android/server/power/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_SLOW:I

    const v1, 0x1070032

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mBacklightToDisplayBrightnessTable:[I

    const v1, 0x1070033

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mEBIToDisplayBrightnessTable:[I

    :cond_0
    const v1, 0x10e002d

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    const v1, 0x10e002a

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .local v8, "screenBrightnessMinimum":I
    const v1, 0x1110019

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    const/4 v5, 0x0

    .local v5, "screenBrightness":[I
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v1, :cond_2

    const v1, 0x107001f

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLux:[I

    const v1, 0x1070020

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLux:[I

    invoke-static {v1, v5}, Lcom/android/server/power/DisplayPowerController;->createAutoBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    if-nez v1, :cond_8

    const-string v1, "XAN-DPC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in config.xml.  config_autoBrightnessLcdBacklightValues (size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "must be monotic and have exactly one more entry than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "config_autoBrightnessLevels (size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLux:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "which must be strictly increasing.  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Auto-brightness will be disabled."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    :cond_1
    :goto_0
    const v1, 0x10e002f

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    :cond_2
    new-instance v1, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;-><init>(Lcom/android/server/power/DisplayPowerController;Lcom/android/server/power/DisplayPowerController$1;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    new-instance v1, Lcom/android/server/power/HtcAutoBrightnessCtrl;

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mLux:[I

    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/HtcAutoBrightnessCtrl;-><init>(Landroid/content/Context;Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;[I[IZ)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAutoBrightnessCtrl:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    new-instance v1, Lcom/android/server/power/HtcAngleDetector;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-direct {v1, p2, v2, v3}, Lcom/android/server/power/HtcAngleDetector;-><init>(Landroid/content/Context;Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    invoke-static {v8}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    const/16 v1, 0xff

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    const v1, 0x111001c

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamFadesConfig:Z

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/TwilightService;->registerListener(Lcom/android/server/TwilightService$TwilightListener;Landroid/os/Handler;)V

    :cond_5
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->autoEBIAverageRuleInit()V

    :cond_6
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_7

    const-string v1, "XAN-DPC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constructor: ENABLE=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    const/4 v1, 0x0

    aget v1, v5, v1

    if-ge v1, v8, :cond_1

    const/4 v1, 0x0

    aget v8, v5, v1

    goto/16 :goto_0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/RampAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->handleDelayScreenOnTimeoutAfterEndCall()V

    return-void
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->handleEBIAverageSampleTimeout()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/power/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/power/DisplayPowerController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/power/DisplayPowerController;JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/power/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/HtcAutoBrightnessCtrl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAutoBrightnessCtrl:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/power/DisplayPowerController;JF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # J
    .param p3, "x2"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/server/power/DisplayPowerController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    return p1
.end method

.method static synthetic access$2100([I[I)Landroid/util/Spline;
    .locals 1
    .param p0, "x0"    # [I
    .param p1, "x1"    # [I

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/power/DisplayPowerController;->createAutoBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/power/DisplayPowerController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/power/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/power/DisplayPowerController;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(ZI)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/power/DisplayPowerController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->sendDelayScreenOnStateAfterEndCall(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/power/DisplayPowerController;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->getManualDisplayBrightness(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/SuspendBlocker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/power/DisplayPowerController;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceProximitySensor()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceButtonLight()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceLightSensor()V

    return-void
.end method

.method private animateScreenBrightness(III)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "rate"    # I
    .param p3, "buttonValue"    # I

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/power/DisplayPowerController;->animateScreenBrightness(IIII)V

    return-void
.end method

.method private animateScreenBrightness(IIII)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "rate"    # I
    .param p3, "buttonValue"    # I
    .param p4, "duration"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/power/RampAnimator;->animateTo(IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->convertDisplayBrightnessToBacklightAlgorithm(I)I

    move-result p1

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, p1}, Lcom/android/server/power/Notifier;->onScreenBrightness(I)V

    :cond_1
    return-void
.end method

.method private applyEBIAverageData()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, "needUpdate":Z
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    const-string v2, "XAN-DPC"

    const-string v3, "aEBIAD start"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mSampleFull:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mSampleIndex:I

    sget v3, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    if-lt v2, v3, :cond_1

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mSampleIndex:I

    :cond_1
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mSampleLevel:[F

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mSampleIndex:I

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedEBI:F

    aput v4, v2, v3

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mSampleIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mSampleIndex:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mSampleFullFirst:Z

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1

    :cond_3
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mSampleLevel:[F

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mSampleIndex:I

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedEBI:F

    aput v4, v2, v3

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mSampleIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mSampleIndex:I

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mSampleIndex:I

    sget v3, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    if-lt v2, v3, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mSampleFull:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mSampleFullFirst:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v2, :cond_2

    const-string v2, "XAN-DPC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyEBIAverageData exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 6
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    if-ne v2, v3, :cond_1

    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    :goto_0
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v2, :cond_0

    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedEBI:F

    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedEBITime:J

    :cond_0
    return-void

    :cond_1
    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    sub-long v0, p1, v2

    .local v0, "timeDelta":J
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    sub-float v3, p3, v3

    long-to-float v4, v0

    mul-float/2addr v3, v4

    const-wide/16 v4, 0x3e8

    add-long/2addr v4, v0

    long-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    sub-float v3, p3, v3

    long-to-float v4, v0

    mul-float/2addr v3, v4

    const-wide/16 v4, 0x1388

    add-long/2addr v4, v0

    long-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    goto :goto_0
.end method

.method private autoEBIAverageRuleInit()V
    .locals 12

    .prologue
    const/high16 v10, 0x42c80000    # 100.0f

    sget v1, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I

    .local v1, "old_ab_avg_debounce":I
    sget v4, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    .local v4, "old_ab_avg_sample_num":I
    sget v7, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD:F

    .local v7, "old_ab_avg_up_threshold":F
    sget v2, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD:F

    .local v2, "old_ab_avg_low_threshold":F
    sget v5, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STABLE_DEBOUNCE:I

    .local v5, "old_ab_avg_stb_debounce":I
    sget v6, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD:F

    .local v6, "old_ab_avg_stb_threshold":F
    sget v3, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    .local v3, "old_ab_avg_min_thvalue":I
    :try_start_0
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v8, :cond_0

    const-string v8, "persist.htc.pms.abavg.deb"

    sget v9, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I

    sget v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I

    sget v9, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I

    div-int/2addr v8, v9

    sput v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    const-string v8, "persist.htc.pms.abavg.uth"

    sget v9, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD_TEMP:I

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    sput v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD:F

    const-string v8, "persist.htc.pms.abavg.lth"

    sget v9, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD_TEMP:I

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    sput v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD:F

    const-string v8, "persist.htc.pms.abavgs.deb"

    sget v9, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STABLE_DEBOUNCE:I

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STABLE_DEBOUNCE:I

    const-string v8, "persist.htc.pms.abavgs.th"

    sget v9, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD_TEMP:I

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    sput v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD:F

    const-string v8, "persist.htc.pms.minth"

    sget v9, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    :cond_0
    sget v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mSampleLevel:[F

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mSampleFull:Z

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/power/DisplayPowerController;->mSampleIndex:I

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/power/DisplayPowerController;->mLastSampleTime:J

    const/high16 v8, -0x40800000    # -1.0f

    sput v8, Lcom/android/server/power/DisplayPowerController;->mPrevEBI:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v8, :cond_2

    const-string v8, "XAN-DPC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "aEBIARInit: sample=("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mSampleFull:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mSampleIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/server/power/DisplayPowerController;->mLastSampleTime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/power/DisplayPowerController;->mPrevEBI:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", avg_deb="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", avg_sample_num="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", avg_up_threshold="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", avg_low_threshold="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", avg_min_thvalue="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", avg_stb_deb="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STABLE_DEBOUNCE:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", avg_stb_threshold="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v8, :cond_1

    const-string v8, "XAN-DPC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "autoEBIAverageRuleInit exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private autoEBIAverageRuleReset()V
    .locals 5

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mSampleFull:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mSampleFullFirst:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mSampleIndex:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastSampleTime:J

    const/high16 v1, -0x40800000    # -1.0f

    sput v1, Lcom/android/server/power/DisplayPowerController;->mPrevEBI:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    const-string v1, "XAN-DPC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aEBIARReset: sample=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->mSampleFull:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mSampleIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/power/DisplayPowerController;->mLastSampleTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "XAN-DPC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoEBIAverageRuleReset exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private autoEBIAverageRuleStart(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mLastSampleTime:J

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/16 v2, 0x8

    sget v3, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    const-string v1, "XAN-DPC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aEBIARStart: sample=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->mSampleFull:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mSampleIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/power/DisplayPowerController;->mLastSampleTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "XAN-DPC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoEBIAverageRuleStart exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private blockScreenOn()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "XAN-DPC"

    const-string v1, "Blocked screen on."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    :cond_0
    return-void
.end method

.method private checkHtcCustomizationReader()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v4, :cond_1

    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .local v0, "customizationManger":Lcom/htc/customization/HtcCustomizationManager;
    if-nez v0, :cond_0

    const-string v3, "XAN-DPC"

    const-string v4, "customizationManger = null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "customizationManger":Lcom/htc/customization/HtcCustomizationManager;
    :goto_0
    return v2

    .restart local v0    # "customizationManger":Lcom/htc/customization/HtcCustomizationManager;
    :cond_0
    const-string v4, "Android_Core_Framework"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v4, :cond_1

    const-string v3, "XAN-DPC"

    const-string v4, "mHtcCustomizationReader = null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "customizationManger":Lcom/htc/customization/HtcCustomizationManager;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "XAN-DPC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot get HtcCustomization, reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private static clamp(III)I
    .locals 0
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    if-gt p0, p1, :cond_0

    .end local p1    # "min":I
    :goto_0
    return p1

    .restart local p1    # "min":I
    :cond_0
    if-lt p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2
    .param p0, "value"    # I

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->clamp(III)I

    move-result v0

    return v0
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Lcom/android/server/power/DisplayPowerController;->clamp(III)I

    move-result v0

    return v0
.end method

.method private clampScreenDisplayBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x2800

    invoke-static {p1, v0, v1}, Lcom/android/server/power/DisplayPowerController;->clamp(III)I

    move-result v0

    return v0
.end method

.method private clampScreenEBI(F)F
    .locals 3
    .param p1, "value"    # F

    .prologue
    const v1, 0x477fff00    # 65535.0f

    const/4 v0, 0x0

    cmpg-float v2, p1, v0

    if-gtz v2, :cond_1

    move p1, v0

    .end local p1    # "value":F
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "value":F
    :cond_1
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    move p1, v1

    goto :goto_0
.end method

.method private clearPendingProximityDebounceTime()V
    .locals 4

    .prologue
    iget-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    :cond_0
    return-void
.end method

.method private convertDisplayBrightnessToBacklightAlgorithm(I)I
    .locals 8
    .param p1, "brightness"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v3, -0x1

    .local v3, "screenDisplayBrightness":I
    const/4 v2, -0x1

    .local v2, "screenBacklight":I
    const/4 v4, 0x0

    .local v4, "tableSize":I
    move v3, p1

    :try_start_0
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mBacklightToDisplayBrightnessTable:[I

    array-length v4, v5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mBacklightToDisplayBrightnessTable:[I

    aget v5, v5, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v5, v3, :cond_3

    :cond_0
    add-int/lit8 v2, v1, -0x1

    :cond_1
    :goto_1
    invoke-static {v2}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v2

    sget-boolean v5, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v5, :cond_2

    const-string v5, "XAN-DPC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DisBLToBL=("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v5, :cond_1

    const-string v5, "XAN-DPC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "convertDisplayBrightnessToBacklightAlgorithm exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private convertEBIToDisplayBrightnessAlgorithm(F)I
    .locals 7
    .param p1, "EBI"    # F

    .prologue
    const/4 v2, -0x1

    .local v2, "screenDisplayBrightnessValue":I
    const/4 v3, 0x0

    .local v3, "screenEBI":F
    move v3, p1

    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_4

    const/4 v3, 0x0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mEBIToDisplayBrightnessTable:[I

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mEBIToDisplayBrightnessTable:[I

    array-length v4, v4

    if-lez v4, :cond_5

    float-to-int v1, v3

    .local v1, "indexEBI":I
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mEBIToDisplayBrightnessTable:[I

    array-length v4, v4

    if-lt v1, v4, :cond_1

    const-string v4, "XAN-DPC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EBI index more than table = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mEBIToDisplayBrightnessTable:[I

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mEBIToDisplayBrightnessTable:[I

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    :cond_1
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mEBIToDisplayBrightnessTable:[I

    aget v2, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "indexEBI":I
    :cond_2
    :goto_1
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v4, :cond_3

    const-string v4, "XAN-DPC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EBIToDisBL=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/power/DisplayPowerController;->clampScreenDisplayBrightness(I)I

    move-result v2

    return v2

    :cond_4
    const v4, 0x477fff00    # 65535.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    const v3, 0x477fff00    # 65535.0f

    goto :goto_0

    :cond_5
    :try_start_1
    const-string v4, "XAN-DPC"

    const-string v5, "mEBIToDisplayBrightnessTable is invalid"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v4, 0x41700000    # 15.0f

    const v5, 0x3eb33333    # 0.35f

    invoke-static {v3, v5}, Landroid/util/FloatMath;->pow(FF)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v2, v4

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v4, :cond_2

    const-string v4, "XAN-DPC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertEBIToDisplayBrightnessAlgorithm exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static createAutoBrightnessSpline([I[I)Landroid/util/Spline;
    .locals 13
    .param p0, "lux"    # [I
    .param p1, "brightness"    # [I

    .prologue
    const/high16 v12, 0x3fa00000    # 1.25f

    :try_start_0
    array-length v2, p1

    .local v2, "n":I
    new-array v5, v2, [F

    .local v5, "x":[F
    new-array v6, v2, [F

    .local v6, "y":[F
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, p1, v8

    invoke-static {v8}, Lcom/android/server/power/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v8

    aput v8, v6, v7

    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    add-int/lit8 v7, v1, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    aput v7, v5, v1

    aget v7, p1, v1

    invoke-static {v7}, Lcom/android/server/power/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v7

    aput v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v5, v6}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object v3

    .local v3, "spline":Landroid/util/Spline;
    sget-boolean v7, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "XAN-DPC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Auto-brightness spline: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "v":F
    :goto_1
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    mul-float/2addr v7, v12

    cmpg-float v7, v4, v7

    if-gez v7, :cond_1

    const-string v7, "XAN-DPC"

    const-string v8, "  %7.1f: %7.1f"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    mul-float/2addr v4, v12

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "spline":Landroid/util/Spline;
    .end local v4    # "v":F
    .end local v5    # "x":[F
    .end local v6    # "y":[F
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v7, "XAN-DPC"

    const-string v8, "Could not create auto-brightness spline."

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    return-object v3
.end method

.method private debounceButtonLight()V
    .locals 4

    .prologue
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "XAN-DPC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "d-B-L="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    const-string v1, "XAN-DPC"

    const-string v2, "debounceButtonLight mPendingRequestLocked = null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    const-string v1, "XAN-DPC"

    const-string v2, "debounceButtonLight mPowerRequest = null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    const-string v1, "XAN-DPC"

    const-string v2, "debounceButtonLight mPowerState = null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v1, v1, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAutoBrightnessCtrl:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_5

    const-string v1, "XAN-DPC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Average=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .local v0, "LUX":I
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAutoBrightnessCtrl:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    invoke-virtual {v1, v0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getButtonValue(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mButtonValue:I

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mButtonValue:I

    invoke-virtual {v1, v2}, Lcom/android/server/power/DisplayPowerState;->setButtonBrightness(I)V

    goto :goto_0
.end method

.method private debounceLightSensor()V
    .locals 6

    .prologue
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, "time":J
    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "XAN-DPC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "debounceLightSensor: Synthesizing light sensor measurement after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/power/DisplayPowerController;->applyLightSensorMeasurement(JF)V

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->updateAmbientLux(J)V

    .end local v0    # "time":J
    :cond_2
    return-void
.end method

.method private debounceProximitySensor()V
    .locals 7

    .prologue
    iget-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-wide v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .local v1, "now":J
    iget-wide v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    cmp-long v3, v3, v1

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    iput v3, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    invoke-direct {p0, v3}, Lcom/android/server/power/DisplayPowerController;->handleProximitySensorAfterEndCall(I)V

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->updatePowerState()V

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->clearPendingProximityDebounceTime()V

    .end local v1    # "now":J
    :cond_0
    :goto_0
    return-void

    .restart local v1    # "now":J
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private disableProximitySensorAfterEndCall()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    return-void
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Display Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLuxValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLightSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentShortTermAverageLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLongTermAverageLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDebounceLuxDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDebounceLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUsingScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastScreenAutoBrightnessGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTwilight.getCurrentState()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    invoke-virtual {v1}, Lcom/android/server/TwilightService;->getCurrentState()Lcom/android/server/TwilightService$TwilightState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mElectronBeamOnAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mElectronBeamOffAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    :cond_2
    return-void
.end method

.method private getEBIAverageAlgorithm(F)F
    .locals 11
    .param p1, "EBI"    # F

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    .local v0, "EBIValue":F
    const/high16 v1, -0x40800000    # -1.0f

    .local v1, "EBIValueTemp":F
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v8, :cond_0

    const-string v8, "XAN-DPC"

    const-string v9, "getEBIAverageAlgorithm start"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v2, Lcom/android/server/power/DisplayPowerController;->mPrevEBI:F

    .local v2, "downEBI":F
    sget v5, Lcom/android/server/power/DisplayPowerController;->mPrevEBI:F

    .local v5, "upEBI":F
    sget v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD:F

    mul-float v4, v2, v8

    .local v4, "downThresholdTemp":F
    sget v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD:F

    mul-float v7, v5, v8

    .local v7, "upThresholdTemp":F
    sget v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    int-to-float v8, v8

    cmpg-float v8, v4, v8

    if-gez v8, :cond_1

    sget v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    int-to-float v4, v8

    :cond_1
    sget v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    int-to-float v8, v8

    cmpg-float v8, v7, v8

    if-gez v8, :cond_2

    sget v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    int-to-float v7, v8

    :cond_2
    sub-float v3, v2, v4

    .local v3, "downThreshold":F
    add-float v6, v5, v7

    .local v6, "upThreshold":F
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v8, :cond_3

    const-string v8, "XAN-DPC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EBI 11 = ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "XAN-DPC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EBIThreshold = ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->clampScreenEBI(F)F

    move-result v1

    sget v8, Lcom/android/server/power/DisplayPowerController;->mPrevEBI:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_6

    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v8, :cond_4

    const-string v8, "XAN-DPC"

    const-string v9, "EBI first update"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v0, v1

    :goto_0
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v8, :cond_5

    const-string v8, "XAN-DPC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EBIValue="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/power/DisplayPowerController;->mPrevEBI:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sput v0, Lcom/android/server/power/DisplayPowerController;->mPrevEBI:F

    return v0

    :cond_6
    cmpg-float v8, v6, v1

    if-lez v8, :cond_7

    cmpl-float v8, v3, v1

    if-ltz v8, :cond_8

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    sget v0, Lcom/android/server/power/DisplayPowerController;->mPrevEBI:F

    goto :goto_0
.end method

.method private getManualDisplayBrightness(I)I
    .locals 1
    .param p1, "lcdValue"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/power/DisplayPowerController;->convertBacklightToDisplayBrightnessAlgorithm(I)I

    move-result v0

    return v0
.end method

.method private static getTwilightGamma(JJJ)F
    .locals 9
    .param p0, "now"    # J
    .param p2, "lastSunset"    # J
    .param p4, "nextSunrise"    # J

    .prologue
    const-wide/32 v7, 0x6ddd00

    const-wide/16 v5, 0x0

    const v4, 0x4adbba00    # 7200000.0f

    const/high16 v0, 0x3fc00000    # 1.5f

    const/high16 v1, 0x3f800000    # 1.0f

    cmp-long v2, p2, v5

    if-ltz v2, :cond_0

    cmp-long v2, p4, v5

    if-ltz v2, :cond_0

    cmp-long v2, p0, p2

    if-ltz v2, :cond_0

    cmp-long v2, p0, p4

    if-lez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    add-long v2, p2, v7

    cmp-long v2, p0, v2

    if-gez v2, :cond_3

    sub-long v2, p0, p2

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Lcom/android/server/power/DisplayPowerController;->lerp(FFF)F

    move-result v0

    goto :goto_0

    :cond_3
    sub-long v2, p4, v7

    cmp-long v2, p0, v2

    if-lez v2, :cond_1

    sub-long v2, p4, p0

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Lcom/android/server/power/DisplayPowerController;->lerp(FFF)F

    move-result v0

    goto :goto_0
.end method

.method private handleDelayScreenOnTimeoutAfterEndCall()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "XAN-DPC"

    const-string v1, "d o Timeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PMSInternalAPI;->clearDelayScreenOn()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/power/DisplayPowerRequest;->delayScreenOn:Z

    :cond_2
    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mProximityAfterEndCall:I

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->disableProximitySensorAfterEndCall()V

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PMSInternalAPI;->forceEnterSleepMode()V

    :cond_3
    return-void
.end method

.method private handleEBIAverageRuleUpdate()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .local v5, "totalEBI":F
    const/4 v0, 0x0

    .local v0, "avgEBI":F
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v6, :cond_0

    const-string v6, "XAN-DPC"

    const-string v7, "hEBIARU start"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    sget v6, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    if-ge v2, v6, :cond_1

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mSampleLevel:[F

    aget v6, v6, v2

    add-float/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget v6, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    int-to-float v6, v6

    div-float v0, v5, v6

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mSampleFullFirst:Z

    if-eqz v6, :cond_4

    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v6, :cond_2

    const-string v6, "XAN-DPC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hEBIARU first full pre=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientEBI:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mLastAmbientEBI:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/power/DisplayPowerController;->mLastAmbientEBITime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientEBI:F

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mLastAmbientEBI:F

    iget-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mLastSampleTime:J

    iput-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mLastAmbientEBITime:J

    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v6, :cond_3

    const-string v6, "XAN-DPC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hEBIARU first full aft=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientEBI:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mLastAmbientEBI:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/power/DisplayPowerController;->mLastAmbientEBITime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .local v3, "nowTime":J
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v6, :cond_5

    const-string v6, "XAN-DPC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hEBIARU prechk=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientEBI:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mLastAmbientEBI:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/power/DisplayPowerController;->mLastAmbientEBITime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mLastAmbientEBITime:J

    sub-long v6, v3, v6

    sget v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STABLE_DEBOUNCE:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_7

    invoke-direct {p0, v0}, Lcom/android/server/power/DisplayPowerController;->isAmbientEBIAverageStable(F)Z

    move-result v6

    if-eqz v6, :cond_6

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientEBI:F

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    :cond_6
    iget-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mLastSampleTime:J

    iput-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mLastAmbientEBITime:J

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mLastAmbientEBI:F

    :cond_7
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v6, :cond_3

    const-string v6, "XAN-DPC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hEBIARU aftchk=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientEBI:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mLastAmbientEBI:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/power/DisplayPowerController;->mLastAmbientEBITime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .end local v3    # "nowTime":J
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v6, :cond_3

    const-string v6, "XAN-DPC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleEBIAverageRuleUpdate exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private handleEBIAverageSampleTimeout()V
    .locals 14

    .prologue
    const-wide/16 v2, 0x0

    .local v2, "diffTime":J
    const-wide/16 v0, 0x0

    .local v0, "delayTime":J
    const/4 v7, 0x0

    .local v7, "overCount":I
    const/4 v6, 0x0

    .local v6, "needUpdate":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .local v8, "tmpTime":J
    sget-boolean v10, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v10, :cond_0

    const-string v10, "XAN-DPC"

    const-string v11, "hEBIAST start"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-wide v10, p0, Lcom/android/server/power/DisplayPowerController;->mLastSampleTime:J

    sub-long v2, v8, v10

    sget v10, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I

    int-to-long v10, v10

    cmp-long v10, v2, v10

    if-ltz v10, :cond_3

    sget v10, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I

    int-to-long v10, v10

    div-long v10, v2, v10

    long-to-int v7, v10

    iget-wide v10, p0, Lcom/android/server/power/DisplayPowerController;->mLastSampleTime:J

    sget v12, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I

    add-int/lit8 v13, v7, 0x1

    mul-int/2addr v12, v13

    int-to-long v12, v12

    add-long/2addr v10, v12

    sub-long v0, v10, v8

    :goto_0
    sget v10, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    if-le v7, v10, :cond_2

    sget-boolean v10, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v10, :cond_1

    const-string v10, "XAN-DPC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hEBIAST oC = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget v7, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v7, :cond_4

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->applyEBIAverageData()Z

    move-result v10

    or-int/2addr v6, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v5    # "i":I
    :cond_3
    iget-wide v10, p0, Lcom/android/server/power/DisplayPowerController;->mLastSampleTime:J

    sget v12, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I

    int-to-long v12, v12

    add-long/2addr v10, v12

    sub-long v0, v10, v8

    goto :goto_0

    .restart local v5    # "i":I
    :cond_4
    iget-wide v10, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedEBITime:J

    sub-long v10, v8, v10

    sget v12, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STOP_UPDATE_DEBOUNCE:I

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-gtz v10, :cond_8

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/16 v11, 0x8

    invoke-virtual {v10, v11, v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    :goto_2
    sget-boolean v10, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v10, :cond_6

    const-string v10, "XAN-DPC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Time=("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Lcom/android/server/power/DisplayPowerController;->mLastSampleTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedEBITime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "XAN-DPC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Sample=("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/server/power/DisplayPowerController;->mSampleFull:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/power/DisplayPowerController;->mSampleIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedEBI:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    add-long v10, v8, v0

    sget v12, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I

    int-to-long v12, v12

    sub-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/server/power/DisplayPowerController;->mLastSampleTime:J

    if-eqz v6, :cond_7

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->handleEBIAverageRuleUpdate()V

    .end local v5    # "i":I
    :cond_7
    :goto_3
    return-void

    .restart local v5    # "i":I
    :cond_8
    sget-boolean v10, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v10, :cond_5

    const-string v10, "XAN-DPC"

    const-string v11, "hEBIAST no L c"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .end local v5    # "i":I
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    sget-boolean v10, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v10, :cond_7

    const-string v10, "XAN-DPC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleEBIAverageSampleTimeout exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private handleLightSensorEvent(JF)V
    .locals 2
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/DisplayPowerController;->updateAmbientEBI(J)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->applyLightSensorMeasurement(JF)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/DisplayPowerController;->updateAmbientLux(J)V

    return-void
.end method

.method private handleProximitySensorAfterEndCall(I)V
    .locals 5
    .param p1, "proximity"    # I

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    if-ne v0, v1, :cond_4

    if-nez p1, :cond_3

    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "XAN-DPC"

    const-string v1, "r dso 1"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput-boolean v3, v0, Lcom/android/server/power/DisplayPowerRequest;->delayScreenOn:Z

    :cond_2
    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mProximityAfterEndCall:I

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    if-nez v0, :cond_3

    if-nez p1, :cond_9

    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximityAfterEndCall:I

    if-ne v0, v1, :cond_3

    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_5

    const-string v0, "XAN-DPC"

    const-string v1, "r dso 2"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PMSInternalAPI;->clearDelayScreenOn()V

    :cond_7
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput-boolean v3, v0, Lcom/android/server/power/DisplayPowerRequest;->delayScreenOn:Z

    :cond_8
    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mProximityAfterEndCall:I

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->disableProximitySensorAfterEndCall()V

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerStateLocked()V

    goto :goto_0

    :cond_9
    if-ne p1, v1, :cond_3

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximityAfterEndCall:I

    goto :goto_0
.end method

.method private handleProximitySensorEvent(JZ)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    .prologue
    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    if-ne v0, v2, :cond_2

    if-nez p3, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    if-eqz p3, :cond_3

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    sget v0, Lcom/android/server/power/DisplayPowerController;->PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    :goto_1
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceProximitySensor()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    sget v0, Lcom/android/server/power/DisplayPowerController;->PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    goto :goto_1
.end method

.method private initialize()V
    .locals 20

    .prologue
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "XAN-DPC"

    const-string v2, "initialize..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Lcom/android/server/power/DisplayPowerState;

    new-instance v2, Lcom/android/server/power/ElectronBeam;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/DisplayPowerController;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/power/ElectronBeam;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/DisplayPowerController;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/DisplayPowerController;->mLights:Lcom/android/server/LightsService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/DisplayPowerController;->mLights:Lcom/android/server/LightsService;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/DisplayPowerState;-><init>(Lcom/android/server/power/ElectronBeam;Lcom/android/server/power/DisplayBlanker;Lcom/android/server/LightsService$Light;Lcom/android/server/LightsService$Light;Z)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    sget-object v2, Lcom/android/server/power/DisplayPowerState;->ELECTRON_BEAM_LEVEL:Landroid/util/FloatProperty;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    sget-object v2, Lcom/android/server/power/DisplayPowerState;->ELECTRON_BEAM_LEVEL:Landroid/util/FloatProperty;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/android/server/power/RampAnimator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    sget-object v3, Lcom/android/server/power/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    invoke-direct {v1, v2, v3}, Lcom/android/server/power/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    sget v8, Lcom/android/server/power/DisplayPowerController;->ANIMATION_MODE:I

    .local v8, "old_animation_mode":I
    sget-wide v10, Lcom/android/server/power/DisplayPowerController;->BRIGHTENING_LIGHT_DEBOUNCE:J

    .local v10, "old_brighten_ls_debounce":J
    sget-wide v13, Lcom/android/server/power/DisplayPowerController;->DARKENING_LIGHT_DEBOUNCE:J

    .local v13, "old_darken_ls_debounce":J
    sget v9, Lcom/android/server/power/DisplayPowerController;->AUTOBRIGHTNESS_ANIM_DURATION:I

    .local v9, "old_brighten_duration":I
    sget v12, Lcom/android/server/power/DisplayPowerController;->AUTODIMNESS_ANIM_DURATION:I

    .local v12, "old_darken_duration":I
    :try_start_0
    const-string v1, "persist.htc.pms.anim.mode"

    sget v2, Lcom/android/server/power/DisplayPowerController;->ANIMATION_MODE:I

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/power/DisplayPowerController;->ANIMATION_MODE:I

    const-string v1, "persist.htc.pms.brighten.ls"

    sget-wide v2, Lcom/android/server/power/DisplayPowerController;->BRIGHTENING_LIGHT_DEBOUNCE:J

    invoke-static {v1, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/power/DisplayPowerController;->BRIGHTENING_LIGHT_DEBOUNCE:J

    const-string v1, "persist.htc.pms.darken.ls"

    sget-wide v2, Lcom/android/server/power/DisplayPowerController;->DARKENING_LIGHT_DEBOUNCE:J

    invoke-static {v1, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/power/DisplayPowerController;->DARKENING_LIGHT_DEBOUNCE:J

    const-string v1, "persist.htc.pms.brighten.dur"

    sget v2, Lcom/android/server/power/DisplayPowerController;->AUTOBRIGHTNESS_ANIM_DURATION:I

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/power/DisplayPowerController;->AUTOBRIGHTNESS_ANIM_DURATION:I

    const-string v1, "persist.htc.pms.darken.dur"

    sget v2, Lcom/android/server/power/DisplayPowerController;->AUTODIMNESS_ANIM_DURATION:I

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/power/DisplayPowerController;->AUTODIMNESS_ANIM_DURATION:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    sget v19, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_NEAR_DURATION:I

    .local v19, "old_delay_near":I
    sget v17, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_FAR_ANGLE_DURATION:I

    .local v17, "old_delay_far_angle":I
    sget v18, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_FAR_TOTAL_DURATION:I

    .local v18, "old_delay_far_total":I
    sget v16, Lcom/android/server/power/DisplayPowerController;->PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I

    .local v16, "old_debounce_near":I
    sget v15, Lcom/android/server/power/DisplayPowerController;->PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I

    .local v15, "old_debounce_far":I
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/DisplayPowerController;->checkHtcCustomizationReader()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/DisplayPowerController;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "powermanager_delay_screen_on_from_near_duration"

    sget v3, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_NEAR_DURATION:I

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_NEAR_DURATION:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/DisplayPowerController;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "powermanager_delay_screen_on_from_far_angle_duration"

    sget v3, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_FAR_ANGLE_DURATION:I

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_FAR_ANGLE_DURATION:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/DisplayPowerController;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "powermanager_delay_screen_on_from_far_total_duration"

    sget v3, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_FAR_TOTAL_DURATION:I

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_FAR_TOTAL_DURATION:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/DisplayPowerController;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "htcangledetector_is_angle_detector_enable"

    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->IS_ANGLE_DETECTOR_SUPPORT:Z

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/power/DisplayPowerController;->IS_ANGLE_DETECTOR_SUPPORT:Z

    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->IS_ANGLE_DETECTOR_SUPPORT:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    sput v1, Lcom/android/server/power/DisplayPowerController;->PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I

    const/4 v1, 0x0

    sput v1, Lcom/android/server/power/DisplayPowerController;->PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_3

    const-string v1, "XAN-DPC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize: mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/power/DisplayPowerController;->ANIMATION_MODE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", angle detector mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->IS_ANGLE_DETECTOR_SUPPORT:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", brightness_rate_fast="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/power/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_FAST:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", brightness_rate_slow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/power/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_SLOW:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", brighten_ls_debounce="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/android/server/power/DisplayPowerController;->BRIGHTENING_LIGHT_DEBOUNCE:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", darken_ls_debounce="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/android/server/power/DisplayPowerController;->DARKENING_LIGHT_DEBOUNCE:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", brighten_duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/power/DisplayPowerController;->AUTOBRIGHTNESS_ANIM_DURATION:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", darken_duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/power/DisplayPowerController;->AUTODIMNESS_ANIM_DURATION:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", delay_near="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_NEAR_DURATION:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", delay_far_angle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_FAR_ANGLE_DURATION:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", delay_far_total="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_FAR_TOTAL_DURATION:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", debounce_near="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/power/DisplayPowerController;->PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", debounce_far="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/power/DisplayPowerController;->PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .end local v15    # "old_debounce_far":I
    .end local v16    # "old_debounce_near":I
    .end local v17    # "old_delay_far_angle":I
    .end local v18    # "old_delay_far_total":I
    .end local v19    # "old_delay_near":I
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    const-string v1, "XAN-DPC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize: Unable to get anim durations from SystemProperties. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v15    # "old_debounce_far":I
    .restart local v16    # "old_debounce_near":I
    .restart local v17    # "old_delay_far_angle":I
    .restart local v18    # "old_delay_far_total":I
    .restart local v19    # "old_delay_near":I
    :catch_1
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_2

    const-string v1, "XAN-DPC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize: Unable to get durations from CustomizationReader. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private isAmbientEBIAverageStable(F)Z
    .locals 7
    .param p1, "EBI"    # F

    .prologue
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v4, :cond_0

    const-string v4, "XAN-DPC"

    const-string v5, "iAEBIAS start"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mLastAmbientEBI:F

    .local v0, "downStableEBI":F
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastAmbientEBI:F

    .local v2, "upStableEBI":F
    sget v4, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD:F

    mul-float/2addr v4, v0

    sub-float v1, v0, v4

    .local v1, "downStableThreshold":F
    sget v4, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD:F

    mul-float/2addr v4, v2

    add-float v3, v2, v4

    .local v3, "upStableThreshold":F
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v4, :cond_1

    const-string v4, "XAN-DPC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iAEBIAS 11 = ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    cmpg-float v4, v3, p1

    if-ltz v4, :cond_2

    cmpl-float v4, v1, p1

    if-lez v4, :cond_3

    :cond_2
    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static lerp(FFF)F
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "alpha"    # F

    .prologue
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private static normalizeAbsoluteBrightness(I)F
    .locals 2
    .param p0, "value"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private static proximityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Unknown"

    goto :goto_0

    :pswitch_1
    const-string v0, "Negative"

    goto :goto_0

    :pswitch_2
    const-string v0, "Positive"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private resetEndCallMode()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    if-ne v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    const-string v0, "XAN-DPC"

    const-string v1, "rECM"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PMSInternalAPI;->clearDelayScreenOn()V

    :cond_3
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/power/DisplayPowerRequest;->delayScreenOn:Z

    :cond_4
    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mProximityAfterEndCall:I

    goto :goto_0
.end method

.method private sendDelayScreenOnStateAfterEndCall(I)V
    .locals 5
    .param p1, "reason"    # I

    .prologue
    const/4 v4, -0x1

    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "XAN-DPC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sDSOSAEC="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .local v0, "turnOnScreen":Z
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    invoke-virtual {v1}, Lcom/android/server/power/HtcAngleDetector;->disableDetector_Ext()V

    :cond_1
    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximityAfterEndCall:I

    if-nez v1, :cond_2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    const/4 v0, 0x1

    :cond_2
    :goto_0
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService$PMSInternalAPI;->clearDelayScreenOn()V

    :cond_4
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/power/DisplayPowerRequest;->delayScreenOn:Z

    :cond_5
    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mProximityAfterEndCall:I

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->disableProximitySensorAfterEndCall()V

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerStateLocked()V

    :cond_6
    return-void

    :cond_7
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sendOnAngleDetectorReadingDetected()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnAngleDetectorReadingDetectedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendOnAngleDetectorTalkingDetected()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnAngleDetectorTalkingDetectedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendOnProximityNegativeWithWakelock()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendOnProximityPositiveWithWakelock()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendOnStateChangedWithWakelock()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendUpdatePowerState()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState(I)V

    return-void
.end method

.method private sendUpdatePowerState(I)V
    .locals 4
    .param p1, "DURATION"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "XAN-DPC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendUPS:Duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mCustomizeDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/server/power/DisplayPowerController;->mCustomizeDuration:I

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerStateLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendUpdatePowerStateLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setAmbientLux(F)V
    .locals 2
    .param p1, "lux"    # F

    .prologue
    iput p1, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    return-void
.end method

.method private setLightSensorEnabled(ZZ)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "updateAutoBrightness"    # Z

    .prologue
    const/4 v5, 0x0

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-nez v0, :cond_1

    const/4 p2, 0x1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "XAN-DPC"

    const-string v1, "Reg L Sensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    const v3, 0xf4240

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-direct {p0, v5}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    :cond_2
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v0, :cond_1

    iput-boolean v5, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    iput-boolean v5, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    iput v5, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->autoEBIAverageRuleReset()V

    :cond_4
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    const-string v0, "XAN-DPC"

    const-string v1, "Unreg L Sensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPendingProximityDebounceTime(J)V
    .locals 4
    .param p1, "debounceTime"    # J

    .prologue
    iget-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    :cond_0
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    return-void
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, -0x1

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "XAN-DPC"

    const-string v1, "Reg P Sensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/power/HtcAngleDetector;->proximitySensorOn(Z)V

    :cond_2
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->resetEndCallMode()V

    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_4

    const-string v0, "XAN-DPC"

    const-string v1, "Unreg P Sensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->clearPendingProximityDebounceTime()V

    goto :goto_0
.end method

.method private setScreenOn(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/power/DisplayPowerState;->isScreenOn()Z

    move-result v0

    if-eq v0, p1, :cond_4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v0, v2}, Lcom/android/server/power/PowerManagerService$PMSInternalAPI;->setProximityStateWithScreenOff(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v0, v0, Lcom/android/server/power/DisplayPowerRequest;->turnOnScreenOnce:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    const-string v0, "XAN-DPC"

    const-string v1, "clear turnOnScreenOnce flag"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput-boolean v2, v0, Lcom/android/server/power/DisplayPowerRequest;->turnOnScreenOnce:Z

    :cond_2
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayPowerState;->setScreenOn(Z)V

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    invoke-virtual {v0, v2}, Lcom/android/server/power/HtcAngleDetector;->notifyScreenTimeout(Z)V

    :cond_3
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenOn()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenOff()V

    goto :goto_0
.end method

.method private unblockScreenOn()V
    .locals 6

    .prologue
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long v0, v2, v4

    .local v0, "delay":J
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "XAN-DPC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unblocked screen on after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "delay":J
    :cond_1
    return-void
.end method

.method private updateAmbientEBI(J)V
    .locals 2
    .param p1, "time"    # J

    .prologue
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "XAN-DPC"

    const-string v1, "uAEBI start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    const-string v0, "XAN-DPC"

    const-string v1, "uAEBI 11"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedEBITime:J

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->handleEBIAverageSampleTimeout()V

    goto :goto_0
.end method

.method private updateAmbientLux(J)V
    .locals 10
    .param p1, "time"    # J

    .prologue
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-nez v6, :cond_6

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v6, v6

    iget-wide v8, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    add-long v4, v6, v8

    .local v4, "timeWhenSensorWarmedUp":J
    cmp-long v6, p1, v4

    if-gez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v4, v5}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    .end local v4    # "timeWhenSensorWarmedUp":J
    :cond_0
    :goto_0
    return-void

    .restart local v4    # "timeWhenSensorWarmedUp":J
    :cond_1
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->setAmbientLux(F)V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "XAN-DPC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAmbientLux: Initializing: , mRecentShortTermAverageLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRecentLongTermAverageLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mAmbientLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v6, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/DisplayPowerController;->autoEBIAverageRuleStart(J)V

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedEBI:F

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientEBI:F

    :cond_3
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    .end local v4    # "timeWhenSensorWarmedUp":J
    :cond_4
    :goto_1
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    :cond_5
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v7, 0x3

    const-wide/16 v8, 0x7d0

    add-long/2addr v8, p1

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    :cond_6
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_a

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_a

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-gtz v6, :cond_7

    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_7

    const-string v6, "XAN-DPC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAmbientLux: Possibly brightened, waiting for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lcom/android/server/power/DisplayPowerController;->BRIGHTENING_LIGHT_DEBOUNCE:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mBrighteningLuxThreshold="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRecentShortTermAverageLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRecentLongTermAverageLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mAmbientLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    sget-wide v8, Lcom/android/server/power/DisplayPowerController;->BRIGHTENING_LIGHT_DEBOUNCE:J

    add-long v2, v6, v8

    .local v2, "debounceTime":J
    cmp-long v6, p1, v2

    if-gez v6, :cond_8

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v2, v3}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    :cond_8
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->setAmbientLux(F)V

    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_9

    const-string v6, "XAN-DPC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAmbientLux: Brightened: mBrighteningLuxThreshold="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRecentShortTermAverageLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRecentLongTermAverageLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mAmbientLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-nez v6, :cond_4

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    goto/16 :goto_1

    .end local v2    # "debounceTime":J
    :cond_a
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_f

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_f

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-ltz v6, :cond_b

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_b

    const-string v6, "XAN-DPC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAmbientLux: Possibly darkened, waiting for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lcom/android/server/power/DisplayPowerController;->DARKENING_LIGHT_DEBOUNCE:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mDarkeningLuxThreshold="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRecentShortTermAverageLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRecentLongTermAverageLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mAmbientLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    sget-wide v8, Lcom/android/server/power/DisplayPowerController;->DARKENING_LIGHT_DEBOUNCE:J

    add-long v2, v6, v8

    .restart local v2    # "debounceTime":J
    iget-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    sget-wide v8, Lcom/android/server/power/DisplayPowerController;->DARKENING_BUTTON_LIGHT_DEBOUNCE:J

    add-long v0, v6, v8

    .local v0, "debounceButtonTime":J
    cmp-long v6, p1, v2

    if-gez v6, :cond_d

    cmp-long v6, p1, v0

    if-gtz v6, :cond_c

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v7, 0x6

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    :cond_c
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v2, v3}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    :cond_d
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->setAmbientLux(F)V

    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_e

    const-string v6, "XAN-DPC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAmbientLux: Darkened: mDarkeningLuxThreshold="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRecentShortTermAverageLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRecentLongTermAverageLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mAmbientLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-nez v6, :cond_4

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    goto/16 :goto_1

    .end local v0    # "debounceButtonTime":J
    .end local v2    # "debounceTime":J
    :cond_f
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessage(I)Z

    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "XAN-DPC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAmbientLux: Canceled debounce: mBrighteningLuxThreshold="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mDarkeningLuxThreshold="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRecentShortTermAverageLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRecentLongTermAverageLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mAmbientLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private updateAutoBrightness(Z)V
    .locals 1
    .param p1, "sendUpdate"    # Z

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(ZI)V

    return-void
.end method

.method private updateAutoBrightness(ZI)V
    .locals 18
    .param p1, "sendUpdate"    # Z
    .param p2, "DURATION"    # I

    .prologue
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON_A:Z

    if-eqz v4, :cond_0

    const-string v4, "XAN-DPC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAutoBrightness start = ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-nez v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v4, v5}, Landroid/util/Spline;->interpolate(F)F

    move-result v16

    .local v16, "value":F
    const/high16 v11, 0x3f800000    # 1.0f

    .local v11, "gamma":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientEBI:F

    move/from16 v17, v0

    .local v17, "valueEBI":F
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v4, v4, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_4

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v7, v7, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    neg-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Landroid/util/FloatMath;->pow(FF)F

    move-result v9

    .local v9, "adjGamma":F
    mul-float/2addr v11, v9

    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v4, :cond_4

    :cond_3
    const-string v4, "XAN-DPC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAB1:("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v9    # "adjGamma":F
    :cond_4
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    invoke-virtual {v4}, Lcom/android/server/TwilightService;->getCurrentState()Lcom/android/server/TwilightService$TwilightState;

    move-result-object v15

    .local v15, "state":Lcom/android/server/TwilightService$TwilightState;
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Lcom/android/server/TwilightService$TwilightState;->isNight()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, "now":J
    invoke-virtual {v15}, Lcom/android/server/TwilightService$TwilightState;->getYesterdaySunset()J

    move-result-wide v4

    invoke-virtual {v15}, Lcom/android/server/TwilightService$TwilightState;->getTodaySunrise()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/android/server/power/DisplayPowerController;->getTwilightGamma(JJJ)F

    move-result v10

    .local v10, "earlyGamma":F
    invoke-virtual {v15}, Lcom/android/server/TwilightService$TwilightState;->getTodaySunset()J

    move-result-wide v4

    invoke-virtual {v15}, Lcom/android/server/TwilightService$TwilightState;->getTomorrowSunrise()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/android/server/power/DisplayPowerController;->getTwilightGamma(JJJ)F

    move-result v13

    .local v13, "lateGamma":F
    mul-float v4, v10, v13

    mul-float/2addr v11, v4

    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-nez v4, :cond_5

    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v4, :cond_6

    :cond_5
    const-string v4, "XAN-DPC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAB2:("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "now":J
    .end local v10    # "earlyGamma":F
    .end local v13    # "lateGamma":F
    .end local v15    # "state":Lcom/android/server/TwilightService$TwilightState;
    :cond_6
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientEBI:F

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/power/DisplayPowerController;->getEBIAverageAlgorithm(F)F

    move-result v17

    :cond_7
    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v11, v4

    if-eqz v4, :cond_9

    move/from16 v12, v16

    .local v12, "in":F
    move/from16 v0, v16

    invoke-static {v0, v11}, Landroid/util/FloatMath;->pow(FF)F

    move-result v16

    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-nez v4, :cond_8

    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v4, :cond_9

    :cond_8
    const-string v4, "XAN-DPC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAB3:("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v12    # "in":F
    :cond_9
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/power/DisplayPowerController;->convertEBIToDisplayBrightnessAlgorithm(F)I

    move-result v14

    .local v14, "newScreenAutoBrightness":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/DisplayPowerController;->mHtcAutoBrightnessCtrl:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    .local v8, "LUX":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/DisplayPowerController;->mHtcAutoBrightnessCtrl:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    invoke-virtual {v4, v8}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getButtonValue(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/power/DisplayPowerController;->mButtonValue:I

    .end local v8    # "LUX":I
    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    if-ne v4, v14, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    invoke-virtual {v4}, Lcom/android/server/power/RampAnimator;->getCurrentBrightness()I

    move-result v4

    if-eq v4, v14, :cond_1

    :cond_b
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-nez v4, :cond_c

    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v4, :cond_d

    :cond_c
    const-string v4, "XAN-DPC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAB4:("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState(I)V

    goto/16 :goto_0

    .end local v14    # "newScreenAutoBrightness":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/DisplayPowerController;->mHtcAutoBrightnessCtrl:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    .restart local v8    # "LUX":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/DisplayPowerController;->mHtcAutoBrightnessCtrl:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v4, v8, v5}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getBrightnessBaseOnAlgorithm(ILandroid/util/Spline;)F

    move-result v16

    goto/16 :goto_1

    .end local v8    # "LUX":I
    :cond_f
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v4, v4, v16

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v14

    .restart local v14    # "newScreenAutoBrightness":I
    goto/16 :goto_2
.end method

.method private updatePowerState()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    .local v1, "mustInitialize":Z
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    .local v6, "updateAutoBrightness":Z
    const/4 v7, 0x0

    .local v7, "wasDim":Z
    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v11

    const/4 v8, 0x0

    :try_start_0
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v8, :cond_1

    monitor-exit v11

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v8, :cond_11

    new-instance v8, Lcom/android/server/power/DisplayPowerRequest;

    iget-object v12, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-direct {v8, v12}, Lcom/android/server/power/DisplayPowerRequest;-><init>(Lcom/android/server/power/DisplayPowerRequest;)V

    iput-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    const/4 v1, 0x1

    :cond_2
    :goto_1
    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    if-nez v8, :cond_15

    move v2, v9

    .local v2, "mustNotify":Z
    :goto_2
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->initialize()V

    :cond_3
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v8, :cond_1e

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, v8, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    iget v11, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    invoke-virtual {v8, v11}, Lcom/android/server/power/HtcAngleDetector;->proximitySensorStatus(I)V

    :cond_4
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, v8, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v8, :cond_16

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v8, v8, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    if-eqz v8, :cond_16

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    invoke-virtual {v8}, Lcom/android/server/power/HtcAngleDetector;->isScreenTimeout()Z

    move-result v8

    if-eqz v8, :cond_16

    :cond_5
    invoke-direct {p0, v9}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v8, :cond_6

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-ne v8, v9, :cond_6

    iput-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityPositiveWithWakelock()V

    :cond_6
    :goto_3
    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v8, :cond_7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-eq v8, v9, :cond_7

    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    :cond_7
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, v8, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v8, :cond_9

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-eq v8, v9, :cond_9

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    invoke-virtual {v8}, Lcom/android/server/power/HtcAngleDetector;->isTalkingDetected()Z

    move-result v8

    if-eqz v8, :cond_1b

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, v8, Lcom/android/server/power/DisplayPowerRequest;->forceScreenOn:Z

    if-nez v8, :cond_19

    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v8, :cond_8

    const-string v8, "XAN-DPC"

    const-string v11, "Talking.turning off."

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnAngleDetectorTalkingDetected()V

    invoke-direct {p0, v10}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    :cond_9
    :goto_4
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v8, v8, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v8}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v8

    if-eqz v8, :cond_29

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, v8, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v8, :cond_1f

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    if-ltz v8, :cond_1f

    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v8, :cond_1f

    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .local v5, "target":I
    const/4 v4, 0x0

    .local v4, "slow":Z
    iput-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    :goto_5
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v8, v8, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-ne v8, v9, :cond_21

    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v8, :cond_20

    const/16 v8, 0x14

    invoke-virtual {p0, v8}, Lcom/android/server/power/DisplayPowerController;->convertBacklightToDisplayBrightnessAlgorithm(I)I

    move-result v5

    :goto_6
    const/4 v4, 0x0

    :cond_a
    :goto_7
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v8, :cond_b

    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON_A:Z

    if-eqz v8, :cond_b

    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v8, :cond_b

    const-string v8, "XAN-DPC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updatePowerState: target="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mCustomizeDuration="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/power/DisplayPowerController;->mCustomizeDuration:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mPR.sState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v12, v12, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mPR.auto="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v12, v12, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mPR.sBrightness="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v12, v12, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mScreenAutoBrightness="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAutoBrightnessCtrl:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    if-eqz v8, :cond_c

    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v8, :cond_22

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAutoBrightnessCtrl:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v11, v11, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessPercentage:I

    invoke-virtual {v8, v5, v11}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getCtrlDisplayBrightnessValue(II)I

    move-result v5

    :cond_c
    :goto_8
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    invoke-virtual {v8}, Lcom/android/server/power/RampAnimator;->getCurrentBrightness()I

    move-result v0

    .local v0, "curValue":I
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v8, :cond_23

    invoke-direct {p0, v5}, Lcom/android/server/power/DisplayPowerController;->clampScreenDisplayBrightness(I)I

    move-result v3

    .local v3, "newTarget":I
    :goto_9
    if-nez v0, :cond_24

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mButtonValue:I

    invoke-direct {p0, v3, v10, v8, v13}, Lcom/android/server/power/DisplayPowerController;->animateScreenBrightness(IIII)V

    .end local v0    # "curValue":I
    .end local v3    # "newTarget":I
    .end local v4    # "slow":Z
    .end local v5    # "target":I
    :goto_a
    iput v13, p0, Lcom/android/server/power/DisplayPowerController;->mCustomizeDuration:I

    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v8, :cond_2a

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, v8, Lcom/android/server/power/DisplayPowerRequest;->forceScreenOn:Z

    if-nez v8, :cond_2a

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, v8, Lcom/android/server/power/DisplayPowerRequest;->turnOnScreenOnce:Z

    if-nez v8, :cond_2a

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, v8, Lcom/android/server/power/DisplayPowerRequest;->forceScreenOnWhenNear:Z

    if-nez v8, :cond_2a

    invoke-direct {p0, v10}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v8, v9}, Lcom/android/server/power/PowerManagerService$PMSInternalAPI;->setProximityStateWithScreenOff(Z)V

    :cond_d
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->unblockScreenOn()V

    :cond_e
    :goto_b
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v8, v8, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v8}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v8

    if-eqz v8, :cond_30

    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v8, :cond_30

    move v8, v9

    :goto_c
    invoke-direct {p0, v8, v6}, Lcom/android/server/power/DisplayPowerController;->setLightSensorEnabled(ZZ)V

    :cond_f
    if-eqz v2, :cond_0

    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Lcom/android/server/power/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_1
    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v8, :cond_10

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v8, :cond_10

    const-string v8, "XAN-DPC"

    const-string v10, "Display ready!"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    goto/16 :goto_0

    .end local v2    # "mustNotify":Z
    :cond_11
    :try_start_2
    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v8, v8, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    iget-object v12, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    iget v12, v12, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    cmpl-float v8, v8, v12

    if-eqz v8, :cond_12

    const/4 v6, 0x1

    :cond_12
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v8, v8, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessPercentage:I

    iget-object v12, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    iget v12, v12, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessPercentage:I

    if-eq v8, v12, :cond_13

    const/4 v6, 0x1

    :cond_13
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v8, v8, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-ne v8, v9, :cond_14

    move v7, v9

    :goto_d
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-object v12, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v8, v12}, Lcom/android/server/power/DisplayPowerRequest;->copyFrom(Lcom/android/server/power/DisplayPowerRequest;)V

    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iget-boolean v12, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    or-int/2addr v8, v12

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    goto/16 :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    :cond_14
    move v7, v10

    goto :goto_d

    :cond_15
    move v2, v10

    goto/16 :goto_2

    .restart local v2    # "mustNotify":Z
    :cond_16
    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    if-eqz v8, :cond_17

    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v8, :cond_17

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-ne v8, v9, :cond_17

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v8, v8, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eqz v8, :cond_17

    invoke-direct {p0, v9}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto/16 :goto_3

    :cond_17
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, v8, Lcom/android/server/power/DisplayPowerRequest;->forceScreenOn:Z

    if-eqz v8, :cond_18

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput-boolean v10, v8, Lcom/android/server/power/DisplayPowerRequest;->forceScreenOn:Z

    goto/16 :goto_3

    :cond_18
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, v8, Lcom/android/server/power/DisplayPowerRequest;->delayScreenOn:Z

    if-nez v8, :cond_6

    invoke-direct {p0, v10}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_3

    :cond_19
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v8, :cond_1a

    const-string v8, "XAN-DPC"

    const-string v11, "Force on is set. disable detector."

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    invoke-virtual {v8}, Lcom/android/server/power/HtcAngleDetector;->disableDetector_Ext()V

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnAngleDetectorReadingDetected()V

    goto/16 :goto_4

    :cond_1b
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    invoke-virtual {v8}, Lcom/android/server/power/HtcAngleDetector;->isTurnOnScreenOnce()Z

    move-result v8

    if-eqz v8, :cond_9

    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v8, :cond_1c

    const-string v8, "XAN-DPC"

    const-string v11, "Reading.turning on."

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, v8, Lcom/android/server/power/DisplayPowerRequest;->forceScreenOn:Z

    if-eqz v8, :cond_1d

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput-boolean v10, v8, Lcom/android/server/power/DisplayPowerRequest;->forceScreenOn:Z

    :cond_1d
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnAngleDetectorReadingDetected()V

    goto/16 :goto_4

    :cond_1e
    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_4

    :cond_1f
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v5, v8, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    .restart local v5    # "target":I
    const/4 v4, 0x0

    .restart local v4    # "slow":Z
    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    goto/16 :goto_5

    :cond_20
    add-int/lit8 v8, v5, -0xa

    iget v11, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto/16 :goto_6

    :cond_21
    if-eqz v7, :cond_a

    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_22
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAutoBrightnessCtrl:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v11, v11, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessPercentage:I

    invoke-virtual {v8, v5, v11}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getCtrlBrightnessValue(II)I

    move-result v5

    goto/16 :goto_8

    .restart local v0    # "curValue":I
    :cond_23
    invoke-direct {p0, v5}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v3

    .restart local v3    # "newTarget":I
    goto/16 :goto_9

    :cond_24
    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mCustomizeDuration:I

    if-gez v8, :cond_26

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, v8, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v8, :cond_26

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v8, v8, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    const/4 v11, 0x2

    if-ne v8, v11, :cond_26

    sget v8, Lcom/android/server/power/DisplayPowerController;->ANIMATION_MODE:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_26

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, v8, Lcom/android/server/power/DisplayPowerRequest;->useOverrideBrightness:Z

    if-nez v8, :cond_26

    if-gt v0, v3, :cond_25

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mButtonValue:I

    sget v11, Lcom/android/server/power/DisplayPowerController;->AUTOBRIGHTNESS_ANIM_DURATION:I

    invoke-direct {p0, v3, v13, v8, v11}, Lcom/android/server/power/DisplayPowerController;->animateScreenBrightness(IIII)V

    goto/16 :goto_a

    :cond_25
    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mButtonValue:I

    sget v11, Lcom/android/server/power/DisplayPowerController;->AUTODIMNESS_ANIM_DURATION:I

    invoke-direct {p0, v3, v13, v8, v11}, Lcom/android/server/power/DisplayPowerController;->animateScreenBrightness(IIII)V

    goto/16 :goto_a

    :cond_26
    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mCustomizeDuration:I

    if-gez v8, :cond_28

    if-eqz v4, :cond_27

    sget v8, Lcom/android/server/power/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_SLOW:I

    :goto_e
    iget v11, p0, Lcom/android/server/power/DisplayPowerController;->mButtonValue:I

    invoke-direct {p0, v3, v8, v11}, Lcom/android/server/power/DisplayPowerController;->animateScreenBrightness(III)V

    goto/16 :goto_a

    :cond_27
    sget v8, Lcom/android/server/power/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_FAST:I

    goto :goto_e

    :cond_28
    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mButtonValue:I

    iget v11, p0, Lcom/android/server/power/DisplayPowerController;->mCustomizeDuration:I

    invoke-direct {p0, v3, v13, v8, v11}, Lcom/android/server/power/DisplayPowerController;->animateScreenBrightness(IIII)V

    goto/16 :goto_a

    .end local v0    # "curValue":I
    .end local v3    # "newTarget":I
    .end local v4    # "slow":Z
    .end local v5    # "target":I
    :cond_29
    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    goto/16 :goto_a

    :cond_2a
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v8, v8, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v8}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v8

    if-eqz v8, :cond_2b

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    if-eqz v8, :cond_2b

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    invoke-virtual {v8}, Lcom/android/server/power/HtcAngleDetector;->isTalkingDetected()Z

    move-result v8

    if-nez v8, :cond_2b

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    invoke-virtual {v8}, Lcom/android/server/power/HtcAngleDetector;->isPsensorNear()Z

    move-result v8

    if-nez v8, :cond_2b

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, v8, Lcom/android/server/power/DisplayPowerRequest;->delayScreenOn:Z

    if-eqz v8, :cond_2c

    :cond_2b
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, v8, Lcom/android/server/power/DisplayPowerRequest;->forceScreenOn:Z

    if-nez v8, :cond_2c

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, v8, Lcom/android/server/power/DisplayPowerRequest;->turnOnScreenOnce:Z

    if-nez v8, :cond_2c

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, v8, Lcom/android/server/power/DisplayPowerRequest;->forceScreenOnWhenNear:Z

    if-eqz v8, :cond_2f

    :cond_2c
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v8

    if-nez v8, :cond_2e

    invoke-direct {p0, v9}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, v8, Lcom/android/server/power/DisplayPowerRequest;->blockScreenOn:Z

    if-eqz v8, :cond_2d

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v8}, Lcom/android/server/power/DisplayPowerState;->getElectronBeamLevel()F

    move-result v8

    cmpl-float v8, v8, v14

    if-nez v8, :cond_2d

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->blockScreenOn()V

    goto/16 :goto_b

    :cond_2d
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->unblockScreenOn()V

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v8, v11}, Lcom/android/server/power/DisplayPowerState;->setElectronBeamLevel(F)V

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v8}, Lcom/android/server/power/DisplayPowerState;->dismissElectronBeam()V

    goto/16 :goto_b

    :cond_2e
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v8, :cond_e

    const-string v8, "XAN-DPC"

    const-string v11, "screen on request when animation to off"

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_2f
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->unblockScreenOn()V

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v8

    if-nez v8, :cond_e

    invoke-direct {p0, v10, v10, v10, v13}, Lcom/android/server/power/DisplayPowerController;->animateScreenBrightness(IIII)V

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v8, v14}, Lcom/android/server/power/DisplayPowerState;->setElectronBeamLevel(F)V

    invoke-direct {p0, v10}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    goto/16 :goto_b

    :cond_30
    move v8, v10

    goto/16 :goto_c

    :catchall_1
    move-exception v8

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8
.end method

.method private static wantScreenOn(I)Z
    .locals 1
    .param p0, "state"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected clearEndCallMode()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "XAN-DPC"

    const-string v1, "cECM"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PMSInternalAPI;->clearDelayScreenOn()V

    :cond_2
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/power/DisplayPowerRequest;->delayScreenOn:Z

    :cond_3
    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mProximityAfterEndCall:I

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->disableProximitySensorAfterEndCall()V

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerStateLocked()V

    return-void
.end method

.method protected convertBacklightToDisplayBrightnessAlgorithm(I)I
    .locals 6
    .param p1, "backlight"    # I

    .prologue
    const/4 v2, -0x1

    .local v2, "screenDisplayBrightnessValue":I
    const/4 v1, 0x0

    .local v1, "screenBacklight":I
    if-gez p1, :cond_0

    .end local p1    # "backlight":I
    :goto_0
    return p1

    .restart local p1    # "backlight":I
    :cond_0
    move v1, p1

    if-gtz v1, :cond_5

    const/4 v1, 0x0

    :cond_1
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBacklightToDisplayBrightnessTable:[I

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBacklightToDisplayBrightnessTable:[I

    array-length v3, v3

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBacklightToDisplayBrightnessTable:[I

    array-length v3, v3

    if-lt v1, v3, :cond_2

    const-string v3, "XAN-DPC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backlight index more than table = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mBacklightToDisplayBrightnessTable:[I

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBacklightToDisplayBrightnessTable:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    :cond_2
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBacklightToDisplayBrightnessTable:[I

    aget v2, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v3, :cond_4

    const-string v3, "XAN-DPC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BLToDisBL=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    :cond_4
    invoke-direct {p0, v2}, Lcom/android/server/power/DisplayPowerController;->clampScreenDisplayBrightness(I)I

    move-result v2

    move p1, v2

    goto :goto_0

    :cond_5
    const/16 v3, 0x14

    if-ge v1, v3, :cond_6

    const/16 v1, 0x14

    goto :goto_1

    :cond_6
    const/16 v3, 0xff

    if-le v1, v3, :cond_1

    const/16 v1, 0xff

    goto :goto_1

    :cond_7
    :try_start_1
    const-string v3, "XAN-DPC"

    const-string v4, "mBacklightToDisplayBrightnessTable is invalid"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v1

    goto :goto_2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v3, :cond_3

    const-string v3, "XAN-DPC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertBacklightToDisplayBrightnessAlgorithm exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Display Controller Locked State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReadyLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Display Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorWarmUpTimeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Use new backlight mechanism="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/power/DisplayPowerController$8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/DisplayPowerController$8;-><init>(Lcom/android/server/power/DisplayPowerController;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected fetchCurrentBrightnessValue()I
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/power/RampAnimator;->getCurrentBrightness()I

    move-result v0

    .local v0, "lcdValue":I
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/power/DisplayPowerController;->convertDisplayBrightnessToBacklightAlgorithm(I)I

    move-result v0

    :cond_0
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    const-string v1, "XAN-DPC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchCurrentBrightnessValue: lcdValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method protected getAmbientLux()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    return v0
.end method

.method protected getHtcAutoBrightnessCtrl()Lcom/android/server/power/HtcAutoBrightnessCtrl;
    .locals 2

    .prologue
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAutoBrightnessCtrl:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    if-nez v0, :cond_0

    const-string v0, "XAN-DPC"

    const-string v1, "getHtcAutoBrightnessCtrl: null found."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAutoBrightnessCtrl:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    return-object v0
.end method

.method protected getProximitySensorActive()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const-string v1, "XAN-DPC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPSensorActive="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected inEndCallMode()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "XAN-DPC"

    const-string v1, "iECM"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProximitySensorAvailable()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected needDelayScreenOnAfterEndCall()Z
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    const-string v2, "XAN-DPC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delay runing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-ne v3, v2, :cond_4

    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v3, :cond_2

    const-string v3, "XAN-DPC"

    const-string v4, "delay on near"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v3, v5}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v3, v5}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    sget v4, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_NEAR_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v3, :cond_3

    const-string v3, "XAN-DPC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "s dt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_NEAR_DURATION:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    goto :goto_0

    .end local v0    # "msg":Landroid/os/Message;
    :cond_4
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->IS_ANGLE_DETECTOR_SUPPORT:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerService$PMSInternalAPI;->isActualScreenOn()Z

    move-result v3

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v3, :cond_5

    const-string v3, "XAN-DPC"

    const-string v4, "delay on far"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v3, v5}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v3, v5}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    sget v4, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_FAR_TOTAL_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v3, :cond_6

    const-string v3, "XAN-DPC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "s dt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_FAR_TOTAL_DURATION:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximityAfterEndCall:I

    sget v1, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_FAR_ANGLE_DURATION:I

    invoke-virtual {p0, v2, v1}, Lcom/android/server/power/DisplayPowerController;->notifyReleaseProximityWakeLock(ZI)V

    move v1, v2

    goto/16 :goto_0
.end method

.method protected notifyReleaseProximityWakeLock(ZI)V
    .locals 3
    .param p1, "status"    # Z
    .param p2, "timeout"    # I

    .prologue
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "XAN-DPC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nRPWL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/HtcAngleDetector;->notifyReleaseProximityWakeLock(ZI)V

    :cond_1
    return-void
.end method

.method protected notifyScreenTimeout(Z)V
    .locals 2
    .param p1, "isTimeout"    # Z

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v0, v0, Lcom/android/server/power/DisplayPowerRequest;->forceScreenOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput-boolean v1, v0, Lcom/android/server/power/DisplayPowerRequest;->forceScreenOn:Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/power/HtcAngleDetector;->notifyScreenTimeout(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v0, v0, Lcom/android/server/power/DisplayPowerRequest;->turnOnScreenOnce:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput-boolean v1, v0, Lcom/android/server/power/DisplayPowerRequest;->turnOnScreenOnce:Z

    :cond_2
    return-void
.end method

.method public requestPowerState(Lcom/android/server/power/DisplayPowerRequest;Z)Z
    .locals 4
    .param p1, "request"    # Lcom/android/server/power/DisplayPowerRequest;
    .param p2, "waitForNegativeProximity"    # Z

    .prologue
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "XAN-DPC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPowerState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", waitForNegativeProximity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    .local v0, "changed":Z
    if-eqz p2, :cond_1

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v1, :cond_5

    new-instance v1, Lcom/android/server/power/DisplayPowerRequest;

    invoke-direct {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;-><init>(Lcom/android/server/power/DisplayPowerRequest;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    const/4 v0, 0x1

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    :cond_3
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerStateLocked()V

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    monitor-exit v2

    return v1

    :cond_5
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;->equals(Lcom/android/server/power/DisplayPowerRequest;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;->copyFrom(Lcom/android/server/power/DisplayPowerRequest;)V

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected resetPsensorNearStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "XAN-DPC"

    const-string v1, "resetPsensorNearStatus S"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    const-string v0, "XAN-DPC"

    const-string v1, "resetPsensorNearStatus E"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
