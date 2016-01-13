.class public Lcom/android/internal/policy/impl/VenomButtonsManager;
.super Ljava/lang/Object;
.source "VenomButtonsManager.java"


# instance fields
.field public final ACTION_AIRPLANEMODE:I

.field public final ACTION_ALL_APPS:I

.field public final ACTION_BLUETOOTH:I

.field public final ACTION_EXPAND_STATUSBAR:I

.field public final ACTION_GESTURE:I

.field public final ACTION_HOME:I

.field public final ACTION_KILL_FOREGROUND:I

.field public final ACTION_MENU:I

.field public final ACTION_MUSIC_NEXT:I

.field public final ACTION_MUSIC_PLAY:I

.field public final ACTION_MUSIC_PREV:I

.field public final ACTION_NONE:I

.field public final ACTION_OPEN_RECENTAPPS:I

.field public final ACTION_POWERMENU:I

.field public final ACTION_REBOOT:I

.field public final ACTION_SCREENOFF:I

.field public final ACTION_SCREENSHOT:I

.field public final ACTION_SEARCH:I

.field public final ACTION_SEARCHBUTTON:I

.field public final ACTION_SHORTCUT:I

.field public final ACTION_SIDEBAR:I

.field public final ACTION_SILENTMODE:I

.field public final ACTION_START_CUSTOM:I

.field public final ACTION_TOOGLE_FLASH:I

.field public final ACTION_UNLOCK:I

.field public final ACTION_VIBRATEMODE:I

.field public final ACTION_VOICE_ASSIST:I

.field private final MODE_MUSIC_TWK_DISABLED:I

.field private final MODE_MUSIC_TWK_FOW_BACK:I

.field private final MODE_MUSIC_TWK_PP_FOW:I

.field private conf:Lvenom/common/settings;

.field flash:Lvenom/common/FlashLight;

.field private mBackLongPress:Ljava/lang/Runnable;

.field private mBackLongPressed:Z

.field private mContext:Landroid/content/Context;

.field private mDisableFlash:Ljava/lang/Runnable;

.field private mDoublePressBack:Ljava/lang/Runnable;

.field private mDoublePressHome:Ljava/lang/Runnable;

.field private mDoublePressMenu:Ljava/lang/Runnable;

.field private mDoublePressRecent:Ljava/lang/Runnable;

.field private mEnableFlash:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHomeLongPress:Ljava/lang/Runnable;

.field private mHomeSwipe:Ljava/lang/Runnable;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLongPressBackCancel:Z

.field public mLongPressHomeCancel:Z

.field private mLongPressMenu:Ljava/lang/Runnable;

.field private mLongPressPower:Ljava/lang/Runnable;

.field public mLongPressRecentCancel:Z

.field private mMenuLongPress:Ljava/lang/Runnable;

.field private mMenuLongPressed:Z

.field private mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mRecentLongPress:Ljava/lang/Runnable;

.field private mSearchLongPress:Ljava/lang/Runnable;

.field private mSearchLongPressed:Z

.field private mSearchShortPress:Ljava/lang/Runnable;

.field private mShortPressHome:Ljava/lang/Runnable;

.field private mShortPressMenu:Ljava/lang/Runnable;

.field private mShortPressRecent:Ljava/lang/Runnable;

.field private mSleepWake:Ljava/lang/Runnable;

.field mTakePhoto:Ljava/lang/Runnable;

.field private mTorchOff:Ljava/lang/Runnable;

.field private mTorchOn:Ljava/lang/Runnable;

.field private mTorchToggle:Ljava/lang/Runnable;

.field private mVolumeLongPressF:Ljava/lang/Runnable;

.field private mVolumeLongPressR:Ljava/lang/Runnable;

.field private mVolumeLongPressed:Z

.field private mVolumeLongPressedMode:I

.field public remoteMenu:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_NONE:I

    iput v2, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_OPEN_RECENTAPPS:I

    iput v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_REBOOT:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_SEARCH:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_START_CUSTOM:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_TOOGLE_FLASH:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_EXPAND_STATUSBAR:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_KILL_FOREGROUND:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_SCREENSHOT:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_MUSIC_NEXT:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_MUSIC_PREV:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_MUSIC_PLAY:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_SCREENOFF:I

    const/16 v0, 0xd

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_POWERMENU:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_VOICE_ASSIST:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_MENU:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_SEARCHBUTTON:I

    const/16 v0, 0x11

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_AIRPLANEMODE:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_BLUETOOTH:I

    const/16 v0, 0x13

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_VIBRATEMODE:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_SILENTMODE:I

    const/16 v0, 0x15

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_SIDEBAR:I

    const/16 v0, 0x16

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_HOME:I

    const/16 v0, 0x17

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_SHORTCUT:I

    const/16 v0, 0x18

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_GESTURE:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_ALL_APPS:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_UNLOCK:I

    iput v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->MODE_MUSIC_TWK_DISABLED:I

    iput v2, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->MODE_MUSIC_TWK_FOW_BACK:I

    iput v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->MODE_MUSIC_TWK_PP_FOW:I

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mVolumeLongPressed:Z

    iput v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mVolumeLongPressedMode:I

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$1;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mVolumeLongPressF:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$2;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mVolumeLongPressR:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$3;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mSleepWake:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mBackLongPressed:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mMenuLongPressed:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mSearchLongPressed:Z

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$4;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mMenuLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$5;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mBackLongPress:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mLongPressHomeCancel:Z

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$6;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHomeLongPress:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mLongPressRecentCancel:Z

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$7;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mRecentLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$8;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$8;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mLongPressPower:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$9;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$9;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mShortPressRecent:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$10;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$10;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mDoublePressRecent:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$11;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$11;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mLongPressMenu:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$12;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$12;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mShortPressMenu:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$13;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$13;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mShortPressHome:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$14;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$14;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHomeSwipe:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$15;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$15;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mDoublePressMenu:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$16;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$16;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mDoublePressHome:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$17;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$17;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mDoublePressBack:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$18;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$18;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mTorchToggle:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$19;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$19;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mTorchOn:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$20;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$20;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mTorchOff:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$21;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$21;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mSearchLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$22;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$22;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mSearchShortPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$23;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$23;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mEnableFlash:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$24;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$24;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mDisableFlash:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$25;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$25;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mTakePhoto:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lvenom/common/FlashLight;->getInstance(Landroid/content/Context;)Lvenom/common/FlashLight;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->flash:Lvenom/common/FlashLight;

    new-instance v0, Lvenom/common/settings;

    invoke-direct {v0}, Lvenom/common/settings;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->conf:Lvenom/common/settings;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method private DisableFlash()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mDisableFlash:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private EnableFlash()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mEnableFlash:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private ToggleFlashLight()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->flash:Lvenom/common/FlashLight;

    invoke-virtual {v0}, Lvenom/common/FlashLight;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_screenoff_flashlight"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->sendPowerButtonEvent()V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->EnableFlash()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->DisableFlash()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/android/internal/policy/impl/VenomButtonsManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mVolumeLongPressed:Z

    return-void
.end method

.method static synthetic access$1(Lcom/android/internal/policy/impl/VenomButtonsManager;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mVolumeLongPressedMode:I

    return v0
.end method

.method static synthetic access$2(Lcom/android/internal/policy/impl/VenomButtonsManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/internal/policy/impl/VenomButtonsManager;)Lcom/android/internal/policy/impl/PhoneWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/internal/policy/impl/VenomButtonsManager;Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/VenomButtonsManager;->startAction(Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic access$5(Lcom/android/internal/policy/impl/VenomButtonsManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/VenomButtonsManager;->startActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private emulateSearchKey()V
    .locals 5

    :try_start_0
    const-string v2, "m0narX_policy"

    const-string v3, "send search key!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/Instrumentation;

    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/16 v4, 0x54

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    const/16 v4, 0x54

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "m0narX_policy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Injection failed! can\'t send search key!"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getLongPressDelay()I
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method private getLongpressTimeout(Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tweaks_longress_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_duration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private handleBackLongPress(Landroid/view/KeyEvent;Z)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    move v0, v4

    :goto_0
    const/4 v5, 0x4

    if-eq v1, v5, :cond_2

    :cond_0
    :goto_1
    return v3

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mBackLongPressed:Z

    if-eqz v5, :cond_3

    if-nez v0, :cond_3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mBackLongPressed:Z

    :cond_3
    if-eqz v0, :cond_0

    if-nez v2, :cond_4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mBackLongPressed:Z

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mBackLongPressed:Z

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->longPressBack()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_1
.end method

.method private handleMenuLongPress(Landroid/view/KeyEvent;Z)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    move v0, v4

    :goto_0
    const/16 v5, 0x52

    if-eq v1, v5, :cond_2

    :cond_0
    :goto_1
    return v3

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mMenuLongPressed:Z

    if-eqz v5, :cond_3

    if-nez v0, :cond_3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mMenuLongPressed:Z

    :cond_3
    if-eqz v0, :cond_0

    if-nez v2, :cond_4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mMenuLongPressed:Z

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mMenuLongPressed:Z

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mMenuLongPress:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v3, v4

    goto :goto_1
.end method

.method private handleSearchPress(Landroid/view/KeyEvent;Z)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    move v0, v4

    :goto_0
    const/16 v5, 0x54

    if-eq v1, v5, :cond_2

    :cond_0
    :goto_1
    return v3

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mSearchLongPressed:Z

    if-eqz v5, :cond_3

    if-nez v0, :cond_3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mSearchLongPressed:Z

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->shortPressSearch()Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_0

    if-nez v2, :cond_4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mSearchLongPressed:Z

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mSearchLongPressed:Z

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mSearchLongPress:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v3, v4

    goto :goto_1
.end method

.method private isSecure()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openRecentApps()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private openSidebar()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.m0narx.smallapp"

    const-string v3, "com.m0narx.smallapp.main"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private performHapticFeedback(Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0, v3, v2, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedBackCustom(Landroid/view/WindowManagerPolicy$WindowState;IZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedBackCustom(Landroid/view/WindowManagerPolicy$WindowState;IZ)V

    goto :goto_0
.end method

.method private searchAction()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private startAction(Ljava/lang/String;ZI)V
    .locals 12

    const/high16 v11, 0x10000000

    const/4 v10, 0x0

    const/4 v6, 0x0

    if-eqz p2, :cond_1

    const-string v7, "m0narX_tweaks"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Longpress "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "tweaks_longpress_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/VenomButtonsManager;->performHapticFeedback(Z)V

    :cond_0
    :goto_0
    sparse-switch v6, :sswitch_data_0

    :goto_1
    return-void

    :cond_1
    const-string v7, "m0narX_tweaks"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Shortpress "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "tweaks_shortpress_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    const-string v7, "homedouble"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "home"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    if-nez p2, :cond_0

    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/VenomButtonsManager;->performHapticFeedback(Z)V

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lvenom/common/utils;->expandStatusBar()V

    goto :goto_1

    :sswitch_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromVenomKey()V

    goto :goto_1

    :sswitch_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lvenom/common/utils;->killForegroundProcess(Landroid/content/Context;)V

    goto :goto_1

    :sswitch_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->openRecentApps()V

    goto :goto_1

    :sswitch_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->takeScreenShotAction()V

    goto :goto_1

    :sswitch_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "m0narX_tweaks"

    const-string v8, "isSecure"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    new-instance v8, Lcom/android/internal/policy/impl/VenomButtonsManager$26;

    invoke-direct {v8, p0, p2, p1}, Lcom/android/internal/policy/impl/VenomButtonsManager$26;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;ZLjava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "tweaks_longpress_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_package"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "tweaks_longpress_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_activity"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/internal/policy/impl/VenomButtonsManager;->startActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "tweaks_shortpress_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_package"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "tweaks_shortpress_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_activity"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/internal/policy/impl/VenomButtonsManager;->startActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    new-instance v8, Lcom/android/internal/policy/impl/VenomButtonsManager$27;

    invoke-direct {v8, p0, p2, p1}, Lcom/android/internal/policy/impl/VenomButtonsManager$27;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;ZLjava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    goto/16 :goto_1

    :cond_4
    if-eqz p2, :cond_5

    iget-object v7, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "tweaks_longpress_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_uri"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    const/4 v7, 0x0

    :try_start_0
    invoke-static {v4, v7}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v7, 0x10000000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_5
    iget-object v7, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "tweaks_shortpress_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_uri"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :sswitch_7
    iget-object v7, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showRebootDialog()V

    goto/16 :goto_1

    :sswitch_8
    invoke-direct {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->searchAction()V

    goto/16 :goto_1

    :sswitch_9
    invoke-direct {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->ToggleFlashLight()V

    goto/16 :goto_1

    :sswitch_a
    iget-object v7, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    const/16 v8, 0x57

    invoke-static {v7, v8}, Lvenom/common/utils;->sendMediaButtonEvent(Landroid/content/Context;I)V

    goto/16 :goto_1

    :sswitch_b
    iget-object v7, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    const/16 v8, 0x58

    invoke-static {v7, v8}, Lvenom/common/utils;->sendMediaButtonEvent(Landroid/content/Context;I)V

    goto/16 :goto_1

    :sswitch_c
    iget-object v7, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    const/16 v8, 0x55

    invoke-static {v7, v8}, Lvenom/common/utils;->sendMediaButtonEvent(Landroid/content/Context;I)V

    goto/16 :goto_1

    :sswitch_d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->screenOff()V

    goto/16 :goto_1

    :sswitch_e
    iget-object v7, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showShutdownDialog()V

    goto/16 :goto_1

    :sswitch_f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->emulateMenuKey()V

    goto/16 :goto_1

    :sswitch_10
    iget-object v7, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistActionVenom()V

    goto/16 :goto_1

    :sswitch_11
    invoke-direct {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->emulateSearchKey()V

    goto/16 :goto_1

    :sswitch_12
    invoke-direct {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->toggleAirplane()V

    goto/16 :goto_1

    :sswitch_13
    invoke-direct {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->toggleBluetooth()V

    goto/16 :goto_1

    :sswitch_14
    invoke-direct {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->toggleVibrateMode()V

    goto/16 :goto_1

    :sswitch_15
    invoke-direct {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->toggleSilentMode()V

    goto/16 :goto_1

    :sswitch_16
    invoke-direct {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->openSidebar()V

    goto/16 :goto_1

    :sswitch_17
    invoke-direct {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    new-instance v8, Lcom/android/internal/policy/impl/VenomButtonsManager$28;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$28;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    goto/16 :goto_1

    :cond_6
    iget-object v7, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->UnlockScreen()V

    goto/16 :goto_1

    :sswitch_18
    invoke-static {}, Lvenom/common/utils;->expandStatusBar()V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v7, "venom.intent.action.GESTURE_CONTROL"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :sswitch_19
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v7, "venom.intent.action.SHOW_ALL_APPS"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_7
        0x3 -> :sswitch_8
        0x4 -> :sswitch_5
        0x5 -> :sswitch_9
        0x6 -> :sswitch_0
        0x7 -> :sswitch_2
        0x8 -> :sswitch_4
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0xc -> :sswitch_d
        0xd -> :sswitch_e
        0xe -> :sswitch_10
        0xf -> :sswitch_f
        0x10 -> :sswitch_11
        0x11 -> :sswitch_12
        0x12 -> :sswitch_13
        0x13 -> :sswitch_14
        0x14 -> :sswitch_15
        0x15 -> :sswitch_16
        0x16 -> :sswitch_1
        0x17 -> :sswitch_6
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x64 -> :sswitch_17
    .end sparse-switch
.end method

.method private startActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private toggleAirplane()V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    if-eqz v1, :cond_1

    move v4, v3

    :goto_1
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "state"

    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2
.end method

.method private toggleBluetooth()V
    .locals 4

    const-string v2, "VENOM"

    const-string v3, "Trying to toggle blueooth"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "VENOM"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "VENOM"

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_1
.end method

.method private toggleSilentMode()V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private toggleVibrateMode()V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cleanCallBacks(I)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mVolumeLongPressR:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mSleepWake:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mVolumeLongPressF:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mBackLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mDoublePressBack:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mMenuLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mDoublePressMenu:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHomeLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mDoublePressHome:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mShortPressHome:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0x4 -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0x52 -> :sswitch_3
    .end sparse-switch
.end method

.method public cleanCallBacks(Landroid/view/KeyEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->cleanCallBacks(I)V

    goto :goto_0
.end method

.method public doublePressBack()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mDoublePressBack:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public doublePressHome()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mDoublePressHome:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public doublePressMenu()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mDoublePressMenu:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public doublePressRecent()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mDoublePressRecent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public emulateBackKey()V
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendEvent(III)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendEvent(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "m0narX_policy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Injection failed! can\'t send back key!"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public emulateMenuKey()V
    .locals 5

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->remoteMenu:Z

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/16 v2, 0x52

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendEvent(III)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/16 v2, 0x52

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendEvent(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "m0narX_policy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Injection failed! can\'t send back key!"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleVolumeLongPress(Landroid/view/KeyEvent;)Z
    .locals 10

    const-wide/16 v8, 0x1f4

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    move v0, v3

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const-string v5, "m0narX_keys"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Handle volume button press: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mVolumeLongPressed:Z

    if-eqz v5, :cond_2

    move v4, v3

    :cond_0
    :goto_1
    return v4

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mVolumeLongPressed:Z

    iget-object v5, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tweaks_use_media"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mVolumeLongPressedMode:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tweaks_flash_volume_up"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/16 v5, 0x18

    if-ne v1, v5, :cond_4

    if-eq v2, v3, :cond_3

    iget v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mVolumeLongPressedMode:I

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mVolumeLongPressF:Ljava/lang/Runnable;

    invoke-virtual {v3, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    iget v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mVolumeLongPressedMode:I

    if-eqz v3, :cond_0

    const/16 v3, 0x19

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mVolumeLongPressR:Ljava/lang/Runnable;

    invoke-virtual {v3, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public handleVolumeLongPressAbort(Landroid/view/KeyEvent;)V
    .locals 7

    const/16 v6, 0x19

    const/16 v5, 0x18

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-nez v0, :cond_2

    if-eq v1, v5, :cond_0

    if-ne v1, v6, :cond_2

    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mVolumeLongPressed:Z

    if-nez v3, :cond_1

    const-string v3, "m0narX_keys"

    const-string v4, "Handle volume button longpress cancel"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/VenomButtonsManager;->cleanCallBacks(I)V

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/VenomButtonsManager;->cleanCallBacks(I)V

    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mVolumeLongPressed:Z

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public homeSwipe()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHomeSwipe:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isCameraApp()Z
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "com.android.camera"

    if-ne v3, v6, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    move v3, v5

    goto :goto_0
.end method

.method public longPressBack()Ljava/lang/Boolean;
    .locals 4

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mLongPressBackCancel:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_longpress_back"

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mBackLongPress:Ljava/lang/Runnable;

    const-string v2, "back"

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/VenomButtonsManager;->getLongpressTimeout(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public longPressHome()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mLongPressHomeCancel:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_longpress_home"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHomeLongPress:Ljava/lang/Runnable;

    const-string v2, "home"

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/VenomButtonsManager;->getLongpressTimeout(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public longPressMenu()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mLongPressMenu:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public longPressPower()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mLongPressPower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public longPressRecent()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_longpress_recent"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mRecentLongPress:Ljava/lang/Runnable;

    const-string v2, "recent"

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/VenomButtonsManager;->getLongpressTimeout(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public quickFlash(ZLandroid/view/KeyEvent;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tweaks_quick_flash"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tweaks_quick_flash"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    :cond_2
    if-ne v1, v2, :cond_4

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mTorchToggle:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->getLongPressDelay()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mTorchToggle:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_5

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mTorchOn:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->getLongPressDelay()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mTorchOn:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mTorchOff:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public screenOff()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mSleepWake:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public screenOffByVolume()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_use_voldown_screenoff"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->wokeByVolumeDown:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->screenOff()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->wokeByVolumeDown:Z

    :cond_1
    return-void
.end method

.method public sendPowerButtonEvent()V
    .locals 4

    const/16 v3, 0x1a

    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public shortPressHome()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mShortPressHome:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public shortPressMenu()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mShortPressMenu:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public shortPressRecent()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mShortPressRecent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public shortPressSearch()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_shortpress_search"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mSearchShortPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public takePhoto()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mTakePhoto:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
