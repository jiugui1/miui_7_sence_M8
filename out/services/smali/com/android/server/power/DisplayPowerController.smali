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

    .line 80
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    .line 83
    sput-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    .line 98
    invoke-static {}, Landroid/os/PowerManager;->useScreenAutoBrightnessAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    .line 113
    invoke-static {}, Landroid/os/PowerManager;->useTwilightAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    .line 154
    sput v2, Lcom/android/server/power/DisplayPowerController;->PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I

    .line 155
    const/16 v0, 0xfa

    sput v0, Lcom/android/server/power/DisplayPowerController;->PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I

    .line 170
    const/16 v0, 0xc8

    sput v0, Lcom/android/server/power/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_FAST:I

    .line 171
    const/16 v0, 0x28

    sput v0, Lcom/android/server/power/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_SLOW:I

    .line 184
    const/4 v0, 0x1

    sput v0, Lcom/android/server/power/DisplayPowerController;->ANIMATION_MODE:I

    .line 185
    sput v3, Lcom/android/server/power/DisplayPowerController;->AUTOBRIGHTNESS_ANIM_DURATION:I

    .line 186
    sput v3, Lcom/android/server/power/DisplayPowerController;->AUTODIMNESS_ANIM_DURATION:I

    .line 202
    sput-wide v6, Lcom/android/server/power/DisplayPowerController;->BRIGHTENING_LIGHT_DEBOUNCE:J

    .line 203
    const-wide/16 v0, 0x1f40

    sput-wide v0, Lcom/android/server/power/DisplayPowerController;->DARKENING_LIGHT_DEBOUNCE:J

    .line 205
    sput-wide v6, Lcom/android/server/power/DisplayPowerController;->DARKENING_BUTTON_LIGHT_DEBOUNCE:J

    .line 434
    sput-boolean v2, Lcom/android/server/power/DisplayPowerController;->IS_ANGLE_DETECTOR_SUPPORT:Z

    .line 441
    sput v5, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_NEAR_DURATION:I

    .line 442
    const/16 v0, 0x7d0

    sput v0, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_FAR_ANGLE_DURATION:I

    .line 443
    sput v5, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_FAR_TOTAL_DURATION:I

    .line 453
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON_A:Z

    .line 455
    sput-boolean v2, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    .line 459
    sput v4, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_ONE_SECOND:I

    .line 460
    sput v3, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I

    .line 461
    sput v4, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I

    .line 462
    const/4 v0, 0x2

    sput v0, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    .line 463
    const/16 v0, 0x1388

    sput v0, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STOP_UPDATE_DEBOUNCE:I

    .line 465
    const v0, 0x3e19999a    # 0.15f

    sput v0, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD:F

    .line 466
    const/16 v0, 0xf

    sput v0, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD_TEMP:I

    .line 468
    const v0, 0x3ee66666    # 0.45f

    sput v0, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD:F

    .line 469
    const/16 v0, 0x2d

    sput v0, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD_TEMP:I

    .line 475
    const/4 v0, 0x5

    sput v0, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    .line 478
    sput v3, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STABLE_DEBOUNCE:I

    .line 479
    const v0, 0x3e6b851f    # 0.23f

    sput v0, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD:F

    .line 480
    const/16 v0, 0x17

    sput v0, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD_TEMP:I

    .line 498
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
    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 327
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    .line 330
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 331
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 387
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 390
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    .line 420
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mCustomizeDuration:I

    .line 428
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mButtonValue:I

    .line 449
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    .line 450
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximityAfterEndCall:I

    .line 485
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mSampleLevel:[F

    .line 486
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mSampleFull:Z

    .line 487
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mSampleFullFirst:Z

    .line 488
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mSampleIndex:I

    .line 489
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastSampleTime:J

    .line 493
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedEBITime:J

    .line 495
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastAmbientEBI:F

    .line 496
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastAmbientEBITime:J

    .line 499
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mBacklightToDisplayBrightnessTable:[I

    .line 500
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mEBIToDisplayBrightnessTable:[I

    .line 503
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 878
    new-instance v1, Lcom/android/server/power/DisplayPowerController$1;

    invoke-direct {v1, p0}, Lcom/android/server/power/DisplayPowerController$1;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 1353
    new-instance v1, Lcom/android/server/power/DisplayPowerController$2;

    invoke-direct {v1, p0}, Lcom/android/server/power/DisplayPowerController$2;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 1892
    new-instance v1, Lcom/android/server/power/DisplayPowerController$3;

    invoke-direct {v1, p0}, Lcom/android/server/power/DisplayPowerController$3;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    .line 1905
    new-instance v1, Lcom/android/server/power/DisplayPowerController$4;

    invoke-direct {v1, p0}, Lcom/android/server/power/DisplayPowerController$4;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    .line 1918
    new-instance v1, Lcom/android/server/power/DisplayPowerController$5;

    invoke-direct {v1, p0}, Lcom/android/server/power/DisplayPowerController$5;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    .line 1931
    new-instance v1, Lcom/android/server/power/DisplayPowerController$6;

    invoke-direct {v1, p0}, Lcom/android/server/power/DisplayPowerController$6;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnAngleDetectorTalkingDetectedRunnable:Ljava/lang/Runnable;

    .line 1942
    new-instance v1, Lcom/android/server/power/DisplayPowerController$7;

    invoke-direct {v1, p0}, Lcom/android/server/power/DisplayPowerController$7;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnAngleDetectorReadingDetectedRunnable:Ljava/lang/Runnable;

    .line 2129
    new-instance v1, Lcom/android/server/power/DisplayPowerController$9;

    invoke-direct {v1, p0}, Lcom/android/server/power/DisplayPowerController$9;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 2149
    new-instance v1, Lcom/android/server/power/DisplayPowerController$10;

    invoke-direct {v1, p0}, Lcom/android/server/power/DisplayPowerController$10;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 2180
    new-instance v1, Lcom/android/server/power/DisplayPowerController$11;

    invoke-direct {v1, p0}, Lcom/android/server/power/DisplayPowerController$11;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

    .line 543
    new-instance v1, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/power/DisplayPowerController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    .line 544
    iput-object p3, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    .line 545
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 546
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

    .line 547
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

    .line 548
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    .line 551
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    .line 555
    sput-boolean p13, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    .line 558
    iput-object p4, p0, Lcom/android/server/power/DisplayPowerController;->mLights:Lcom/android/server/LightsService;

    .line 559
    iput-object p5, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    .line 560
    iput-object p6, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 561
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    .line 563
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 566
    .local v7, "resources":Landroid/content/res/Resources;
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v1, :cond_0

    .line 567
    sget v1, Lcom/android/server/power/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_FAST:I

    mul-int/lit8 v1, v1, 0x14

    sput v1, Lcom/android/server/power/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_FAST:I

    .line 568
    sget v1, Lcom/android/server/power/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_SLOW:I

    mul-int/lit8 v1, v1, 0x14

    sput v1, Lcom/android/server/power/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_SLOW:I

    .line 569
    const v1, 0x1070032

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mBacklightToDisplayBrightnessTable:[I

    .line 571
    const v1, 0x1070033

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mEBIToDisplayBrightnessTable:[I

    .line 576
    :cond_0
    const v1, 0x10e002d

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    .line 579
    const v1, 0x10e002a

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 583
    .local v8, "screenBrightnessMinimum":I
    const v1, 0x1110019

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 586
    const/4 v5, 0x0

    .line 588
    .local v5, "screenBrightness":[I
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v1, :cond_2

    .line 590
    const v1, 0x107001f

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLux:[I

    .line 592
    const v1, 0x1070020

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 596
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLux:[I

    invoke-static {v1, v5}, Lcom/android/server/power/DisplayPowerController;->createAutoBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    .line 597
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    if-nez v1, :cond_8

    .line 598
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

    .line 604
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 611
    :cond_1
    :goto_0
    const v1, 0x10e002f

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    .line 616
    :cond_2
    new-instance v1, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;-><init>(Lcom/android/server/power/DisplayPowerController;Lcom/android/server/power/DisplayPowerController$1;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    .line 620
    new-instance v1, Lcom/android/server/power/HtcAutoBrightnessCtrl;

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mLux:[I

    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/HtcAutoBrightnessCtrl;-><init>(Landroid/content/Context;Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;[I[IZ)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAutoBrightnessCtrl:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    .line 624
    new-instance v1, Lcom/android/server/power/HtcAngleDetector;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-direct {v1, p2, v2, v3}, Lcom/android/server/power/HtcAngleDetector;-><init>(Landroid/content/Context;Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    .line 627
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    .line 628
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    .line 630
    const v1, 0x111001c

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamFadesConfig:Z

    .line 634
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 635
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_3

    .line 636
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    .line 641
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v1, :cond_4

    .line 643
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    .line 646
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v1, :cond_5

    .line 647
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/TwilightService;->registerListener(Lcom/android/server/TwilightService$TwilightListener;Landroid/os/Handler;)V

    .line 651
    :cond_5
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v1, :cond_6

    .line 652
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->autoEBIAverageRuleInit()V

    .line 656
    :cond_6
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_7

    .line 657
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

    .line 660
    :cond_7
    return-void

    .line 606
    :cond_8
    const/4 v1, 0x0

    aget v1, v5, v1

    if-ge v1, v8, :cond_1

    .line 607
    const/4 v1, 0x0

    aget v8, v5, v1

    goto/16 :goto_0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/RampAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->handleDelayScreenOnTimeoutAfterEndCall()V

    return-void
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->handleEBIAverageSampleTimeout()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/power/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/power/DisplayPowerController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 76
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/power/DisplayPowerController;JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/power/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/HtcAutoBrightnessCtrl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAutoBrightnessCtrl:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/power/DisplayPowerController;JF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # J
    .param p3, "x2"    # F

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/server/power/DisplayPowerController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    return p1
.end method

.method static synthetic access$2100([I[I)Landroid/util/Spline;
    .locals 1
    .param p0, "x0"    # [I
    .param p1, "x1"    # [I

    .prologue
    .line 76
    invoke-static {p0, p1}, Lcom/android/server/power/DisplayPowerController;->createAutoBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/power/DisplayPowerController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/power/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/power/DisplayPowerController;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(ZI)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/power/DisplayPowerController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->sendDelayScreenOnStateAfterEndCall(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/power/DisplayPowerController;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->getManualDisplayBrightness(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/SuspendBlocker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/power/DisplayPowerController;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceProximitySensor()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceButtonLight()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceLightSensor()V

    return-void
.end method

.method private animateScreenBrightness(III)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "rate"    # I
    .param p3, "buttonValue"    # I

    .prologue
    .line 1335
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/power/DisplayPowerController;->animateScreenBrightness(IIII)V

    .line 1336
    return-void
.end method

.method private animateScreenBrightness(IIII)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "rate"    # I
    .param p3, "buttonValue"    # I
    .param p4, "duration"    # I

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/power/RampAnimator;->animateTo(IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1345
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v0, :cond_0

    .line 1346
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->convertDisplayBrightnessToBacklightAlgorithm(I)I

    move-result p1

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, p1}, Lcom/android/server/power/Notifier;->onScreenBrightness(I)V

    .line 1351
    :cond_1
    return-void
.end method

.method private applyEBIAverageData()Z
    .locals 5

    .prologue
    .line 2708
    const/4 v1, 0x0

    .line 2710
    .local v1, "needUpdate":Z
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 2711
    const-string v2, "XAN-DPC"

    const-string v3, "aEBIAD start"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mSampleFull:Z

    if-eqz v2, :cond_3

    .line 2718
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mSampleIndex:I

    sget v3, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    if-lt v2, v3, :cond_1

    .line 2719
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mSampleIndex:I

    .line 2722
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mSampleLevel:[F

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mSampleIndex:I

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedEBI:F

    aput v4, v2, v3

    .line 2723
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mSampleIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mSampleIndex:I

    .line 2724
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mSampleFullFirst:Z

    .line 2726
    const/4 v1, 0x1

    .line 2746
    :cond_2
    :goto_0
    return v1

    .line 2730
    :cond_3
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mSampleLevel:[F

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mSampleIndex:I

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedEBI:F

    aput v4, v2, v3

    .line 2731
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mSampleIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mSampleIndex:I

    .line 2733
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mSampleIndex:I

    sget v3, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    if-lt v2, v3, :cond_2

    .line 2734
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mSampleFull:Z

    .line 2735
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mSampleFullFirst:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2736
    const/4 v1, 0x1

    goto :goto_0

    .line 2740
    :catch_0
    move-exception v0

    .line 2741
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v2, :cond_2

    .line 2742
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

    .line 1521
    iput v3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    .line 1524
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    if-ne v2, v3, :cond_1

    .line 1525
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    .line 1526
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    .line 1536
    :goto_0
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    .line 1537
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    .line 1540
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v2, :cond_0

    .line 1541
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedEBI:F

    .line 1542
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedEBITime:J

    .line 1546
    :cond_0
    return-void

    .line 1528
    :cond_1
    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    sub-long v0, p1, v2

    .line 1529
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

    .line 1531
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

    .line 2618
    sget v1, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I

    .line 2619
    .local v1, "old_ab_avg_debounce":I
    sget v4, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    .line 2620
    .local v4, "old_ab_avg_sample_num":I
    sget v7, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD:F

    .line 2621
    .local v7, "old_ab_avg_up_threshold":F
    sget v2, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD:F

    .line 2622
    .local v2, "old_ab_avg_low_threshold":F
    sget v5, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STABLE_DEBOUNCE:I

    .line 2623
    .local v5, "old_ab_avg_stb_debounce":I
    sget v6, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD:F

    .line 2624
    .local v6, "old_ab_avg_stb_threshold":F
    sget v3, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    .line 2628
    .local v3, "old_ab_avg_min_thvalue":I
    :try_start_0
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v8, :cond_0

    .line 2629
    const-string v8, "persist.htc.pms.abavg.deb"

    sget v9, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I

    .line 2630
    sget v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I

    sget v9, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I

    div-int/2addr v8, v9

    sput v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    .line 2631
    const-string v8, "persist.htc.pms.abavg.uth"

    sget v9, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD_TEMP:I

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    sput v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD:F

    .line 2632
    const-string v8, "persist.htc.pms.abavg.lth"

    sget v9, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD_TEMP:I

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    sput v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD:F

    .line 2633
    const-string v8, "persist.htc.pms.abavgs.deb"

    sget v9, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STABLE_DEBOUNCE:I

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STABLE_DEBOUNCE:I

    .line 2634
    const-string v8, "persist.htc.pms.abavgs.th"

    sget v9, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD_TEMP:I

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    sput v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD:F

    .line 2635
    const-string v8, "persist.htc.pms.minth"

    sget v9, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    .line 2638
    :cond_0
    sget v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mSampleLevel:[F

    .line 2639
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mSampleFull:Z

    .line 2640
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/power/DisplayPowerController;->mSampleIndex:I

    .line 2641
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/power/DisplayPowerController;->mLastSampleTime:J

    .line 2642
    const/high16 v8, -0x40800000    # -1.0f

    sput v8, Lcom/android/server/power/DisplayPowerController;->mPrevEBI:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2650
    :cond_1
    :goto_0
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v8, :cond_2

    .line 2651
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

    .line 2663
    :cond_2
    return-void

    .line 2644
    :catch_0
    move-exception v0

    .line 2645
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v8, :cond_1

    .line 2646
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
    .line 2687
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2688
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mSampleFull:Z

    .line 2689
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mSampleFullFirst:Z

    .line 2690
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mSampleIndex:I

    .line 2691
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastSampleTime:J

    .line 2692
    const/high16 v1, -0x40800000    # -1.0f

    sput v1, Lcom/android/server/power/DisplayPowerController;->mPrevEBI:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2699
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 2700
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

    .line 2704
    :cond_1
    return-void

    .line 2693
    :catch_0
    move-exception v0

    .line 2694
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 2695
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
    .line 2668
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2669
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mLastSampleTime:J

    .line 2670
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/16 v2, 0x8

    sget v3, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2677
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 2678
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

    .line 2682
    :cond_1
    return-void

    .line 2671
    :catch_0
    move-exception v0

    .line 2672
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 2673
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
    .line 1257
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-nez v0, :cond_0

    .line 1258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    .line 1259
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1260
    const-string v0, "XAN-DPC"

    const-string v1, "Blocked screen on."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 1264
    :cond_0
    return-void
.end method

.method private checkHtcCustomizationReader()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 506
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v4, :cond_1

    .line 508
    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 509
    .local v0, "customizationManger":Lcom/htc/customization/HtcCustomizationManager;
    if-nez v0, :cond_0

    .line 510
    const-string v3, "XAN-DPC"

    const-string v4, "customizationManger = null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    .end local v0    # "customizationManger":Lcom/htc/customization/HtcCustomizationManager;
    :goto_0
    return v2

    .line 514
    .restart local v0    # "customizationManger":Lcom/htc/customization/HtcCustomizationManager;
    :cond_0
    const-string v4, "Android_Core_Framework"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 517
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v4, :cond_1

    .line 518
    const-string v3, "XAN-DPC"

    const-string v4, "mHtcCustomizationReader = null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 523
    .end local v0    # "customizationManger":Lcom/htc/customization/HtcCustomizationManager;
    :catch_0
    move-exception v1

    .line 524
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

    .line 529
    goto :goto_0
.end method

.method private static clamp(III)I
    .locals 0
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 1319
    if-gt p0, p1, :cond_0

    .line 1325
    .end local p1    # "min":I
    :goto_0
    return p1

    .line 1322
    .restart local p1    # "min":I
    :cond_0
    if-lt p0, p2, :cond_1

    move p1, p2

    .line 1323
    goto :goto_0

    :cond_1
    move p1, p0

    .line 1325
    goto :goto_0
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 1315
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
    .line 1311
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
    .line 3092
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

    .line 3096
    cmpg-float v2, p1, v0

    if-gtz v2, :cond_1

    move p1, v0

    .line 3102
    .end local p1    # "value":F
    :cond_0
    :goto_0
    return p1

    .line 3099
    .restart local p1    # "value":F
    :cond_1
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    move p1, v1

    .line 3100
    goto :goto_0
.end method

.method private clearPendingProximityDebounceTime()V
    .locals 4

    .prologue
    .line 1449
    iget-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1450
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 1451
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 1453
    :cond_0
    return-void
.end method

.method private convertDisplayBrightnessToBacklightAlgorithm(I)I
    .locals 8
    .param p1, "brightness"    # I

    .prologue
    .line 3003
    const/4 v1, 0x0

    .line 3004
    .local v1, "i":I
    const/4 v3, -0x1

    .line 3005
    .local v3, "screenDisplayBrightness":I
    const/4 v2, -0x1

    .line 3006
    .local v2, "screenBacklight":I
    const/4 v4, 0x0

    .line 3008
    .local v4, "tableSize":I
    move v3, p1

    .line 3012
    :try_start_0
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mBacklightToDisplayBrightnessTable:[I

    array-length v4, v5

    .line 3014
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 3015
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mBacklightToDisplayBrightnessTable:[I

    aget v5, v5, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v5, v3, :cond_3

    .line 3020
    :cond_0
    add-int/lit8 v2, v1, -0x1

    .line 3028
    :cond_1
    :goto_1
    invoke-static {v2}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v2

    .line 3030
    sget-boolean v5, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v5, :cond_2

    .line 3031
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

    .line 3034
    :cond_2
    return v2

    .line 3014
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3022
    :catch_0
    move-exception v0

    .line 3023
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v5, :cond_1

    .line 3024
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
    .line 2916
    const/4 v2, -0x1

    .line 2917
    .local v2, "screenDisplayBrightnessValue":I
    const/4 v3, 0x0

    .line 2919
    .local v3, "screenEBI":F
    move v3, p1

    .line 2921
    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_4

    .line 2922
    const/4 v3, 0x0

    .line 2929
    :cond_0
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mEBIToDisplayBrightnessTable:[I

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mEBIToDisplayBrightnessTable:[I

    array-length v4, v4

    if-lez v4, :cond_5

    .line 2930
    float-to-int v1, v3

    .line 2931
    .local v1, "indexEBI":I
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mEBIToDisplayBrightnessTable:[I

    array-length v4, v4

    if-lt v1, v4, :cond_1

    .line 2932
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

    .line 2933
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mEBIToDisplayBrightnessTable:[I

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .line 2935
    :cond_1
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mEBIToDisplayBrightnessTable:[I

    aget v2, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2947
    .end local v1    # "indexEBI":I
    :cond_2
    :goto_1
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v4, :cond_3

    .line 2948
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

    .line 2951
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/power/DisplayPowerController;->clampScreenDisplayBrightness(I)I

    move-result v2

    .line 2953
    return v2

    .line 2923
    :cond_4
    const v4, 0x477fff00    # 65535.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    .line 2924
    const v3, 0x477fff00    # 65535.0f

    goto :goto_0

    .line 2937
    :cond_5
    :try_start_1
    const-string v4, "XAN-DPC"

    const-string v5, "mEBIToDisplayBrightnessTable is invalid"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2938
    const/high16 v4, 0x41700000    # 15.0f

    const v5, 0x3eb33333    # 0.35f

    invoke-static {v3, v5}, Landroid/util/FloatMath;->pow(FF)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v2, v4

    goto :goto_1

    .line 2941
    :catch_0
    move-exception v0

    .line 2942
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v4, :cond_2

    .line 2943
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

    .line 664
    :try_start_0
    array-length v2, p1

    .line 665
    .local v2, "n":I
    new-array v5, v2, [F

    .line 666
    .local v5, "x":[F
    new-array v6, v2, [F

    .line 667
    .local v6, "y":[F
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, p1, v8

    invoke-static {v8}, Lcom/android/server/power/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v8

    aput v8, v6, v7

    .line 668
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 669
    add-int/lit8 v7, v1, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    aput v7, v5, v1

    .line 670
    aget v7, p1, v1

    invoke-static {v7}, Lcom/android/server/power/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v7

    aput v7, v6, v1

    .line 668
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 673
    :cond_0
    invoke-static {v5, v6}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object v3

    .line 674
    .local v3, "spline":Landroid/util/Spline;
    sget-boolean v7, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 675
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

    .line 676
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

    .line 677
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

    .line 676
    mul-float/2addr v4, v12

    goto :goto_1

    .line 681
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "spline":Landroid/util/Spline;
    .end local v4    # "v":F
    .end local v5    # "x":[F
    .end local v6    # "y":[F
    :catch_0
    move-exception v0

    .line 682
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v7, "XAN-DPC"

    const-string v8, "Could not create auto-brightness spline."

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 683
    const/4 v3, 0x0

    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    return-object v3
.end method

.method private debounceButtonLight()V
    .locals 4

    .prologue
    .line 1707
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 1708
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

    .line 1711
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v1, :cond_1

    .line 1713
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v1, :cond_2

    .line 1714
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 1715
    const-string v1, "XAN-DPC"

    const-string v2, "debounceButtonLight mPendingRequestLocked = null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :cond_1
    :goto_0
    return-void

    .line 1720
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v1, :cond_3

    .line 1721
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 1722
    const-string v1, "XAN-DPC"

    const-string v2, "debounceButtonLight mPowerRequest = null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1727
    :cond_3
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    if-nez v1, :cond_4

    .line 1728
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 1729
    const-string v1, "XAN-DPC"

    const-string v2, "debounceButtonLight mPowerState = null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1734
    :cond_4
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v1, v1, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1736
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAutoBrightnessCtrl:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    if-eqz v1, :cond_1

    .line 1737
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_5

    .line 1738
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

    .line 1740
    :cond_5
    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1741
    .local v0, "LUX":I
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAutoBrightnessCtrl:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    invoke-virtual {v1, v0}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getButtonValue(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mButtonValue:I

    .line 1742
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mButtonValue:I

    invoke-virtual {v1, v2}, Lcom/android/server/power/DisplayPowerState;->setButtonBrightness(I)V

    goto :goto_0
.end method

.method private debounceLightSensor()V
    .locals 6

    .prologue
    .line 1692
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v2, :cond_2

    .line 1693
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1694
    .local v0, "time":J
    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 1695
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1696
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

    .line 1699
    :cond_0
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/power/DisplayPowerController;->applyLightSensorMeasurement(JF)V

    .line 1701
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->updateAmbientLux(J)V

    .line 1703
    .end local v0    # "time":J
    :cond_2
    return-void
.end method

.method private debounceProximitySensor()V
    .locals 7

    .prologue
    .line 1426
    iget-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-wide v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 1429
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1430
    .local v1, "now":J
    iget-wide v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    cmp-long v3, v3, v1

    if-gtz v3, :cond_1

    .line 1432
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    iput v3, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    .line 1434
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    invoke-direct {p0, v3}, Lcom/android/server/power/DisplayPowerController;->handleProximitySensorAfterEndCall(I)V

    .line 1436
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->updatePowerState()V

    .line 1437
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->clearPendingProximityDebounceTime()V

    .line 1446
    .end local v1    # "now":J
    :cond_0
    :goto_0
    return-void

    .line 1441
    .restart local v1    # "now":J
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1442
    .local v0, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1443
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private disableProximitySensorAfterEndCall()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2609
    invoke-direct {p0, v0}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 2610
    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 2611
    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 2612
    return-void
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1984
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1985
    const-string v0, "Display Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1986
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

    .line 1987
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

    .line 1989
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

    .line 1990
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

    .line 1991
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

    .line 1992
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

    .line 1993
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

    .line 1994
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

    .line 1996
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

    .line 1998
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

    .line 1999
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

    .line 2000
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

    .line 2002
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

    .line 2003
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

    .line 2004
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

    .line 2005
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

    .line 2007
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

    .line 2008
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

    .line 2009
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

    .line 2010
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

    .line 2011
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

    .line 2012
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

    .line 2013
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

    .line 2014
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

    .line 2015
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

    .line 2017
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 2018
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

    .line 2021
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 2022
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

    .line 2026
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    if-eqz v0, :cond_2

    .line 2027
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    .line 2029
    :cond_2
    return-void
.end method

.method private getEBIAverageAlgorithm(F)F
    .locals 11
    .param p1, "EBI"    # F

    .prologue
    .line 3038
    const/high16 v0, -0x40800000    # -1.0f

    .line 3039
    .local v0, "EBIValue":F
    const/high16 v1, -0x40800000    # -1.0f

    .line 3041
    .local v1, "EBIValueTemp":F
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v8, :cond_0

    .line 3042
    const-string v8, "XAN-DPC"

    const-string v9, "getEBIAverageAlgorithm start"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    :cond_0
    sget v2, Lcom/android/server/power/DisplayPowerController;->mPrevEBI:F

    .line 3047
    .local v2, "downEBI":F
    sget v5, Lcom/android/server/power/DisplayPowerController;->mPrevEBI:F

    .line 3049
    .local v5, "upEBI":F
    sget v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD:F

    mul-float v4, v2, v8

    .line 3050
    .local v4, "downThresholdTemp":F
    sget v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD:F

    mul-float v7, v5, v8

    .line 3052
    .local v7, "upThresholdTemp":F
    sget v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    int-to-float v8, v8

    cmpg-float v8, v4, v8

    if-gez v8, :cond_1

    .line 3053
    sget v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    int-to-float v4, v8

    .line 3056
    :cond_1
    sget v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    int-to-float v8, v8

    cmpg-float v8, v7, v8

    if-gez v8, :cond_2

    .line 3057
    sget v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    int-to-float v7, v8

    .line 3060
    :cond_2
    sub-float v3, v2, v4

    .line 3061
    .local v3, "downThreshold":F
    add-float v6, v5, v7

    .line 3063
    .local v6, "upThreshold":F
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v8, :cond_3

    .line 3064
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

    .line 3065
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

    .line 3068
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->clampScreenEBI(F)F

    move-result v1

    .line 3071
    sget v8, Lcom/android/server/power/DisplayPowerController;->mPrevEBI:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_6

    .line 3072
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v8, :cond_4

    .line 3073
    const-string v8, "XAN-DPC"

    const-string v9, "EBI first update"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    :cond_4
    move v0, v1

    .line 3082
    :goto_0
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v8, :cond_5

    .line 3083
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

    .line 3086
    :cond_5
    sput v0, Lcom/android/server/power/DisplayPowerController;->mPrevEBI:F

    .line 3088
    return v0

    .line 3076
    :cond_6
    cmpg-float v8, v6, v1

    if-lez v8, :cond_7

    cmpl-float v8, v3, v1

    if-ltz v8, :cond_8

    .line 3077
    :cond_7
    move v0, v1

    goto :goto_0

    .line 3079
    :cond_8
    sget v0, Lcom/android/server/power/DisplayPowerController;->mPrevEBI:F

    goto :goto_0
.end method

.method private getManualDisplayBrightness(I)I
    .locals 1
    .param p1, "lcdValue"    # I

    .prologue
    .line 3106
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

    .line 1865
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

    .line 1880
    :cond_1
    :goto_0
    return v0

    .line 1870
    :cond_2
    add-long v2, p2, v7

    cmp-long v2, p0, v2

    if-gez v2, :cond_3

    .line 1871
    sub-long v2, p0, p2

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Lcom/android/server/power/DisplayPowerController;->lerp(FFF)F

    move-result v0

    goto :goto_0

    .line 1875
    :cond_3
    sub-long v2, p4, v7

    cmp-long v2, p0, v2

    if-lez v2, :cond_1

    .line 1876
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

    .line 2473
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 2474
    const-string v0, "XAN-DPC"

    const-string v1, "d o Timeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    if-eqz v0, :cond_1

    .line 2478
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PMSInternalAPI;->clearDelayScreenOn()V

    .line 2481
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-eqz v0, :cond_2

    .line 2482
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/power/DisplayPowerRequest;->delayScreenOn:Z

    .line 2485
    :cond_2
    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    .line 2486
    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mProximityAfterEndCall:I

    .line 2489
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->disableProximitySensorAfterEndCall()V

    .line 2491
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    if-eqz v0, :cond_3

    .line 2492
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PMSInternalAPI;->forceEnterSleepMode()V

    .line 2495
    :cond_3
    return-void
.end method

.method private handleEBIAverageRuleUpdate()V
    .locals 10

    .prologue
    .line 2752
    const/4 v5, 0x0

    .line 2753
    .local v5, "totalEBI":F
    const/4 v0, 0x0

    .line 2756
    .local v0, "avgEBI":F
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v6, :cond_0

    .line 2757
    const-string v6, "XAN-DPC"

    const-string v7, "hEBIARU start"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    sget v6, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    if-ge v2, v6, :cond_1

    .line 2763
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mSampleLevel:[F

    aget v6, v6, v2

    add-float/2addr v5, v6

    .line 2762
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2766
    :cond_1
    sget v6, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    int-to-float v6, v6

    div-float v0, v5, v6

    .line 2768
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mSampleFullFirst:Z

    if-eqz v6, :cond_4

    .line 2769
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v6, :cond_2

    .line 2770
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

    .line 2772
    :cond_2
    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientEBI:F

    .line 2773
    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mLastAmbientEBI:F

    .line 2774
    iget-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mLastSampleTime:J

    iput-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mLastAmbientEBITime:J

    .line 2775
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v6, :cond_3

    .line 2776
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

    .line 2806
    :cond_3
    :goto_1
    return-void

    .line 2781
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 2783
    .local v3, "nowTime":J
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v6, :cond_5

    .line 2784
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

    .line 2787
    :cond_5
    iget-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mLastAmbientEBITime:J

    sub-long v6, v3, v6

    sget v8, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STABLE_DEBOUNCE:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_7

    .line 2788
    invoke-direct {p0, v0}, Lcom/android/server/power/DisplayPowerController;->isAmbientEBIAverageStable(F)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2789
    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientEBI:F

    .line 2790
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    .line 2792
    :cond_6
    iget-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mLastSampleTime:J

    iput-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mLastAmbientEBITime:J

    .line 2793
    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mLastAmbientEBI:F

    .line 2796
    :cond_7
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v6, :cond_3

    .line 2797
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

    .line 2800
    .end local v3    # "nowTime":J
    :catch_0
    move-exception v1

    .line 2801
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v6, :cond_3

    .line 2802
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
    .line 2810
    const-wide/16 v2, 0x0

    .line 2811
    .local v2, "diffTime":J
    const-wide/16 v0, 0x0

    .line 2812
    .local v0, "delayTime":J
    const/4 v7, 0x0

    .line 2813
    .local v7, "overCount":I
    const/4 v6, 0x0

    .line 2814
    .local v6, "needUpdate":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2816
    .local v8, "tmpTime":J
    sget-boolean v10, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v10, :cond_0

    .line 2817
    const-string v10, "XAN-DPC"

    const-string v11, "hEBIAST start"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    :cond_0
    :try_start_0
    iget-wide v10, p0, Lcom/android/server/power/DisplayPowerController;->mLastSampleTime:J

    sub-long v2, v8, v10

    .line 2823
    sget v10, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I

    int-to-long v10, v10

    cmp-long v10, v2, v10

    if-ltz v10, :cond_3

    .line 2824
    sget v10, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I

    int-to-long v10, v10

    div-long v10, v2, v10

    long-to-int v7, v10

    .line 2825
    iget-wide v10, p0, Lcom/android/server/power/DisplayPowerController;->mLastSampleTime:J

    sget v12, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I

    add-int/lit8 v13, v7, 0x1

    mul-int/2addr v12, v13

    int-to-long v12, v12

    add-long/2addr v10, v12

    sub-long v0, v10, v8

    .line 2834
    :goto_0
    sget v10, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    if-le v7, v10, :cond_2

    .line 2835
    sget-boolean v10, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v10, :cond_1

    .line 2836
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

    .line 2838
    :cond_1
    sget v7, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    .line 2841
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v7, :cond_4

    .line 2842
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->applyEBIAverageData()Z

    move-result v10

    or-int/2addr v6, v10

    .line 2841
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2829
    .end local v5    # "i":I
    :cond_3
    iget-wide v10, p0, Lcom/android/server/power/DisplayPowerController;->mLastSampleTime:J

    sget v12, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I

    int-to-long v12, v12

    add-long/2addr v10, v12

    sub-long v0, v10, v8

    goto :goto_0

    .line 2845
    .restart local v5    # "i":I
    :cond_4
    iget-wide v10, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedEBITime:J

    sub-long v10, v8, v10

    sget v12, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STOP_UPDATE_DEBOUNCE:I

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-gtz v10, :cond_8

    .line 2846
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/16 v11, 0x8

    invoke-virtual {v10, v11, v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2853
    :cond_5
    :goto_2
    sget-boolean v10, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v10, :cond_6

    .line 2854
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

    .line 2855
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

    .line 2858
    :cond_6
    add-long v10, v8, v0

    sget v12, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I

    int-to-long v12, v12

    sub-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/server/power/DisplayPowerController;->mLastSampleTime:J

    .line 2860
    if-eqz v6, :cond_7

    .line 2862
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->handleEBIAverageRuleUpdate()V

    .line 2871
    .end local v5    # "i":I
    :cond_7
    :goto_3
    return-void

    .line 2848
    .restart local v5    # "i":I
    :cond_8
    sget-boolean v10, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v10, :cond_5

    .line 2849
    const-string v10, "XAN-DPC"

    const-string v11, "hEBIAST no L c"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 2865
    .end local v5    # "i":I
    :catch_0
    move-exception v4

    .line 2866
    .local v4, "e":Ljava/lang/Exception;
    sget-boolean v10, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v10, :cond_7

    .line 2867
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
    .line 1504
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1506
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1508
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1510
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/DisplayPowerController;->updateAmbientEBI(J)V

    .line 1514
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->applyLightSensorMeasurement(JF)V

    .line 1515
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/DisplayPowerController;->updateAmbientLux(J)V

    .line 1516
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

    .line 2499
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    if-ne v0, v1, :cond_4

    .line 2501
    if-nez p1, :cond_3

    .line 2503
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 2504
    const-string v0, "XAN-DPC"

    const-string v1, "r dso 1"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    if-eqz v0, :cond_1

    .line 2508
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2511
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-eqz v0, :cond_2

    .line 2512
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput-boolean v3, v0, Lcom/android/server/power/DisplayPowerRequest;->delayScreenOn:Z

    .line 2515
    :cond_2
    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    .line 2516
    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mProximityAfterEndCall:I

    .line 2554
    :cond_3
    :goto_0
    return-void

    .line 2519
    :cond_4
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    if-nez v0, :cond_3

    .line 2521
    if-nez p1, :cond_9

    .line 2522
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximityAfterEndCall:I

    if-ne v0, v1, :cond_3

    .line 2524
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_5

    .line 2525
    const-string v0, "XAN-DPC"

    const-string v1, "r dso 2"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    :cond_5
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    if-eqz v0, :cond_6

    .line 2529
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2532
    :cond_6
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    if-eqz v0, :cond_7

    .line 2533
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PMSInternalAPI;->clearDelayScreenOn()V

    .line 2536
    :cond_7
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-eqz v0, :cond_8

    .line 2537
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput-boolean v3, v0, Lcom/android/server/power/DisplayPowerRequest;->delayScreenOn:Z

    .line 2540
    :cond_8
    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    .line 2541
    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mProximityAfterEndCall:I

    .line 2544
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->disableProximitySensorAfterEndCall()V

    .line 2545
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    .line 2546
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerStateLocked()V

    goto :goto_0

    .line 2548
    :cond_9
    if-ne p1, v1, :cond_3

    .line 2549
    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximityAfterEndCall:I

    goto :goto_0
.end method

.method private handleProximitySensorEvent(JZ)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1398
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 1399
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 1423
    :cond_0
    :goto_0
    return-void

    .line 1402
    :cond_1
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    if-ne v0, v2, :cond_2

    if-nez p3, :cond_0

    .line 1409
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1410
    if-eqz p3, :cond_3

    .line 1411
    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 1412
    sget v0, Lcom/android/server/power/DisplayPowerController;->PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    .line 1421
    :goto_1
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceProximitySensor()V

    goto :goto_0

    .line 1415
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 1416
    sget v0, Lcom/android/server/power/DisplayPowerController;->PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    goto :goto_1
.end method

.method private initialize()V
    .locals 20

    .prologue
    .line 775
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 776
    const-string v1, "XAN-DPC"

    const-string v2, "initialize..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
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

    .line 788
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

    .line 790
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 791
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 793
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

    .line 795
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 796
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 798
    new-instance v1, Lcom/android/server/power/RampAnimator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    sget-object v3, Lcom/android/server/power/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    invoke-direct {v1, v2, v3}, Lcom/android/server/power/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    .line 802
    sget v8, Lcom/android/server/power/DisplayPowerController;->ANIMATION_MODE:I

    .line 803
    .local v8, "old_animation_mode":I
    sget-wide v10, Lcom/android/server/power/DisplayPowerController;->BRIGHTENING_LIGHT_DEBOUNCE:J

    .line 804
    .local v10, "old_brighten_ls_debounce":J
    sget-wide v13, Lcom/android/server/power/DisplayPowerController;->DARKENING_LIGHT_DEBOUNCE:J

    .line 805
    .local v13, "old_darken_ls_debounce":J
    sget v9, Lcom/android/server/power/DisplayPowerController;->AUTOBRIGHTNESS_ANIM_DURATION:I

    .line 806
    .local v9, "old_brighten_duration":I
    sget v12, Lcom/android/server/power/DisplayPowerController;->AUTODIMNESS_ANIM_DURATION:I

    .line 809
    .local v12, "old_darken_duration":I
    :try_start_0
    const-string v1, "persist.htc.pms.anim.mode"

    sget v2, Lcom/android/server/power/DisplayPowerController;->ANIMATION_MODE:I

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/power/DisplayPowerController;->ANIMATION_MODE:I

    .line 811
    const-string v1, "persist.htc.pms.brighten.ls"

    sget-wide v2, Lcom/android/server/power/DisplayPowerController;->BRIGHTENING_LIGHT_DEBOUNCE:J

    invoke-static {v1, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/power/DisplayPowerController;->BRIGHTENING_LIGHT_DEBOUNCE:J

    .line 812
    const-string v1, "persist.htc.pms.darken.ls"

    sget-wide v2, Lcom/android/server/power/DisplayPowerController;->DARKENING_LIGHT_DEBOUNCE:J

    invoke-static {v1, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/power/DisplayPowerController;->DARKENING_LIGHT_DEBOUNCE:J

    .line 813
    const-string v1, "persist.htc.pms.brighten.dur"

    sget v2, Lcom/android/server/power/DisplayPowerController;->AUTOBRIGHTNESS_ANIM_DURATION:I

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/power/DisplayPowerController;->AUTOBRIGHTNESS_ANIM_DURATION:I

    .line 814
    const-string v1, "persist.htc.pms.darken.dur"

    sget v2, Lcom/android/server/power/DisplayPowerController;->AUTODIMNESS_ANIM_DURATION:I

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/power/DisplayPowerController;->AUTODIMNESS_ANIM_DURATION:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    :cond_1
    :goto_0
    sget v19, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_NEAR_DURATION:I

    .line 823
    .local v19, "old_delay_near":I
    sget v17, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_FAR_ANGLE_DURATION:I

    .line 824
    .local v17, "old_delay_far_angle":I
    sget v18, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_FAR_TOTAL_DURATION:I

    .line 827
    .local v18, "old_delay_far_total":I
    sget v16, Lcom/android/server/power/DisplayPowerController;->PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I

    .line 828
    .local v16, "old_debounce_near":I
    sget v15, Lcom/android/server/power/DisplayPowerController;->PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I

    .line 832
    .local v15, "old_debounce_far":I
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/DisplayPowerController;->checkHtcCustomizationReader()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 833
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/DisplayPowerController;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "powermanager_delay_screen_on_from_near_duration"

    sget v3, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_NEAR_DURATION:I

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_NEAR_DURATION:I

    .line 836
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/DisplayPowerController;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "powermanager_delay_screen_on_from_far_angle_duration"

    sget v3, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_FAR_ANGLE_DURATION:I

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_FAR_ANGLE_DURATION:I

    .line 839
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/DisplayPowerController;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "powermanager_delay_screen_on_from_far_total_duration"

    sget v3, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_FAR_TOTAL_DURATION:I

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_FAR_TOTAL_DURATION:I

    .line 843
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/DisplayPowerController;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "htcangledetector_is_angle_detector_enable"

    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->IS_ANGLE_DETECTOR_SUPPORT:Z

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/power/DisplayPowerController;->IS_ANGLE_DETECTOR_SUPPORT:Z

    .line 846
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->IS_ANGLE_DETECTOR_SUPPORT:Z

    if-eqz v1, :cond_2

    .line 847
    const/4 v1, 0x0

    sput v1, Lcom/android/server/power/DisplayPowerController;->PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I

    .line 848
    const/4 v1, 0x0

    sput v1, Lcom/android/server/power/DisplayPowerController;->PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 859
    :cond_2
    :goto_1
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_3

    .line 860
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

    .line 876
    :cond_3
    return-void

    .line 815
    .end local v15    # "old_debounce_far":I
    .end local v16    # "old_debounce_near":I
    .end local v17    # "old_delay_far_angle":I
    .end local v18    # "old_delay_far_total":I
    .end local v19    # "old_delay_near":I
    :catch_0
    move-exception v7

    .line 816
    .local v7, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 817
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

    .line 852
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v15    # "old_debounce_far":I
    .restart local v16    # "old_debounce_near":I
    .restart local v17    # "old_delay_far_angle":I
    .restart local v18    # "old_delay_far_total":I
    .restart local v19    # "old_delay_near":I
    :catch_1
    move-exception v7

    .line 853
    .restart local v7    # "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_2

    .line 854
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

    .line 788
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 793
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
    .line 2893
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v4, :cond_0

    .line 2894
    const-string v4, "XAN-DPC"

    const-string v5, "iAEBIAS start"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    :cond_0
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mLastAmbientEBI:F

    .line 2898
    .local v0, "downStableEBI":F
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastAmbientEBI:F

    .line 2900
    .local v2, "upStableEBI":F
    sget v4, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD:F

    mul-float/2addr v4, v0

    sub-float v1, v0, v4

    .line 2901
    .local v1, "downStableThreshold":F
    sget v4, Lcom/android/server/power/DisplayPowerController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD:F

    mul-float/2addr v4, v2

    add-float v3, v2, v4

    .line 2903
    .local v3, "upStableThreshold":F
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v4, :cond_1

    .line 2904
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

    .line 2907
    :cond_1
    cmpg-float v4, v3, p1

    if-ltz v4, :cond_2

    cmpl-float v4, v1, p1

    if-lez v4, :cond_3

    .line 2908
    :cond_2
    const/4 v4, 0x0

    .line 2910
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
    .line 1884
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private static normalizeAbsoluteBrightness(I)F
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 1329
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
    .line 2032
    packed-switch p0, :pswitch_data_0

    .line 2040
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2034
    :pswitch_0
    const-string v0, "Unknown"

    goto :goto_0

    .line 2036
    :pswitch_1
    const-string v0, "Negative"

    goto :goto_0

    .line 2038
    :pswitch_2
    const-string v0, "Positive"

    goto :goto_0

    .line 2032
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

    .line 2361
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    if-ne v0, v2, :cond_0

    .line 2384
    :goto_0
    return-void

    .line 2365
    :cond_0
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    .line 2366
    const-string v0, "XAN-DPC"

    const-string v1, "rECM"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    if-eqz v0, :cond_2

    .line 2370
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2373
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    if-eqz v0, :cond_3

    .line 2374
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PMSInternalAPI;->clearDelayScreenOn()V

    .line 2377
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-eqz v0, :cond_4

    .line 2378
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/power/DisplayPowerRequest;->delayScreenOn:Z

    .line 2381
    :cond_4
    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    .line 2382
    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mProximityAfterEndCall:I

    goto :goto_0
.end method

.method private sendDelayScreenOnStateAfterEndCall(I)V
    .locals 5
    .param p1, "reason"    # I

    .prologue
    const/4 v4, -0x1

    .line 2557
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 2558
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

    .line 2560
    :cond_0
    const/4 v0, 0x0

    .line 2562
    .local v0, "turnOnScreen":Z
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    if-eqz v1, :cond_1

    .line 2563
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    invoke-virtual {v1}, Lcom/android/server/power/HtcAngleDetector;->disableDetector_Ext()V

    .line 2566
    :cond_1
    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximityAfterEndCall:I

    if-nez v1, :cond_2

    .line 2567
    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    .line 2568
    const/4 v0, 0x1

    .line 2574
    :cond_2
    :goto_0
    if-eqz v0, :cond_6

    .line 2576
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    if-eqz v1, :cond_3

    .line 2577
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2580
    :cond_3
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    if-eqz v1, :cond_4

    .line 2581
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService$PMSInternalAPI;->clearDelayScreenOn()V

    .line 2584
    :cond_4
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-eqz v1, :cond_5

    .line 2585
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/power/DisplayPowerRequest;->delayScreenOn:Z

    .line 2588
    :cond_5
    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    .line 2589
    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mProximityAfterEndCall:I

    .line 2592
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->disableProximitySensorAfterEndCall()V

    .line 2593
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    .line 2594
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 2597
    :cond_6
    return-void

    .line 2569
    :cond_7
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 2570
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sendOnAngleDetectorReadingDetected()V
    .locals 2

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnAngleDetectorReadingDetectedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1940
    return-void
.end method

.method private sendOnAngleDetectorTalkingDetected()V
    .locals 2

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnAngleDetectorTalkingDetectedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1929
    return-void
.end method

.method private sendOnProximityNegativeWithWakelock()V
    .locals 2

    .prologue
    .line 1914
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1915
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1916
    return-void
.end method

.method private sendOnProximityPositiveWithWakelock()V
    .locals 2

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1902
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1903
    return-void
.end method

.method private sendOnStateChangedWithWakelock()V
    .locals 2

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1889
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1890
    return-void
.end method

.method private sendUpdatePowerState()V
    .locals 1

    .prologue
    .line 747
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState(I)V

    .line 748
    return-void
.end method

.method private sendUpdatePowerState(I)V
    .locals 4
    .param p1, "DURATION"    # I

    .prologue
    .line 754
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 756
    :try_start_0
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 757
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

    .line 759
    :cond_0
    iput p1, p0, Lcom/android/server/power/DisplayPowerController;->mCustomizeDuration:I

    .line 761
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 762
    monitor-exit v1

    .line 763
    return-void

    .line 762
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

    .line 766
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v1, :cond_0

    .line 767
    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 768
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 769
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 770
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 772
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setAmbientLux(F)V
    .locals 2
    .param p1, "lux"    # F

    .prologue
    .line 1549
    iput p1, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    .line 1550
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    .line 1551
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    .line 1552
    return-void
.end method

.method private setLightSensorEnabled(ZZ)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "updateAutoBrightness"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1463
    if-eqz p1, :cond_3

    .line 1464
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-nez v0, :cond_1

    .line 1465
    const/4 p2, 0x1

    .line 1466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    .line 1467
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    .line 1468
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 1469
    const-string v0, "XAN-DPC"

    const-string v1, "Reg L Sensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    const v3, 0xf4240

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1497
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 1498
    invoke-direct {p0, v5}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    .line 1500
    :cond_2
    return-void

    .line 1475
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v0, :cond_1

    .line 1476
    iput-boolean v5, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    .line 1477
    iput-boolean v5, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    .line 1478
    iput v5, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    .line 1480
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1482
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1485
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v0, :cond_4

    .line 1486
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->autoEBIAverageRuleReset()V

    .line 1490
    :cond_4
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1491
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    .line 1492
    const-string v0, "XAN-DPC"

    const-string v1, "Unreg L Sensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPendingProximityDebounceTime(J)V
    .locals 4
    .param p1, "debounceTime"    # J

    .prologue
    .line 1456
    iget-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1457
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1459
    :cond_0
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 1460
    return-void
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, -0x1

    .line 1361
    if-eqz p1, :cond_3

    .line 1362
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-nez v0, :cond_1

    .line 1365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 1366
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 1367
    const-string v0, "XAN-DPC"

    const-string v1, "Reg P Sensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1391
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    if-eqz v0, :cond_2

    .line 1392
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/power/HtcAngleDetector;->proximitySensorOn(Z)V

    .line 1395
    :cond_2
    return-void

    .line 1373
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_1

    .line 1376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 1377
    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    .line 1378
    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 1379
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1381
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->resetEndCallMode()V

    .line 1383
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_4

    .line 1384
    const-string v0, "XAN-DPC"

    const-string v1, "Unreg P Sensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_4
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1387
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->clearPendingProximityDebounceTime()V

    goto :goto_0
.end method

.method private setScreenOn(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1277
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/power/DisplayPowerState;->isScreenOn()Z

    move-result v0

    if-eq v0, p1, :cond_4

    .line 1280
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    if-eqz v0, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v0, v2}, Lcom/android/server/power/PowerManagerService$PMSInternalAPI;->setProximityStateWithScreenOff(Z)V

    .line 1286
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v0, v0, Lcom/android/server/power/DisplayPowerRequest;->turnOnScreenOnce:Z

    if-eqz v0, :cond_2

    .line 1287
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    .line 1288
    const-string v0, "XAN-DPC"

    const-string v1, "clear turnOnScreenOnce flag"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput-boolean v2, v0, Lcom/android/server/power/DisplayPowerRequest;->turnOnScreenOnce:Z

    .line 1294
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayPowerState;->setScreenOn(Z)V

    .line 1297
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 1298
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    invoke-virtual {v0, v2}, Lcom/android/server/power/HtcAngleDetector;->notifyScreenTimeout(Z)V

    .line 1302
    :cond_3
    if-eqz p1, :cond_5

    .line 1303
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenOn()V

    .line 1308
    :cond_4
    :goto_0
    return-void

    .line 1305
    :cond_5
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenOff()V

    goto :goto_0
.end method

.method private unblockScreenOn()V
    .locals 6

    .prologue
    .line 1267
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-eqz v2, :cond_1

    .line 1268
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    .line 1269
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long v0, v2, v4

    .line 1270
    .local v0, "delay":J
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1271
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

    .line 1274
    .end local v0    # "delay":J
    :cond_1
    return-void
.end method

.method private updateAmbientEBI(J)V
    .locals 2
    .param p1, "time"    # J

    .prologue
    .line 2875
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 2876
    const-string v0, "XAN-DPC"

    const-string v1, "uAEBI start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-nez v0, :cond_2

    .line 2880
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    .line 2881
    const-string v0, "XAN-DPC"

    const-string v1, "uAEBI 11"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    :cond_1
    :goto_0
    return-void

    .line 2886
    :cond_2
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedEBITime:J

    .line 2888
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->handleEBIAverageSampleTimeout()V

    goto :goto_0
.end method

.method private updateAmbientLux(J)V
    .locals 10
    .param p1, "time"    # J

    .prologue
    .line 1557
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-nez v6, :cond_6

    .line 1558
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v6, v6

    iget-wide v8, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    add-long v4, v6, v8

    .line 1560
    .local v4, "timeWhenSensorWarmedUp":J
    cmp-long v6, p1, v4

    if-gez v6, :cond_1

    .line 1561
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v4, v5}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 1689
    .end local v4    # "timeWhenSensorWarmedUp":J
    :cond_0
    :goto_0
    return-void

    .line 1565
    .restart local v4    # "timeWhenSensorWarmedUp":J
    :cond_1
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->setAmbientLux(F)V

    .line 1566
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    .line 1567
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1568
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1569
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 1570
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

    .line 1576
    :cond_2
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v6, :cond_3

    .line 1577
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/DisplayPowerController;->autoEBIAverageRuleStart(J)V

    .line 1578
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedEBI:F

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientEBI:F

    .line 1581
    :cond_3
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    .line 1684
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

    .line 1686
    :cond_5
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v7, 0x3

    const-wide/16 v8, 0x7d0

    add-long/2addr v8, p1

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 1582
    :cond_6
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_a

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_a

    .line 1585
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-gtz v6, :cond_7

    .line 1586
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1587
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1588
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_7

    .line 1589
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

    .line 1597
    :cond_7
    iget-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    sget-wide v8, Lcom/android/server/power/DisplayPowerController;->BRIGHTENING_LIGHT_DEBOUNCE:J

    add-long v2, v6, v8

    .line 1598
    .local v2, "debounceTime":J
    cmp-long v6, p1, v2

    if-gez v6, :cond_8

    .line 1599
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v2, v3}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 1602
    :cond_8
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->setAmbientLux(F)V

    .line 1603
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_9

    .line 1604
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

    .line 1611
    :cond_9
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-nez v6, :cond_4

    .line 1612
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    goto/16 :goto_1

    .line 1615
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

    .line 1618
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-ltz v6, :cond_b

    .line 1619
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1620
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1621
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_b

    .line 1622
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

    .line 1630
    :cond_b
    iget-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    sget-wide v8, Lcom/android/server/power/DisplayPowerController;->DARKENING_LIGHT_DEBOUNCE:J

    add-long v2, v6, v8

    .line 1632
    .restart local v2    # "debounceTime":J
    iget-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    sget-wide v8, Lcom/android/server/power/DisplayPowerController;->DARKENING_BUTTON_LIGHT_DEBOUNCE:J

    add-long v0, v6, v8

    .line 1634
    .local v0, "debounceButtonTime":J
    cmp-long v6, p1, v2

    if-gez v6, :cond_d

    .line 1636
    cmp-long v6, p1, v0

    if-gtz v6, :cond_c

    .line 1637
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v7, 0x6

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 1640
    :cond_c
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v2, v3}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 1645
    :cond_d
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->setAmbientLux(F)V

    .line 1646
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_e

    .line 1647
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

    .line 1654
    :cond_e
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-nez v6, :cond_4

    .line 1655
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    goto/16 :goto_1

    .line 1658
    .end local v0    # "debounceButtonTime":J
    .end local v2    # "debounceTime":J
    :cond_f
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-eqz v6, :cond_4

    .line 1660
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1661
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1663
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessage(I)Z

    .line 1666
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_4

    .line 1667
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
    .line 1754
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(ZI)V

    .line 1755
    return-void
.end method

.method private updateAutoBrightness(ZI)V
    .locals 18
    .param p1, "sendUpdate"    # Z
    .param p2, "DURATION"    # I

    .prologue
    .line 1761
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON_A:Z

    if-eqz v4, :cond_0

    .line 1762
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

    .line 1766
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-nez v4, :cond_2

    .line 1862
    :cond_1
    :goto_0
    return-void

    .line 1770
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v4, v5}, Landroid/util/Spline;->interpolate(F)F

    move-result v16

    .line 1771
    .local v16, "value":F
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1773
    .local v11, "gamma":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientEBI:F

    move/from16 v17, v0

    .line 1776
    .local v17, "valueEBI":F
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v4, v4, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_4

    .line 1778
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

    .line 1781
    .local v9, "adjGamma":F
    mul-float/2addr v11, v9

    .line 1783
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v4, :cond_4

    .line 1784
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

    .line 1789
    .end local v9    # "adjGamma":F
    :cond_4
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v4, :cond_6

    .line 1790
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    invoke-virtual {v4}, Lcom/android/server/TwilightService;->getCurrentState()Lcom/android/server/TwilightService$TwilightState;

    move-result-object v15

    .line 1791
    .local v15, "state":Lcom/android/server/TwilightService$TwilightState;
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Lcom/android/server/TwilightService$TwilightState;->isNight()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1792
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1793
    .local v2, "now":J
    invoke-virtual {v15}, Lcom/android/server/TwilightService$TwilightState;->getYesterdaySunset()J

    move-result-wide v4

    invoke-virtual {v15}, Lcom/android/server/TwilightService$TwilightState;->getTodaySunrise()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/android/server/power/DisplayPowerController;->getTwilightGamma(JJJ)F

    move-result v10

    .line 1795
    .local v10, "earlyGamma":F
    invoke-virtual {v15}, Lcom/android/server/TwilightService$TwilightState;->getTodaySunset()J

    move-result-wide v4

    invoke-virtual {v15}, Lcom/android/server/TwilightService$TwilightState;->getTomorrowSunrise()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/android/server/power/DisplayPowerController;->getTwilightGamma(JJJ)F

    move-result v13

    .line 1797
    .local v13, "lateGamma":F
    mul-float v4, v10, v13

    mul-float/2addr v11, v4

    .line 1799
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-nez v4, :cond_5

    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v4, :cond_6

    .line 1800
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

    .line 1807
    .end local v2    # "now":J
    .end local v10    # "earlyGamma":F
    .end local v13    # "lateGamma":F
    .end local v15    # "state":Lcom/android/server/TwilightService$TwilightState;
    :cond_6
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v4, :cond_e

    .line 1808
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientEBI:F

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/power/DisplayPowerController;->getEBIAverageAlgorithm(F)F

    move-result v17

    .line 1817
    :cond_7
    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v11, v4

    if-eqz v4, :cond_9

    .line 1818
    move/from16 v12, v16

    .line 1819
    .local v12, "in":F
    move/from16 v0, v16

    invoke-static {v0, v11}, Landroid/util/FloatMath;->pow(FF)F

    move-result v16

    .line 1821
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-nez v4, :cond_8

    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v4, :cond_9

    .line 1823
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

    .line 1830
    .end local v12    # "in":F
    :cond_9
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v4, :cond_f

    .line 1831
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/power/DisplayPowerController;->convertEBIToDisplayBrightnessAlgorithm(F)I

    move-result v14

    .line 1839
    .local v14, "newScreenAutoBrightness":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/DisplayPowerController;->mHtcAutoBrightnessCtrl:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    if-eqz v4, :cond_a

    .line 1840
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1841
    .local v8, "LUX":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/DisplayPowerController;->mHtcAutoBrightnessCtrl:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    invoke-virtual {v4, v8}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getButtonValue(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/power/DisplayPowerController;->mButtonValue:I

    .line 1845
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

    .line 1847
    :cond_b
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-nez v4, :cond_c

    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v4, :cond_d

    .line 1848
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

    .line 1856
    :cond_d
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 1857
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    .line 1858
    if-eqz p1, :cond_1

    .line 1859
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState(I)V

    goto/16 :goto_0

    .line 1810
    .end local v14    # "newScreenAutoBrightness":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/DisplayPowerController;->mHtcAutoBrightnessCtrl:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    if-eqz v4, :cond_7

    .line 1811
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1812
    .restart local v8    # "LUX":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/DisplayPowerController;->mHtcAutoBrightnessCtrl:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v4, v8, v5}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getBrightnessBaseOnAlgorithm(ILandroid/util/Spline;)F

    move-result v16

    goto/16 :goto_1

    .line 1833
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

    .line 903
    const/4 v1, 0x0

    .line 904
    .local v1, "mustInitialize":Z
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    .line 905
    .local v6, "updateAutoBrightness":Z
    const/4 v7, 0x0

    .line 906
    .local v7, "wasDim":Z
    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    .line 908
    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 909
    const/4 v8, 0x0

    :try_start_0
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 910
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v8, :cond_1

    .line 911
    monitor-exit v11

    .line 1254
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v8, :cond_11

    .line 915
    new-instance v8, Lcom/android/server/power/DisplayPowerRequest;

    iget-object v12, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-direct {v8, v12}, Lcom/android/server/power/DisplayPowerRequest;-><init>(Lcom/android/server/power/DisplayPowerRequest;)V

    iput-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    .line 916
    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 917
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 918
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 919
    const/4 v1, 0x1

    .line 939
    :cond_2
    :goto_1
    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    if-nez v8, :cond_15

    move v2, v9

    .line 940
    .local v2, "mustNotify":Z
    :goto_2
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    if-eqz v1, :cond_3

    .line 944
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->initialize()V

    .line 948
    :cond_3
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v8, :cond_1e

    .line 950
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, v8, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    if-eqz v8, :cond_4

    .line 951
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    iget v11, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    invoke-virtual {v8, v11}, Lcom/android/server/power/HtcAngleDetector;->proximitySensorStatus(I)V

    .line 954
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

    .line 960
    :cond_5
    invoke-direct {p0, v9}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 961
    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v8, :cond_6

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-ne v8, v9, :cond_6

    .line 963
    iput-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 964
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityPositiveWithWakelock()V

    .line 984
    :cond_6
    :goto_3
    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v8, :cond_7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-eq v8, v9, :cond_7

    .line 986
    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 987
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    .line 990
    :cond_7
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, v8, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v8, :cond_9

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-eq v8, v9, :cond_9

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    if-eqz v8, :cond_9

    .line 991
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    invoke-virtual {v8}, Lcom/android/server/power/HtcAngleDetector;->isTalkingDetected()Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 992
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, v8, Lcom/android/server/power/DisplayPowerRequest;->forceScreenOn:Z

    if-nez v8, :cond_19

    .line 993
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v8, :cond_8

    .line 994
    const-string v8, "XAN-DPC"

    const-string v11, "Talking.turning off."

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :cond_8
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnAngleDetectorTalkingDetected()V

    .line 997
    invoke-direct {p0, v10}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 1021
    :cond_9
    :goto_4
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v8, v8, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v8}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 1025
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, v8, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v8, :cond_1f

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    if-ltz v8, :cond_1f

    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v8, :cond_1f

    .line 1028
    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 1031
    .local v5, "target":I
    const/4 v4, 0x0

    .line 1033
    .local v4, "slow":Z
    iput-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    .line 1043
    :goto_5
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v8, v8, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-ne v8, v9, :cond_21

    .line 1046
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v8, :cond_20

    .line 1047
    const/16 v8, 0x14

    invoke-virtual {p0, v8}, Lcom/android/server/power/DisplayPowerController;->convertBacklightToDisplayBrightnessAlgorithm(I)I

    move-result v5

    .line 1053
    :goto_6
    const/4 v4, 0x0

    .line 1061
    :cond_a
    :goto_7
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v8, :cond_b

    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON_A:Z

    if-eqz v8, :cond_b

    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v8, :cond_b

    .line 1062
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

    .line 1072
    :cond_b
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAutoBrightnessCtrl:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    if-eqz v8, :cond_c

    .line 1074
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v8, :cond_22

    .line 1075
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAutoBrightnessCtrl:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v11, v11, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessPercentage:I

    invoke-virtual {v8, v5, v11}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getCtrlDisplayBrightnessValue(II)I

    move-result v5

    .line 1085
    :cond_c
    :goto_8
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    invoke-virtual {v8}, Lcom/android/server/power/RampAnimator;->getCurrentBrightness()I

    move-result v0

    .line 1089
    .local v0, "curValue":I
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v8, :cond_23

    .line 1090
    invoke-direct {p0, v5}, Lcom/android/server/power/DisplayPowerController;->clampScreenDisplayBrightness(I)I

    move-result v3

    .line 1096
    .local v3, "newTarget":I
    :goto_9
    if-nez v0, :cond_24

    .line 1097
    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mButtonValue:I

    invoke-direct {p0, v3, v10, v8, v13}, Lcom/android/server/power/DisplayPowerController;->animateScreenBrightness(IIII)V

    .line 1120
    .end local v0    # "curValue":I
    .end local v3    # "newTarget":I
    .end local v4    # "slow":Z
    .end local v5    # "target":I
    :goto_a
    iput v13, p0, Lcom/android/server/power/DisplayPowerController;->mCustomizeDuration:I

    .line 1126
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

    .line 1129
    invoke-direct {p0, v10}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 1131
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    if-eqz v8, :cond_d

    .line 1132
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v8, v9}, Lcom/android/server/power/PowerManagerService$PMSInternalAPI;->setProximityStateWithScreenOff(Z)V

    .line 1135
    :cond_d
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->unblockScreenOn()V

    .line 1224
    :cond_e
    :goto_b
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v8, :cond_f

    .line 1227
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

    .line 1238
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

    .line 1243
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1244
    :try_start_1
    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v8, :cond_10

    .line 1245
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 1247
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v8, :cond_10

    .line 1248
    const-string v8, "XAN-DPC"

    const-string v10, "Display ready!"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :cond_10
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1252
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    goto/16 :goto_0

    .line 920
    .end local v2    # "mustNotify":Z
    :cond_11
    :try_start_2
    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v8, :cond_2

    .line 921
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v8, v8, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    iget-object v12, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    iget v12, v12, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    cmpl-float v8, v8, v12

    if-eqz v8, :cond_12

    .line 923
    const/4 v6, 0x1

    .line 926
    :cond_12
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v8, v8, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessPercentage:I

    iget-object v12, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    iget v12, v12, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessPercentage:I

    if-eq v8, v12, :cond_13

    .line 928
    const/4 v6, 0x1

    .line 931
    :cond_13
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v8, v8, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-ne v8, v9, :cond_14

    move v7, v9

    .line 932
    :goto_d
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-object v12, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v8, v12}, Lcom/android/server/power/DisplayPowerRequest;->copyFrom(Lcom/android/server/power/DisplayPowerRequest;)V

    .line 933
    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iget-boolean v12, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    or-int/2addr v8, v12

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 934
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 935
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 936
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    goto/16 :goto_1

    .line 940
    :catchall_0
    move-exception v8

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    :cond_14
    move v7, v10

    .line 931
    goto :goto_d

    :cond_15
    move v2, v10

    .line 939
    goto/16 :goto_2

    .line 966
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

    .line 970
    invoke-direct {p0, v9}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto/16 :goto_3

    .line 972
    :cond_17
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, v8, Lcom/android/server/power/DisplayPowerRequest;->forceScreenOn:Z

    if-eqz v8, :cond_18

    .line 973
    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-nez v8, :cond_6

    .line 974
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput-boolean v10, v8, Lcom/android/server/power/DisplayPowerRequest;->forceScreenOn:Z

    goto/16 :goto_3

    .line 978
    :cond_18
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, v8, Lcom/android/server/power/DisplayPowerRequest;->delayScreenOn:Z

    if-nez v8, :cond_6

    .line 981
    invoke-direct {p0, v10}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 982
    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_3

    .line 999
    :cond_19
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v8, :cond_1a

    .line 1000
    const-string v8, "XAN-DPC"

    const-string v11, "Force on is set. disable detector."

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_1a
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    invoke-virtual {v8}, Lcom/android/server/power/HtcAngleDetector;->disableDetector_Ext()V

    .line 1003
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnAngleDetectorReadingDetected()V

    goto/16 :goto_4

    .line 1005
    :cond_1b
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    invoke-virtual {v8}, Lcom/android/server/power/HtcAngleDetector;->isTurnOnScreenOnce()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1006
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v8, :cond_1c

    .line 1007
    const-string v8, "XAN-DPC"

    const-string v11, "Reading.turning on."

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_1c
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, v8, Lcom/android/server/power/DisplayPowerRequest;->forceScreenOn:Z

    if-eqz v8, :cond_1d

    .line 1010
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput-boolean v10, v8, Lcom/android/server/power/DisplayPowerRequest;->forceScreenOn:Z

    .line 1012
    :cond_1d
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnAngleDetectorReadingDetected()V

    goto/16 :goto_4

    .line 1017
    :cond_1e
    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_4

    .line 1039
    :cond_1f
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v5, v8, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    .line 1040
    .restart local v5    # "target":I
    const/4 v4, 0x0

    .line 1041
    .restart local v4    # "slow":Z
    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    goto/16 :goto_5

    .line 1049
    :cond_20
    add-int/lit8 v8, v5, -0xa

    iget v11, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto/16 :goto_6

    .line 1054
    :cond_21
    if-eqz v7, :cond_a

    .line 1056
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 1078
    :cond_22
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAutoBrightnessCtrl:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v11, v11, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessPercentage:I

    invoke-virtual {v8, v5, v11}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->getCtrlBrightnessValue(II)I

    move-result v5

    goto/16 :goto_8

    .line 1092
    .restart local v0    # "curValue":I
    :cond_23
    invoke-direct {p0, v5}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v3

    .restart local v3    # "newTarget":I
    goto/16 :goto_9

    .line 1098
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

    .line 1103
    if-gt v0, v3, :cond_25

    .line 1104
    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mButtonValue:I

    sget v11, Lcom/android/server/power/DisplayPowerController;->AUTOBRIGHTNESS_ANIM_DURATION:I

    invoke-direct {p0, v3, v13, v8, v11}, Lcom/android/server/power/DisplayPowerController;->animateScreenBrightness(IIII)V

    goto/16 :goto_a

    .line 1106
    :cond_25
    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mButtonValue:I

    sget v11, Lcom/android/server/power/DisplayPowerController;->AUTODIMNESS_ANIM_DURATION:I

    invoke-direct {p0, v3, v13, v8, v11}, Lcom/android/server/power/DisplayPowerController;->animateScreenBrightness(IIII)V

    goto/16 :goto_a

    .line 1108
    :cond_26
    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mCustomizeDuration:I

    if-gez v8, :cond_28

    .line 1109
    if-eqz v4, :cond_27

    sget v8, Lcom/android/server/power/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_SLOW:I

    :goto_e
    iget v11, p0, Lcom/android/server/power/DisplayPowerController;->mButtonValue:I

    invoke-direct {p0, v3, v8, v11}, Lcom/android/server/power/DisplayPowerController;->animateScreenBrightness(III)V

    goto/16 :goto_a

    :cond_27
    sget v8, Lcom/android/server/power/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_FAST:I

    goto :goto_e

    .line 1111
    :cond_28
    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mButtonValue:I

    iget v11, p0, Lcom/android/server/power/DisplayPowerController;->mCustomizeDuration:I

    invoke-direct {p0, v3, v13, v8, v11}, Lcom/android/server/power/DisplayPowerController;->animateScreenBrightness(IIII)V

    goto/16 :goto_a

    .line 1116
    .end local v0    # "curValue":I
    .end local v3    # "newTarget":I
    .end local v4    # "slow":Z
    .end local v5    # "target":I
    :cond_29
    iput-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    goto/16 :goto_a

    .line 1138
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

    .line 1144
    :cond_2c
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v8

    if-nez v8, :cond_2e

    .line 1148
    invoke-direct {p0, v9}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 1150
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, v8, Lcom/android/server/power/DisplayPowerRequest;->blockScreenOn:Z

    if-eqz v8, :cond_2d

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v8}, Lcom/android/server/power/DisplayPowerState;->getElectronBeamLevel()F

    move-result v8

    cmpl-float v8, v8, v14

    if-nez v8, :cond_2d

    .line 1152
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->blockScreenOn()V

    goto/16 :goto_b

    .line 1154
    :cond_2d
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->unblockScreenOn()V

    .line 1169
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v8, v11}, Lcom/android/server/power/DisplayPowerState;->setElectronBeamLevel(F)V

    .line 1170
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v8}, Lcom/android/server/power/DisplayPowerState;->dismissElectronBeam()V

    goto/16 :goto_b

    .line 1175
    :cond_2e
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v8, :cond_e

    .line 1176
    const-string v8, "XAN-DPC"

    const-string v11, "screen on request when animation to off"

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1183
    :cond_2f
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->unblockScreenOn()V

    .line 1184
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v8

    if-nez v8, :cond_e

    .line 1213
    invoke-direct {p0, v10, v10, v10, v13}, Lcom/android/server/power/DisplayPowerController;->animateScreenBrightness(IIII)V

    .line 1215
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v8, v14}, Lcom/android/server/power/DisplayPowerState;->setElectronBeamLevel(F)V

    .line 1216
    invoke-direct {p0, v10}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    goto/16 :goto_b

    :cond_30
    move v8, v10

    .line 1227
    goto/16 :goto_c

    .line 1251
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
    .line 2045
    packed-switch p0, :pswitch_data_0

    .line 2050
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2048
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2045
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

    .line 2388
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 2389
    const-string v0, "XAN-DPC"

    const-string v1, "cECM"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    if-eqz v0, :cond_1

    .line 2393
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2397
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    if-eqz v0, :cond_2

    .line 2398
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PMSInternalAPI;->clearDelayScreenOn()V

    .line 2401
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-eqz v0, :cond_3

    .line 2402
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/power/DisplayPowerRequest;->delayScreenOn:Z

    .line 2405
    :cond_3
    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    .line 2406
    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mProximityAfterEndCall:I

    .line 2409
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->disableProximitySensorAfterEndCall()V

    .line 2410
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    .line 2411
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 2412
    return-void
.end method

.method protected convertBacklightToDisplayBrightnessAlgorithm(I)I
    .locals 6
    .param p1, "backlight"    # I

    .prologue
    .line 2957
    const/4 v2, -0x1

    .line 2958
    .local v2, "screenDisplayBrightnessValue":I
    const/4 v1, 0x0

    .line 2960
    .local v1, "screenBacklight":I
    if-gez p1, :cond_0

    .line 2999
    .end local p1    # "backlight":I
    :goto_0
    return p1

    .line 2964
    .restart local p1    # "backlight":I
    :cond_0
    move v1, p1

    .line 2966
    if-gtz v1, :cond_5

    .line 2967
    const/4 v1, 0x0

    .line 2976
    :cond_1
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBacklightToDisplayBrightnessTable:[I

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBacklightToDisplayBrightnessTable:[I

    array-length v3, v3

    if-lez v3, :cond_7

    .line 2977
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBacklightToDisplayBrightnessTable:[I

    array-length v3, v3

    if-lt v1, v3, :cond_2

    .line 2978
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

    .line 2979
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBacklightToDisplayBrightnessTable:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .line 2981
    :cond_2
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBacklightToDisplayBrightnessTable:[I

    aget v2, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2993
    :cond_3
    :goto_2
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v3, :cond_4

    .line 2994
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

    .line 2997
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/server/power/DisplayPowerController;->clampScreenDisplayBrightness(I)I

    move-result v2

    move p1, v2

    .line 2999
    goto :goto_0

    .line 2968
    :cond_5
    const/16 v3, 0x14

    if-ge v1, v3, :cond_6

    .line 2969
    const/16 v1, 0x14

    goto :goto_1

    .line 2970
    :cond_6
    const/16 v3, 0xff

    if-le v1, v3, :cond_1

    .line 2971
    const/16 v1, 0xff

    goto :goto_1

    .line 2983
    :cond_7
    :try_start_1
    const-string v3, "XAN-DPC"

    const-string v4, "mBacklightToDisplayBrightnessTable is invalid"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2984
    move v2, v1

    goto :goto_2

    .line 2987
    :catch_0
    move-exception v0

    .line 2988
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v3, :cond_3

    .line 2989
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
    .line 1951
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1952
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1953
    const-string v0, "Display Controller Locked State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1954
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

    .line 1955
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

    .line 1956
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

    .line 1957
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

    .line 1959
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

    .line 1960
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1962
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1963
    const-string v0, "Display Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1964
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

    .line 1965
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

    .line 1966
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

    .line 1967
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

    .line 1969
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

    .line 1970
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

    .line 1972
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

    .line 1975
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/power/DisplayPowerController$8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/DisplayPowerController$8;-><init>(Lcom/android/server/power/DisplayPowerController;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1981
    return-void

    .line 1960
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
    .line 2193
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/power/RampAnimator;->getCurrentBrightness()I

    move-result v0

    .line 2196
    .local v0, "lcdValue":I
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v1, :cond_0

    .line 2197
    invoke-direct {p0, v0}, Lcom/android/server/power/DisplayPowerController;->convertDisplayBrightnessToBacklightAlgorithm(I)I

    move-result v0

    .line 2201
    :cond_0
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 2202
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

    .line 2205
    :cond_1
    return v0
.end method

.method protected getAmbientLux()F
    .locals 1

    .prologue
    .line 2219
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    return v0
.end method

.method protected getHtcAutoBrightnessCtrl()Lcom/android/server/power/HtcAutoBrightnessCtrl;
    .locals 2

    .prologue
    .line 2223
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAutoBrightnessCtrl:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    if-nez v0, :cond_0

    .line 2224
    const-string v0, "XAN-DPC"

    const-string v1, "getHtcAutoBrightnessCtrl: null found."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAutoBrightnessCtrl:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    return-object v0
.end method

.method protected getProximitySensorActive()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2212
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

    .line 2214
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
    .line 2350
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2351
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 2352
    const-string v0, "XAN-DPC"

    const-string v1, "iECM"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    :cond_0
    const/4 v0, 0x1

    .line 2356
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProximitySensorAvailable()Z
    .locals 1

    .prologue
    .line 691
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

    .line 2416
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 2417
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 2418
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

    .line 2469
    :cond_0
    :goto_0
    return v1

    .line 2424
    :cond_1
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-ne v3, v2, :cond_4

    .line 2425
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v3, :cond_2

    .line 2426
    const-string v3, "XAN-DPC"

    const-string v4, "delay on near"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    :cond_2
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    if-eqz v3, :cond_4

    .line 2430
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v3, v5}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2432
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v3, v5}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2433
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2434
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    sget v4, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_NEAR_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2435
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v3, :cond_3

    .line 2436
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

    .line 2438
    :cond_3
    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    goto :goto_0

    .line 2444
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

    .line 2446
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v3, :cond_5

    .line 2447
    const-string v3, "XAN-DPC"

    const-string v4, "delay on far"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    :cond_5
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    if-eqz v3, :cond_0

    .line 2451
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v3, v5}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2453
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v3, v5}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2454
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2455
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    sget v4, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_FAR_TOTAL_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2456
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v3, :cond_6

    .line 2457
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

    .line 2459
    :cond_6
    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mDelayScreenOnReason:I

    .line 2460
    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximityAfterEndCall:I

    .line 2462
    sget v1, Lcom/android/server/power/DisplayPowerController;->DELAY_SCREEN_ON_FROM_FAR_ANGLE_DURATION:I

    invoke-virtual {p0, v2, v1}, Lcom/android/server/power/DisplayPowerController;->notifyReleaseProximityWakeLock(ZI)V

    move v1, v2

    .line 2464
    goto/16 :goto_0
.end method

.method protected notifyReleaseProximityWakeLock(ZI)V
    .locals 3
    .param p1, "status"    # Z
    .param p2, "timeout"    # I

    .prologue
    .line 2600
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 2601
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

    .line 2603
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    if-eqz v0, :cond_1

    .line 2604
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/HtcAngleDetector;->notifyReleaseProximityWakeLock(ZI)V

    .line 2606
    :cond_1
    return-void
.end method

.method protected notifyScreenTimeout(Z)V
    .locals 2
    .param p1, "isTimeout"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2231
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    if-eqz v0, :cond_1

    .line 2232
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v0, v0, Lcom/android/server/power/DisplayPowerRequest;->forceScreenOn:Z

    if-eqz v0, :cond_0

    .line 2233
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput-boolean v1, v0, Lcom/android/server/power/DisplayPowerRequest;->forceScreenOn:Z

    .line 2235
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHtcAngleDetector:Lcom/android/server/power/HtcAngleDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/power/HtcAngleDetector;->notifyScreenTimeout(Z)V

    .line 2239
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v0, v0, Lcom/android/server/power/DisplayPowerRequest;->turnOnScreenOnce:Z

    if-eqz v0, :cond_2

    .line 2240
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput-boolean v1, v0, Lcom/android/server/power/DisplayPowerRequest;->turnOnScreenOnce:Z

    .line 2244
    :cond_2
    return-void
.end method

.method public requestPowerState(Lcom/android/server/power/DisplayPowerRequest;Z)Z
    .locals 4
    .param p1, "request"    # Lcom/android/server/power/DisplayPowerRequest;
    .param p2, "waitForNegativeProximity"    # Z

    .prologue
    .line 710
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 711
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

    .line 715
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 716
    const/4 v0, 0x0

    .line 718
    .local v0, "changed":Z
    if-eqz p2, :cond_1

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    if-nez v1, :cond_1

    .line 720
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 721
    const/4 v0, 0x1

    .line 724
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v1, :cond_5

    .line 725
    new-instance v1, Lcom/android/server/power/DisplayPowerRequest;

    invoke-direct {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;-><init>(Lcom/android/server/power/DisplayPowerRequest;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    .line 726
    const/4 v0, 0x1

    .line 732
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 733
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 736
    :cond_3
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v1, :cond_4

    .line 737
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 738
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 741
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    monitor-exit v2

    return v1

    .line 727
    :cond_5
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;->equals(Lcom/android/server/power/DisplayPowerRequest;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 728
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;->copyFrom(Lcom/android/server/power/DisplayPowerRequest;)V

    .line 729
    const/4 v0, 0x1

    goto :goto_0

    .line 742
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

    .line 3113
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 3114
    const-string v0, "XAN-DPC"

    const-string v1, "resetPsensorNearStatus S"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3117
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    .line 3118
    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 3119
    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 3121
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    .line 3122
    const-string v0, "XAN-DPC"

    const-string v1, "resetPsensorNearStatus E"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    :cond_1
    return-void
.end method
