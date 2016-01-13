.class public Lcom/android/server/power/HtcPowerSaver;
.super Ljava/lang/Object;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/HtcPowerSaver$ReduceCPU;,
        Lcom/android/server/power/HtcPowerSaver$HapticFeedback;,
        Lcom/android/server/power/HtcPowerSaver$Brightness;,
        Lcom/android/server/power/HtcPowerSaver$Feature;,
        Lcom/android/server/power/HtcPowerSaver$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG_ON:Z

.field public static final HTC_POWERSAVER_OFF:Ljava/lang/String; = "com.htc.server.htcpowersaver.action.OFF"

.field public static final HTC_POWERSAVER_ON:Ljava/lang/String; = "com.htc.server.htcpowersaver.action.ON"

.field public static final HTC_POWERSAVER_SCREEN_OFF:Ljava/lang/String; = "com.htc.server.htcpowersaver.action.screenoff"

.field public static final HTC_POWERSAVER_SCREEN_ON:Ljava/lang/String; = "com.htc.server.htcpowersaver.action.screenon"

.field public static final KEY_ENABLE_POWERSAVER:Ljava/lang/String; = "powersaver_enable"

.field public static final KEY_SET_SCHEDULE:Ljava/lang/String; = "powersaver_set_schedule"

.field public static final KEY_STATUS:Ljava/lang/String; = "STATUS_POWER_SAVING_AUTO"

.field public static final KEY_USER_POWERSAVER_ENABLE:Ljava/lang/String; = "user_powersaver_enable"

.field public static final NORMAL_STATUS:I = 0x1f40

.field public static final POWERSAVER_STATUS:I = 0x1f41

.field public static final POWERSAVER_USER_ENABLED:I = 0x1f42

.field public static final STATUS_NORMAL:I = 0x1f40

.field public static final STATUS_NO_CHANGED:I = -0x1

.field public static final STATUS_POWER_SAVING_AUTO:I = 0x1f41

.field public static final STATUS_POWER_SAVING_MANUAL:I = 0x1f42

.field private static final TAG:Ljava/lang/String; = "HtcPowerSaver"

.field protected static final TAG_PREFIX:Ljava/lang/String; = "HtcPowerSaver-"


# instance fields
.field private final ACTION_AUTOMOTIVE_MODE_CHANGE:Ljava/lang/String;

.field private final ACTION_PREFIX:Ljava/lang/String;

.field public final AUTOMODE_OFF:Ljava/lang/String;

.field public final AUTOMODE_ON:Ljava/lang/String;

.field private final AUTOMOTIVE_DISABLED:I

.field private final AUTOMOTIVE_ENABLED:I

.field private final AUTOMOTIVE_RECEIVER_PERMISSION:Ljava/lang/String;

.field private final DEFAULT_ENABLE:Z

.field private final DEFAULT_ENABLE_LEVEL:I

.field private final DEFAULT_HTC_EXTREME_POWER_SAVER_AUTO:I

.field private final DEFAULT_HTC_EXTREME_POWER_SAVER_BATTERY_LEVEL:I

.field private final DEFAULT_HTC_EXTREME_POWER_SAVER_STATE:I

.field private final DEFAULT_HTC_PERFORMANCE_MODE_STATE:I

.field private final DEFAULT_HTC_POWER_SAVER_STATE:I

.field private final DEFAULT_POWER_SAVING_PROFILE_CPU:I

.field private final DEFAULT_POWER_SAVING_PROFILE_HAPTIC:I

.field private final DEFAULT_POWER_SAVING_PROFILE_SCREEN:I

.field private final DEFAULT_USER_ENABLE:Z

.field private final EXTREME_AUTOMODE_DISMISS_AUTO_DIALOG_OK:Ljava/lang/String;

.field private final EXTREME_AUTOMODE_OFF:Ljava/lang/String;

.field private final EXTREME_AUTOMODE_ON:Ljava/lang/String;

.field private final EXTREME_AUTOMODE_ON_ASK:Ljava/lang/String;

.field private final EXTREME_AUTOMODE_ON_ASK_OFF:Ljava/lang/String;

.field private final EXTREME_AUTOMODE_ON_ASK_OK:Ljava/lang/String;

.field private final HTC_CPU_EXTREME_POWERSAVER_MODE:I

.field private final HTC_CPU_NORMAL_MODE:I

.field private final HTC_CPU_PERFORMANCE_MODE:I

.field private final HTC_CPU_POWERSAVER_MODE:I

.field private final HTC_EXTREME_POWER_SAVER_AUTO_DISABLE:I

.field private final HTC_EXTREME_POWER_SAVER_AUTO_ENABLE:I

.field private final HTC_EXTREME_POWER_SAVER_STATE_DISABLE:I

.field private final HTC_EXTREME_POWER_SAVER_STATE_ENABLE:I

.field private final HTC_PERFORMANCE_MODE_STATE_DISABLE:I

.field private final HTC_PERFORMANCE_MODE_STATE_ENABLE:I

.field private final HTC_POWER_SAVER_STATE_DISABLE:I

.field private final HTC_POWER_SAVER_STATE_ENABLE:I

.field private final HTC_POWER_SAVING_FEATURE_CPU:I

.field private final HTC_POWER_SAVING_FEATURE_HAPTIC:I

.field private final HTC_POWER_SAVING_FEATURE_SCREEN:I

.field private final HTC_POWER_SAVING_PROFILE_CPU_DISABLE:I

.field private final HTC_POWER_SAVING_PROFILE_CPU_ENABLE:I

.field private final HTC_POWER_SAVING_PROFILE_HAPTIC_DISABLE:I

.field private final HTC_POWER_SAVING_PROFILE_HAPTIC_ENABLE:I

.field private final HTC_POWER_SAVING_PROFILE_SCREEN_DISABLE:I

.field private final HTC_POWER_SAVING_PROFILE_SCREEN_ENABLE:I

.field private final KEY_AUTOMOTIVE_CURRENT_MODE:Ljava/lang/String;

.field private final KEY_AUTO_MODE_ON:Ljava/lang/String;

.field private final KEY_EXTREME_AUTO_MODE_BATTERY_LEVEL:Ljava/lang/String;

.field private final KEY_EXTREME_AUTO_MODE_ON:Ljava/lang/String;

.field private final KEY_HTC_EXTREME_POWER_SAVER_AUTO:Ljava/lang/String;

.field private final KEY_HTC_EXTREME_POWER_SAVER_BATTERY_LEVEL:Ljava/lang/String;

.field private final KEY_HTC_EXTREME_POWER_SAVER_STATE:Ljava/lang/String;

.field private final KEY_HTC_PERFORMANCE_MODE_STATE:Ljava/lang/String;

.field private final KEY_POWERSAVER_SHARED:Ljava/lang/String;

.field private final KEY_POWER_SAVING_PROFILE_CPU:Ljava/lang/String;

.field private final KEY_POWER_SAVING_PROFILE_HAPTIC:Ljava/lang/String;

.field private final KEY_POWER_SAVING_PROFILE_SCREEN:Ljava/lang/String;

.field private final SYSPROP_POWERSAVER_GAP:Ljava/lang/String;

.field private final SYSPROP_POWERSAVER_STATUS:Ljava/lang/String;

.field private mAutoModeOn:Z

.field private mAutoMotiveMode:Z

.field private mAutoMotiveReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryInfoUpdated:Z

.field private mBatteryLevel:I

.field private mBatteryStatus:I

.field private mBootCompleted:Z

.field private mBootNotify:Z

.field private mCarMode:Z

.field private mCarModeReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mExtremeAutoModeOn:Z

.field private mExtremeAutoModeOnAsk:Z

.field private mExtremePowerSaverAuto:I

.field private mExtremePowerSaverBatteryLevel:I

.field private mExtremePowerSaverState:I

.field private mFeatureList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/HtcPowerSaver$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastBatteryLevel:I

.field private mLastBatteryStatus:I

.field private mLastExtremePowerSaverState:I

.field private mLastOOBEState:I

.field private mLastPerformanceModeState:I

.field private mLastPlugType:I

.field private mLastPlugged:Z

.field private mLastPowerSaverSettingCPU:I

.field private mLastPowerSaverSettingHaptic:I

.field private mLastPowerSaverSettingScreen:I

.field private mLastPowerSaverState:I

.field private mLowBatteryWarningLevels:[I

.field private mOOBEState:I

.field private mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

.field private mPerformanceModeState:I

.field private mPlugType:I

.field private mPlugged:Z

.field private mPowerSaverSettingCPU:I

.field private mPowerSaverSettingHaptic:I

.field private mPowerSaverSettingScreen:I

.field private mPowerSaverState:I

.field private mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService$PMSInternalAPI;)V
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pmsInternalAPI"    # Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v3, "com.htc.intent.action.HtcPowerSaver."

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->ACTION_PREFIX:Ljava/lang/String;

    .line 72
    const-string v3, "com.htc.intent.action.HtcPowerSaver.AutoModeOn"

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->AUTOMODE_ON:Ljava/lang/String;

    .line 73
    const-string v3, "com.htc.intent.action.HtcPowerSaver.AutoModeOff"

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->AUTOMODE_OFF:Ljava/lang/String;

    .line 74
    const-string v3, "powersaver.automode"

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_AUTO_MODE_ON:Ljava/lang/String;

    .line 75
    iput-boolean v4, p0, Lcom/android/server/power/HtcPowerSaver;->mAutoModeOn:Z

    .line 82
    iput-boolean v5, p0, Lcom/android/server/power/HtcPowerSaver;->DEFAULT_ENABLE:Z

    .line 86
    iput-boolean v4, p0, Lcom/android/server/power/HtcPowerSaver;->DEFAULT_USER_ENABLE:Z

    .line 92
    const/16 v3, 0xf

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->DEFAULT_ENABLE_LEVEL:I

    .line 95
    const-string v3, "powersaver_shared"

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_POWERSAVER_SHARED:Ljava/lang/String;

    .line 97
    const-string v3, "sys.psaver.stat"

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->SYSPROP_POWERSAVER_STATUS:Ljava/lang/String;

    .line 98
    const-string v3, "sys.psaver.gap"

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->SYSPROP_POWERSAVER_GAP:Ljava/lang/String;

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->mFeatureList:Ljava/util/ArrayList;

    .line 109
    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->mLowBatteryWarningLevels:[I

    .line 112
    iput-boolean v4, p0, Lcom/android/server/power/HtcPowerSaver;->mBatteryInfoUpdated:Z

    .line 128
    const-string v3, "htc_extreme_power_saver_state"

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_HTC_EXTREME_POWER_SAVER_STATE:Ljava/lang/String;

    .line 129
    const-string v3, "htc_extreme_power_saver_auto"

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_HTC_EXTREME_POWER_SAVER_AUTO:Ljava/lang/String;

    .line 130
    const-string v3, "htc_extreme_power_saver_battery_level"

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_HTC_EXTREME_POWER_SAVER_BATTERY_LEVEL:Ljava/lang/String;

    .line 131
    const-string v3, "htc_performance_mode_state"

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_HTC_PERFORMANCE_MODE_STATE:Ljava/lang/String;

    .line 133
    const-string v3, "powersaver_reduce_CPU"

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_POWER_SAVING_PROFILE_CPU:Ljava/lang/String;

    .line 134
    const-string v3, "powersaver_screen_brightness"

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_POWER_SAVING_PROFILE_SCREEN:Ljava/lang/String;

    .line 135
    const-string v3, "powersaver_haptic_feedback"

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_POWER_SAVING_PROFILE_HAPTIC:Ljava/lang/String;

    .line 137
    iput v5, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_CPU_NORMAL_MODE:I

    .line 138
    iput v7, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_CPU_POWERSAVER_MODE:I

    .line 139
    iput v8, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_CPU_EXTREME_POWERSAVER_MODE:I

    .line 140
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_CPU_PERFORMANCE_MODE:I

    .line 142
    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_EXTREME_POWER_SAVER_STATE_DISABLE:I

    .line 143
    iput v5, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_EXTREME_POWER_SAVER_STATE_ENABLE:I

    .line 144
    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->DEFAULT_HTC_EXTREME_POWER_SAVER_STATE:I

    .line 146
    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_POWER_SAVER_STATE_DISABLE:I

    .line 147
    iput v5, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_POWER_SAVER_STATE_ENABLE:I

    .line 148
    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->DEFAULT_HTC_POWER_SAVER_STATE:I

    .line 150
    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_EXTREME_POWER_SAVER_AUTO_DISABLE:I

    .line 151
    iput v5, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_EXTREME_POWER_SAVER_AUTO_ENABLE:I

    .line 152
    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->DEFAULT_HTC_EXTREME_POWER_SAVER_AUTO:I

    .line 154
    const/16 v3, 0xa

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->DEFAULT_HTC_EXTREME_POWER_SAVER_BATTERY_LEVEL:I

    .line 156
    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_POWER_SAVING_PROFILE_CPU_DISABLE:I

    .line 157
    iput v5, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_POWER_SAVING_PROFILE_CPU_ENABLE:I

    .line 158
    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->DEFAULT_POWER_SAVING_PROFILE_CPU:I

    .line 160
    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_POWER_SAVING_PROFILE_SCREEN_DISABLE:I

    .line 161
    iput v5, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_POWER_SAVING_PROFILE_SCREEN_ENABLE:I

    .line 162
    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->DEFAULT_POWER_SAVING_PROFILE_SCREEN:I

    .line 164
    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_POWER_SAVING_PROFILE_HAPTIC_DISABLE:I

    .line 165
    iput v5, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_POWER_SAVING_PROFILE_HAPTIC_ENABLE:I

    .line 166
    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->DEFAULT_POWER_SAVING_PROFILE_HAPTIC:I

    .line 168
    iput v5, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_POWER_SAVING_FEATURE_CPU:I

    .line 169
    iput v7, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_POWER_SAVING_FEATURE_SCREEN:I

    .line 170
    iput v8, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_POWER_SAVING_FEATURE_HAPTIC:I

    .line 172
    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_PERFORMANCE_MODE_STATE_DISABLE:I

    .line 173
    iput v5, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_PERFORMANCE_MODE_STATE_ENABLE:I

    .line 174
    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->DEFAULT_HTC_PERFORMANCE_MODE_STATE:I

    .line 176
    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverState:I

    .line 177
    iput v6, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverState:I

    .line 179
    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingCPU:I

    .line 180
    iput v6, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverSettingCPU:I

    .line 182
    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingScreen:I

    .line 183
    iput v6, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverSettingScreen:I

    .line 185
    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingHaptic:I

    .line 186
    iput v6, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverSettingHaptic:I

    .line 188
    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverState:I

    .line 189
    iput v6, p0, Lcom/android/server/power/HtcPowerSaver;->mLastExtremePowerSaverState:I

    .line 190
    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverAuto:I

    .line 191
    const/16 v3, 0xa

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverBatteryLevel:I

    .line 193
    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->mPerformanceModeState:I

    .line 194
    iput v6, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPerformanceModeState:I

    .line 196
    const-string v3, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOn"

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->EXTREME_AUTOMODE_ON:Ljava/lang/String;

    .line 197
    const-string v3, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOnASK"

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->EXTREME_AUTOMODE_ON_ASK:Ljava/lang/String;

    .line 198
    const-string v3, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOnASKOK"

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->EXTREME_AUTOMODE_ON_ASK_OK:Ljava/lang/String;

    .line 199
    const-string v3, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOnASKOFF"

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->EXTREME_AUTOMODE_ON_ASK_OFF:Ljava/lang/String;

    .line 200
    const-string v3, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOff"

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->EXTREME_AUTOMODE_OFF:Ljava/lang/String;

    .line 201
    const-string v3, "com.htc.intent.action.HtcPowerSaver.DismissEPSAutoDialogOK"

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->EXTREME_AUTOMODE_DISMISS_AUTO_DIALOG_OK:Ljava/lang/String;

    .line 202
    const-string v3, "powersaver.exautomode"

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_EXTREME_AUTO_MODE_ON:Ljava/lang/String;

    .line 203
    const-string v3, "eps_battery_level"

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_EXTREME_AUTO_MODE_BATTERY_LEVEL:Ljava/lang/String;

    .line 204
    iput-boolean v4, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    .line 205
    iput-boolean v4, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOnAsk:Z

    .line 207
    iput-boolean v4, p0, Lcom/android/server/power/HtcPowerSaver;->mBootCompleted:Z

    .line 209
    const-string v3, "com.htc.permission.APP_DEFAULT"

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->AUTOMOTIVE_RECEIVER_PERMISSION:Ljava/lang/String;

    .line 210
    const-string v3, "com.htc.AutoMotive.Service.ModeChange"

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->ACTION_AUTOMOTIVE_MODE_CHANGE:Ljava/lang/String;

    .line 211
    const-string v3, "AutoMotive_Current_Mode"

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_AUTOMOTIVE_CURRENT_MODE:Ljava/lang/String;

    .line 212
    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->AUTOMOTIVE_ENABLED:I

    .line 213
    iput v5, p0, Lcom/android/server/power/HtcPowerSaver;->AUTOMOTIVE_DISABLED:I

    .line 214
    iput-boolean v4, p0, Lcom/android/server/power/HtcPowerSaver;->mAutoMotiveMode:Z

    .line 215
    iput-boolean v4, p0, Lcom/android/server/power/HtcPowerSaver;->mCarMode:Z

    .line 217
    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->mLastOOBEState:I

    .line 218
    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->mOOBEState:I

    .line 1075
    new-instance v3, Lcom/android/server/power/HtcPowerSaver$4;

    invoke-direct {v3, p0}, Lcom/android/server/power/HtcPowerSaver$4;-><init>(Lcom/android/server/power/HtcPowerSaver;)V

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1107
    new-instance v3, Lcom/android/server/power/HtcPowerSaver$5;

    invoke-direct {v3, p0}, Lcom/android/server/power/HtcPowerSaver$5;-><init>(Lcom/android/server/power/HtcPowerSaver;)V

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->mAutoMotiveReceiver:Landroid/content/BroadcastReceiver;

    .line 1135
    new-instance v3, Lcom/android/server/power/HtcPowerSaver$6;

    invoke-direct {v3, p0}, Lcom/android/server/power/HtcPowerSaver$6;-><init>(Lcom/android/server/power/HtcPowerSaver;)V

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->mCarModeReceiver:Landroid/content/BroadcastReceiver;

    .line 223
    iput-object p1, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    .line 224
    iput-object p2, p0, Lcom/android/server/power/HtcPowerSaver;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    .line 225
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Z)V

    iput-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->mHandler:Landroid/os/Handler;

    .line 230
    new-instance v3, Lcom/android/server/power/HtcPowerSaver$Brightness;

    iget-object v4, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/android/server/power/HtcPowerSaver$Brightness;-><init>(Lcom/android/server/power/HtcPowerSaver;Landroid/content/Context;)V

    invoke-direct {p0, v3}, Lcom/android/server/power/HtcPowerSaver;->registerFeature(Lcom/android/server/power/HtcPowerSaver$Feature;)V

    .line 232
    new-instance v3, Lcom/android/server/power/HtcPowerSaver$HapticFeedback;

    iget-object v4, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/android/server/power/HtcPowerSaver$HapticFeedback;-><init>(Lcom/android/server/power/HtcPowerSaver;Landroid/content/Context;)V

    invoke-direct {p0, v3}, Lcom/android/server/power/HtcPowerSaver;->registerFeature(Lcom/android/server/power/HtcPowerSaver$Feature;)V

    .line 235
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 236
    .local v2, "filterPowerSaver":Landroid/content/IntentFilter;
    const-string v3, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOnASKOK"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    const-string v3, "com.htc.intent.action.HtcPowerSaver.DismissEPSAutoDialogOK"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    iget-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/power/HtcPowerSaver;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v5, "com.htc.permission.APP_PLATFORM"

    iget-object v6, p0, Lcom/android/server/power/HtcPowerSaver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 240
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 241
    .local v0, "filterAutoMotive":Landroid/content/IntentFilter;
    const-string v3, "com.htc.AutoMotive.Service.ModeChange"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    iget-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/power/HtcPowerSaver;->mAutoMotiveReceiver:Landroid/content/BroadcastReceiver;

    const-string v5, "com.htc.permission.APP_DEFAULT"

    iget-object v6, p0, Lcom/android/server/power/HtcPowerSaver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 244
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 245
    .local v1, "filterCarMode":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    iget-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/power/HtcPowerSaver;->mCarModeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/power/HtcPowerSaver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 249
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->initObserver()V

    .line 252
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->updateSettingsValue()V

    .line 255
    return-void

    .line 109
    :array_0
    .array-data 4
        0xe
        0x9
        0x4
        0x1
    .end array-data
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/power/HtcPowerSaver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcPowerSaver;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->updateSettingsValue()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/power/HtcPowerSaver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcPowerSaver;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/server/power/HtcPowerSaver;->mBootNotify:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/power/HtcPowerSaver;)Lcom/android/server/power/PowerManagerService$PMSInternalAPI;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcPowerSaver;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/HtcPowerSaver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcPowerSaver;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/power/HtcPowerSaver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcPowerSaver;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/power/HtcPowerSaver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcPowerSaver;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOnAsk:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/power/HtcPowerSaver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcPowerSaver;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->saveExtremeAutoModeOn()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/power/HtcPowerSaver;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcPowerSaver;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcPowerSaver;->checkAutoMotiveMode(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/power/HtcPowerSaver;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcPowerSaver;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcPowerSaver;->checkCarMode(Landroid/content/Intent;)V

    return-void
.end method

.method private acquireCpuMode(I)V
    .locals 3
    .param p1, "modeId"    # I

    .prologue
    .line 509
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/HtcPowerSaver;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/android/server/power/HtcPowerSaver;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v1, p1}, Lcom/android/server/power/PowerManagerService$PMSInternalAPI;->nativeAcquireCpuMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "HtcPowerSaver"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private broadcastIntent(I)V
    .locals 5
    .param p1, "nowStatus"    # I

    .prologue
    .line 605
    const-string v1, "com.htc.server.htcpowersaver.action.OFF"

    .line 607
    .local v1, "intentString":Ljava/lang/String;
    const/16 v2, 0x1f41

    if-eq p1, v2, :cond_0

    const/16 v2, 0x1f42

    if-ne p1, v2, :cond_1

    .line 609
    :cond_0
    const-string v1, "com.htc.server.htcpowersaver.action.ON"

    .line 612
    :cond_1
    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    .line 614
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 615
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "status"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 617
    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/power/HtcPowerSaver$2;

    invoke-direct {v3, p0, v0}, Lcom/android/server/power/HtcPowerSaver$2;-><init>(Lcom/android/server/power/HtcPowerSaver;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 628
    const-string v2, "HtcPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastIntent:("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    .end local v0    # "i":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method private buildHomeIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1257
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1258
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1259
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1260
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1261
    return-object v0
.end method

.method private changePowerSaverBehavior(IZ)V
    .locals 7
    .param p1, "featureId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 468
    sget-boolean v4, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v4, :cond_0

    .line 469
    const-string v4, "HtcPowerSaver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changePowerSaverBehavior ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_0
    iget-object v4, p0, Lcom/android/server/power/HtcPowerSaver;->mFeatureList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 474
    .local v2, "featureSize":I
    sget-boolean v4, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v4, :cond_1

    .line 475
    const-string v4, "HtcPowerSaver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_6

    .line 482
    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/HtcPowerSaver;->mFeatureList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/HtcPowerSaver$Feature;

    .line 483
    .local v1, "f":Lcom/android/server/power/HtcPowerSaver$Feature;
    if-eqz v1, :cond_3

    .line 484
    iget v4, v1, Lcom/android/server/power/HtcPowerSaver$Feature;->mFeatureId:I

    if-ne v4, p1, :cond_3

    .line 485
    if-eqz p2, :cond_4

    .line 486
    sget-boolean v4, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v4, :cond_2

    .line 487
    const-string v4, "HtcPowerSaver"

    const-string v5, "apply"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_2
    # invokes: Lcom/android/server/power/HtcPowerSaver$Feature;->apply()Z
    invoke-static {v1}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$200(Lcom/android/server/power/HtcPowerSaver$Feature;)Z

    .line 496
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/HtcPowerSaver;->sendIntentByFeature(IZ)V

    .line 481
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 491
    :cond_4
    sget-boolean v4, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v4, :cond_5

    .line 492
    const-string v4, "HtcPowerSaver"

    const-string v5, "restore"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_5
    # invokes: Lcom/android/server/power/HtcPowerSaver$Feature;->restore()V
    invoke-static {v1}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$300(Lcom/android/server/power/HtcPowerSaver$Feature;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 500
    .end local v1    # "f":Lcom/android/server/power/HtcPowerSaver$Feature;
    :catch_0
    move-exception v0

    .line 501
    .local v0, "ex":Ljava/lang/Exception;
    const-string v4, "HtcPowerSaver"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_6
    return-void
.end method

.method private checkAutoMotiveMode(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 1268
    :try_start_0
    const-string v2, "AutoMotive_Current_Mode"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1270
    .local v0, "autoMotiveValue":I
    sget-boolean v2, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 1271
    const-string v2, "HtcPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAutoMotiveMode : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/HtcPowerSaver;->mAutoMotiveMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

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

    .line 1276
    :cond_0
    if-nez v0, :cond_3

    .line 1278
    iget-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mAutoMotiveMode:Z

    if-eqz v2, :cond_2

    .line 1299
    .end local v0    # "autoMotiveValue":I
    :cond_1
    :goto_0
    return-void

    .line 1282
    .restart local v0    # "autoMotiveValue":I
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mAutoMotiveMode:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1295
    .end local v0    # "autoMotiveValue":I
    :catch_0
    move-exception v1

    .line 1296
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "HtcPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAutoMotiveMode: exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1284
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "autoMotiveValue":I
    :cond_3
    if-ne v0, v5, :cond_1

    .line 1286
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mAutoMotiveMode:Z

    if-eqz v2, :cond_1

    .line 1290
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mAutoMotiveMode:Z

    .line 1292
    invoke-virtual {p0}, Lcom/android/server/power/HtcPowerSaver;->check()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private checkCarMode(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1305
    :try_start_0
    const-string v2, "android.intent.extra.DOCK_STATE"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1307
    .local v0, "dockMode":I
    sget-boolean v2, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 1308
    const-string v2, "HtcPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCarMode : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/HtcPowerSaver;->mCarMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

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

    .line 1313
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 1315
    iget-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mCarMode:Z

    if-eqz v2, :cond_2

    .line 1336
    .end local v0    # "dockMode":I
    :cond_1
    :goto_0
    return-void

    .line 1319
    .restart local v0    # "dockMode":I
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mCarMode:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1332
    .end local v0    # "dockMode":I
    :catch_0
    move-exception v1

    .line 1333
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "HtcPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCarMode: exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1323
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "dockMode":I
    :cond_3
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mCarMode:Z

    if-eqz v2, :cond_1

    .line 1327
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mCarMode:Z

    .line 1329
    invoke-virtual {p0}, Lcom/android/server/power/HtcPowerSaver;->check()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private entering()V
    .locals 4

    .prologue
    .line 519
    const-string v2, "HtcPowerSaver"

    const-string v3, "Entering..."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mFeatureList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/HtcPowerSaver$Feature;

    .line 521
    .local v0, "f":Lcom/android/server/power/HtcPowerSaver$Feature;
    # invokes: Lcom/android/server/power/HtcPowerSaver$Feature;->apply()Z
    invoke-static {v0}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$200(Lcom/android/server/power/HtcPowerSaver$Feature;)Z

    goto :goto_0

    .line 523
    .end local v0    # "f":Lcom/android/server/power/HtcPowerSaver$Feature;
    :cond_0
    return-void
.end method

.method private getCurrentStatus()I
    .locals 5

    .prologue
    .line 699
    iget-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 700
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "STATUS_POWER_SAVING_AUTO"

    const/16 v4, 0x1f40

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 703
    .local v2, "status":I
    :try_start_0
    const-string v3, "sys.psaver.stat"

    invoke-direct {p0, v2}, Lcom/android/server/power/HtcPowerSaver;->statusToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :goto_0
    return v2

    .line 704
    :catch_0
    move-exception v1

    .line 705
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "HtcPowerSaver"

    const-string v4, "getCurrentStatus: Unable to set SystemProperties: sys.psaver.stat"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDialogId(IIZ)I
    .locals 5
    .param p1, "enableLevel"    # I
    .param p2, "currentLevel"    # I
    .param p3, "userEnable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 549
    if-ge p2, p1, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    if-eqz p3, :cond_3

    :cond_1
    move v1, v2

    .line 550
    .local v1, "enable_powersaver":Z
    :goto_0
    const/16 v4, 0xf

    if-ge p2, v4, :cond_4

    .line 552
    .local v2, "low_battery":Z
    :goto_1
    const/4 v0, -0x1

    .line 554
    .local v0, "dialogId":I
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 555
    const/4 v0, 0x2

    .line 559
    :cond_2
    :goto_2
    return v0

    .end local v0    # "dialogId":I
    .end local v1    # "enable_powersaver":Z
    .end local v2    # "low_battery":Z
    :cond_3
    move v1, v3

    .line 549
    goto :goto_0

    .restart local v1    # "enable_powersaver":Z
    :cond_4
    move v2, v3

    .line 550
    goto :goto_1

    .line 556
    .restart local v0    # "dialogId":I
    .restart local v2    # "low_battery":Z
    :cond_5
    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    .line 557
    const/4 v0, 0x3

    goto :goto_2
.end method

.method private getEnable()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 744
    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 745
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "powersaver_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSchedule()I
    .locals 5

    .prologue
    .line 726
    iget-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 727
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "powersaver_set_schedule"

    const/16 v4, 0xf

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 730
    .local v2, "schedule":I
    :try_start_0
    const-string v3, "sys.psaver.gap"

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    :goto_0
    return v2

    .line 731
    :catch_0
    move-exception v1

    .line 732
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "HtcPowerSaver"

    const-string v4, "getSchedule: Unable to set SystemProperties: sys.psaver.gap"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleSettingsValue()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 415
    sget-boolean v0, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 416
    const-string v0, "HtcPowerSaver"

    const-string v1, "handleSettingsValue()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_0
    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mPerformanceModeState:I

    if-ne v0, v2, :cond_4

    .line 420
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/power/HtcPowerSaver;->acquireCpuMode(I)V

    .line 430
    :goto_0
    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverState:I

    if-ne v0, v2, :cond_3

    .line 432
    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverSettingCPU:I

    iget v1, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingCPU:I

    if-eq v0, v1, :cond_1

    .line 434
    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingCPU:I

    if-ne v0, v2, :cond_7

    .line 435
    invoke-direct {p0, v2, v2}, Lcom/android/server/power/HtcPowerSaver;->changePowerSaverBehavior(IZ)V

    .line 442
    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverSettingScreen:I

    iget v1, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingScreen:I

    if-eq v0, v1, :cond_2

    .line 444
    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingScreen:I

    if-ne v0, v2, :cond_8

    .line 445
    invoke-direct {p0, v4, v2}, Lcom/android/server/power/HtcPowerSaver;->changePowerSaverBehavior(IZ)V

    .line 452
    :cond_2
    :goto_2
    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverSettingHaptic:I

    iget v1, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingHaptic:I

    if-eq v0, v1, :cond_3

    .line 454
    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingHaptic:I

    if-ne v0, v2, :cond_9

    .line 455
    invoke-direct {p0, v5, v2}, Lcom/android/server/power/HtcPowerSaver;->changePowerSaverBehavior(IZ)V

    .line 464
    :cond_3
    :goto_3
    return-void

    .line 421
    :cond_4
    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverState:I

    if-ne v0, v2, :cond_5

    .line 422
    invoke-direct {p0, v5}, Lcom/android/server/power/HtcPowerSaver;->acquireCpuMode(I)V

    goto :goto_0

    .line 423
    :cond_5
    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverState:I

    if-ne v0, v2, :cond_6

    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingCPU:I

    if-ne v0, v2, :cond_6

    .line 425
    invoke-direct {p0, v4}, Lcom/android/server/power/HtcPowerSaver;->acquireCpuMode(I)V

    goto :goto_0

    .line 427
    :cond_6
    invoke-direct {p0, v2}, Lcom/android/server/power/HtcPowerSaver;->acquireCpuMode(I)V

    goto :goto_0

    .line 437
    :cond_7
    invoke-direct {p0, v2, v3}, Lcom/android/server/power/HtcPowerSaver;->changePowerSaverBehavior(IZ)V

    goto :goto_1

    .line 447
    :cond_8
    invoke-direct {p0, v4, v3}, Lcom/android/server/power/HtcPowerSaver;->changePowerSaverBehavior(IZ)V

    goto :goto_2

    .line 457
    :cond_9
    invoke-direct {p0, v5, v3}, Lcom/android/server/power/HtcPowerSaver;->changePowerSaverBehavior(IZ)V

    goto :goto_3
.end method

.method private handleStatus(IZZ)I
    .locals 3
    .param p1, "currentStatus"    # I
    .param p2, "enable"    # Z
    .param p3, "userManual"    # Z

    .prologue
    .line 639
    if-eqz p2, :cond_4

    .line 640
    if-eqz p3, :cond_3

    .line 641
    const/16 v0, 0x1f42

    .line 649
    .local v0, "nextStatus":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/power/HtcPowerSaver;->switchStatus(I)I

    move-result v1

    .line 651
    .local v1, "statusChangeTo":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mBootNotify:Z

    if-eqz v2, :cond_2

    .line 652
    const/16 v2, 0x1f41

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1f42

    if-ne v0, v2, :cond_1

    .line 653
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->entering()V

    .line 655
    :cond_1
    move v1, v0

    .line 658
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/power/HtcPowerSaver;->broadcastIntent(I)V

    .line 660
    return v1

    .line 643
    .end local v0    # "nextStatus":I
    .end local v1    # "statusChangeTo":I
    :cond_3
    const/16 v0, 0x1f41

    .restart local v0    # "nextStatus":I
    goto :goto_0

    .line 646
    .end local v0    # "nextStatus":I
    :cond_4
    const/16 v0, 0x1f40

    .restart local v0    # "nextStatus":I
    goto :goto_0
.end method

.method private initObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 263
    sget-boolean v1, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 264
    const-string v1, "HtcPowerSaver"

    const-string v2, "initObserver()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    new-instance v1, Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/HtcPowerSaver$SettingsObserver;-><init>(Lcom/android/server/power/HtcPowerSaver;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/power/HtcPowerSaver;->mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    .line 269
    iget-object v1, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 271
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-nez v0, :cond_1

    .line 272
    const-string v1, "HtcPowerSaver"

    const-string v2, "init resolver = null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :goto_0
    return-void

    .line 276
    :cond_1
    const-string v1, "user_powersaver_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 280
    const-string v1, "powersaver_reduce_CPU"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 284
    const-string v1, "powersaver_screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 288
    const-string v1, "powersaver_haptic_feedback"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 293
    const-string v1, "htc_extreme_power_saver_state"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 297
    const-string v1, "htc_extreme_power_saver_auto"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 301
    const-string v1, "htc_extreme_power_saver_battery_level"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 305
    const-string v1, "htc_performance_mode_state"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 309
    const-string v1, "setup_wizard_has_run"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0
.end method

.method private isAutoMotiveMode()Z
    .locals 1

    .prologue
    .line 1221
    iget-boolean v0, p0, Lcom/android/server/power/HtcPowerSaver;->mAutoMotiveMode:Z

    return v0
.end method

.method private isCarMode()Z
    .locals 1

    .prologue
    .line 1225
    iget-boolean v0, p0, Lcom/android/server/power/HtcPowerSaver;->mCarMode:Z

    return v0
.end method

.method private isForbidEnterAutoEPSMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1187
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->isKidModeChildLockActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1188
    sget-boolean v1, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 1189
    const-string v1, "HtcPowerSaver"

    const-string v2, "in Kid mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :cond_0
    :goto_0
    return v0

    .line 1192
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->isAutoMotiveMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1193
    sget-boolean v1, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 1194
    const-string v1, "HtcPowerSaver"

    const-string v2, "in AutoMotive mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1197
    :cond_2
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->isCarMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1198
    sget-boolean v1, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 1199
    const-string v1, "HtcPowerSaver"

    const-string v2, "in Car mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1202
    :cond_3
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->isOOBEDone()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1203
    sget-boolean v1, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 1204
    const-string v1, "HtcPowerSaver"

    const-string v2, "in OOBE mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1209
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKidModeChildLockActive()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1234
    iget-object v4, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1236
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_1

    .line 1252
    :cond_0
    :goto_0
    return v3

    .line 1240
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->buildHomeIntent()Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1242
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 1246
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1248
    .local v0, "appPackageName":Ljava/lang/CharSequence;
    const-string v4, "com.zoodles.kidmode"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1249
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isManunalEnable()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 664
    iget-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 665
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "user_powersaver_enable"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 666
    .local v1, "userEnabled":Z
    :goto_0
    return v1

    .end local v1    # "userEnabled":Z
    :cond_0
    move v1, v2

    .line 665
    goto :goto_0
.end method

.method private isOOBEDone()Z
    .locals 1

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    if-eqz v0, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PMSInternalAPI;->isOOBEDone()Z

    move-result v0

    .line 1217
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private leaving()V
    .locals 4

    .prologue
    .line 526
    const-string v2, "HtcPowerSaver"

    const-string v3, "Leaving..."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mFeatureList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/HtcPowerSaver$Feature;

    .line 528
    .local v0, "f":Lcom/android/server/power/HtcPowerSaver$Feature;
    # invokes: Lcom/android/server/power/HtcPowerSaver$Feature;->restore()V
    invoke-static {v0}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$300(Lcom/android/server/power/HtcPowerSaver$Feature;)V

    goto :goto_0

    .line 530
    .end local v0    # "f":Lcom/android/server/power/HtcPowerSaver$Feature;
    :cond_0
    return-void
.end method

.method private popDialog(I)V
    .locals 4
    .param p1, "dialogId"    # I

    .prologue
    .line 671
    if-lez p1, :cond_0

    .line 673
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.powersaversetting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 674
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "case"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 675
    invoke-direct {p0, v0}, Lcom/android/server/power/HtcPowerSaver;->sendBroadcastHelper(Landroid/content/Intent;)V

    .line 676
    const-string v1, "HtcPowerSaver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "popDialog: Send intent : dialogId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private popLowBatteryDialog(IIIZZ)Z
    .locals 7
    .param p1, "level"    # I
    .param p2, "lastLevel"    # I
    .param p3, "status"    # I
    .param p4, "plugged"    # Z
    .param p5, "lastPlugged"    # Z

    .prologue
    const/4 v4, 0x1

    .line 533
    const/4 v2, 0x0

    .line 534
    .local v2, "popDialog":Z
    iget-object v5, p0, Lcom/android/server/power/HtcPowerSaver;->mLowBatteryWarningLevels:[I

    array-length v1, v5

    .line 536
    .local v1, "loopSize":I
    if-nez p4, :cond_0

    if-ne p3, v4, :cond_1

    :cond_0
    move v3, v2

    .line 545
    .end local v2    # "popDialog":Z
    .local v3, "popDialog":I
    :goto_0
    return v3

    .line 540
    .end local v3    # "popDialog":I
    .restart local v2    # "popDialog":Z
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_4

    if-nez v2, :cond_4

    .line 541
    iget-object v5, p0, Lcom/android/server/power/HtcPowerSaver;->mLowBatteryWarningLevels:[I

    aget v5, v5, v0

    if-gt p1, v5, :cond_3

    if-nez p5, :cond_2

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mLastBatteryLevel:I

    iget-object v6, p0, Lcom/android/server/power/HtcPowerSaver;->mLowBatteryWarningLevels:[I

    aget v6, v6, v0

    if-le v5, v6, :cond_3

    :cond_2
    move v2, v4

    .line 540
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 541
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    move v3, v2

    .line 545
    .restart local v3    # "popDialog":I
    goto :goto_0
.end method

.method private registerFeature(Lcom/android/server/power/HtcPowerSaver$Feature;)V
    .locals 1
    .param p1, "f"    # Lcom/android/server/power/HtcPowerSaver$Feature;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->mFeatureList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    return-void
.end method

.method private restoreAutoModeOn()V
    .locals 6

    .prologue
    .line 987
    iget-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 988
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mAutoModeOn:Z

    .line 991
    .local v2, "prev_auto_mode_on":Z
    :try_start_0
    const-string v3, "powersaver.automode"

    iget-boolean v4, p0, Lcom/android/server/power/HtcPowerSaver;->mAutoModeOn:Z

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$HtcISecure$Agent;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/power/HtcPowerSaver;->mAutoModeOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 996
    :goto_0
    sget-boolean v3, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v3, :cond_0

    .line 997
    const-string v3, "HtcPowerSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreAutoModeOn: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/power/HtcPowerSaver;->mAutoModeOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_0
    return-void

    .line 992
    :catch_0
    move-exception v1

    .line 993
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "HtcPowerSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreAutoModeOn: Unable to get Settings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreExtremeAutoModeOn()V
    .locals 6

    .prologue
    .line 1060
    iget-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1061
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    .line 1064
    .local v2, "prev_ex_auto_mode_on":Z
    :try_start_0
    const-string v3, "powersaver.exautomode"

    iget-boolean v4, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$HtcISecure$Agent;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1069
    :goto_0
    sget-boolean v3, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v3, :cond_0

    .line 1070
    const-string v3, "HtcPowerSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreExtremeAutoModeOn: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_0
    return-void

    .line 1065
    :catch_0
    move-exception v1

    .line 1066
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "HtcPowerSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreExtremeAutoModeOn: Unable to get Settings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveAutoModeOn()V
    .locals 5

    .prologue
    .line 972
    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 975
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "powersaver.automode"

    iget-boolean v3, p0, Lcom/android/server/power/HtcPowerSaver;->mAutoModeOn:Z

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$HtcISecure$Agent;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    :goto_0
    sget-boolean v2, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 981
    const-string v2, "HtcPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAutoModeOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/HtcPowerSaver;->mAutoModeOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_0
    return-void

    .line 976
    :catch_0
    move-exception v1

    .line 977
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "HtcPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAutoModeOn: Unable to set Settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveExtremeAutoModeOn()V
    .locals 5

    .prologue
    .line 1045
    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1048
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "powersaver.exautomode"

    iget-boolean v3, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$HtcISecure$Agent;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1053
    :goto_0
    sget-boolean v2, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 1054
    const-string v2, "HtcPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveExtremeAutoModeOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_0
    return-void

    .line 1049
    :catch_0
    move-exception v1

    .line 1050
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "HtcPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveExtremeAutoModeOn: Unable to set Settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendBroadcastHelper(Landroid/content/Intent;)V
    .locals 2
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/HtcPowerSaver$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/HtcPowerSaver$1;-><init>(Lcom/android/server/power/HtcPowerSaver;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 601
    return-void
.end method

.method private sendBroadcastHelperWithPermission(Landroid/content/Intent;)V
    .locals 2
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/HtcPowerSaver$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/HtcPowerSaver$3;-><init>(Lcom/android/server/power/HtcPowerSaver;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1041
    return-void
.end method

.method private sendIntentByFeature(IZ)V
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 1165
    const-string v1, ""

    .line 1167
    .local v1, "intentString":Ljava/lang/String;
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 1169
    if-eqz p2, :cond_1

    .line 1170
    const-string v1, "com.htc.server.htcpowersaver.action.screenon"

    .line 1175
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1177
    .local v0, "i":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/server/power/HtcPowerSaver;->sendBroadcastHelperWithPermission(Landroid/content/Intent;)V

    .line 1179
    const-string v2, "HtcPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendIntentByFeature:("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    return-void

    .line 1172
    :cond_1
    const-string v1, "com.htc.server.htcpowersaver.action.screenoff"

    goto :goto_0
.end method

.method private setEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 739
    iget-object v1, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 740
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "powersaver_enable"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 741
    return-void

    .line 740
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setStatus(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 713
    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 716
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "sys.psaver.stat"

    invoke-direct {p0, p1}, Lcom/android/server/power/HtcPowerSaver;->statusToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    :goto_0
    const-string v2, "STATUS_POWER_SAVING_AUTO"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 722
    return-void

    .line 717
    :catch_0
    move-exception v1

    .line 718
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "HtcPowerSaver"

    const-string v3, "setStatus: Unable to set SystemProperties: sys.psaver.stat"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private statusToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 682
    const-string v0, "unknown"

    .line 683
    .local v0, "ret":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 694
    :goto_0
    return-object v0

    .line 685
    :pswitch_0
    const-string v0, "normal"

    .line 686
    goto :goto_0

    .line 688
    :pswitch_1
    const-string v0, "auto"

    .line 689
    goto :goto_0

    .line 691
    :pswitch_2
    const-string v0, "manual"

    goto :goto_0

    .line 683
    nop

    :pswitch_data_0
    .packed-switch 0x1f40
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private switchStatus(I)I
    .locals 2
    .param p1, "nextStatus"    # I

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->getCurrentStatus()I

    move-result v0

    .line 566
    .local v0, "nowStatus":I
    if-ne p1, v0, :cond_0

    .line 567
    const/4 p1, -0x1

    .line 585
    .end local p1    # "nextStatus":I
    :goto_0
    return p1

    .line 570
    .restart local p1    # "nextStatus":I
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 583
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcPowerSaver;->setStatus(I)V

    goto :goto_0

    .line 572
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->leaving()V

    goto :goto_1

    .line 576
    :pswitch_1
    const/16 v1, 0x1f40

    if-ne v0, v1, :cond_1

    .line 578
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->entering()V

    goto :goto_1

    .line 570
    nop

    :pswitch_data_0
    .packed-switch 0x1f40
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateSettingsValue()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 339
    sget-boolean v3, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v3, :cond_0

    .line 340
    const-string v3, "HtcPowerSaver"

    const-string v4, "updateSettingsValue()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 345
    .local v2, "resolver":Landroid/content/ContentResolver;
    if-nez v2, :cond_1

    .line 346
    const-string v3, "HtcPowerSaver"

    const-string v4, "update resolver = null"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :goto_0
    return-void

    .line 350
    :cond_1
    iget v3, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingCPU:I

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverSettingCPU:I

    .line 351
    const-string v3, "powersaver_reduce_CPU"

    invoke-static {v2, v3, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingCPU:I

    .line 356
    iget v3, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingScreen:I

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverSettingScreen:I

    .line 357
    const-string v3, "powersaver_screen_brightness"

    invoke-static {v2, v3, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingScreen:I

    .line 362
    iget v3, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingHaptic:I

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverSettingHaptic:I

    .line 363
    const-string v3, "powersaver_haptic_feedback"

    invoke-static {v2, v3, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingHaptic:I

    .line 368
    iget v3, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverState:I

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverState:I

    .line 369
    const-string v3, "user_powersaver_enable"

    invoke-static {v2, v3, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverState:I

    .line 375
    iget v3, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverState:I

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mLastExtremePowerSaverState:I

    .line 376
    const-string v3, "htc_extreme_power_saver_state"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverState:I

    .line 379
    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverAuto:I

    .line 380
    .local v0, "oldExtremePowerSaverAuto":I
    const-string v3, "htc_extreme_power_saver_auto"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverAuto:I

    .line 383
    iget v1, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverBatteryLevel:I

    .line 384
    .local v1, "oldExtremePowerSaverBatteryLevel":I
    const-string v3, "htc_extreme_power_saver_battery_level"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverBatteryLevel:I

    .line 387
    iget v3, p0, Lcom/android/server/power/HtcPowerSaver;->mPerformanceModeState:I

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPerformanceModeState:I

    .line 388
    const-string v3, "htc_performance_mode_state"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mPerformanceModeState:I

    .line 391
    iget v3, p0, Lcom/android/server/power/HtcPowerSaver;->mOOBEState:I

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mLastOOBEState:I

    .line 392
    const-string v3, "setup_wizard_has_run"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mOOBEState:I

    .line 396
    sget-boolean v3, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v3, :cond_2

    .line 397
    const-string v3, "HtcPowerSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingsObserver:, mPerformanceModeState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPerformanceModeState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mPerformanceModeState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPowerSaverState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPowerSaverSettingCPU="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverSettingCPU:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingCPU:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPowerSaverSettingScreen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverSettingScreen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingScreen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPowerSaverSettingHaptic="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverSettingHaptic:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingHaptic:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mExtremePowerSaverState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mLastExtremePowerSaverState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mExtremePowerSaverAuto="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverAuto:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mExtremePowerSaverBatteryLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverBatteryLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mOOBEState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mLastOOBEState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mOOBEState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_2
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->handleSettingsValue()V

    goto/16 :goto_0
.end method

.method private updateStatusLocked(IIZ)V
    .locals 20
    .param p1, "currentLevel"    # I
    .param p2, "batteryStatus"    # I
    .param p3, "plugged"    # Z

    .prologue
    .line 797
    const-string v3, "HtcPowerSaver"

    const-string v4, ">> updateStatus"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcPowerSaver;->mPerformanceModeState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcPowerSaver;->isForbidEnterAutoEPSMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 802
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverAuto:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    .line 804
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    move/from16 v17, v0

    .line 806
    .local v17, "prev_ex_auto_mode_on":Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverBatteryLevel:I

    move/from16 v0, p1

    if-ge v0, v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    if-nez v3, :cond_c

    .line 808
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/HtcPowerSaver;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/HtcPowerSaver;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerService$PMSInternalAPI;->isActualScreenOn()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mBootCompleted:Z

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mBootNotify:Z

    if-nez v3, :cond_a

    .line 811
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOnAsk:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 812
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOnAsk:Z

    .line 813
    new-instance v14, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOnASK"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 814
    .local v14, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 815
    const-string v3, "eps_battery_level"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverBatteryLevel:I

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 816
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/power/HtcPowerSaver;->sendBroadcastHelperWithPermission(Landroid/content/Intent;)V

    .line 841
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverBatteryLevel:I

    move/from16 v0, p1

    if-lt v0, v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOnAsk:Z

    if-eqz v3, :cond_1

    .line 843
    new-instance v14, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOnASKOFF"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 844
    .restart local v14    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 845
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/power/HtcPowerSaver;->sendBroadcastHelperWithPermission(Landroid/content/Intent;)V

    .line 846
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOnAsk:Z

    .line 850
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    move/from16 v0, v17

    if-eq v0, v3, :cond_2

    .line 851
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcPowerSaver;->saveExtremeAutoModeOn()V

    .line 868
    .end local v17    # "prev_ex_auto_mode_on":Z
    :cond_2
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcPowerSaver;->getCurrentStatus()I

    move-result v9

    .line 869
    .local v9, "currentStatus":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcPowerSaver;->getSchedule()I

    move-result v12

    .line 872
    .local v12, "enableLevel":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcPowerSaver;->mPerformanceModeState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 876
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/HtcPowerSaver;->mAutoModeOn:Z

    move/from16 v16, v0

    .line 877
    .local v16, "prev_auto_mode_on":Z
    move/from16 v0, p1

    if-ge v0, v12, :cond_10

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mAutoModeOn:Z

    if-nez v3, :cond_10

    .line 878
    new-instance v14, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.HtcPowerSaver.AutoModeOn"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 879
    .restart local v14    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/power/HtcPowerSaver;->sendBroadcastHelper(Landroid/content/Intent;)V

    .line 880
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mAutoModeOn:Z

    .line 887
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mAutoModeOn:Z

    move/from16 v0, v16

    if-eq v0, v3, :cond_4

    .line 888
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcPowerSaver;->saveAutoModeOn()V

    .line 894
    .end local v16    # "prev_auto_mode_on":Z
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverState:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/power/HtcPowerSaver;->mLastExtremePowerSaverState:I

    if-eq v3, v4, :cond_6

    .line 896
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_11

    .line 897
    sget-boolean v3, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v3, :cond_5

    .line 898
    const-string v3, "HtcPowerSaver"

    const-string v4, "entering from Extreme Power Saver Mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcPowerSaver;->entering()V

    .line 911
    :cond_6
    :goto_3
    const/4 v12, -0x1

    .line 913
    move/from16 v0, p1

    if-le v0, v12, :cond_7

    .line 915
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/power/HtcPowerSaver;->setEnable(Z)V

    .line 918
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcPowerSaver;->getEnable()Z

    move-result v13

    .line 919
    .local v13, "enabled":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcPowerSaver;->isManunalEnable()Z

    move-result v19

    .line 923
    .local v19, "userManual":Z
    move v11, v13

    .line 924
    .local v11, "enable":Z
    if-eqz v19, :cond_13

    .line 926
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v9, v11, v1}, Lcom/android/server/power/HtcPowerSaver;->handleStatus(IZZ)I

    move-result v18

    .line 928
    .local v18, "statusChangeTo":I
    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_8

    .line 929
    const-string v4, "HtcPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PowerSaver ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v19, :cond_14

    const-string v3, "manual"

    :goto_5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "):"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " plugged="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", enabled="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v12, v1, v2}, Lcom/android/server/power/HtcPowerSaver;->getDialogId(IIZ)I

    move-result v10

    .line 936
    .local v10, "dialogId":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/power/HtcPowerSaver;->mLastBatteryLevel:I

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/power/HtcPowerSaver;->mLastPlugged:Z

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/power/HtcPowerSaver;->popLowBatteryDialog(IIIZZ)Z

    move-result v15

    .line 940
    .local v15, "popDialog":Z
    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_9

    .line 942
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/power/HtcPowerSaver;->popDialog(I)V

    .line 946
    :cond_9
    const-string v3, "HtcPowerSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateStatus ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/power/HtcPowerSaver;->mAutoModeOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverState:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/power/HtcPowerSaver;->mLastExtremePowerSaverState:I

    .line 960
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcPowerSaver;->mBatteryStatus:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/power/HtcPowerSaver;->mLastBatteryStatus:I

    .line 961
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcPowerSaver;->mBatteryLevel:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/power/HtcPowerSaver;->mLastBatteryLevel:I

    .line 962
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcPowerSaver;->mPlugType:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/power/HtcPowerSaver;->mLastPlugType:I

    .line 963
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mPlugged:Z

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mLastPlugged:Z

    .line 964
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mBootNotify:Z

    .line 966
    const-string v3, "HtcPowerSaver"

    const-string v4, "<< updateStatus"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    return-void

    .line 820
    .end local v9    # "currentStatus":I
    .end local v10    # "dialogId":I
    .end local v11    # "enable":Z
    .end local v12    # "enableLevel":I
    .end local v13    # "enabled":Z
    .end local v15    # "popDialog":Z
    .end local v18    # "statusChangeTo":I
    .end local v19    # "userManual":Z
    .restart local v17    # "prev_ex_auto_mode_on":Z
    :cond_a
    new-instance v14, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOn"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 821
    .restart local v14    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 822
    sget-boolean v3, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v3, :cond_b

    .line 823
    const-string v3, "HtcPowerSaver"

    const-string v4, "send EPS Auto on"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/power/HtcPowerSaver;->sendBroadcastHelperWithPermission(Landroid/content/Intent;)V

    .line 826
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    goto/16 :goto_0

    .line 829
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverBatteryLevel:I

    move/from16 v0, p1

    if-lt v0, v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    if-eqz v3, :cond_0

    .line 831
    new-instance v14, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOff"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 832
    .restart local v14    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 833
    sget-boolean v3, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v3, :cond_d

    .line 834
    const-string v3, "HtcPowerSaver"

    const-string v4, "send EPS Auto off"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/power/HtcPowerSaver;->sendBroadcastHelperWithPermission(Landroid/content/Intent;)V

    .line 837
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    goto/16 :goto_0

    .line 856
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v17    # "prev_ex_auto_mode_on":Z
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    if-eqz v3, :cond_f

    .line 857
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    .line 858
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcPowerSaver;->saveExtremeAutoModeOn()V

    .line 861
    :cond_f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOnAsk:Z

    goto/16 :goto_1

    .line 881
    .restart local v9    # "currentStatus":I
    .restart local v12    # "enableLevel":I
    .restart local v16    # "prev_auto_mode_on":Z
    :cond_10
    move/from16 v0, p1

    if-lt v0, v12, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mAutoModeOn:Z

    if-eqz v3, :cond_3

    .line 882
    new-instance v14, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.HtcPowerSaver.AutoModeOff"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 883
    .restart local v14    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/power/HtcPowerSaver;->sendBroadcastHelper(Landroid/content/Intent;)V

    .line 884
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mAutoModeOn:Z

    goto/16 :goto_2

    .line 902
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v16    # "prev_auto_mode_on":Z
    :cond_11
    sget-boolean v3, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v3, :cond_12

    .line 903
    const-string v3, "HtcPowerSaver"

    const-string v4, "leaving from Extreme Power Saver Mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcPowerSaver;->leaving()V

    goto/16 :goto_3

    .line 924
    .restart local v11    # "enable":Z
    .restart local v13    # "enabled":Z
    .restart local v19    # "userManual":Z
    :cond_13
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 929
    .restart local v18    # "statusChangeTo":I
    :cond_14
    const-string v3, "auto"

    goto/16 :goto_5
.end method


# virtual methods
.method public bootCompletedNotify()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1005
    const-string v0, "HtcPowerSaver"

    const-string v1, "bootCompletedNotify"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    iput-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mBootCompleted:Z

    .line 1011
    iput-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mBootNotify:Z

    .line 1014
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->restoreAutoModeOn()V

    .line 1018
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->restoreExtremeAutoModeOn()V

    .line 1022
    iget-boolean v0, p0, Lcom/android/server/power/HtcPowerSaver;->mBatteryInfoUpdated:Z

    if-eqz v0, :cond_0

    .line 1023
    invoke-virtual {p0}, Lcom/android/server/power/HtcPowerSaver;->check()V

    .line 1025
    :cond_0
    return-void
.end method

.method public check()V
    .locals 3

    .prologue
    .line 782
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    const-string v0, "HtcPowerSaver"

    const-string v1, "System is not ready. Skipping PowerSaver update."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :goto_0
    return-void

    .line 787
    :cond_0
    const-string v0, "HtcPowerSaver"

    const-string v1, "Checking..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    monitor-enter p0

    .line 790
    :try_start_0
    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/power/HtcPowerSaver;->mBatteryStatus:I

    iget-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mPlugged:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/power/HtcPowerSaver;->updateStatusLocked(IIZ)V

    .line 791
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateBatteryInfo(Landroid/content/Intent;)V
    .locals 7
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v6, -0x1

    .line 750
    const-string v4, "HtcPowerSaver"

    const-string v5, "updateBatteryInfo"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const-string v4, "level"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 753
    .local v0, "batteryLevel":I
    const-string v4, "status"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 754
    .local v1, "batteryStatus":I
    const-string v4, "plugged"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 755
    .local v2, "plugType":I
    if-lez v2, :cond_0

    .line 757
    .local v3, "plugged":Z
    :goto_0
    if-ne v0, v6, :cond_1

    .line 758
    const-string v4, "HtcPowerSaver"

    const-string v5, "Not found BatteryManager.EXTRA_LEVEL. Call with wrong Intent?"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :goto_1
    return-void

    .line 755
    .end local v3    # "plugged":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 762
    .restart local v3    # "plugged":Z
    :cond_1
    monitor-enter p0

    .line 764
    :try_start_0
    iget v4, p0, Lcom/android/server/power/HtcPowerSaver;->mBatteryStatus:I

    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->mLastBatteryStatus:I

    .line 765
    iget v4, p0, Lcom/android/server/power/HtcPowerSaver;->mBatteryLevel:I

    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->mLastBatteryLevel:I

    .line 766
    iget v4, p0, Lcom/android/server/power/HtcPowerSaver;->mPlugType:I

    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPlugType:I

    .line 767
    iget-boolean v4, p0, Lcom/android/server/power/HtcPowerSaver;->mPlugged:Z

    iput-boolean v4, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPlugged:Z

    .line 770
    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->mBatteryStatus:I

    .line 771
    iput v0, p0, Lcom/android/server/power/HtcPowerSaver;->mBatteryLevel:I

    .line 772
    iput v2, p0, Lcom/android/server/power/HtcPowerSaver;->mPlugType:I

    .line 773
    iput-boolean v3, p0, Lcom/android/server/power/HtcPowerSaver;->mPlugged:Z

    .line 775
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/power/HtcPowerSaver;->mBatteryInfoUpdated:Z

    .line 776
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
