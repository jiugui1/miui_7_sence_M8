.class public Lcom/htc/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/media/VolumeController;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/view/VolumePanel$DNDObserver;,
        Lcom/htc/view/VolumePanel$SetTouchDelegateRunnable;,
        Lcom/htc/view/VolumePanel$DndDisableDialogReceiver;,
        Lcom/htc/view/VolumePanel$WarningDialogReceiver;,
        Lcom/htc/view/VolumePanel$SoundPoolHelp;,
        Lcom/htc/view/VolumePanel$HtcRingtonePlay;,
        Lcom/htc/view/VolumePanel$ISoundPlay;,
        Lcom/htc/view/VolumePanel$SimulateMuteControl;,
        Lcom/htc/view/VolumePanel$SoundID;,
        Lcom/htc/view/VolumePanel$StreamControl;,
        Lcom/htc/view/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final APP_DEFAULT_PERMISSIONS:Ljava/lang/String; = "com.htc.permission.APP_DEFAULT"

.field private static final BEEP_DURATION:I = 0x96

.field private static final DND_UPDTDATE_ACTION:Ljava/lang/String; = "com.htc.settings.action.dnd.QS_UPDATE"

.field private static final FREE_DELAY:I = 0x927c0

.field private static final ICS_LAYOUT_COLOR_BG_DEBUG:Z

.field private static final ICS_LAYOUT_COLOR_DEBUG:Z

.field private static final INTENT_ACTION_MY_CONFIGURAGE_CHANGE:Ljava/lang/String; = "com.htc.view.intent.action.debug_configuagechange"

.field private static final JB_FULL_LOG_DEBUG:Z

.field private static final KEY_VALUE_NON_INIT_FOR_PARM:B = -0x1t

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_ALARM_STREAM_BEFORE_MUTE:I = 0xf

.field private static final MSG_DISPLAY_DISABLE_DND_REQUEST:I = 0x17

.field private static final MSG_DISPLAY_SAFE_VOLUME_WARNING:I = 0x14

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_MUSIC_MUTE_OFF:I = 0xd

.field private static final MSG_MUSIC_MUTE_ON:I = 0xc

.field private static final MSG_MUSIC_STREAM_BEFORE_MUTE:I = 0x11

.field private static final MSG_MUTE_CHANGED:I = 0x7

.field private static final MSG_NOTIFICATION_STREAM_BEFORE_MUTE:I = 0x10

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_REMOTE_VOLUME_CHANGED:I = 0x8

.field private static final MSG_REMOTE_VOLUME_UPDATE_IF_SHOWN:I = 0x9

.field private static final MSG_REMOVE_LISTEN_ENTER_HOME:I = 0xe

.field private static final MSG_RESET_PARAMTERS:I = 0x15

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_SET_ICON_SEEKBAR_ENABLE:I = 0x13

.field private static final MSG_SLIDER_VISIBILITY_CHANGED:I = 0xa

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_TIMEOUT_SAP:I = 0x16

.field private static final MSG_UPDATE_ROTAETE:I = 0xb

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOICECALL_STREAM_BEFORE_MUTE:I = 0x12

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field public static final PARAMETER_ALIAS_ICON_FROM:Ljava/lang/String; = "volumepanel_alias_icon_from"

.field public static final PARAMETER_ALIAS_TITLE_FROM:Ljava/lang/String; = "volumepanel_alias_title_from"

.field public static final PARAMETER_AP_EXPAND_MODE:Ljava/lang/String; = "volumepanel_simulate_ap_expand_mode"

.field public static final PARAMETER_EXPAND_MODE:Ljava/lang/String; = "volumepanel_expand_mode"

.field public static final PARAMETER_FORCE_TIMEOUT:Ljava/lang/String; = "volumepanel_force_timeout"

.field public static final PARAMETER_FORCE_TIMEOUT_SAP:Ljava/lang/String; = "volumepanel_force_timeout_sap"

.field public static final PARAMETER_KEY_LAYOUT:Ljava/lang/String; = "volumepanel_key_layout"

.field public static final PARAMETER_KEY_NO_SETTING_BUTTON:Ljava/lang/String; = "volumepanel_no_setting"

.field public static final PARAMETER_KEY_SCREEN_MODE:Ljava/lang/String; = "volumepanel_key_screen_mode"

.field public static final PARAMETER_NO_TITLE:Ljava/lang/String; = "volumepanel_no_title"

.field public static final PLAY_SOUND_DELAY:I = 0x0

.field public static final PLAY_SOUND_DELAY_4_SAME_VOLUME:I = 0x96

.field public static final SCREEN_MODE_ILANDSCAPE:B = 0x3t

.field public static final SCREEN_MODE_IPORTRAIT:B = 0x2t

.field public static final SCREEN_MODE_LANDSCAPE:B = 0x1t

.field public static final SCREEN_MODE_PORTRAIT:B = 0x0t

.field private static final SEEKBAR_DISPLAY_MODE_BLACK:I = 0x1

.field private static final SEEKBAR_DISPLAY_MODE_DEFAULT:I = 0x0

.field private static final STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

.field private static final STREAMS_EXPLANSION_MODE:[Lcom/htc/view/VolumePanel$StreamResources;

.field private static final STREAM_CHECKBOX:I = -0x3

.field private static final STREAM_DUMMY:I = -0x2

.field private static final STREAM_MASTER:I = -0x64

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final TIMEOUT_DELAY:I = 0xbb8

.field private static final TIMEOUT_DELAY_MEDIA:I = 0x7d0

.field private static final TIMEOUT_DELAY_SAFE_VOLUME:I = 0xbb8

.field public static final TIMEOUT_PARAMETER_RESET_DELAY:I = 0x493e0

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field public static final VOLUMEPANEL_LAYOUT_ALIGN_BOTTOM:B = 0x3t

.field public static final VOLUMEPANEL_LAYOUT_ALIGN_CENTER:B = 0x4t

.field public static final VOLUMEPANEL_LAYOUT_ALIGN_LEFT:B = 0x0t

.field public static final VOLUMEPANEL_LAYOUT_ALIGN_RIGHT:B = 0x1t

.field public static final VOLUMEPANEL_LAYOUT_ALIGN_TOP:B = 0x2t

.field private static final VOLUME_ALARM_BEFORE_MUTE:Ljava/lang/String; = "volume_alarm_before_mute"

.field private static final VOLUME_ALARM_BEFORE_MUTE_FOR_HEADSET:Ljava/lang/String; = "volume_alarm_before_mute_for_headset"

.field private static final VOLUME_MUSIC_BEFORE_MUTE:Ljava/lang/String; = "volume_music_before_mute"

.field private static final VOLUME_MUSIC_BEFORE_MUTE_FOR_HEADSET:Ljava/lang/String; = "volume_music_before_mute_for_headset"

.field private static final VOLUME_NOTIFICATION_BEFORE_MUTE:Ljava/lang/String; = "volume_notification_before_mute"

.field private static final VOLUME_NOTIFICATION_BEFORE_MUTE_FOR_HEADSET:Ljava/lang/String; = "volume_notification_before_mute_for_headset"

.field private static final VOLUME_NOTIFICATION_MUTE_BY_USER:Ljava/lang/String; = "volume_notification_mute_by_user"

.field private static final VOLUME_NOTIFICATION_MUTE_BY_USER_FOR_HEADSET:Ljava/lang/String; = "volume_notification_mute_by_user_for_headset"

.field private static final VOLUME_VOICE_CALL_BEFORE_MUTE:Ljava/lang/String; = "volume_voicecall_before_mute"

.field private static final VOLUME_VOICE_CALL_BEFORE_MUTE_FOR_HEADSET:Ljava/lang/String; = "volume_voicecall_before_mute_for_headset"

.field private static final is_table_device:Z = false

.field private static final mAlertDialogMode:Z = true

.field private static final mCountOfSimulateMuteControl:I = 0x3

.field private static final mCustomizeUI:Z = false

.field private static mForeceVibrateIfHtcParmSet:Z = false

.field private static mIdBackgroundDark:I = 0x0

.field private static final mIdDividerDark:I = 0x2080036

.field private static final mIdDividerDark_Sense60:I = 0x2080036

.field private static final mIdDividerLight:I = 0x2080037

.field private static final mIdDividerList:I = 0x2080035

.field private static mIdStytleTextDark:I = 0x0

.field private static mLastUseRingVolumeAsNotifyVolume:Z = false

.field private static mLast_stream_index:I = 0x0

.field private static mLast_stream_type:I = 0x0

.field private static final mNewStyle:Z = true

.field private static mNotResetParmForWattingPostVolumeSynalize:Ljava/lang/Object;

.field private static mOldCameraUseSense40CallSeq:Z

.field private static mSenseVersion:F

.field private static mSupportOutdoorMode:Z

.field private static mSupportToogleUseRingVolumeForNotify:Z

.field private static mUseRingVolumeAsNotifyVolume:Z

.field private static sConfirmSafeVolumeDialog:Landroid/app/Dialog;

.field private static sConfirmSafeVolumeLock:Ljava/lang/Object;

.field private static sDndDisableDialog:Landroid/app/Dialog;

.field private static sDndDisableDialogLock:Ljava/lang/Object;


# instance fields
.field final RINGER_MODE_OUTDOOR:I

.field private isRotate:Z

.field private mActiveStreamType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field mCheckBoxUseRingVolumeAsNotifyVolume:Landroid/widget/Checkable;

.field mClsHtcImageButton:Ljava/lang/Class;

.field mClsHtcListItem:Ljava/lang/Class;

.field mClsHtcListItemColorIcon:Ljava/lang/Class;

.field mClsHtcSeekBar:Ljava/lang/Class;

.field protected mContext:Landroid/content/Context;

.field private mCurrentThemeId:I

.field mCustomizeIconNames:[Ljava/lang/CharSequence;

.field mCustomizeIconRes:[I

.field mCustomizeIconSilenceRes:I

.field mCustomizeIconVibeRes:I

.field private mDNDObserver:Lcom/htc/view/VolumePanel$DNDObserver;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogEx:Landroid/app/Dialog;

.field private mDivider:Landroid/view/View;

.field private mDndMode:I

.field private mExpand:Z

.field mHtcImageButton_setIconResource:Ljava/lang/reflect/Method;

.field mHtcListItemColorIcon_setColorIconImageResource:Ljava/lang/reflect/Method;

.field mHtcListItemColorIcon_setScaleType:Ljava/lang/reflect/Method;

.field mHtcListItem_setLastComponentAlign:Ljava/lang/reflect/Method;

.field mHtcListViewText_Text:Ljava/lang/reflect/Method;

.field mHtcSeekBar_setDisplayMode:Ljava/lang/reflect/Method;

.field private mHtcUiGuildlineSepareMarginBottom:I

.field private mHtcUiGuildlineSepareMarginTop:I

.field mIconWidth:I

.field mIconWidthDilogMode60:I

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field mLastFlags:I

.field private mLastVolumeAlarm:I

.field private mLastVolumeNotify:I

.field private mMedia_layout:B

.field private mMedia_orientation:B

.field private mMoreButton:Landroid/view/View;

.field private mNewSkinPackage:Ljava/lang/String;

.field private mPanel:Landroid/view/ViewGroup;

.field private mPanelWidth:I

.field private mParmAliasIconFrom:B

.field private mParmAliasTitleFrom:B

.field private mParmForeceTimeout:B

.field private mParmForeceTimeoutSap:B

.field private mParmNoSetting:B

.field private mParmNoTitle:B

.field private mParmSimuteAPModeExpand:B

.field private mParmToExpand:B

.field private final mPlayMasterStreamTones:Z

.field private mRes:Landroid/content/res/Resources;

.field private mRingIsSilent:Z

.field private mRingtonePlays:[Lcom/htc/view/VolumePanel$HtcRingtonePlay;

.field mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

.field private mSafeVolumeTimeoutDelay:I

.field private mShowCombinedVolumes:Z

.field private mSimulateMuteControls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/view/VolumePanel$SimulateMuteControl;",
            ">;"
        }
    .end annotation
.end field

.field private mSkinRes:Landroid/content/res/Resources;

.field private mSliderGroup:Landroid/view/ViewGroup;

.field private mSliderGroupEx:Landroid/view/ViewGroup;

.field private mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

.field private mStreamControls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/view/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private mStreamControlsEx:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/view/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private mUseRingForNotifyDivider:Landroid/view/View;

.field private mVibrator:Landroid/os/Vibrator;

.field private mView:Landroid/view/View;

.field private mVoiceCapable:Z

.field final mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

.field m_HtcDimension_m1:I

.field m_HtcDimension_m2:I

.field m_HtcDimension_m3:I

.field m_HtcDimension_m4:I

.field m_HtcDimension_m5:I

.field m_HtcDimension_m6:I

.field private m_NotResetParmForWattingPostVolume:Z

.field private needRotate:Z

.field private panel_orientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 123
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    .line 200
    sput-boolean v4, Lcom/htc/view/VolumePanel;->mOldCameraUseSense40CallSeq:Z

    .line 201
    sput-boolean v4, Lcom/htc/view/VolumePanel;->mForeceVibrateIfHtcParmSet:Z

    .line 327
    sput-boolean v3, Lcom/htc/view/VolumePanel;->mSupportOutdoorMode:Z

    .line 328
    sput-boolean v4, Lcom/htc/view/VolumePanel;->mSupportToogleUseRingVolumeForNotify:Z

    .line 475
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/htc/view/VolumePanel$StreamResources;

    sget-object v1, Lcom/htc/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/view/VolumePanel$StreamResources;->VoiceStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v1, v0, v7

    const/4 v1, 0x4

    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->NotificationStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->AlarmStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->MasterStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->RemoteStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->SystemStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->DtmfStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->DummyStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    .line 489
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/view/VolumePanel$StreamResources;

    sget-object v1, Lcom/htc/view/VolumePanel$StreamResources;->DlgRingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/view/VolumePanel$StreamResources;->DlgMediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/view/VolumePanel$StreamResources;->DlgAlarmStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/view/VolumePanel$StreamResources;->DlgChexckBox:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v1, v0, v7

    const/4 v1, 0x4

    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->DlgNotificationStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/view/VolumePanel;->STREAMS_EXPLANSION_MODE:[Lcom/htc/view/VolumePanel$StreamResources;

    .line 569
    sput v3, Lcom/htc/view/VolumePanel;->mIdBackgroundDark:I

    .line 570
    sput v3, Lcom/htc/view/VolumePanel;->mIdStytleTextDark:I

    .line 572
    sput-boolean v3, Lcom/htc/view/VolumePanel;->mUseRingVolumeAsNotifyVolume:Z

    .line 573
    sput-boolean v3, Lcom/htc/view/VolumePanel;->mLastUseRingVolumeAsNotifyVolume:Z

    .line 579
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/view/VolumePanel;->mNotResetParmForWattingPostVolumeSynalize:Ljava/lang/Object;

    .line 581
    const/high16 v0, 0x40a00000    # 5.0f

    sput v0, Lcom/htc/view/VolumePanel;->mSenseVersion:F

    .line 846
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    .line 910
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/view/VolumePanel;->sDndDisableDialogLock:Ljava/lang/Object;

    .line 943
    const-string v0, "volLayoutD"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    .line 944
    const-string v0, "volLayoutBGD"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_BG_DEBUG:Z

    .line 945
    const-string v0, "volFuullLogDBG"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    .line 2703
    sput v5, Lcom/htc/view/VolumePanel;->mLast_stream_type:I

    .line 2704
    sput v5, Lcom/htc/view/VolumePanel;->mLast_stream_index:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volumeService"    # Landroid/media/AudioService;

    .prologue
    .line 990
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 271
    const/4 v9, -0x1

    iput-byte v9, p0, Lcom/htc/view/VolumePanel;->mMedia_orientation:B

    .line 273
    const/4 v9, -0x1

    iput-byte v9, p0, Lcom/htc/view/VolumePanel;->mMedia_layout:B

    .line 276
    const/4 v9, -0x1

    iput-byte v9, p0, Lcom/htc/view/VolumePanel;->mParmNoSetting:B

    .line 278
    const/4 v9, -0x1

    iput-byte v9, p0, Lcom/htc/view/VolumePanel;->mParmSimuteAPModeExpand:B

    .line 280
    const/4 v9, -0x1

    iput-byte v9, p0, Lcom/htc/view/VolumePanel;->mParmToExpand:B

    .line 282
    const/4 v9, -0x1

    iput-byte v9, p0, Lcom/htc/view/VolumePanel;->mParmForeceTimeout:B

    .line 284
    const/4 v9, -0x1

    iput-byte v9, p0, Lcom/htc/view/VolumePanel;->mParmForeceTimeoutSap:B

    .line 286
    const/4 v9, -0x1

    iput-byte v9, p0, Lcom/htc/view/VolumePanel;->mParmAliasTitleFrom:B

    .line 288
    const/4 v9, -0x1

    iput-byte v9, p0, Lcom/htc/view/VolumePanel;->mParmAliasIconFrom:B

    .line 290
    const/4 v9, -0x1

    iput-byte v9, p0, Lcom/htc/view/VolumePanel;->mParmNoTitle:B

    .line 313
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    .line 320
    const/4 v9, 0x3

    iput v9, p0, Lcom/htc/view/VolumePanel;->RINGER_MODE_OUTDOOR:I

    .line 329
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/view/VolumePanel;->mDndMode:I

    .line 332
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/view/VolumePanel;->mCurrentThemeId:I

    .line 514
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    .line 515
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/view/VolumePanel;->isRotate:Z

    .line 516
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/view/VolumePanel;->needRotate:Z

    .line 518
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/view/VolumePanel;->mLastVolumeNotify:I

    .line 519
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/view/VolumePanel;->mLastVolumeAlarm:I

    .line 525
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/view/VolumePanel;->mPanelWidth:I

    .line 531
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/view/VolumePanel;->mCustomizeIconNames:[Ljava/lang/CharSequence;

    .line 532
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/view/VolumePanel;->mCustomizeIconRes:[I

    .line 533
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/view/VolumePanel;->mCustomizeIconSilenceRes:I

    .line 534
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/view/VolumePanel;->mCustomizeIconVibeRes:I

    .line 551
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/view/VolumePanel;->mSimulateMuteControls:Ljava/util/HashMap;

    .line 574
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/view/VolumePanel;->mExpand:Z

    .line 578
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/view/VolumePanel;->m_NotResetParmForWattingPostVolume:Z

    .line 582
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/view/VolumePanel;->mUseRingForNotifyDivider:Landroid/view/View;

    .line 940
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/view/VolumePanel;->mRes:Landroid/content/res/Resources;

    .line 941
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/view/VolumePanel;->mSkinRes:Landroid/content/res/Resources;

    .line 942
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    .line 982
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/view/VolumePanel;->mIconWidth:I

    .line 983
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/view/VolumePanel;->mIconWidthDilogMode60:I

    .line 984
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    .line 985
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    .line 986
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    .line 987
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I

    .line 988
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m5:I

    .line 989
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m6:I

    .line 1536
    new-instance v9, Lcom/htc/view/VolumePanel$8;

    invoke-direct {v9, p0}, Lcom/htc/view/VolumePanel$8;-><init>(Lcom/htc/view/VolumePanel;)V

    iput-object v9, p0, Lcom/htc/view/VolumePanel;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 2572
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/view/VolumePanel;->mLastFlags:I

    .line 4043
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/view/VolumePanel;->mClsHtcImageButton:Ljava/lang/Class;

    .line 4044
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/view/VolumePanel;->mClsHtcListItemColorIcon:Ljava/lang/Class;

    .line 4045
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/view/VolumePanel;->mClsHtcSeekBar:Ljava/lang/Class;

    .line 4046
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/view/VolumePanel;->mClsHtcListItem:Ljava/lang/Class;

    .line 4047
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/view/VolumePanel;->mHtcImageButton_setIconResource:Ljava/lang/reflect/Method;

    .line 4048
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/view/VolumePanel;->mHtcListItemColorIcon_setColorIconImageResource:Ljava/lang/reflect/Method;

    .line 4049
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/view/VolumePanel;->mHtcListItemColorIcon_setScaleType:Ljava/lang/reflect/Method;

    .line 4050
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/view/VolumePanel;->mHtcSeekBar_setDisplayMode:Ljava/lang/reflect/Method;

    .line 4051
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/view/VolumePanel;->mHtcListViewText_Text:Ljava/lang/reflect/Method;

    .line 4052
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/view/VolumePanel;->mHtcListItem_setLastComponentAlign:Ljava/lang/reflect/Method;

    .line 991
    new-instance v9, Landroid/view/ContextThemeWrapper;

    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->getThemeCategory()I

    move-result v10

    invoke-direct {p0, p1, v10}, Lcom/htc/view/VolumePanel;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v10

    invoke-direct {v9, p1, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v9, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    .line 993
    iget-object v9, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v10, "audio"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    iput-object v9, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 994
    iput-object p2, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 995
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->fnPreinitRefec()V

    .line 996
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->initACCFlags()V

    .line 999
    iget-object v9, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110010

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 1002
    .local v7, "useMasterVolume":Z
    if-eqz v7, :cond_1

    .line 1003
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v9, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    array-length v9, v9

    if-ge v2, v9, :cond_1

    .line 1004
    sget-object v9, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    aget-object v6, v9, v2

    .line 1005
    .local v6, "streamRes":Lcom/htc/view/VolumePanel$StreamResources;
    iget v9, v6, Lcom/htc/view/VolumePanel$StreamResources;->streamType:I

    const/16 v10, -0x64

    if-ne v9, v10, :cond_0

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, v6, Lcom/htc/view/VolumePanel$StreamResources;->show:Z

    .line 1003
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1005
    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    .line 1009
    .end local v2    # "i":I
    .end local v6    # "streamRes":Lcom/htc/view/VolumePanel$StreamResources;
    :cond_1
    iget-object v9, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1012
    .local v5, "res":Landroid/content/res/Resources;
    :try_start_0
    sget v9, Lcom/htc/view/VolumePanel;->mSenseVersion:F

    const/high16 v10, 0x40c00000    # 6.0f

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_4

    .line 1013
    const-string v9, "b_button_primary_m"

    const-string v10, "style"

    const-string v11, "com.htc"

    invoke-virtual {v5, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    sput v9, Lcom/htc/view/VolumePanel;->mIdStytleTextDark:I

    .line 1017
    :goto_2
    const-string v9, "common_dialogbox_full_dark"

    const-string v10, "drawable"

    const-string v11, "com.htc"

    invoke-virtual {v5, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    sput v9, Lcom/htc/view/VolumePanel;->mIdBackgroundDark:I

    .line 1018
    sget-boolean v9, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v9, :cond_2

    sget-boolean v9, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v9, :cond_2

    .line 1020
    const-string v9, "VolumePanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "com.ht.style.b_button_primary = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/htc/view/VolumePanel;->mIdStytleTextDark:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const-string v9, "VolumePanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mIdBackgroundDark = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/htc/view/VolumePanel;->mIdBackgroundDark:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1028
    :cond_2
    :goto_3
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1029
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v9, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 1030
    .local v8, "wm":Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1031
    invoke-direct {p0, v0}, Lcom/htc/view/VolumePanel;->initSenseCommonDimension(Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;

    .line 1034
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->createVloumePanel()V

    .line 1037
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v9

    new-array v9, v9, [Lcom/htc/view/VolumePanel$SoundPoolHelp;

    iput-object v9, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    .line 1038
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v9

    new-array v9, v9, [Lcom/htc/view/VolumePanel$HtcRingtonePlay;

    iput-object v9, p0, Lcom/htc/view/VolumePanel;->mRingtonePlays:[Lcom/htc/view/VolumePanel$HtcRingtonePlay;

    .line 1039
    iget-object v9, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v10, "vibrator"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Vibrator;

    iput-object v9, p0, Lcom/htc/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 1040
    iget-object v9, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110038

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    .line 1041
    iget-object v9, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110010

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 1043
    .local v4, "masterVolumeOnly":Z
    iget-object v9, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110011

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 1045
    .local v3, "masterVolumeKeySounds":Z
    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    const/4 v9, 0x1

    :goto_4
    iput-boolean v9, p0, Lcom/htc/view/VolumePanel;->mPlayMasterStreamTones:Z

    .line 1046
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->listenRingerModeAndConfigurationChange()V

    .line 1047
    iget-object v9, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v10, "keyguard"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/KeyguardManager;

    iput-object v9, p0, Lcom/htc/view/VolumePanel;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1048
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->initSimulateControl()V

    .line 1050
    sget v9, Lcom/htc/view/VolumePanel;->mSenseVersion:F

    const/high16 v10, 0x40c00000    # 6.0f

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_3

    .line 1051
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->getDNDStateInBackgroud()V

    .line 1052
    new-instance v9, Lcom/htc/view/VolumePanel$DNDObserver;

    invoke-direct {v9, p0}, Lcom/htc/view/VolumePanel$DNDObserver;-><init>(Lcom/htc/view/VolumePanel;)V

    iput-object v9, p0, Lcom/htc/view/VolumePanel;->mDNDObserver:Lcom/htc/view/VolumePanel$DNDObserver;

    .line 1053
    iget-object v9, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "htc_dnd_feature_enabled"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/view/VolumePanel;->mDNDObserver:Lcom/htc/view/VolumePanel$DNDObserver;

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1057
    :cond_3
    return-void

    .line 1015
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v3    # "masterVolumeKeySounds":Z
    .end local v4    # "masterVolumeOnly":Z
    .end local v8    # "wm":Landroid/view/WindowManager;
    :cond_4
    :try_start_1
    const-string v9, "b_button_primary"

    const-string v10, "style"

    const-string v11, "com.htc"

    invoke-virtual {v5, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    sput v9, Lcom/htc/view/VolumePanel;->mIdStytleTextDark:I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 1023
    :catch_0
    move-exception v1

    .line 1024
    .local v1, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v9, "VolumePanel"

    const-string v10, "b_button_primary not found"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1045
    .end local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    .restart local v3    # "masterVolumeKeySounds":Z
    .restart local v4    # "masterVolumeOnly":Z
    .restart local v8    # "wm":Landroid/view/WindowManager;
    :cond_5
    const/4 v9, 0x0

    goto :goto_4
.end method

.method private OnExpandDialogVolumeKeyEvent(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4813
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    .line 4814
    .local v0, "isKeyDown":Z
    :goto_0
    sget-boolean v4, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_0

    .line 4815
    const-string v4, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OnExpandDialogVolumeKeyEvent keyCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " event:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4817
    :cond_0
    if-nez v0, :cond_3

    move v2, v3

    .line 4847
    :cond_1
    :goto_1
    return v2

    .end local v0    # "isKeyDown":Z
    :cond_2
    move v0, v3

    .line 4813
    goto :goto_0

    .line 4819
    .restart local v0    # "isKeyDown":Z
    :cond_3
    sparse-switch p2, :sswitch_data_0

    move v2, v3

    .line 4847
    goto :goto_1

    .line 4821
    :sswitch_0
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 4822
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    goto :goto_1

    .line 4825
    :cond_4
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, -0x1

    invoke-virtual {v4, v7, v5, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 4826
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v2, :cond_5

    .line 4828
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4832
    :goto_2
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    goto :goto_1

    .line 4830
    :cond_5
    invoke-virtual {p0, v7, v7, v3}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v8, v9}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 4835
    :sswitch_1
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v7, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 4836
    invoke-virtual {p0, v7, v7, v3}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v8, v9}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4837
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    goto :goto_1

    .line 4840
    :sswitch_2
    invoke-direct {p0, v7}, Lcom/htc/view/VolumePanel;->getStreamControlForStream(I)Lcom/htc/view/VolumePanel$StreamControl;

    move-result-object v1

    .line 4841
    .local v1, "sc":Lcom/htc/view/VolumePanel$StreamControl;
    if-eqz v1, :cond_1

    .line 4843
    iget-object v3, v1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/htc/view/VolumePanel;->onClick(Landroid/view/View;)V

    .line 4844
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    goto :goto_1

    .line 4819
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 116
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 116
    sget-boolean v0, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    return v0
.end method

.method static synthetic access$1000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/htc/view/VolumePanel;->sDndDisableDialogLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/Dialog;

    .prologue
    .line 116
    sput-object p0, Lcom/htc/view/VolumePanel;->sDndDisableDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/htc/view/VolumePanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/htc/view/VolumePanel;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/htc/view/VolumePanel;->mExpand:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/view/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/view/VolumePanel;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->collapse()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/view/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/view/VolumePanel;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetParamers()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/view/VolumePanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/htc/view/VolumePanel;

    .prologue
    .line 116
    iget v0, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$1502(Lcom/htc/view/VolumePanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/htc/view/VolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/view/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/view/VolumePanel;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->onFreeRingtone()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/view/VolumePanel;I)Lcom/htc/view/VolumePanel$StreamControl;
    .locals 1
    .param p0, "x0"    # Lcom/htc/view/VolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->getStreamControlForStream(I)Lcom/htc/view/VolumePanel$StreamControl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/view/VolumePanel;Lcom/htc/view/VolumePanel$StreamControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/view/VolumePanel;
    .param p1, "x1"    # Lcom/htc/view/VolumePanel$StreamControl;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->updateSlider(Lcom/htc/view/VolumePanel$StreamControl;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/view/VolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/htc/view/VolumePanel;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2000()Z
    .locals 1

    .prologue
    .line 116
    sget-boolean v0, Lcom/htc/view/VolumePanel;->mUseRingVolumeAsNotifyVolume:Z

    return v0
.end method

.method static synthetic access$2002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 116
    sput-boolean p0, Lcom/htc/view/VolumePanel;->mUseRingVolumeAsNotifyVolume:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/htc/view/VolumePanel;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/htc/view/VolumePanel;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mUseRingForNotifyDivider:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/media/AudioManager;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioManager;
    .param p1, "x1"    # I

    .prologue
    .line 116
    invoke-static {p0, p1}, Lcom/htc/view/VolumePanel;->setNotificationUseRingVolume(Landroid/media/AudioManager;I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/view/VolumePanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/htc/view/VolumePanel;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/htc/view/VolumePanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/htc/view/VolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/htc/view/VolumePanel;->mDndMode:I

    return p1
.end method

.method static synthetic access$2600(Lcom/htc/view/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/view/VolumePanel;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->getDNDStateInBackgroud()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/view/VolumePanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/htc/view/VolumePanel;

    .prologue
    .line 116
    iget v0, p0, Lcom/htc/view/VolumePanel;->mSafeVolumeTimeoutDelay:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/view/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/view/VolumePanel;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->forceTimeout()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/view/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/view/VolumePanel;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/htc/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/htc/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$902(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/Dialog;

    .prologue
    .line 116
    sput-object p0, Lcom/htc/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method private addOtherVolumes()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, -0x3

    .line 2123
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_0

    .line 2124
    const-string v8, "VolumePanel"

    const-string v9, "addOtherVolumes"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    :cond_0
    iget-boolean v8, p0, Lcom/htc/view/VolumePanel;->mShowCombinedVolumes:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mStreamControlsEx:Ljava/util/HashMap;

    if-nez v8, :cond_2

    .line 2177
    :cond_1
    return-void

    .line 2126
    :cond_2
    iget-object v6, p0, Lcom/htc/view/VolumePanel;->mSliderGroupEx:Landroid/view/ViewGroup;

    .line 2127
    .local v6, "sliderGroup":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2128
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v8, Lcom/htc/view/VolumePanel;->STREAMS_EXPLANSION_MODE:[Lcom/htc/view/VolumePanel$StreamResources;

    array-length v8, v8

    if-ge v3, v8, :cond_1

    .line 2129
    sget-object v8, Lcom/htc/view/VolumePanel;->STREAMS_EXPLANSION_MODE:[Lcom/htc/view/VolumePanel$StreamResources;

    aget-object v8, v8, v3

    iget v7, v8, Lcom/htc/view/VolumePanel$StreamResources;->streamType:I

    .line 2130
    .local v7, "streamType":I
    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mStreamControlsEx:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/view/VolumePanel$StreamControl;

    .line 2131
    .local v5, "sc":Lcom/htc/view/VolumePanel$StreamControl;
    sget-object v8, Lcom/htc/view/VolumePanel;->STREAMS_EXPLANSION_MODE:[Lcom/htc/view/VolumePanel$StreamResources;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    if-ne v3, v8, :cond_3

    iget-object v8, v5, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    if-eqz v8, :cond_3

    .line 2132
    iget-object v8, v5, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2134
    :cond_3
    if-eqz v5, :cond_4

    sget-boolean v8, Lcom/htc/view/VolumePanel;->mSupportToogleUseRingVolumeForNotify:Z

    if-nez v8, :cond_5

    iget v8, v5, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-ne v8, v10, :cond_5

    .line 2128
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2137
    :cond_5
    sget-boolean v8, Lcom/htc/view/VolumePanel;->mUseRingVolumeAsNotifyVolume:Z

    if-eqz v8, :cond_8

    iget v8, v5, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_8

    .line 2138
    iget-object v8, v5, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2142
    :goto_2
    iget v8, v5, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-ne v8, v10, :cond_6

    .line 2143
    iget-object v8, v5, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v9, 0x3110006

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2145
    .local v0, "chkBoxView":Landroid/view/View;
    if-eqz v0, :cond_6

    instance-of v8, v0, Landroid/widget/Checkable;

    if-eqz v8, :cond_6

    move-object v2, v0

    .line 2146
    check-cast v2, Landroid/widget/Checkable;

    .line 2147
    .local v2, "htcchkBox":Landroid/widget/Checkable;
    sget-boolean v8, Lcom/htc/view/VolumePanel;->mUseRingVolumeAsNotifyVolume:Z

    invoke-interface {v2, v8}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2151
    .end local v0    # "chkBoxView":Landroid/view/View;
    .end local v2    # "htcchkBox":Landroid/widget/Checkable;
    :cond_6
    iget v8, v5, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    .line 2152
    sget-boolean v8, Lcom/htc/view/VolumePanel;->mUseRingVolumeAsNotifyVolume:Z

    if-nez v8, :cond_9

    iget-boolean v8, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    if-eqz v8, :cond_9

    .line 2153
    sget-object v8, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v8, v8, Lcom/htc/view/VolumePanel$StreamResources;->descRes:I

    iput v8, v5, Lcom/htc/view/VolumePanel$StreamControl;->desTextRes:I

    .line 2157
    :goto_3
    iget-object v8, v5, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    iget v9, v5, Lcom/htc/view/VolumePanel$StreamControl;->desTextRes:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 2160
    :cond_7
    iget-object v8, v5, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2161
    invoke-direct {p0, v5}, Lcom/htc/view/VolumePanel;->updateSlider(Lcom/htc/view/VolumePanel$StreamControl;)V

    .line 2162
    sget v8, Lcom/htc/view/VolumePanel;->mSenseVersion:F

    const/high16 v9, 0x40c00000    # 6.0f

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_4

    sget-object v8, Lcom/htc/view/VolumePanel;->STREAMS_EXPLANSION_MODE:[Lcom/htc/view/VolumePanel$StreamResources;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    if-ge v3, v8, :cond_4

    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_4

    .line 2165
    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 2167
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x303001f

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2168
    .local v1, "divider":Landroid/view/View;
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2169
    iget v8, v5, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-ne v8, v10, :cond_4

    .line 2170
    iput-object v1, p0, Lcom/htc/view/VolumePanel;->mUseRingForNotifyDivider:Landroid/view/View;

    .line 2171
    sget-boolean v8, Lcom/htc/view/VolumePanel;->mUseRingVolumeAsNotifyVolume:Z

    if-eqz v8, :cond_4

    .line 2172
    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mUseRingForNotifyDivider:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 2140
    .end local v1    # "divider":Landroid/view/View;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    :cond_8
    iget-object v8, v5, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 2155
    :cond_9
    sget-object v8, Lcom/htc/view/VolumePanel$StreamResources;->DlgRingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v8, v8, Lcom/htc/view/VolumePanel$StreamResources;->descRes:I

    iput v8, v5, Lcom/htc/view/VolumePanel$StreamControl;->desTextRes:I

    goto :goto_3
.end method

.method private applyThemeSettings(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 5039
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->getThemeCategory()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/htc/view/VolumePanel;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v0

    .line 5040
    .local v0, "themeId":I
    iput v0, p0, Lcom/htc/view/VolumePanel;->mCurrentThemeId:I

    .line 5041
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    .line 5042
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyThemeSettings setTheme : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5044
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    .line 5045
    return v0
.end method

.method private ceateToneGenerator(I)Lcom/htc/view/VolumePanel$SoundPoolHelp;
    .locals 16
    .param p1, "streamType"    # I

    .prologue
    .line 3398
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    .line 3399
    const-string v1, "VolumePanel"

    const-string v2, "ceateToneGeneratorRing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3400
    :cond_0
    monitor-enter p0

    .line 3401
    const/4 v1, 0x2

    move/from16 v0, p1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    move/from16 v0, p1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    move/from16 v0, p1

    if-ne v0, v1, :cond_8

    .line 3402
    :cond_1
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3403
    .local v3, "listSrcFile":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x7

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/media/audio/ui/Volume-1.aac"

    aput-object v2, v10, v1

    const/4 v1, 0x1

    const-string v2, "/system/media/audio/ui/Volume-2.aac"

    aput-object v2, v10, v1

    const/4 v1, 0x2

    const-string v2, "/system/media/audio/ui/Volume-3.aac"

    aput-object v2, v10, v1

    const/4 v1, 0x3

    const-string v2, "/system/media/audio/ui/Volume-4.aac"

    aput-object v2, v10, v1

    const/4 v1, 0x4

    const-string v2, "/system/media/audio/ui/Volume-5.aac"

    aput-object v2, v10, v1

    const/4 v1, 0x5

    const-string v2, "/system/media/audio/ui/Volume-6.aac"

    aput-object v2, v10, v1

    const/4 v1, 0x6

    const-string v2, "/system/media/audio/ui/Volume-7.aac"

    aput-object v2, v10, v1

    .line 3412
    .local v10, "effectSound":[Ljava/lang/String;
    const/4 v1, 0x7

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/customize/resource/Volume-1.aac"

    aput-object v2, v11, v1

    const/4 v1, 0x1

    const-string v2, "/system/customize/resource/Volume-2.aac"

    aput-object v2, v11, v1

    const/4 v1, 0x2

    const-string v2, "/system/customize/resource/Volume-3.aac"

    aput-object v2, v11, v1

    const/4 v1, 0x3

    const-string v2, "/system/customize/resource/Volume-4.aac"

    aput-object v2, v11, v1

    const/4 v1, 0x4

    const-string v2, "/system/customize/resource/Volume-5.aac"

    aput-object v2, v11, v1

    const/4 v1, 0x5

    const-string v2, "/system/customize/resource/Volume-6.aac"

    aput-object v2, v11, v1

    const/4 v1, 0x6

    const-string v2, "/system/customize/resource/Volume-7.aac"

    aput-object v2, v11, v1

    .line 3421
    .local v11, "effectSound1":[Ljava/lang/String;
    const/4 v1, 0x7

    new-array v12, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/media/audio/ui/Volume-1.flac"

    aput-object v2, v12, v1

    const/4 v1, 0x1

    const-string v2, "/system/media/audio/ui/Volume-2.flac"

    aput-object v2, v12, v1

    const/4 v1, 0x2

    const-string v2, "/system/media/audio/ui/Volume-3.flac"

    aput-object v2, v12, v1

    const/4 v1, 0x3

    const-string v2, "/system/media/audio/ui/Volume-4.flac"

    aput-object v2, v12, v1

    const/4 v1, 0x4

    const-string v2, "/system/media/audio/ui/Volume-5.flac"

    aput-object v2, v12, v1

    const/4 v1, 0x5

    const-string v2, "/system/media/audio/ui/Volume-6.flac"

    aput-object v2, v12, v1

    const/4 v1, 0x6

    const-string v2, "/system/media/audio/ui/Volume-7.flac"

    aput-object v2, v12, v1

    .line 3431
    .local v12, "effectSound2":[Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    const/4 v1, 0x0

    aget-object v1, v11, v1

    invoke-direct {v13, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3432
    .local v13, "fileChk":Ljava/io/File;
    new-instance v14, Ljava/io/File;

    const/4 v1, 0x0

    aget-object v1, v12, v1

    invoke-direct {v14, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3433
    .local v14, "fileChk2":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3434
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    array-length v1, v11

    if-ge v15, v1, :cond_7

    .line 3435
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_2

    if-nez v15, :cond_2

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepare sound"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v11, v15

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3436
    :cond_2
    aget-object v1, v11, v15

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3434
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 3438
    .end local v15    # "i":I
    :cond_3
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3439
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_1
    array-length v1, v10

    if-ge v15, v1, :cond_7

    .line 3440
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_4

    if-nez v15, :cond_4

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepare sound"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v10, v15

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3441
    :cond_4
    aget-object v1, v12, v15

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3439
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 3444
    .end local v15    # "i":I
    :cond_5
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_2
    array-length v1, v10

    if-ge v15, v1, :cond_7

    .line 3445
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_6

    if-nez v15, :cond_6

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepare sound"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v10, v15

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3446
    :cond_6
    aget-object v1, v10, v15

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3444
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 3450
    :cond_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    new-instance v1, Lcom/htc/view/VolumePanel$SoundPoolHelp;

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/htc/view/VolumePanel$SoundPoolHelp;-><init>(Lcom/htc/view/VolumePanel;Ljava/util/List;III)V

    aput-object v1, v7, p1

    monitor-exit p0

    move-object v4, v1

    .line 3453
    .end local v3    # "listSrcFile":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "effectSound":[Ljava/lang/String;
    .end local v11    # "effectSound1":[Ljava/lang/String;
    .end local v12    # "effectSound2":[Ljava/lang/String;
    .end local v13    # "fileChk":Ljava/io/File;
    .end local v14    # "fileChk2":Ljava/io/File;
    .end local v15    # "i":I
    :goto_3
    return-object v4

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    new-instance v4, Lcom/htc/view/VolumePanel$SoundPoolHelp;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move/from16 v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/htc/view/VolumePanel$SoundPoolHelp;-><init>(Lcom/htc/view/VolumePanel;Ljava/util/List;III)V

    aput-object v4, v1, p1

    monitor-exit p0

    goto :goto_3

    .line 3457
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private ceateToneGeneratorByMode(I)Lcom/htc/view/VolumePanel$ISoundPlay;
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 3378
    iget-boolean v0, p0, Lcom/htc/view/VolumePanel;->mExpand:Z

    if-nez v0, :cond_0

    .line 3379
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->ceateToneGenerator(I)Lcom/htc/view/VolumePanel$SoundPoolHelp;

    move-result-object v0

    .line 3381
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->ceateToneGeneratorRing(I)Lcom/htc/view/VolumePanel$HtcRingtonePlay;

    move-result-object v0

    goto :goto_0
.end method

.method private ceateToneGeneratorRing(I)Lcom/htc/view/VolumePanel$HtcRingtonePlay;
    .locals 8
    .param p1, "streamType"    # I

    .prologue
    .line 3384
    sget-boolean v4, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v4, :cond_0

    .line 3385
    const-string v4, "VolumePanel"

    const-string v5, "ceateToneGeneratorRing"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3386
    :cond_0
    sget-object v0, Lcom/htc/view/VolumePanel;->STREAMS_EXPLANSION_MODE:[Lcom/htc/view/VolumePanel$StreamResources;

    .local v0, "arr$":[Lcom/htc/view/VolumePanel$StreamResources;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 3387
    .local v3, "stream":Lcom/htc/view/VolumePanel$StreamResources;
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/htc/view/VolumePanel$StreamResources;->streamType:I

    if-ne v4, p1, :cond_1

    .line 3388
    monitor-enter p0

    .line 3389
    :try_start_0
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mRingtonePlays:[Lcom/htc/view/VolumePanel$HtcRingtonePlay;

    new-instance v4, Lcom/htc/view/VolumePanel$HtcRingtonePlay;

    iget-object v6, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    iget-object v7, v3, Lcom/htc/view/VolumePanel$StreamResources;->defaultUri:Landroid/net/Uri;

    invoke-direct {v4, p0, v6, v7, p1}, Lcom/htc/view/VolumePanel$HtcRingtonePlay;-><init>(Lcom/htc/view/VolumePanel;Landroid/content/Context;Landroid/net/Uri;I)V

    aput-object v4, v5, p1

    monitor-exit p0

    .line 3394
    .end local v3    # "stream":Lcom/htc/view/VolumePanel$StreamResources;
    :goto_1
    return-object v4

    .line 3390
    .restart local v3    # "stream":Lcom/htc/view/VolumePanel$StreamResources;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3386
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3393
    .end local v3    # "stream":Lcom/htc/view/VolumePanel$StreamResources;
    :cond_2
    const-string v4, "VolumePanel"

    const-string v5, "ceateToneGeneratorRing fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3394
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private checkAndCreateSliders()V
    .locals 3

    .prologue
    .line 3209
    monitor-enter p0

    .line 3210
    :try_start_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->getThemeCategory()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/htc/view/VolumePanel;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v0

    .line 3211
    .local v0, "themeId":I
    iget v1, p0, Lcom/htc/view/VolumePanel;->mCurrentThemeId:I

    if-eq v1, v0, :cond_0

    .line 3212
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 3214
    :cond_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 3215
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->createSliders()V

    .line 3217
    :cond_1
    monitor-exit p0

    .line 3218
    return-void

    .line 3217
    .end local v0    # "themeId":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkMuteState(I)V
    .locals 10
    .param p1, "streamType"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 4475
    sget-boolean v4, Lcom/htc/view/VolumePanel;->mUseRingVolumeAsNotifyVolume:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x5

    if-ne p1, v4, :cond_1

    .line 4520
    :cond_0
    :goto_0
    return-void

    .line 4477
    :cond_1
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4478
    .local v1, "resolver":Landroid/content/ContentResolver;
    if-nez v1, :cond_2

    .line 4479
    const-string v4, "VolumePanel"

    const-string v5, "checkMuteState resolver is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4482
    :cond_2
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mSimulateMuteControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;

    .line 4483
    .local v2, "smc":Lcom/htc/view/VolumePanel$SimulateMuteControl;
    if-nez v2, :cond_3

    .line 4484
    const-string v4, "VolumePanel"

    const-string v5, "saveBeforeMuteVolume smc is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4488
    :cond_3
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    .line 4489
    .local v0, "headsetPlugged":Z
    sget-boolean v4, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_4

    const-string v4, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkMuteState streamType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", headset = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4491
    :cond_4
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 4492
    .local v3, "volume":I
    sget-boolean v4, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_5

    const-string v4, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkMuteState volume = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4494
    :cond_5
    if-eqz v1, :cond_0

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    .line 4498
    if-eqz v0, :cond_7

    .line 4499
    iget-object v4, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->keyBeforeMuteForHeadset:Ljava/lang/String;

    invoke-static {v1, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMuteForHeadset:I

    .line 4501
    iget v4, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMuteForHeadset:I

    if-eq v4, v7, :cond_6

    if-ne v3, v9, :cond_6

    .line 4502
    iget v4, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->streamType:I

    iget v5, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMuteForHeadset:I

    invoke-direct {p0, v4, v5, v8}, Lcom/htc/view/VolumePanel;->setStreamVolume(III)V

    .line 4503
    iput v7, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMuteForHeadset:I

    .line 4504
    iget v4, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->streamType:I

    invoke-direct {p0, v4}, Lcom/htc/view/VolumePanel;->postBeforeMute(I)V

    .line 4516
    :cond_6
    :goto_1
    sget-boolean v4, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_0

    const-string v4, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkMuteState smc.volumeBeforeMute = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMute:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", smc.volumeBeforeMuteForHeadset = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMuteForHeadset:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4508
    :cond_7
    iget-object v4, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->keyBeforeMute:Ljava/lang/String;

    invoke-static {v1, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMute:I

    .line 4510
    iget v4, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMute:I

    if-eq v4, v7, :cond_6

    if-ne v3, v9, :cond_6

    .line 4511
    iget v4, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->streamType:I

    iget v5, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMute:I

    invoke-direct {p0, v4, v5, v8}, Lcom/htc/view/VolumePanel;->setStreamVolume(III)V

    .line 4512
    iput v7, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMute:I

    .line 4513
    iget v4, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->streamType:I

    invoke-direct {p0, v4}, Lcom/htc/view/VolumePanel;->postBeforeMute(I)V

    goto :goto_1
.end method

.method private collapse()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2320
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2321
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2322
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2323
    .local v0, "count":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2324
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2327
    :cond_0
    iput-boolean v4, p0, Lcom/htc/view/VolumePanel;->mExpand:Z

    .line 2333
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->removeListenToVolumeChange()V

    .line 2334
    return-void
.end method

.method private createSliders(Ljava/util/HashMap;[Lcom/htc/view/VolumePanel$StreamResources;)Ljava/util/HashMap;
    .locals 36
    .param p2, "streams"    # [Lcom/htc/view/VolumePanel$StreamResources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/view/VolumePanel$StreamControl;",
            ">;[",
            "Lcom/htc/view/VolumePanel$StreamResources;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/view/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1666
    .local p1, "streamControls":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/view/VolumePanel$StreamControl;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string v32, "mode_ringer_streams_affected"

    const/16 v33, 0x24

    invoke-static/range {v31 .. v33}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    .line 1671
    .local v26, "silentableStreams":I
    or-int/lit8 v26, v26, 0x8

    .line 1672
    or-int/lit8 v26, v26, 0x10

    .line 1675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mRes:Landroid/content/res/Resources;

    .line 1676
    invoke-direct/range {p0 .. p0}, Lcom/htc/view/VolumePanel;->getSkinPackageName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    .line 1677
    invoke-direct/range {p0 .. p0}, Lcom/htc/view/VolumePanel;->setSkinRes()V

    .line 1679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "layout_inflater"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/LayoutInflater;

    .line 1681
    .local v18, "inflater":Landroid/view/LayoutInflater;
    new-instance p1, Ljava/util/HashMap;

    .end local p1    # "streamControls":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/view/VolumePanel$StreamControl;>;"
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1682
    .restart local p1    # "streamControls":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/view/VolumePanel$StreamControl;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 1685
    .local v22, "res":Landroid/content/res/Resources;
    sget-boolean v31, Lcom/htc/view/VolumePanel;->mUseRingVolumeAsNotifyVolume:Z

    sput-boolean v31, Lcom/htc/view/VolumePanel;->mLastUseRingVolumeAsNotifyVolume:Z

    .line 1686
    sget-boolean v31, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v31, :cond_0

    sget-boolean v31, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v31, :cond_0

    .line 1687
    const-string v31, "VolumePanel"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "createSliders mUseRingVolumeAsNotifyVolume:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-boolean v33, Lcom/htc/view/VolumePanel;->mUseRingVolumeAsNotifyVolume:Z

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/htc/view/VolumePanel;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v14

    .line 1691
    .local v14, "bIsInAllCapsLocale":Z
    sget-boolean v31, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v31, :cond_1

    .line 1692
    const-string v31, "VolumePanel"

    const-string v32, "inflater.inflate volume_adjust_item..."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    :cond_1
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v17

    move/from16 v1, v31

    if-ge v0, v1, :cond_32

    .line 1694
    aget-object v27, p2, v17

    .line 1696
    .local v27, "streamRes":Lcom/htc/view/VolumePanel$StreamResources;
    sget v29, Lcom/htc/view/VolumePanel;->mIdStytleTextDark:I

    .line 1697
    .local v29, "styleText":I
    move-object/from16 v0, v27

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->streamType:I

    move/from16 v28, v0

    .line 1699
    .local v28, "streamType":I
    sget-boolean v31, Lcom/htc/view/VolumePanel;->mUseRingVolumeAsNotifyVolume:Z

    if-eqz v31, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2

    sget-object v31, Lcom/htc/view/VolumePanel$StreamResources;->NotificationStream:Lcom/htc/view/VolumePanel$StreamResources;

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_2

    .line 1700
    sget-object v27, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    .line 1703
    :cond_2
    new-instance v23, Lcom/htc/view/VolumePanel$StreamControl;

    const/16 v31, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/view/VolumePanel$StreamControl;-><init>(Lcom/htc/view/VolumePanel;Lcom/htc/view/VolumePanel$1;)V

    .line 1704
    .local v23, "sc":Lcom/htc/view/VolumePanel$StreamControl;
    move/from16 v0, v28

    move-object/from16 v1, v23

    iput v0, v1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    .line 1705
    sget-boolean v31, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v31, :cond_3

    sget-boolean v31, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v31, :cond_3

    .line 1706
    const-string v31, "VolumePanel"

    const-string v32, ">>inflater.inflate volume_adjust_item"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :cond_3
    aget-object v31, p2, v17

    move-object/from16 v0, v31

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->streamType:I

    move/from16 v31, v0

    const/16 v32, -0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_7

    .line 1708
    const v31, 0x3030005

    const/16 v32, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/view/ViewGroup;

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 1709
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v31, v0

    if-nez v31, :cond_4

    .line 1693
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 1713
    :cond_4
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/htc/view/VolumePanel;->fnSetListLastComponentAlign(Landroid/view/View;Z)V

    .line 1714
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    .line 1715
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v31, v0

    const v32, 0x3110006

    invoke-virtual/range {v31 .. v32}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 1717
    .local v15, "chkBoxView":Landroid/view/View;
    if-eqz v15, :cond_5

    .line 1718
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1719
    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v15, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 1722
    new-instance v31, Lcom/htc/view/VolumePanel$9;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/view/VolumePanel$9;-><init>(Lcom/htc/view/VolumePanel;)V

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1779
    :cond_5
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v31, v0

    const v32, 0x3110005

    invoke-virtual/range {v31 .. v32}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .line 1780
    .local v30, "tx":Landroid/view/View;
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1781
    if-eqz v30, :cond_6

    .line 1782
    const v31, 0x30701c0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/view/VolumePanel;->fnSetListText(Landroid/view/View;I)V

    .line 1783
    new-instance v31, Lcom/htc/view/VolumePanel$10;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/view/VolumePanel$10;-><init>(Lcom/htc/view/VolumePanel;)V

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1798
    :goto_2
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1796
    :cond_6
    const-string v31, "VolumePanel"

    const-string v32, "HtcListItem1LineCenteredText is null!!"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1801
    .end local v15    # "chkBoxView":Landroid/view/View;
    .end local v30    # "tx":Landroid/view/View;
    :cond_7
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->defaultUri:Landroid/net/Uri;

    move-object/from16 v31, v0

    if-nez v31, :cond_23

    .line 1802
    const v31, 0x3030020

    const/16 v32, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/view/ViewGroup;

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 1811
    :goto_3
    sget-boolean v31, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v31, :cond_8

    sget-boolean v31, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v31, :cond_8

    .line 1812
    const-string v31, "VolumePanel"

    const-string v32, "<<inflater.inflate volume_adjust_item"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    :cond_8
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1816
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v31, v0

    const v32, 0x3110025

    invoke-virtual/range {v31 .. v32}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/htc/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    .line 1817
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    if-eqz v31, :cond_9

    .line 1818
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1821
    :cond_9
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v31, v0

    const v32, 0x311003d

    invoke-virtual/range {v31 .. v32}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    .line 1822
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    if-eqz v31, :cond_a

    .line 1824
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    const v32, 0x2080035

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1825
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1826
    sget-boolean v31, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    if-eqz v31, :cond_a

    .line 1827
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    const/16 v32, -0x100

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1829
    :cond_a
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v31, v0

    const v32, 0x311003b

    invoke-virtual/range {v31 .. v32}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    .line 1830
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    move-object/from16 v31, v0

    if-eqz v31, :cond_d

    .line 1831
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->defaultUri:Landroid/net/Uri;

    move-object/from16 v31, v0

    if-eqz v31, :cond_25

    .line 1832
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    move-object/from16 v31, v0

    sget-object v32, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/htc/view/VolumePanel;->fnSetScaleType(Landroid/view/View;Landroid/widget/ImageView$ScaleType;)V

    .line 1833
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1838
    :goto_4
    const/16 v31, 0x1

    move-object/from16 v0, v23

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    move/from16 v32, v0

    shl-int v31, v31, v32

    and-int v31, v31, v26

    if-eqz v31, :cond_b

    .line 1839
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1841
    :cond_b
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1843
    sget-boolean v31, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v31, :cond_c

    sget-boolean v31, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v31, :cond_c

    const-string v31, "VolumePanel"

    const-string v32, "ico setContentDescription"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    :cond_c
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    move-object/from16 v31, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->descRes:I

    move/from16 v32, v0

    move-object/from16 v0, v22

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1846
    :cond_d
    move-object/from16 v0, v27

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v23

    iput v0, v1, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I

    .line 1847
    move-object/from16 v0, v27

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v23

    iput v0, v1, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1848
    move-object/from16 v0, v27

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->iconVibrateRes:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v23

    iput v0, v1, Lcom/htc/view/VolumePanel$StreamControl;->iconVibrateRes:I

    .line 1849
    move-object/from16 v0, v27

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->iconOutDoorRes:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v23

    iput v0, v1, Lcom/htc/view/VolumePanel$StreamControl;->iconOutDoorRes:I

    .line 1850
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->mCustomizeIconSilenceRes:I

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_e

    .line 1851
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->mCustomizeIconSilenceRes:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v23

    iput v0, v1, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1852
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->mCustomizeIconVibeRes:I

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_f

    .line 1853
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->mCustomizeIconVibeRes:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v23

    iput v0, v1, Lcom/htc/view/VolumePanel$StreamControl;->iconVibrateRes:I

    .line 1854
    :cond_f
    sget-boolean v31, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v31, :cond_10

    sget-boolean v31, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v31, :cond_10

    const-string v31, "VolumePanel"

    const-string v32, "ico setImageResource"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    :cond_10
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    move-object/from16 v31, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/htc/view/VolumePanel;->fnSetButtonIcon(Landroid/view/View;I)V

    .line 1859
    sget-boolean v31, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    if-eqz v31, :cond_11

    .line 1860
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    move-object/from16 v31, v0

    const v32, -0xff0001

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1864
    :cond_11
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v31, v0

    const v32, 0x3110027

    invoke-virtual/range {v31 .. v32}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    .line 1866
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->defaultUri:Landroid/net/Uri;

    move-object/from16 v31, v0

    if-eqz v31, :cond_26

    .line 1869
    :goto_5
    move-object/from16 v0, v27

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->descRes:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v23

    iput v0, v1, Lcom/htc/view/VolumePanel$StreamControl;->desTextRes:I

    .line 1870
    sget-boolean v31, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v31, :cond_12

    sget-boolean v31, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v31, :cond_12

    const-string v31, "VolumePanel"

    const-string v32, "set text"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    :cond_12
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v31, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->descRes:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(I)V

    .line 1872
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->defaultUri:Landroid/net/Uri;

    move-object/from16 v31, v0

    if-nez v31, :cond_13

    if-eqz v14, :cond_13

    .line 1873
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 1874
    :cond_13
    sget-boolean v31, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    if-eqz v31, :cond_14

    .line 1875
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v31, v0

    const/high16 v32, -0x10000

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1877
    :cond_14
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v31, v0

    const v32, 0x311003c

    invoke-virtual/range {v31 .. v32}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/SeekBar;

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    .line 1878
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->defaultUri:Landroid/net/Uri;

    move-object/from16 v31, v0

    if-eqz v31, :cond_27

    const/16 v16, 0x0

    .line 1879
    .local v16, "displayMode":I
    :goto_6
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->defaultUri:Landroid/net/Uri;

    move-object/from16 v31, v0

    if-nez v31, :cond_15

    .line 1880
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/view/VolumePanel;->fnInitSeekBar(Landroid/widget/SeekBar;I)V

    .line 1882
    :cond_15
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    check-cast v25, Landroid/view/View;

    .line 1885
    .local v25, "seekbarParent":Landroid/view/View;
    new-instance v31, Lcom/htc/view/VolumePanel$SetTouchDelegateRunnable;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/view/VolumePanel$SetTouchDelegateRunnable;-><init>(Lcom/htc/view/VolumePanel;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1887
    sget-boolean v31, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    if-eqz v31, :cond_16

    .line 1888
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v31, v0

    const/16 v32, -0x100

    invoke-virtual/range {v31 .. v32}, Landroid/widget/SeekBar;->setBackgroundColor(I)V

    .line 1891
    :cond_16
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I

    .line 1892
    .local v13, "HTC_UIGL_TEXT_MARGIN_TOP":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    .line 1893
    .local v11, "HTC_UIGL_TEXT_MARGIN_LEFT":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    .line 1894
    .local v12, "HTC_UIGL_TEXT_MARGIN_RIGHT":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m6:I

    .line 1895
    .local v6, "HTC_UIGL_SEEKBAR_MARGIN_TOP":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m5:I

    move/from16 v31, v0

    mul-int/lit8 v5, v31, 0x3

    .line 1896
    .local v5, "HTC_UIGL_SEEKBAR_MARGIN_BOTTOM":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    .line 1897
    .local v7, "HTC_UIGL_SEEKBAR_PADDING_LEFT":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    .line 1899
    .local v9, "HTC_UIGL_SEEKBAR_PADDING_RIGHT":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    .line 1900
    .local v8, "HTC_UIGL_SEEKBAR_PADDING_LEFT_LIGHT":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    .line 1905
    .local v10, "HTC_UIGL_SEEKBAR_PADDING_RIGHT_LIGHT":I
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .line 1906
    .local v20, "param":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->defaultUri:Landroid/net/Uri;

    move-object/from16 v31, v0

    if-nez v31, :cond_28

    .line 1907
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->mIconWidth:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1908
    const/16 v31, -0x2

    move/from16 v0, v31

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1918
    :goto_7
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1919
    sget-boolean v31, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v31, :cond_17

    sget-boolean v31, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v31, :cond_17

    const-string v31, "VolumePanel"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "set icon width="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    :cond_17
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->defaultUri:Landroid/net/Uri;

    move-object/from16 v31, v0

    if-nez v31, :cond_18

    .line 1924
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-virtual/range {v31 .. v35}, Landroid/view/View;->setPadding(IIII)V

    .line 1926
    :cond_18
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1929
    .local v19, "m_param":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/htc/view/VolumePanel;->mParmNoTitle:B

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_19

    const/16 v31, 0x3

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_2a

    :cond_19
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->defaultUri:Landroid/net/Uri;

    move-object/from16 v31, v0

    if-nez v31, :cond_2a

    .line 1930
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v31, v0

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1936
    :cond_1a
    :goto_8
    sget-boolean v31, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v31, :cond_1b

    sget-boolean v31, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v31, :cond_1b

    const-string v31, "VolumePanel"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "volumeStreamText.setMargins "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    :cond_1b
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->defaultUri:Landroid/net/Uri;

    move-object/from16 v31, v0

    if-nez v31, :cond_1c

    .line 1938
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-virtual/range {v31 .. v35}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1941
    :cond_1c
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/htc/view/VolumePanel;->mParmNoTitle:B

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1d

    const/16 v31, 0x3

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_2b

    :cond_1d
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->defaultUri:Landroid/net/Uri;

    move-object/from16 v31, v0

    if-nez v31, :cond_2b

    .line 1942
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->mHtcUiGuildlineSepareMarginTop:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->mHtcUiGuildlineSepareMarginBottom:I

    move/from16 v33, v0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v7, v1, v7, v2}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 1955
    :cond_1e
    :goto_9
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1f

    .line 1956
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .end local v19    # "m_param":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v19, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1957
    .restart local v19    # "m_param":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->defaultUri:Landroid/net/Uri;

    move-object/from16 v31, v0

    if-nez v31, :cond_1f

    .line 1958
    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->mHtcUiGuildlineSepareMarginTop:I

    move/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->mHtcUiGuildlineSepareMarginBottom:I

    move/from16 v34, v0

    move-object/from16 v0, v19

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1962
    :cond_1f
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->defaultUri:Landroid/net/Uri;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2d

    .line 1971
    :goto_a
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->defaultUri:Landroid/net/Uri;

    move-object/from16 v31, v0

    if-eqz v31, :cond_20

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v31, v0

    if-eqz v31, :cond_20

    .line 1972
    sget v31, Lcom/htc/view/VolumePanel;->mSenseVersion:F

    const/high16 v32, 0x40c00000    # 6.0f

    cmpl-float v31, v31, v32

    if-ltz v31, :cond_2f

    .line 1973
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v31, v0

    const v32, 0x311003f

    invoke-virtual/range {v31 .. v32}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    .line 1974
    .local v24, "seekPanel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/view/VolumePanel;->fnGetHtcListItemHeight(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1986
    .end local v24    # "seekPanel":Landroid/view/View;
    :cond_20
    :goto_b
    const/16 v31, 0x6

    move/from16 v0, v28

    move/from16 v1, v31

    if-eq v0, v1, :cond_21

    if-nez v28, :cond_30

    :cond_21
    const/16 v21, 0x1

    .line 1988
    .local v21, "plusOne":I
    :goto_c
    const/16 v31, -0x2

    move/from16 v0, v28

    move/from16 v1, v31

    if-eq v0, v1, :cond_22

    .line 1989
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/htc/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v32

    add-int v32, v32, v21

    invoke-virtual/range {v31 .. v32}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1990
    :cond_22
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1991
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->defaultUri:Landroid/net/Uri;

    move-object/from16 v31, v0

    if-eqz v31, :cond_31

    .line 1992
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1996
    :goto_d
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 1998
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1804
    .end local v5    # "HTC_UIGL_SEEKBAR_MARGIN_BOTTOM":I
    .end local v6    # "HTC_UIGL_SEEKBAR_MARGIN_TOP":I
    .end local v7    # "HTC_UIGL_SEEKBAR_PADDING_LEFT":I
    .end local v8    # "HTC_UIGL_SEEKBAR_PADDING_LEFT_LIGHT":I
    .end local v9    # "HTC_UIGL_SEEKBAR_PADDING_RIGHT":I
    .end local v10    # "HTC_UIGL_SEEKBAR_PADDING_RIGHT_LIGHT":I
    .end local v11    # "HTC_UIGL_TEXT_MARGIN_LEFT":I
    .end local v12    # "HTC_UIGL_TEXT_MARGIN_RIGHT":I
    .end local v13    # "HTC_UIGL_TEXT_MARGIN_TOP":I
    .end local v16    # "displayMode":I
    .end local v19    # "m_param":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v20    # "param":Landroid/view/ViewGroup$LayoutParams;
    .end local v21    # "plusOne":I
    .end local v25    # "seekbarParent":Landroid/view/View;
    :cond_23
    sget v31, Lcom/htc/view/VolumePanel;->mSenseVersion:F

    const/high16 v32, 0x40c00000    # 6.0f

    cmpl-float v31, v31, v32

    if-ltz v31, :cond_24

    .line 1805
    const v31, 0x3030022

    const/16 v32, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/view/ViewGroup;

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    goto/16 :goto_3

    .line 1807
    :cond_24
    const v31, 0x3030021

    const/16 v32, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/view/ViewGroup;

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    goto/16 :goto_3

    .line 1835
    :cond_25
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setFocusable(Z)V

    goto/16 :goto_4

    .line 1867
    :cond_26
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_5

    .line 1878
    :cond_27
    const/16 v16, 0x1

    goto/16 :goto_6

    .line 1911
    .restart local v5    # "HTC_UIGL_SEEKBAR_MARGIN_BOTTOM":I
    .restart local v6    # "HTC_UIGL_SEEKBAR_MARGIN_TOP":I
    .restart local v7    # "HTC_UIGL_SEEKBAR_PADDING_LEFT":I
    .restart local v8    # "HTC_UIGL_SEEKBAR_PADDING_LEFT_LIGHT":I
    .restart local v9    # "HTC_UIGL_SEEKBAR_PADDING_RIGHT":I
    .restart local v10    # "HTC_UIGL_SEEKBAR_PADDING_RIGHT_LIGHT":I
    .restart local v11    # "HTC_UIGL_TEXT_MARGIN_LEFT":I
    .restart local v12    # "HTC_UIGL_TEXT_MARGIN_RIGHT":I
    .restart local v13    # "HTC_UIGL_TEXT_MARGIN_TOP":I
    .restart local v16    # "displayMode":I
    .restart local v20    # "param":Landroid/view/ViewGroup$LayoutParams;
    .restart local v25    # "seekbarParent":Landroid/view/View;
    :cond_28
    sget v31, Lcom/htc/view/VolumePanel;->mSenseVersion:F

    const/high16 v32, 0x40c00000    # 6.0f

    cmpl-float v31, v31, v32

    if-ltz v31, :cond_29

    .line 1912
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->mIconWidthDilogMode60:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_7

    .line 1914
    :cond_29
    const/16 v31, -0x2

    move/from16 v0, v31

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1915
    const/16 v31, -0x2

    move/from16 v0, v31

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_7

    .line 1932
    .restart local v19    # "m_param":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2a
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->defaultUri:Landroid/net/Uri;

    move-object/from16 v31, v0

    if-nez v31, :cond_1a

    .line 1933
    const/16 v31, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v31

    invoke-virtual {v0, v11, v13, v12, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_8

    .line 1945
    :cond_2b
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->defaultUri:Landroid/net/Uri;

    move-object/from16 v31, v0

    if-nez v31, :cond_2c

    .line 1946
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v7, v6, v9, v5}, Landroid/widget/SeekBar;->setPadding(IIII)V

    goto/16 :goto_9

    .line 1948
    :cond_2c
    sget v31, Lcom/htc/view/VolumePanel;->mSenseVersion:F

    const/high16 v32, 0x40c00000    # 6.0f

    cmpg-float v31, v31, v32

    if-gez v31, :cond_1e

    .line 1950
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v8, v1, v10, v2}, Landroid/widget/SeekBar;->setPadding(IIII)V

    goto/16 :goto_9

    .line 1963
    :cond_2d
    sget v31, Lcom/htc/view/VolumePanel;->mSenseVersion:F

    const/high16 v32, 0x40c00000    # 6.0f

    cmpl-float v31, v31, v32

    if-ltz v31, :cond_2e

    .line 1965
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    const v32, 0x2080036

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a

    .line 1968
    :cond_2e
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    const v32, 0x2080036

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a

    .line 1979
    :cond_2f
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/view/VolumePanel;->fnSetMargin(Ljava/lang/Object;)V

    .line 1980
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/ViewGroup;->requestLayout()V

    goto/16 :goto_b

    .line 1986
    :cond_30
    const/16 v21, 0x0

    goto/16 :goto_c

    .line 1994
    .restart local v21    # "plusOne":I
    :cond_31
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/SeekBar;->setFocusable(Z)V

    goto/16 :goto_d

    .line 2000
    .end local v5    # "HTC_UIGL_SEEKBAR_MARGIN_BOTTOM":I
    .end local v6    # "HTC_UIGL_SEEKBAR_MARGIN_TOP":I
    .end local v7    # "HTC_UIGL_SEEKBAR_PADDING_LEFT":I
    .end local v8    # "HTC_UIGL_SEEKBAR_PADDING_LEFT_LIGHT":I
    .end local v9    # "HTC_UIGL_SEEKBAR_PADDING_RIGHT":I
    .end local v10    # "HTC_UIGL_SEEKBAR_PADDING_RIGHT_LIGHT":I
    .end local v11    # "HTC_UIGL_TEXT_MARGIN_LEFT":I
    .end local v12    # "HTC_UIGL_TEXT_MARGIN_RIGHT":I
    .end local v13    # "HTC_UIGL_TEXT_MARGIN_TOP":I
    .end local v16    # "displayMode":I
    .end local v19    # "m_param":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v20    # "param":Landroid/view/ViewGroup$LayoutParams;
    .end local v21    # "plusOne":I
    .end local v23    # "sc":Lcom/htc/view/VolumePanel$StreamControl;
    .end local v25    # "seekbarParent":Landroid/view/View;
    .end local v27    # "streamRes":Lcom/htc/view/VolumePanel$StreamResources;
    .end local v28    # "streamType":I
    .end local v29    # "styleText":I
    :cond_32
    return-object p1
.end method

.method private createSliders()V
    .locals 2

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/content/res/HtcConfiguration;->applyHtcFontscale(Landroid/content/Context;)Z

    .line 1659
    :cond_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/htc/view/VolumePanel;->applyThemeSettings(Landroid/content/Context;)I

    .line 1660
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->createVloumePanel()V

    .line 1661
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->createVolumeDialog()V

    .line 1662
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    sget-object v1, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    invoke-direct {p0, v0, v1}, Lcom/htc/view/VolumePanel;->createSliders(Ljava/util/HashMap;[Lcom/htc/view/VolumePanel$StreamResources;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 1663
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mStreamControlsEx:Ljava/util/HashMap;

    sget-object v1, Lcom/htc/view/VolumePanel;->STREAMS_EXPLANSION_MODE:[Lcom/htc/view/VolumePanel$StreamResources;

    invoke-direct {p0, v0, v1}, Lcom/htc/view/VolumePanel;->createSliders(Ljava/util/HashMap;[Lcom/htc/view/VolumePanel$StreamResources;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/VolumePanel;->mStreamControlsEx:Ljava/util/HashMap;

    .line 1664
    return-void
.end method

.method private createVloumePanel()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 1115
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1117
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x3030017

    invoke-virtual {v0, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    .line 1118
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    new-instance v5, Lcom/htc/view/VolumePanel$1;

    invoke-direct {v5, p0}, Lcom/htc/view/VolumePanel$1;-><init>(Lcom/htc/view/VolumePanel;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1125
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    const v5, 0x1020018

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RotateRelativeLayout;

    iput-object v4, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    .line 1126
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    const v5, 0x3110024

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    .line 1128
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    const v5, 0x3110023

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    .line 1129
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    const v5, 0x3110026

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    .line 1130
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 1131
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    const v5, 0x20800c3

    invoke-direct {p0, v4, v5}, Lcom/htc/view/VolumePanel;->fnSetButtonIcon(Landroid/view/View;I)V

    .line 1133
    :cond_0
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    const v5, 0x3110025

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    .line 1135
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->initSenseVolumePanelLayout()V

    .line 1138
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1139
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 1140
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    .line 1142
    :cond_1
    new-instance v4, Lcom/htc/view/VolumePanel$2;

    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    const v6, 0x103030a

    invoke-direct {v4, p0, v5, v6}, Lcom/htc/view/VolumePanel$2;-><init>(Lcom/htc/view/VolumePanel;Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    .line 1153
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    const-string v5, "Volume control"

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1154
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1155
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v5, Lcom/htc/view/VolumePanel$3;

    invoke-direct {v5, p0}, Lcom/htc/view/VolumePanel$3;-><init>(Lcom/htc/view/VolumePanel;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1172
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1173
    .local v3, "window":Landroid/view/Window;
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 1174
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1175
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iput-object v9, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1176
    const/16 v4, 0x7e4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1177
    iget v4, p0, Lcom/htc/view/VolumePanel;->mPanelWidth:I

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1178
    const/4 v4, -0x2

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1179
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1180
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1182
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v4, -0x5

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1183
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v4, -0x3

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1184
    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1187
    const v4, 0x40028

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1190
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/view/VolumePanel;->mShowCombinedVolumes:Z

    .line 1192
    iget-boolean v4, p0, Lcom/htc/view/VolumePanel;->mShowCombinedVolumes:Z

    if-nez v4, :cond_2

    .line 1193
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1194
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1198
    :goto_0
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->resetPanelRotation()V

    .line 1199
    return-void

    .line 1196
    :cond_2
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private createVolumeDialog()V
    .locals 6

    .prologue
    .line 1203
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1205
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x3030016

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1206
    .local v2, "viewEx":Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutDirection(I)V

    .line 1207
    new-instance v4, Lcom/htc/view/VolumePanel$4;

    invoke-direct {v4, p0}, Lcom/htc/view/VolumePanel$4;-><init>(Lcom/htc/view/VolumePanel;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1214
    const v4, 0x3110023

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/htc/view/VolumePanel;->mSliderGroupEx:Landroid/view/ViewGroup;

    .line 1218
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mDialogEx:Landroid/app/Dialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mDialogEx:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1219
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mDialogEx:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 1220
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    .line 1222
    :cond_0
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, v2}, Lcom/htc/view/VolumePanel;->fnCreateDlg(Landroid/content/Context;Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/view/VolumePanel;->mDialogEx:Landroid/app/Dialog;

    .line 1223
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mDialogEx:Landroid/app/Dialog;

    invoke-virtual {v4, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1224
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mDialogEx:Landroid/app/Dialog;

    const v5, 0x307018e

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setTitle(I)V

    .line 1225
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mDialogEx:Landroid/app/Dialog;

    new-instance v5, Lcom/htc/view/VolumePanel$5;

    invoke-direct {v5, p0}, Lcom/htc/view/VolumePanel$5;-><init>(Lcom/htc/view/VolumePanel;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1236
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mDialogEx:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1237
    .local v3, "windowOfVomeDialog":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1238
    .local v1, "layoutParmsOfVomeDialog":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x7e4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1240
    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1241
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 1242
    return-void
.end method

.method private expand()V
    .locals 2

    .prologue
    .line 2300
    monitor-enter p0

    .line 2301
    :try_start_0
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->addOtherVolumes()V

    .line 2302
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2307
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2308
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2312
    :cond_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialogEx:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2314
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 2315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/VolumePanel;->mExpand:Z

    .line 2316
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->listenToVolumeChange()V

    .line 2317
    return-void

    .line 2302
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private fnCreateDlg(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;II)Landroid/app/Dialog;
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageId"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "idPositiveButton"    # I
    .param p5, "idNegativeButton"    # I

    .prologue
    .line 4626
    const/4 v3, 0x0

    .line 4628
    .local v3, "cls":Ljava/lang/Class;
    :try_start_0
    const-string v19, "com.htc.widget.HtcAlertDialog$Builder"

    invoke-static/range {v19 .. v19}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 4633
    :goto_0
    const/4 v15, 0x0

    .line 4634
    .local v15, "setMessageMethod":Ljava/lang/reflect/Method;
    const/16 v17, 0x0

    .line 4635
    .local v17, "setPositiveButtonMethod":Ljava/lang/reflect/Method;
    const/16 v16, 0x0

    .line 4636
    .local v16, "setNegativeButtonMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 4638
    .local v4, "createMethod":Ljava/lang/reflect/Method;
    const/16 v18, 0x0

    .line 4639
    .local v18, "strCtor":Ljava/lang/reflect/Constructor;
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v5, v0, [Ljava/lang/Class;

    const/16 v19, 0x0

    const-class v20, Landroid/content/Context;

    aput-object v20, v5, v19

    .line 4640
    .local v5, "ctorArgs1":[Ljava/lang/Class;
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v12, v0, [Ljava/lang/Class;

    const/16 v19, 0x0

    sget-object v20, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v20, v12, v19

    .line 4641
    .local v12, "parm1":[Ljava/lang/Class;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v13, v0, [Ljava/lang/Class;

    const/16 v19, 0x0

    sget-object v20, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v20, v13, v19

    const/16 v19, 0x1

    const-class v20, Landroid/content/DialogInterface$OnClickListener;

    aput-object v20, v13, v19

    .line 4642
    .local v13, "parm2":[Ljava/lang/Class;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v14, v0, [Ljava/lang/Class;

    const/16 v19, 0x0

    sget-object v20, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v20, v14, v19

    const/16 v19, 0x1

    const-class v20, Landroid/content/DialogInterface$OnClickListener;

    aput-object v20, v14, v19

    .line 4643
    .local v14, "parm3":[Ljava/lang/Class;
    const/4 v2, 0x0

    .line 4644
    .local v2, "builder":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 4646
    :try_start_1
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v18

    .line 4647
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object p1, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4648
    const-string v19, "setMessage"

    check-cast v12, [Ljava/lang/Class;

    .end local v12    # "parm1":[Ljava/lang/Class;
    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 4650
    const-string v19, "setPositiveButton"

    check-cast v13, [Ljava/lang/Class;

    .end local v13    # "parm2":[Ljava/lang/Class;
    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 4652
    const-string v19, "setNegativeButton"

    check-cast v14, [Ljava/lang/Class;

    .end local v14    # "parm3":[Ljava/lang/Class;
    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    .line 4654
    const-string v20, "create"

    const/16 v19, 0x0

    check-cast v19, [Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v4

    .line 4675
    .end local v2    # "builder":Ljava/lang/Object;
    :cond_0
    :goto_1
    const/4 v6, 0x0

    .line 4676
    .local v6, "dialog":Landroid/app/Dialog;
    if-eqz v15, :cond_3

    .line 4677
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v8, v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v8, v19

    .line 4678
    .local v8, "mParamObjs1":[Ljava/lang/Object;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v9, v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v9, v19

    const/16 v19, 0x1

    aput-object p3, v9, v19

    .line 4679
    .local v9, "mParamObjs2":[Ljava/lang/Object;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v10, v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v10, v19

    const/16 v19, 0x1

    const/16 v20, 0x0

    aput-object v20, v10, v19

    .line 4681
    .local v10, "mParamObjs3":[Ljava/lang/Object;
    :try_start_2
    invoke-virtual {v15, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4682
    if-eqz v17, :cond_1

    .line 4683
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4684
    :cond_1
    if-eqz v16, :cond_2

    .line 4685
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4686
    :cond_2
    if-eqz v4, :cond_3

    .line 4687
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Landroid/app/Dialog;

    move-object v6, v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_9

    .line 4702
    .end local v8    # "mParamObjs1":[Ljava/lang/Object;
    .end local v9    # "mParamObjs2":[Ljava/lang/Object;
    .end local v10    # "mParamObjs3":[Ljava/lang/Object;
    :cond_3
    :goto_2
    return-object v6

    .line 4629
    .end local v4    # "createMethod":Ljava/lang/reflect/Method;
    .end local v5    # "ctorArgs1":[Ljava/lang/Class;
    .end local v6    # "dialog":Landroid/app/Dialog;
    .end local v15    # "setMessageMethod":Ljava/lang/reflect/Method;
    .end local v16    # "setNegativeButtonMethod":Ljava/lang/reflect/Method;
    .end local v17    # "setPositiveButtonMethod":Ljava/lang/reflect/Method;
    .end local v18    # "strCtor":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v7

    .line 4631
    .local v7, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v7}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 4656
    .end local v7    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v4    # "createMethod":Ljava/lang/reflect/Method;
    .restart local v5    # "ctorArgs1":[Ljava/lang/Class;
    .restart local v15    # "setMessageMethod":Ljava/lang/reflect/Method;
    .restart local v16    # "setNegativeButtonMethod":Ljava/lang/reflect/Method;
    .restart local v17    # "setPositiveButtonMethod":Ljava/lang/reflect/Method;
    .restart local v18    # "strCtor":Ljava/lang/reflect/Constructor;
    :catch_1
    move-exception v7

    .line 4658
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v7}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 4659
    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v7

    .line 4661
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 4662
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v7

    .line 4664
    .local v7, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v7}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 4665
    .end local v7    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v7

    .line 4667
    .local v7, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 4668
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v7

    .line 4670
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 4688
    .end local v7    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v6    # "dialog":Landroid/app/Dialog;
    .restart local v8    # "mParamObjs1":[Ljava/lang/Object;
    .restart local v9    # "mParamObjs2":[Ljava/lang/Object;
    .restart local v10    # "mParamObjs3":[Ljava/lang/Object;
    :catch_6
    move-exception v7

    .line 4690
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 4691
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_7
    move-exception v7

    .line 4693
    .local v7, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 4694
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    :catch_8
    move-exception v7

    .line 4696
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    .line 4697
    .end local v7    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_9
    move-exception v11

    .line 4699
    .local v11, "npeException":Ljava/lang/NullPointerException;
    invoke-virtual {v11}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2
.end method

.method private fnCreateDlg(Landroid/content/Context;Landroid/view/View;)Landroid/app/Dialog;
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentView"    # Landroid/view/View;

    .prologue
    .line 4705
    const/4 v3, 0x0

    .line 4707
    .local v3, "cls":Ljava/lang/Class;
    :try_start_0
    const-string v17, "com.htc.widget.HtcAlertDialog$Builder"

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 4712
    :goto_0
    const/4 v15, 0x0

    .line 4713
    .local v15, "setViewMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 4714
    .local v4, "createMethod":Ljava/lang/reflect/Method;
    const/4 v14, 0x0

    .line 4715
    .local v14, "setPositiveButtonMethod":Ljava/lang/reflect/Method;
    const/4 v13, 0x0

    .line 4718
    .local v13, "setNegativeButtonMethod":Ljava/lang/reflect/Method;
    const/16 v16, 0x0

    .line 4719
    .local v16, "strCtor":Ljava/lang/reflect/Constructor;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v5, v0, [Ljava/lang/Class;

    const/16 v17, 0x0

    const-class v18, Landroid/content/Context;

    aput-object v18, v5, v17

    .line 4720
    .local v5, "ctorArgs1":[Ljava/lang/Class;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v11, v0, [Ljava/lang/Class;

    const/16 v17, 0x0

    const-class v18, Landroid/view/View;

    aput-object v18, v11, v17

    .line 4721
    .local v11, "parm1":[Ljava/lang/Class;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v12, v0, [Ljava/lang/Class;

    const/16 v17, 0x0

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v18, v12, v17

    const/16 v17, 0x1

    const-class v18, Landroid/content/DialogInterface$OnClickListener;

    aput-object v18, v12, v17

    .line 4723
    .local v12, "parm2":[Ljava/lang/Class;
    const/4 v2, 0x0

    .line 4724
    .local v2, "builder":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 4726
    :try_start_1
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v16

    .line 4727
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p1, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4728
    const-string v17, "setView"

    check-cast v11, [Ljava/lang/Class;

    .end local v11    # "parm1":[Ljava/lang/Class;
    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 4730
    const-string v18, "setPositiveButton"

    move-object v0, v12

    check-cast v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 4732
    const-string v17, "setNegativeButton"

    check-cast v12, [Ljava/lang/Class;

    .end local v12    # "parm2":[Ljava/lang/Class;
    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 4736
    const-string v18, "create"

    const/16 v17, 0x0

    check-cast v17, [Ljava/lang/Class;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v4

    .line 4757
    .end local v2    # "builder":Ljava/lang/Object;
    :cond_0
    :goto_1
    const/4 v6, 0x0

    .line 4758
    .local v6, "dialog":Landroid/app/Dialog;
    if-eqz v15, :cond_1

    .line 4759
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v8, v0, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object p2, v8, v17

    .line 4760
    .local v8, "mParamObjs1":[Ljava/lang/Object;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v9, v0, [Ljava/lang/Object;

    const/16 v17, 0x0

    const v18, 0x2040145

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v9, v17

    const/16 v17, 0x1

    aput-object p0, v9, v17

    .line 4761
    .local v9, "mParamObjs2":[Ljava/lang/Object;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v10, v0, [Ljava/lang/Object;

    const/16 v17, 0x0

    const/high16 v18, 0x1040000

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v10, v17

    const/16 v17, 0x1

    aput-object p0, v10, v17

    .line 4764
    .local v10, "mParamObjs3":[Ljava/lang/Object;
    :try_start_2
    invoke-virtual {v15, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4768
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Landroid/app/Dialog;

    move-object v6, v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_8

    .line 4780
    .end local v8    # "mParamObjs1":[Ljava/lang/Object;
    .end local v9    # "mParamObjs2":[Ljava/lang/Object;
    .end local v10    # "mParamObjs3":[Ljava/lang/Object;
    :cond_1
    :goto_2
    return-object v6

    .line 4708
    .end local v4    # "createMethod":Ljava/lang/reflect/Method;
    .end local v5    # "ctorArgs1":[Ljava/lang/Class;
    .end local v6    # "dialog":Landroid/app/Dialog;
    .end local v13    # "setNegativeButtonMethod":Ljava/lang/reflect/Method;
    .end local v14    # "setPositiveButtonMethod":Ljava/lang/reflect/Method;
    .end local v15    # "setViewMethod":Ljava/lang/reflect/Method;
    .end local v16    # "strCtor":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v7

    .line 4710
    .local v7, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v7}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 4738
    .end local v7    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v4    # "createMethod":Ljava/lang/reflect/Method;
    .restart local v5    # "ctorArgs1":[Ljava/lang/Class;
    .restart local v13    # "setNegativeButtonMethod":Ljava/lang/reflect/Method;
    .restart local v14    # "setPositiveButtonMethod":Ljava/lang/reflect/Method;
    .restart local v15    # "setViewMethod":Ljava/lang/reflect/Method;
    .restart local v16    # "strCtor":Ljava/lang/reflect/Constructor;
    :catch_1
    move-exception v7

    .line 4740
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v7}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 4741
    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v7

    .line 4743
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 4744
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v7

    .line 4746
    .local v7, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v7}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 4747
    .end local v7    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v7

    .line 4749
    .local v7, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 4750
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v7

    .line 4752
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 4769
    .end local v7    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v6    # "dialog":Landroid/app/Dialog;
    .restart local v8    # "mParamObjs1":[Ljava/lang/Object;
    .restart local v9    # "mParamObjs2":[Ljava/lang/Object;
    .restart local v10    # "mParamObjs3":[Ljava/lang/Object;
    :catch_6
    move-exception v7

    .line 4771
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 4772
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_7
    move-exception v7

    .line 4774
    .local v7, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 4775
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    :catch_8
    move-exception v7

    .line 4777
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2
.end method

.method private fnInitSeekBar(Landroid/widget/SeekBar;I)V
    .locals 4
    .param p1, "seekbar"    # Landroid/widget/SeekBar;
    .param p2, "displayMode"    # I

    .prologue
    const/4 v3, 0x1

    .line 4264
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mHtcSeekBar_setDisplayMode:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 4265
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mHtcSeekBar_setDisplayMode:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4266
    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4268
    .local v1, "mParamObjs1":[Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mHtcSeekBar_setDisplayMode:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4280
    .end local v1    # "mParamObjs1":[Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 4269
    .restart local v1    # "mParamObjs1":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 4271
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 4272
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 4274
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 4275
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 4277
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private fnPreinitRefec()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 4055
    :try_start_0
    const-string v6, "com.htc.widget.HtcImageButton"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/view/VolumePanel;->mClsHtcImageButton:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4061
    :goto_0
    new-array v3, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v9

    .line 4062
    .local v3, "parms":[Ljava/lang/Class;
    iget-object v6, p0, Lcom/htc/view/VolumePanel;->mClsHtcImageButton:Ljava/lang/Class;

    if-eqz v6, :cond_0

    .line 4064
    :try_start_1
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mClsHtcImageButton:Ljava/lang/Class;

    const-string v8, "setIconResource"

    move-object v0, v3

    check-cast v0, [Ljava/lang/Class;

    move-object v6, v0

    invoke-virtual {v7, v8, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/view/VolumePanel;->mHtcImageButton_setIconResource:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4073
    :cond_0
    :goto_1
    :try_start_2
    const-string v6, "com.htc.widget.HtcListItemColorIcon"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/view/VolumePanel;->mClsHtcListItemColorIcon:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4080
    :goto_2
    iget-object v6, p0, Lcom/htc/view/VolumePanel;->mClsHtcListItemColorIcon:Ljava/lang/Class;

    if-eqz v6, :cond_1

    .line 4082
    :try_start_3
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mClsHtcListItemColorIcon:Ljava/lang/Class;

    const-string v8, "setColorIconImageResource"

    move-object v0, v3

    check-cast v0, [Ljava/lang/Class;

    move-object v6, v0

    invoke-virtual {v7, v8, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/view/VolumePanel;->mHtcListItemColorIcon_setColorIconImageResource:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    .line 4090
    :cond_1
    :goto_3
    new-array v5, v10, [Ljava/lang/Class;

    const-class v6, Landroid/widget/ImageView$ScaleType;

    aput-object v6, v5, v9

    .line 4092
    .local v5, "parms_setScaleType":[Ljava/lang/Class;
    iget-object v6, p0, Lcom/htc/view/VolumePanel;->mClsHtcListItemColorIcon:Ljava/lang/Class;

    if-eqz v6, :cond_2

    .line 4094
    :try_start_4
    iget-object v6, p0, Lcom/htc/view/VolumePanel;->mClsHtcListItemColorIcon:Ljava/lang/Class;

    const-string v7, "setScaleType"

    check-cast v5, [Ljava/lang/Class;

    .end local v5    # "parms_setScaleType":[Ljava/lang/Class;
    invoke-virtual {v6, v7, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/view/VolumePanel;->mHtcListItemColorIcon_setScaleType:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4

    .line 4103
    :cond_2
    :goto_4
    :try_start_5
    const-string v6, "com.htc.widget.HtcSeekBar"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/view/VolumePanel;->mClsHtcSeekBar:Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    .line 4110
    :goto_5
    iget-object v6, p0, Lcom/htc/view/VolumePanel;->mClsHtcSeekBar:Ljava/lang/Class;

    if-eqz v6, :cond_3

    .line 4112
    :try_start_6
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mClsHtcSeekBar:Ljava/lang/Class;

    const-string v8, "setDisplayMode"

    move-object v0, v3

    check-cast v0, [Ljava/lang/Class;

    move-object v6, v0

    invoke-virtual {v7, v8, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/view/VolumePanel;->mHtcSeekBar_setDisplayMode:Ljava/lang/reflect/Method;
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_6

    .line 4119
    :cond_3
    :goto_6
    const/4 v1, 0x0

    .line 4121
    .local v1, "clsHtcListItem1LineCenteredText":Ljava/lang/Class;
    :try_start_7
    const-string v6, "com.htc.widget.HtcListItemSingleText"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v1

    .line 4128
    :goto_7
    if-eqz v1, :cond_4

    .line 4130
    :try_start_8
    const-string v6, "setText"

    check-cast v3, [Ljava/lang/Class;

    .end local v3    # "parms":[Ljava/lang/Class;
    invoke-virtual {v1, v6, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/view/VolumePanel;->mHtcListViewText_Text:Ljava/lang/reflect/Method;
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_8

    .line 4140
    :cond_4
    :goto_8
    :try_start_9
    const-string v6, "com.htc.widget.HtcListItem"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/view/VolumePanel;->mClsHtcListItem:Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_9

    .line 4145
    :goto_9
    new-array v4, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v9

    .line 4147
    .local v4, "parms_setLastComponentAlign":[Ljava/lang/Class;
    iget-object v6, p0, Lcom/htc/view/VolumePanel;->mClsHtcListItem:Ljava/lang/Class;

    if-eqz v6, :cond_5

    .line 4149
    :try_start_a
    iget-object v6, p0, Lcom/htc/view/VolumePanel;->mClsHtcListItem:Ljava/lang/Class;

    const-string v7, "setLastComponentAlign"

    check-cast v4, [Ljava/lang/Class;

    .end local v4    # "parms_setLastComponentAlign":[Ljava/lang/Class;
    invoke-virtual {v6, v7, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/view/VolumePanel;->mHtcListItem_setLastComponentAlign:Ljava/lang/reflect/Method;
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_a} :catch_a

    .line 4158
    :cond_5
    :goto_a
    return-void

    .line 4056
    .end local v1    # "clsHtcListItem1LineCenteredText":Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 4058
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 4066
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v3    # "parms":[Ljava/lang/Class;
    :catch_1
    move-exception v2

    .line 4068
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_1

    .line 4074
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 4076
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 4084
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v2

    .line 4086
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_3

    .line 4096
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v2

    .line 4098
    .restart local v2    # "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_4

    .line 4104
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_5
    move-exception v2

    .line 4106
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_5

    .line 4114
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_6
    move-exception v2

    .line 4116
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_6

    .line 4122
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v1    # "clsHtcListItem1LineCenteredText":Ljava/lang/Class;
    :catch_7
    move-exception v2

    .line 4124
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 4132
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .end local v3    # "parms":[Ljava/lang/Class;
    :catch_8
    move-exception v2

    .line 4134
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_8

    .line 4141
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_9
    move-exception v2

    .line 4143
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_9

    .line 4151
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_a
    move-exception v2

    .line 4153
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_a
.end method

.method private fnSetButtonIcon(Landroid/view/View;I)V
    .locals 1
    .param p1, "btn"    # Landroid/view/View;
    .param p2, "resId"    # I

    .prologue
    .line 4206
    if-nez p1, :cond_1

    .line 4217
    :cond_0
    :goto_0
    return-void

    .line 4208
    :cond_1
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mClsHtcImageButton:Ljava/lang/Class;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mClsHtcImageButton:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4209
    invoke-direct {p0, p1, p2}, Lcom/htc/view/VolumePanel;->fnSetImageButtonIcon(Landroid/view/View;I)V

    goto :goto_0

    .line 4212
    :cond_2
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mClsHtcListItemColorIcon:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mClsHtcListItemColorIcon:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4213
    invoke-direct {p0, p1, p2}, Lcom/htc/view/VolumePanel;->fnSetListButtonIcon(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private fnSetImageButtonIcon(Landroid/view/View;I)V
    .locals 4
    .param p1, "btn"    # Landroid/view/View;
    .param p2, "resId"    # I

    .prologue
    const/4 v3, 0x1

    .line 4241
    if-nez p1, :cond_1

    .line 4259
    :cond_0
    :goto_0
    return-void

    .line 4243
    :cond_1
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mHtcImageButton_setIconResource:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 4244
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mHtcImageButton_setIconResource:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4245
    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4247
    .local v1, "mParamObjs1":[Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mHtcImageButton_setIconResource:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 4248
    :catch_0
    move-exception v0

    .line 4250
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 4251
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 4253
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 4254
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 4256
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private fnSetListButtonIcon(Landroid/view/View;I)V
    .locals 4
    .param p1, "btn"    # Landroid/view/View;
    .param p2, "resId"    # I

    .prologue
    const/4 v3, 0x1

    .line 4221
    if-nez p1, :cond_1

    .line 4239
    :cond_0
    :goto_0
    return-void

    .line 4223
    :cond_1
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mHtcListItemColorIcon_setColorIconImageResource:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 4224
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mHtcListItemColorIcon_setColorIconImageResource:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4225
    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4227
    .local v1, "mParamObjs1":[Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mHtcListItemColorIcon_setColorIconImageResource:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 4228
    :catch_0
    move-exception v0

    .line 4230
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 4231
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 4233
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 4234
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 4236
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private fnSetListLastComponentAlign(Landroid/view/View;Z)V
    .locals 4
    .param p1, "obj"    # Landroid/view/View;
    .param p2, "align"    # Z

    .prologue
    const/4 v3, 0x1

    .line 4160
    if-nez p1, :cond_1

    .line 4178
    :cond_0
    :goto_0
    return-void

    .line 4162
    :cond_1
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mHtcListItem_setLastComponentAlign:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 4163
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mHtcListItem_setLastComponentAlign:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4164
    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4166
    .local v1, "mParamObjs1":[Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mHtcListItem_setLastComponentAlign:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 4167
    :catch_0
    move-exception v0

    .line 4169
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 4170
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 4172
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 4173
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 4175
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private fnSetListText(Landroid/view/View;I)V
    .locals 4
    .param p1, "listViewText"    # Landroid/view/View;
    .param p2, "resid"    # I

    .prologue
    const/4 v3, 0x1

    .line 4284
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mHtcListViewText_Text:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 4285
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mHtcListViewText_Text:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4286
    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4288
    .local v1, "mParamObjs1":[Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mHtcListViewText_Text:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4300
    .end local v1    # "mParamObjs1":[Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 4289
    .restart local v1    # "mParamObjs1":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 4291
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 4292
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 4294
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 4295
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 4297
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private fnSetScaleType(Landroid/view/View;Landroid/widget/ImageView$ScaleType;)V
    .locals 4
    .param p1, "btn"    # Landroid/view/View;
    .param p2, "type"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    const/4 v3, 0x1

    .line 4181
    if-nez p1, :cond_1

    .line 4203
    :cond_0
    :goto_0
    return-void

    .line 4184
    :cond_1
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mClsHtcListItemColorIcon:Ljava/lang/Class;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mClsHtcListItemColorIcon:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mHtcListItemColorIcon_setScaleType:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 4186
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mHtcListItemColorIcon_setScaleType:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4187
    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 4189
    .local v1, "mParamObjs1":[Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mHtcListItemColorIcon_setScaleType:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 4190
    :catch_0
    move-exception v0

    .line 4192
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 4193
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 4195
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 4196
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 4198
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private forceTimeout()V
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 3785
    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 3786
    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 3787
    return-void
.end method

.method private getDNDStateInBackgroud()V
    .locals 2

    .prologue
    .line 4941
    new-instance v0, Lcom/htc/view/VolumePanel$13;

    invoke-direct {v0, p0}, Lcom/htc/view/VolumePanel$13;-><init>(Lcom/htc/view/VolumePanel;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/htc/view/VolumePanel$13;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4966
    return-void
.end method

.method private getGenerator(I)Lcom/htc/view/VolumePanel$ISoundPlay;
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 3461
    monitor-enter p0

    .line 3462
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/view/VolumePanel;->mExpand:Z

    if-nez v0, :cond_0

    .line 3463
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    aget-object v0, v0, p1

    monitor-exit p0

    .line 3465
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mRingtonePlays:[Lcom/htc/view/VolumePanel$HtcRingtonePlay;

    aget-object v0, v0, p1

    monitor-exit p0

    goto :goto_0

    .line 3467
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getHtcSenseRes(Ljava/lang/String;I)I
    .locals 5
    .param p1, "htcResName"    # Ljava/lang/String;
    .param p2, "defResId"    # I

    .prologue
    .line 1642
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 1653
    .end local p2    # "defResId":I
    :cond_0
    :goto_0
    return p2

    .line 1644
    .restart local p2    # "defResId":I
    :cond_1
    :try_start_0
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v2, :cond_2

    .line 1645
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>getHtcSenseRes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    :cond_2
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    const-string v4, "com.htc.framework"

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1647
    .local v1, "resId":I
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v2, :cond_3

    .line 1648
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<getHtcSenseRes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1650
    :cond_3
    if-eqz v1, :cond_0

    move p2, v1

    goto :goto_0

    .line 1651
    .end local v1    # "resId":I
    :catch_0
    move-exception v0

    .line 1652
    .local v0, "npeException":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private getHtcThemeId(Landroid/content/Context;I)I
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeCategory"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 5008
    const-string v5, "getHtcThemeId"

    .line 5009
    .local v5, "methodName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 5010
    .local v3, "htcWrapConfiguration":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v7, v11, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v10

    .line 5011
    .local v7, "parmType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v6, v11, [Ljava/lang/Object;

    aput-object p1, v6, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v10

    .line 5012
    .local v6, "parmInput":[Ljava/lang/Object;
    const-string v0, "com.htc.configuration.HtcWrapConfiguration"

    .line 5013
    .local v0, "className":Ljava/lang/String;
    const/4 v4, 0x0

    .line 5015
    .local v4, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 5016
    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 5021
    :goto_0
    const/4 v2, 0x0

    .line 5023
    .local v2, "htcThemeId":I
    if-eqz v4, :cond_1

    .line 5024
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v4, v8, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 5032
    :goto_1
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_0

    sget-boolean v8, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v8, :cond_0

    .line 5033
    const-string v8, "VolumePanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applyThemeSettings getHtcThemeId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5035
    :cond_0
    return v2

    .line 5017
    .end local v2    # "htcThemeId":I
    :catch_0
    move-exception v1

    .line 5019
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 5026
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "htcThemeId":I
    :cond_1
    :try_start_2
    const-string v8, "VolumePanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "method : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 5028
    :catch_1
    move-exception v1

    .line 5030
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getLastAudibleStreamVolume(I)I
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 1596
    const/16 v0, -0x64

    if-eq p1, v0, :cond_0

    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 1598
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 1604
    :goto_0
    return v0

    .line 1599
    :cond_1
    if-ltz p1, :cond_2

    .line 1600
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0

    .line 1603
    :cond_2
    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastAudibleStreamVolume - invalid  streamType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getNotificationUseRingVolumeOrThrow(Landroid/media/AudioManager;)Z
    .locals 7
    .param p0, "audioManger"    # Landroid/media/AudioManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4869
    const-class v0, Landroid/media/AudioManager;

    .line 4870
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    .line 4872
    .local v2, "isUseRingVolumeForNotify":I
    :try_start_0
    const-string v5, "getNotificationUseRingVolume"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 4878
    sget-boolean v3, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNotificationUseRingVolume = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4879
    :cond_0
    if-eqz v2, :cond_1

    const/4 v3, 0x1

    :goto_0
    return v3

    .line 4874
    :catch_0
    move-exception v1

    .line 4875
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4876
    throw v1

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    move v3, v4

    .line 4879
    goto :goto_0
.end method

.method private getOrCreateSoundPool(I)Lcom/htc/view/VolumePanel$ISoundPlay;
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 3353
    const/16 v2, -0x64

    if-ne p1, v2, :cond_0

    .line 3357
    iget-boolean v2, p0, Lcom/htc/view/VolumePanel;->mPlayMasterStreamTones:Z

    if-eqz v2, :cond_2

    .line 3358
    const/4 p1, 0x1

    .line 3363
    :cond_0
    monitor-enter p0

    .line 3364
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->getGenerator(I)Lcom/htc/view/VolumePanel$ISoundPlay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 3366
    .local v1, "soundPlay":Lcom/htc/view/VolumePanel$ISoundPlay;
    if-nez v1, :cond_1

    .line 3367
    :try_start_1
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->ceateToneGeneratorByMode(I)Lcom/htc/view/VolumePanel$ISoundPlay;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 3373
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit p0

    .end local v1    # "soundPlay":Lcom/htc/view/VolumePanel$ISoundPlay;
    :goto_1
    return-object v1

    .line 3360
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 3369
    .restart local v1    # "soundPlay":Lcom/htc/view/VolumePanel$ISoundPlay;
    :catch_0
    move-exception v0

    .line 3370
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3374
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "soundPlay":Lcom/htc/view/VolumePanel$ISoundPlay;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private getSkinPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 948
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 950
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 951
    .local v1, "config":Landroid/content/res/Configuration;
    iget-object v3, v1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    .end local v1    # "config":Landroid/content/res/Configuration;
    :goto_0
    return-object v3

    .line 952
    :catch_0
    move-exception v2

    .line 953
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 955
    const-string v3, ""

    goto :goto_0
.end method

.method private getStreamControlForStream(I)Lcom/htc/view/VolumePanel$StreamControl;
    .locals 4
    .param p1, "streamType"    # I

    .prologue
    .line 4787
    iget-boolean v3, p0, Lcom/htc/view/VolumePanel;->mExpand:Z

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mStreamControlsEx:Ljava/util/HashMap;

    .line 4788
    .local v2, "streamControls":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/view/VolumePanel$StreamControl;>;"
    :goto_0
    const/4 v1, 0x0

    .line 4789
    .local v1, "sc":Lcom/htc/view/VolumePanel$StreamControl;
    monitor-enter p0

    .line 4790
    if-nez v2, :cond_1

    .line 4791
    const/4 v3, 0x0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4794
    :goto_1
    return-object v3

    .line 4787
    .end local v1    # "sc":Lcom/htc/view/VolumePanel$StreamControl;
    .end local v2    # "streamControls":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/view/VolumePanel$StreamControl;>;"
    :cond_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    goto :goto_0

    .line 4792
    .restart local v1    # "sc":Lcom/htc/view/VolumePanel$StreamControl;
    .restart local v2    # "streamControls":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/view/VolumePanel$StreamControl;>;"
    :cond_1
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    move-object v1, v0

    .line 4793
    monitor-exit p0

    move-object v3, v1

    .line 4794
    goto :goto_1

    .line 4793
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private getStreamMaxVolume(I)I
    .locals 4
    .param p1, "streamType"    # I

    .prologue
    .line 1581
    const/4 v0, 0x0

    .line 1582
    .local v0, "max":I
    const/16 v1, -0x64

    if-ne p1, v1, :cond_1

    .line 1583
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMasterMaxVolume()I

    move-result v0

    .line 1589
    :goto_0
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v1, :cond_0

    .line 1590
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStreamMaxVolume ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    :cond_0
    return v0

    .line 1584
    :cond_1
    const/16 v1, -0xc8

    if-ne p1, v1, :cond_2

    .line 1585
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->getRemoteStreamMaxVolume()I

    move-result v0

    goto :goto_0

    .line 1587
    :cond_2
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private getStreamVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 1622
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 1623
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterVolume()I

    move-result v0

    .line 1627
    :goto_0
    return v0

    .line 1624
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 1625
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    goto :goto_0

    .line 1627
    :cond_1
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private getThemeCategory()I
    .locals 9

    .prologue
    .line 4984
    const-string v3, "BASELINE"

    .line 4985
    .local v3, "fieldName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4986
    .local v4, "htcWrapConfiguration":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "com.htc.configuration.HtcWrapConfiguration"

    .line 4987
    .local v0, "className":Ljava/lang/String;
    const/4 v5, 0x0

    .line 4989
    .local v5, "ret":I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 4995
    :goto_0
    :try_start_1
    invoke-virtual {v4, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 4996
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 5001
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :goto_1
    sget-boolean v6, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v6, :cond_0

    sget-boolean v6, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v6, :cond_0

    .line 5002
    const-string v6, "VolumePanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applyThemeSettings BASELINE : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5004
    :cond_0
    return v5

    .line 4990
    :catch_0
    move-exception v1

    .line 4992
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 4997
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 4999
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private initACCFlags()V
    .locals 22

    .prologue
    .line 1060
    const-string v4, "Android_Multimedia"

    .line 1061
    .local v4, "eADSReaderNameMM":Ljava/lang/String;
    const-string v6, "Volume_Controller"

    .line 1062
    .local v6, "eADSReaderNameVolume":Ljava/lang/String;
    const-string v5, "System"

    .line 1063
    .local v5, "eADSReaderNameSystem":Ljava/lang/String;
    const-string v8, "support_outdoor_mode"

    .line 1064
    .local v8, "outdoorModeKeyName":Ljava/lang/String;
    const-string v18, "support_toogle_use_ring_volume_for_notify"

    .line 1065
    .local v18, "toggleUseRingforNoKeyName":Ljava/lang/String;
    const-string v17, "sense_version"

    .line 1066
    .local v17, "senseVersionKeyName":Ljava/lang/String;
    const-string v16, "5.0"

    .line 1067
    .local v16, "senseVersionDefault":Ljava/lang/String;
    const-string v13, "safe_volume_timeout"

    .line 1068
    .local v13, "safeVolumeTimeout":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1069
    .local v10, "readerNeedSIMReady":Z
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v7

    .line 1070
    .local v7, "manager":Lcom/htc/customization/HtcCustomizationManager;
    if-eqz v7, :cond_5

    .line 1071
    const-string v19, "Android_Multimedia"

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v7, v0, v1, v2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v9

    .line 1072
    .local v9, "readerMultiMedia":Lcom/htc/customization/HtcCustomizationReader;
    const-string v19, "Volume_Controller"

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v7, v0, v1, v2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v12

    .line 1073
    .local v12, "readerVolumeController":Lcom/htc/customization/HtcCustomizationReader;
    const-string v19, "System"

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v7, v0, v1, v2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v11

    .line 1074
    .local v11, "readerSystem":Lcom/htc/customization/HtcCustomizationReader;
    if-eqz v9, :cond_1

    .line 1075
    const-string v19, "support_outdoor_mode"

    sget-boolean v20, Lcom/htc/view/VolumePanel;->mSupportOutdoorMode:Z

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v9, v0, v1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v19

    sput-boolean v19, Lcom/htc/view/VolumePanel;->mSupportOutdoorMode:Z

    .line 1079
    :goto_0
    if-eqz v12, :cond_3

    .line 1080
    const-string v19, "support_toogle_use_ring_volume_for_notify"

    sget-boolean v20, Lcom/htc/view/VolumePanel;->mSupportToogleUseRingVolumeForNotify:Z

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v19

    sput-boolean v19, Lcom/htc/view/VolumePanel;->mSupportToogleUseRingVolumeForNotify:Z

    .line 1081
    const/4 v14, 0x3

    .line 1082
    .local v14, "safevolumeTimeoutDelaySecond":I
    const-string v19, "safe_volume_timeout"

    move-object/from16 v0, v19

    invoke-interface {v12, v0, v14}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v14

    .line 1083
    if-ltz v14, :cond_2

    .line 1084
    mul-int/lit16 v0, v14, 0x3e8

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/view/VolumePanel;->mSafeVolumeTimeoutDelay:I

    .line 1093
    .end local v14    # "safevolumeTimeoutDelaySecond":I
    :goto_1
    if-eqz v11, :cond_4

    .line 1094
    const-string v19, "sense_version"

    const-string v20, "5.0"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1096
    .local v15, "senseVersion":Ljava/lang/String;
    :try_start_0
    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    sput v19, Lcom/htc/view/VolumePanel;->mSenseVersion:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1103
    .end local v15    # "senseVersion":Ljava/lang/String;
    :goto_2
    sget-boolean v19, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v19, :cond_0

    sget-boolean v19, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v19, :cond_0

    .line 1104
    const-string v19, "VolumePanel"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ACC][Android_Multimedia]:support_outdoor_mode="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-boolean v21, Lcom/htc/view/VolumePanel;->mSupportOutdoorMode:Z

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    const-string v19, "VolumePanel"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ACC][Volume_Controller]:support_toogle_use_ring_volume_for_notify="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-boolean v21, Lcom/htc/view/VolumePanel;->mSupportToogleUseRingVolumeForNotify:Z

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    .end local v9    # "readerMultiMedia":Lcom/htc/customization/HtcCustomizationReader;
    .end local v11    # "readerSystem":Lcom/htc/customization/HtcCustomizationReader;
    .end local v12    # "readerVolumeController":Lcom/htc/customization/HtcCustomizationReader;
    :cond_0
    :goto_3
    return-void

    .line 1077
    .restart local v9    # "readerMultiMedia":Lcom/htc/customization/HtcCustomizationReader;
    .restart local v11    # "readerSystem":Lcom/htc/customization/HtcCustomizationReader;
    .restart local v12    # "readerVolumeController":Lcom/htc/customization/HtcCustomizationReader;
    :cond_1
    const-string v19, "VolumePanel"

    const-string v20, "[ACC]readerMultiMedia = null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1087
    .restart local v14    # "safevolumeTimeoutDelaySecond":I
    :cond_2
    const/16 v19, 0xbb8

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/view/VolumePanel;->mSafeVolumeTimeoutDelay:I

    .line 1088
    const-string v19, "VolumePanel"

    const-string v20, "[ACC]invlaid safe volume timeout configure, use default"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1091
    .end local v14    # "safevolumeTimeoutDelaySecond":I
    :cond_3
    const-string v19, "VolumePanel"

    const-string v20, "[ACC]readerVolumeController = null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1097
    .restart local v15    # "senseVersion":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1098
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    .line 1101
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v15    # "senseVersion":Ljava/lang/String;
    :cond_4
    const-string v19, "VolumePanel"

    const-string v20, "[ACC]readerSystem = null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1109
    .end local v9    # "readerMultiMedia":Lcom/htc/customization/HtcCustomizationReader;
    .end local v11    # "readerSystem":Lcom/htc/customization/HtcCustomizationReader;
    .end local v12    # "readerVolumeController":Lcom/htc/customization/HtcCustomizationReader;
    :cond_5
    const-string v19, "VolumePanel"

    const-string v20, "[ACC]HtcCustomizationManager.getInstance failed"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private initSenseCommonDimension(Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;
    .locals 8
    .param p1, "dm"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 1387
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1390
    .local v2, "res":Landroid/content/res/Resources;
    const/high16 v5, 0x2050000

    :try_start_0
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    .line 1391
    const v5, 0x2050001

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    .line 1392
    const v5, 0x2050002

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    .line 1393
    const v5, 0x2050003

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I

    .line 1394
    const v5, 0x205000c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m5:I

    .line 1395
    const v5, 0x205000d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m6:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1411
    :goto_0
    sget-boolean v5, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_0

    .line 1412
    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "m1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,m2="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " m3="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " m4="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " m5="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m5:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " m6="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m6:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    :cond_0
    iget v5, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/htc/view/VolumePanel;->mHtcUiGuildlineSepareMarginTop:I

    .line 1415
    iget v5, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/htc/view/VolumePanel;->mHtcUiGuildlineSepareMarginBottom:I

    .line 1417
    const/4 v4, 0x0

    .line 1418
    .local v4, "screenWidth":I
    const/4 v3, 0x0

    .line 1419
    .local v3, "screenHeight":I
    const/4 v0, 0x0

    .line 1424
    .local v0, "FootBarHeight":I
    iget v5, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v5, v6, :cond_3

    iget v5, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int v4, v5, v0

    .line 1426
    :goto_1
    iget v5, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v5, v6, :cond_4

    iget v3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1429
    :goto_2
    sget-boolean v5, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v5, :cond_1

    .line 1430
    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dm.widthPixels="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,dm.heightPixels="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "screenWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,screenHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :cond_1
    div-int/lit8 v5, v4, 0x6

    iput v5, p0, Lcom/htc/view/VolumePanel;->mIconWidth:I

    .line 1439
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/htc/view/VolumePanel;->fnGetHtcListItemHeight(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/htc/view/VolumePanel;->mIconWidthDilogMode60:I

    .line 1440
    iget v5, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    iget v6, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/htc/view/VolumePanel;->mPanelWidth:I

    .line 1442
    iput v4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1443
    iput v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1444
    sget-boolean v5, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v5, :cond_2

    .line 1446
    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "panelWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/view/VolumePanel;->mPanelWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIconWidths="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/view/VolumePanel;->mIconWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :cond_2
    return-object p1

    .line 1396
    .end local v0    # "FootBarHeight":I
    .end local v3    # "screenHeight":I
    .end local v4    # "screenWidth":I
    :catch_0
    move-exception v1

    .line 1398
    .local v1, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v5, "VolumePanel"

    const-string v6, "##################getDimension(com.htc.R.dimen.margin_l) fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    const/16 v5, 0x16

    iput v5, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    .line 1406
    const/16 v5, 0x10

    iput v5, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    .line 1407
    const/16 v5, 0xa

    iput v5, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    .line 1408
    const/16 v5, 0x9

    iput v5, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I

    goto/16 :goto_0

    .line 1424
    .end local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    .restart local v0    # "FootBarHeight":I
    .restart local v3    # "screenHeight":I
    .restart local v4    # "screenWidth":I
    :cond_3
    iget v4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto/16 :goto_1

    .line 1426
    :cond_4
    iget v5, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int v3, v5, v0

    goto/16 :goto_2
.end method

.method private initSenseVolumePanelLayout()V
    .locals 7

    .prologue
    const v6, 0x2080036

    const/4 v5, 0x0

    .line 1455
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1456
    .local v1, "param":Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/htc/view/VolumePanel;->mPanelWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1457
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1460
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1461
    iget v2, p0, Lcom/htc/view/VolumePanel;->mIconWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1462
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1463
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1464
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1466
    sget-boolean v2, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_BG_DEBUG:Z

    if-nez v2, :cond_1

    .line 1468
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    sget v3, Lcom/htc/view/VolumePanel;->mIdBackgroundDark:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1469
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v2, :cond_0

    .line 1470
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "padding left="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "padding top="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "padding right="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "padding bottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1489
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1490
    .local v0, "m_param":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, p0, Lcom/htc/view/VolumePanel;->mHtcUiGuildlineSepareMarginTop:I

    iget v3, p0, Lcom/htc/view/VolumePanel;->mHtcUiGuildlineSepareMarginBottom:I

    invoke-virtual {v0, v5, v2, v5, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1491
    sget v2, Lcom/htc/view/VolumePanel;->mSenseVersion:F

    const/high16 v3, 0x40c00000    # 6.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 1493
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1498
    :goto_1
    return-void

    .line 1477
    .end local v0    # "m_param":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1478
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0

    .line 1496
    .restart local v0    # "m_param":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private initSimulateControl()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 4577
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initSimulateControl mSimulateMuteControls = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mSimulateMuteControls:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4578
    :cond_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSimulateMuteControls:Ljava/util/HashMap;

    if-nez v2, :cond_7

    .line 4579
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/htc/view/VolumePanel;->mSimulateMuteControls:Ljava/util/HashMap;

    .line 4580
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_1

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initSimulateControl mSimulateMuteControls = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mSimulateMuteControls:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4581
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_7

    .line 4582
    new-instance v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;

    invoke-direct {v1, p0, v6}, Lcom/htc/view/VolumePanel$SimulateMuteControl;-><init>(Lcom/htc/view/VolumePanel;Lcom/htc/view/VolumePanel$1;)V

    .line 4583
    .local v1, "smc":Lcom/htc/view/VolumePanel$SimulateMuteControl;
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_2

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initSimulateControl smc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4584
    :cond_2
    iput v7, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMute:I

    .line 4585
    iput v7, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMuteForHeadset:I

    .line 4586
    iput-boolean v8, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->userSetNotificationsMute:Z

    .line 4587
    iput-boolean v8, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->userSetNotificationsMuteForHeadset:Z

    .line 4588
    iput-object v6, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->keyMuteByUser:Ljava/lang/String;

    .line 4589
    iput-object v6, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->keyMuteByUserForHeadset:Ljava/lang/String;

    .line 4591
    if-nez v0, :cond_5

    .line 4592
    const/4 v2, 0x4

    iput v2, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->streamType:I

    .line 4593
    const/16 v2, 0xf

    iput v2, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->msg:I

    .line 4594
    const-string v2, "volume_alarm_before_mute"

    iput-object v2, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->keyBeforeMute:Ljava/lang/String;

    .line 4595
    const-string v2, "volume_alarm_before_mute_for_headset"

    iput-object v2, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->keyBeforeMuteForHeadset:Ljava/lang/String;

    .line 4618
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSimulateMuteControls:Ljava/util/HashMap;

    iget v3, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->streamType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4619
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_4

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initSimulateControl mSimulateMuteControls = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mSimulateMuteControls:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4581
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4597
    :cond_5
    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 4598
    const/4 v2, 0x5

    iput v2, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->streamType:I

    .line 4599
    const/16 v2, 0x10

    iput v2, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->msg:I

    .line 4600
    const-string v2, "volume_notification_before_mute"

    iput-object v2, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->keyBeforeMute:Ljava/lang/String;

    .line 4601
    const-string v2, "volume_notification_before_mute_for_headset"

    iput-object v2, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->keyBeforeMuteForHeadset:Ljava/lang/String;

    .line 4602
    const-string v2, "volume_notification_mute_by_user"

    iput-object v2, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->keyMuteByUser:Ljava/lang/String;

    .line 4603
    const-string v2, "volume_notification_mute_by_user_for_headset"

    iput-object v2, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->keyMuteByUserForHeadset:Ljava/lang/String;

    goto :goto_1

    .line 4605
    :cond_6
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 4606
    iput v5, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->streamType:I

    .line 4607
    const/16 v2, 0x11

    iput v2, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->msg:I

    .line 4608
    const-string v2, "volume_music_before_mute"

    iput-object v2, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->keyBeforeMute:Ljava/lang/String;

    .line 4609
    const-string v2, "volume_music_before_mute_for_headset"

    iput-object v2, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->keyBeforeMuteForHeadset:Ljava/lang/String;

    goto :goto_1

    .line 4622
    .end local v0    # "i":I
    .end local v1    # "smc":Lcom/htc/view/VolumePanel$SimulateMuteControl;
    :cond_7
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_8

    const-string v2, "VolumePanel"

    const-string v3, "--initSimulateControl"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4623
    :cond_8
    return-void
.end method

.method private isExpanded()Z
    .locals 1

    .prologue
    .line 2296
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInAllCapsLocale(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4852
    const/4 v2, 0x0

    .line 4854
    .local v2, "isInAllCapsLocale":Z
    :try_start_0
    const-string v4, "com.htc.util.res.HtcResUtil"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4855
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 4856
    .local v3, "obj":Ljava/lang/Object;
    const-string v4, "isInAllCapsLocale"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 4861
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "obj":Ljava/lang/Object;
    :goto_0
    return v2

    .line 4858
    :catch_0
    move-exception v1

    .line 4859
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isMuted(I)Z
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 1571
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 1572
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v0

    .line 1576
    :goto_0
    return v0

    .line 1573
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_2

    .line 1574
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1576
    :cond_2
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    goto :goto_0
.end method

.method private isStreamAffectedByRingerMode(I)Z
    .locals 4
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x0

    .line 1609
    const/16 v1, -0x64

    if-eq p1, v1, :cond_0

    const/16 v1, -0xc8

    if-ne p1, v1, :cond_1

    .line 1617
    :cond_0
    :goto_0
    return v0

    .line 1612
    :cond_1
    if-ltz p1, :cond_2

    .line 1613
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    goto :goto_0

    .line 1616
    :cond_2
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isStreamAffectedByRingerMode - invalid  streamType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private listenRingerModeAndConfigurationChange()V
    .locals 5

    .prologue
    .line 1501
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1502
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1503
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1505
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/htc/view/VolumePanel$6;

    invoke-direct {v2, p0}, Lcom/htc/view/VolumePanel$6;-><init>(Lcom/htc/view/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1523
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "com.htc.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1524
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "com.htc.intent.category.FONTSCALE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1525
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/htc/view/VolumePanel$7;

    invoke-direct {v2, p0}, Lcom/htc/view/VolumePanel$7;-><init>(Lcom/htc/view/VolumePanel;)V

    const-string v3, "com.htc.permission.APP_DEFAULT"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1534
    return-void
.end method

.method private listenToVolumeChange()V
    .locals 3

    .prologue
    .line 1556
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "VolumePanel"

    const-string v2, "listenToVolumeChange"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1558
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1559
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1560
    return-void
.end method

.method private mirroIcon(Lcom/htc/view/VolumePanel$StreamControl;I)V
    .locals 3
    .param p1, "sc"    # Lcom/htc/view/VolumePanel$StreamControl;
    .param p2, "streamType"    # I

    .prologue
    .line 2094
    if-nez p1, :cond_1

    .line 2095
    const-string v1, "VolumePanel"

    const-string v2, "mirroIcon : StreamControl invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    :cond_0
    :goto_0
    return-void

    .line 2098
    :cond_1
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    .line 2099
    .local v0, "aliasSc":Lcom/htc/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 2100
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_2

    .line 2101
    const-string v1, "VolumePanel"

    const-string v2, "Copy from alias control.(icon)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    :cond_2
    iget v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I

    if-eqz v1, :cond_3

    .line 2106
    iget v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I

    iput v1, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I

    .line 2108
    :cond_3
    iget v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    if-eqz v1, :cond_4

    .line 2109
    iget v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    iput v1, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 2111
    :cond_4
    iget v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->iconVibrateRes:I

    if-eqz v1, :cond_5

    .line 2113
    iget v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->iconVibrateRes:I

    iput v1, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconVibrateRes:I

    .line 2115
    :cond_5
    iget v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->iconOutDoorRes:I

    if-eqz v1, :cond_6

    .line 2116
    iget v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->iconOutDoorRes:I

    iput v1, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconOutDoorRes:I

    .line 2118
    :cond_6
    iget-object v1, p1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    iget v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I

    invoke-direct {p0, v1, v2}, Lcom/htc/view/VolumePanel;->fnSetButtonIcon(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private mirroTitle(Lcom/htc/view/VolumePanel$StreamControl;I)V
    .locals 4
    .param p1, "sc"    # Lcom/htc/view/VolumePanel$StreamControl;
    .param p2, "streamType"    # I

    .prologue
    .line 2075
    if-nez p1, :cond_1

    .line 2076
    const-string v2, "VolumePanel"

    const-string v3, "mirroTitle : StreamControl invalid."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    :cond_0
    :goto_0
    return-void

    .line 2080
    :cond_1
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    .line 2081
    .local v0, "aliasSc":Lcom/htc/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 2082
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_2

    .line 2083
    const-string v2, "VolumePanel"

    const-string v3, "Copy from alias control."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    :cond_2
    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->desTextRes:I

    iput v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->desTextRes:I

    .line 2086
    iget-object v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->desTextRes:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2087
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/view/VolumePanel;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v1

    .line 2088
    .local v1, "bIsInAllCapsLocale":Z
    if-eqz v1, :cond_0

    .line 2089
    iget-object v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto :goto_0
.end method

.method private onFreeRingtone()V
    .locals 3

    .prologue
    .line 3546
    monitor-enter p0

    .line 3547
    :try_start_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mRingtonePlays:[Lcom/htc/view/VolumePanel$HtcRingtonePlay;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3548
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mRingtonePlays:[Lcom/htc/view/VolumePanel$HtcRingtonePlay;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 3549
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mRingtonePlays:[Lcom/htc/view/VolumePanel$HtcRingtonePlay;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->release()V

    .line 3551
    :cond_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mRingtonePlays:[Lcom/htc/view/VolumePanel$HtcRingtonePlay;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 3547
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3553
    :cond_1
    monitor-exit p0

    .line 3554
    return-void

    .line 3553
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onResetParamers()V
    .locals 2

    .prologue
    .line 1251
    const-string v0, "VolumePanel"

    const-string v1, "postVolumeChanged not called after setParameters, reset parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1253
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetParamers()V

    .line 1254
    :cond_0
    return-void
.end method

.method private postBeforeMute(I)V
    .locals 4
    .param p1, "streamType"    # I

    .prologue
    .line 4523
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postBeforeMute streamType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4524
    :cond_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSimulateMuteControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/view/VolumePanel$SimulateMuteControl;

    .line 4525
    .local v0, "smc":Lcom/htc/view/VolumePanel$SimulateMuteControl;
    if-nez v0, :cond_1

    .line 4526
    const-string v1, "VolumePanel"

    const-string v2, "saveBeforeMuteVolume smc is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4532
    :goto_0
    return-void

    .line 4530
    :cond_1
    iget v1, v0, Lcom/htc/view/VolumePanel$SimulateMuteControl;->msg:I

    invoke-virtual {p0, v1}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 4531
    iget v1, v0, Lcom/htc/view/VolumePanel$SimulateMuteControl;->msg:I

    iget v2, v0, Lcom/htc/view/VolumePanel$SimulateMuteControl;->streamType:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private postSetIconSeekbarEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/16 v2, 0x13

    const/4 v1, 0x0

    .line 4305
    invoke-virtual {p0, v2}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 4306
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4307
    return-void

    :cond_0
    move v0, v1

    .line 4306
    goto :goto_0
.end method

.method private postUpdatePanelRotation()V
    .locals 1

    .prologue
    const/16 v0, 0xb

    .line 3558
    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 3559
    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 3560
    return-void
.end method

.method private removeListenToVolumeChange()V
    .locals 2

    .prologue
    .line 1563
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string v1, "removeListenToVolumeChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1567
    :goto_0
    return-void

    .line 1566
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private reorderSliders(I)V
    .locals 6
    .param p1, "activeStreamType"    # I

    .prologue
    const/4 v5, -0x1

    .line 2029
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    .line 2030
    const-string v2, "VolumePanel"

    const-string v3, "reorderSliders"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    :cond_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2032
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 2072
    :goto_0
    return-void

    .line 2034
    :cond_1
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    .line 2035
    .local v0, "active":Lcom/htc/view/VolumePanel$StreamControl;
    if-nez v0, :cond_2

    .line 2037
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown stream type! : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "active":Lcom/htc/view/VolumePanel$StreamControl;
    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    .line 2039
    .restart local v0    # "active":Lcom/htc/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_2

    .line 2040
    iput p1, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    .line 2041
    iget-object v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget v3, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 2042
    const/4 p1, -0x2

    .line 2046
    :cond_2
    if-nez v0, :cond_3

    .line 2047
    const-string v2, "VolumePanel"

    const-string v3, "fail to get dummpy stream type! - "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    iput v5, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    goto :goto_0

    .line 2050
    :cond_3
    iget-byte v2, p0, Lcom/htc/view/VolumePanel;->mParmAliasTitleFrom:B

    if-eq v2, v5, :cond_5

    .line 2051
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_4

    .line 2052
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get title alias  control:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mParmAliasTitleFrom:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    :cond_4
    iget-byte v1, p0, Lcom/htc/view/VolumePanel;->mParmAliasTitleFrom:B

    .line 2055
    .local v1, "aliasStreamType":I
    invoke-direct {p0, v0, v1}, Lcom/htc/view/VolumePanel;->mirroTitle(Lcom/htc/view/VolumePanel$StreamControl;I)V

    .line 2057
    .end local v1    # "aliasStreamType":I
    :cond_5
    iget-byte v2, p0, Lcom/htc/view/VolumePanel;->mParmAliasIconFrom:B

    if-eq v2, v5, :cond_7

    .line 2058
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_6

    .line 2059
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get icon alias  control:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mParmAliasIconFrom:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    :cond_6
    iget-byte v1, p0, Lcom/htc/view/VolumePanel;->mParmAliasIconFrom:B

    .line 2062
    .restart local v1    # "aliasStreamType":I
    invoke-direct {p0, v0, v1}, Lcom/htc/view/VolumePanel;->mirroIcon(Lcom/htc/view/VolumePanel$StreamControl;I)V

    .line 2064
    .end local v1    # "aliasStreamType":I
    :cond_7
    iget-object v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2065
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v3, v0, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2066
    iput p1, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    .line 2067
    iget-object v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2068
    invoke-direct {p0, v0}, Lcom/htc/view/VolumePanel;->updateSlider(Lcom/htc/view/VolumePanel$StreamControl;)V

    goto/16 :goto_0
.end method

.method private resetParamers()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1256
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v0, :cond_0

    .line 1257
    const-string v0, "VolumePanel"

    const-string v1, "resetParamers"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :cond_0
    sget-object v1, Lcom/htc/view/VolumePanel;->mNotResetParmForWattingPostVolumeSynalize:Ljava/lang/Object;

    monitor-enter v1

    .line 1259
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1260
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "VolumePanel"

    const-string v2, "MSG_VOLUME_CHANGED in queue"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :cond_1
    monitor-exit v1

    .line 1290
    :cond_2
    :goto_0
    return-void

    .line 1263
    :cond_3
    iget-boolean v0, p0, Lcom/htc/view/VolumePanel;->m_NotResetParmForWattingPostVolume:Z

    if-eqz v0, :cond_5

    .line 1264
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_4

    const-string v0, "VolumePanel"

    const-string v2, "wait postVolume"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :cond_4
    monitor-exit v1

    goto :goto_0

    .line 1267
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1268
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1269
    iput-byte v2, p0, Lcom/htc/view/VolumePanel;->mMedia_layout:B

    .line 1270
    iput-byte v2, p0, Lcom/htc/view/VolumePanel;->mMedia_orientation:B

    .line 1271
    iput-byte v2, p0, Lcom/htc/view/VolumePanel;->mParmNoSetting:B

    .line 1272
    iput-byte v2, p0, Lcom/htc/view/VolumePanel;->mParmSimuteAPModeExpand:B

    .line 1273
    iput-byte v2, p0, Lcom/htc/view/VolumePanel;->mParmToExpand:B

    .line 1274
    iput-byte v2, p0, Lcom/htc/view/VolumePanel;->mParmForeceTimeout:B

    .line 1275
    iput-byte v2, p0, Lcom/htc/view/VolumePanel;->mParmForeceTimeoutSap:B

    .line 1276
    iput-byte v2, p0, Lcom/htc/view/VolumePanel;->mParmNoTitle:B

    .line 1277
    iget-byte v0, p0, Lcom/htc/view/VolumePanel;->mParmAliasTitleFrom:B

    if-ne v0, v2, :cond_6

    iget-byte v0, p0, Lcom/htc/view/VolumePanel;->mParmAliasIconFrom:B

    if-ne v0, v2, :cond_6

    iget-byte v0, p0, Lcom/htc/view/VolumePanel;->mParmNoTitle:B

    if-eq v0, v2, :cond_2

    .line 1279
    :cond_6
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/view/VolumePanel;->mExpand:Z

    if-nez v0, :cond_2

    .line 1280
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->resetProgressBar(Landroid/content/Context;)V

    .line 1281
    iput-byte v2, p0, Lcom/htc/view/VolumePanel;->mParmAliasTitleFrom:B

    .line 1282
    iput-byte v2, p0, Lcom/htc/view/VolumePanel;->mParmAliasIconFrom:B

    .line 1283
    iput-byte v2, p0, Lcom/htc/view/VolumePanel;->mParmNoTitle:B

    goto :goto_0
.end method

.method private resetTimeout()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 3767
    invoke-virtual {p0, v4}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 3768
    const/16 v0, 0xbb8

    .line 3769
    .local v0, "dlgTimeoutDelay":I
    sget-object v1, Lcom/htc/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 3770
    iget v0, p0, Lcom/htc/view/VolumePanel;->mSafeVolumeTimeoutDelay:I

    .line 3778
    :goto_0
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v1, :cond_0

    .line 3779
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dlgTimeoutDelay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3781
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3782
    return-void

    .line 3771
    :cond_1
    iget-boolean v1, p0, Lcom/htc/view/VolumePanel;->mExpand:Z

    if-eqz v1, :cond_2

    .line 3772
    const/16 v0, 0xbb8

    goto :goto_0

    .line 3773
    :cond_2
    iget v1, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 3774
    const/16 v0, 0x7d0

    goto :goto_0

    .line 3776
    :cond_3
    const/16 v0, 0xbb8

    goto :goto_0
.end method

.method private saveBeforeMuteVolume(I)V
    .locals 8
    .param p1, "streamType"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4535
    sget-boolean v3, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveBeforeMuteVolume streamType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4536
    :cond_0
    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    .line 4537
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4538
    .local v1, "resolver":Landroid/content/ContentResolver;
    if-nez v1, :cond_2

    .line 4539
    const-string v3, "VolumePanel"

    const-string v4, "saveBeforeMuteVolume resolver is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4574
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    return-void

    .line 4543
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mSimulateMuteControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;

    .line 4544
    .local v2, "smc":Lcom/htc/view/VolumePanel$SimulateMuteControl;
    if-nez v2, :cond_3

    .line 4545
    const-string v3, "VolumePanel"

    const-string v4, "saveBeforeMuteVolume smc is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4548
    :cond_3
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v3}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    .line 4549
    .local v0, "headsetPlugged":Z
    sget-boolean v3, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_4

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveBeforeMuteVolume smc.streamType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->streamType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", headsetPlugged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4551
    :cond_4
    if-eqz v0, :cond_7

    .line 4552
    iget-object v3, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->keyBeforeMuteForHeadset:Ljava/lang/String;

    iget v4, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMuteForHeadset:I

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4553
    sget-boolean v3, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_5

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveBeforeMuteVolume save to database smc.volumeBeforeMuteForHeadset = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMuteForHeadset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4554
    :cond_5
    iget-object v3, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->keyMuteByUserForHeadset:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 4555
    iget-boolean v3, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->userSetNotificationsMuteForHeadset:Z

    if-eqz v3, :cond_6

    .line 4556
    iget-object v3, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->keyMuteByUserForHeadset:Ljava/lang/String;

    invoke-static {v1, v3, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4559
    :goto_1
    sget-boolean v3, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_1

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveBeforeMuteVolume save to database smc.keyMuteByUserForHeadset = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->keyMuteByUserForHeadset:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4558
    :cond_6
    iget-object v3, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->keyMuteByUserForHeadset:Ljava/lang/String;

    invoke-static {v1, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 4563
    :cond_7
    iget-object v3, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->keyBeforeMute:Ljava/lang/String;

    iget v4, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMute:I

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4564
    sget-boolean v3, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_8

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveBeforeMuteVolume save to database smc.volumeBeforeMute = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMute:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4565
    :cond_8
    iget-object v3, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->keyMuteByUser:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 4566
    iget-boolean v3, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->userSetNotificationsMute:Z

    if-eqz v3, :cond_9

    .line 4567
    iget-object v3, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->keyMuteByUser:Ljava/lang/String;

    invoke-static {v1, v3, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4570
    :goto_2
    sget-boolean v3, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_1

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveBeforeMuteVolume save to database smc.keyMuteByUser = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->keyMuteByUser:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4569
    :cond_9
    iget-object v3, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->keyMuteByUser:Ljava/lang/String;

    invoke-static {v1, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method private setIconSeekBarEnable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 4311
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/htc/view/VolumePanel;->getStreamControlForStream(I)Lcom/htc/view/VolumePanel$StreamControl;

    move-result-object v0

    .line 4313
    .local v0, "sc":Lcom/htc/view/VolumePanel$StreamControl;
    if-nez v0, :cond_0

    .line 4314
    const-string v1, "VolumePanel"

    const-string v2, "setIconSeekBarEnable StreamControl is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4321
    :goto_0
    return-void

    .line 4318
    :cond_0
    iget-object v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4319
    iget-object v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 4320
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIconSeekBarEnable RINGER_MODE_NORMAL sc.icon.isEnabled() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sc.seekbarView.isEnabled() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setMusicIcon(Lcom/htc/view/VolumePanel$StreamControl;II)V
    .locals 4
    .param p1, "sc"    # Lcom/htc/view/VolumePanel$StreamControl;
    .param p2, "resId"    # I
    .param p3, "resMuteId"    # I

    .prologue
    .line 3480
    if-eqz p1, :cond_1

    .line 3481
    :try_start_0
    iget v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 3482
    .local v0, "index":I
    iput p2, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I

    .line 3483
    iput p3, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 3484
    iget-object v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    iget v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Lcom/htc/view/VolumePanel;->isMuted(I)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_2

    :cond_0
    iget v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-direct {p0, v3, v2}, Lcom/htc/view/VolumePanel;->fnSetButtonIcon(Landroid/view/View;I)V

    .line 3489
    .end local v0    # "index":I
    :cond_1
    :goto_1
    return-void

    .line 3484
    .restart local v0    # "index":I
    :cond_2
    iget v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3486
    .end local v0    # "index":I
    :catch_0
    move-exception v1

    .line 3487
    .local v1, "npeException":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method private static setNotificationUseRingVolume(Landroid/media/AudioManager;I)V
    .locals 7
    .param p0, "audioManger"    # Landroid/media/AudioManager;
    .param p1, "on"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4882
    const-class v0, Landroid/media/AudioManager;

    .line 4883
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    .line 4884
    .local v3, "parms":[Ljava/lang/Class;
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    .line 4886
    .local v2, "mParamObjs1":[Ljava/lang/Object;
    :try_start_0
    const-string v4, "setNotificationUseRingVolume"

    check-cast v3, [Ljava/lang/Class;

    .end local v3    # "parms":[Ljava/lang/Class;
    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4893
    :goto_0
    return-void

    .line 4888
    :catch_0
    move-exception v1

    .line 4889
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setSkinRes()V
    .locals 4

    .prologue
    .line 959
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 960
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 962
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/view/VolumePanel;->mSkinRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 963
    :catch_0
    move-exception v0

    .line 964
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No skin package matches with the given name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSliencIcon(I)V
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 3493
    const/4 v3, 0x3

    :try_start_0
    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->getStreamControlForStream(I)Lcom/htc/view/VolumePanel$StreamControl;

    move-result-object v2

    .line 3494
    .local v2, "sc":Lcom/htc/view/VolumePanel$StreamControl;
    if-eqz v2, :cond_1

    .line 3495
    iget v3, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 3496
    .local v0, "index":I
    iget v3, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->isMuted(I)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v0, :cond_1

    .line 3497
    :cond_0
    iget-object v3, v2, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    invoke-direct {p0, v3, p1}, Lcom/htc/view/VolumePanel;->fnSetButtonIcon(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3503
    .end local v0    # "index":I
    .end local v2    # "sc":Lcom/htc/view/VolumePanel$StreamControl;
    :cond_1
    :goto_0
    return-void

    .line 3500
    :catch_0
    move-exception v1

    .line 3501
    .local v1, "npeException":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private setStreamToMute(Lcom/htc/view/VolumePanel$StreamControl;)V
    .locals 1
    .param p1, "sc"    # Lcom/htc/view/VolumePanel$StreamControl;

    .prologue
    .line 4383
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/view/VolumePanel;->setStreamToMute(Lcom/htc/view/VolumePanel$StreamControl;I)V

    .line 4384
    return-void
.end method

.method private setStreamToMute(Lcom/htc/view/VolumePanel$StreamControl;I)V
    .locals 8
    .param p1, "sc"    # Lcom/htc/view/VolumePanel$StreamControl;
    .param p2, "flags"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 4386
    if-nez p1, :cond_1

    .line 4435
    :cond_0
    :goto_0
    return-void

    .line 4389
    :cond_1
    if-eqz p1, :cond_0

    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 4390
    sget-boolean v3, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_2

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setStreamToMute sc.streamType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4392
    :cond_2
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mSimulateMuteControls:Ljava/util/HashMap;

    iget v4, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;

    .line 4393
    .local v1, "smc":Lcom/htc/view/VolumePanel$SimulateMuteControl;
    if-nez v1, :cond_3

    .line 4394
    const-string v3, "VolumePanel"

    const-string v4, "saveBeforeMuteVolume smc is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4398
    :cond_3
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v3}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    .line 4399
    .local v0, "headsetPlugged":Z
    iget-object v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    if-nez v3, :cond_8

    .line 4401
    const/4 v2, 0x0

    .line 4402
    .local v2, "volume":I
    if-eqz v0, :cond_6

    .line 4403
    sget-boolean v3, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_4

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setStreamToMute smc.volumeBeforeMuteForHeadset = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMuteForHeadset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4404
    :cond_4
    iget v2, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMuteForHeadset:I

    .line 4405
    iput v6, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMuteForHeadset:I

    .line 4413
    :goto_1
    if-gtz v2, :cond_5

    .line 4414
    const/4 v2, 0x1

    .line 4415
    :cond_5
    iget-object v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 4416
    iget v3, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->streamType:I

    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->postBeforeMute(I)V

    .line 4418
    iget v3, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->streamType:I

    invoke-direct {p0, v3, v2, p2}, Lcom/htc/view/VolumePanel;->setStreamVolume(III)V

    goto/16 :goto_0

    .line 4408
    :cond_6
    sget-boolean v3, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_7

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setStreamToMute smc.volumeBeforeMute = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMute:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4409
    :cond_7
    iget v2, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMute:I

    .line 4410
    iput v6, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMute:I

    goto :goto_1

    .line 4422
    .end local v2    # "volume":I
    :cond_8
    if-eqz v0, :cond_a

    .line 4423
    iget v3, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->streamType:I

    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v3

    iput v3, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMuteForHeadset:I

    .line 4424
    sget-boolean v3, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_9

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setStreamToMute getProgress() > 0 smc.volumeBeforeMuteForHeadset  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMuteForHeadset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4430
    :cond_9
    :goto_2
    iget v3, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->streamType:I

    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->postBeforeMute(I)V

    .line 4431
    iget v3, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->streamType:I

    invoke-direct {p0, v3, v7, p2}, Lcom/htc/view/VolumePanel;->setStreamVolume(III)V

    .line 4432
    iget-object v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 4427
    :cond_a
    iget v3, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->streamType:I

    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v3

    iput v3, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMute:I

    .line 4428
    sget-boolean v3, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_9

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setStreamToMute getProgress() > 0 smc.volumeBeforeMute = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMute:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setStreamVolume(III)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 1632
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 1633
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2, p3}, Landroid/media/AudioManager;->setMasterVolume(II)V

    .line 1639
    :goto_0
    return-void

    .line 1634
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 1635
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0, p2}, Landroid/media/AudioService;->setRemoteStreamVolume(I)V

    goto :goto_0

    .line 1637
    :cond_1
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private syncNotificationWithRingerMode()V
    .locals 7

    .prologue
    const/4 v5, 0x5

    const/4 v6, -0x1

    .line 4324
    sget-boolean v3, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "VolumePanel"

    const-string v4, "++ syncNotificationWithRingerMode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4325
    :cond_0
    invoke-direct {p0, v5}, Lcom/htc/view/VolumePanel;->getStreamControlForStream(I)Lcom/htc/view/VolumePanel$StreamControl;

    move-result-object v1

    .line 4326
    .local v1, "sc":Lcom/htc/view/VolumePanel$StreamControl;
    if-nez v1, :cond_2

    .line 4327
    const-string v3, "VolumePanel"

    const-string v4, "syncNotificationWithRingerMode StreamControl is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4380
    :cond_1
    :goto_0
    return-void

    .line 4331
    :cond_2
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mSimulateMuteControls:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;

    .line 4332
    .local v2, "smc":Lcom/htc/view/VolumePanel$SimulateMuteControl;
    if-nez v2, :cond_3

    .line 4333
    const-string v3, "VolumePanel"

    const-string v4, "saveBeforeMuteVolume smc is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4337
    :cond_3
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 4338
    .local v0, "ringerMode":I
    sget-boolean v3, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_4

    .line 4339
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncNotificationWithRingerMode ringerMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4342
    :cond_4
    packed-switch v0, :pswitch_data_0

    .line 4376
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncNotificationWithRingerMode unknow sound profile:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4379
    :cond_5
    :goto_1
    sget-boolean v3, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_1

    const-string v3, "VolumePanel"

    const-string v4, "-- syncNotificationWithRingerMode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4346
    :pswitch_0
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->postSetIconSeekbarEnable(Z)V

    .line 4349
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v3}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4350
    iget v3, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMuteForHeadset:I

    if-eq v3, v6, :cond_5

    iget-boolean v3, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->userSetNotificationsMuteForHeadset:Z

    if-nez v3, :cond_5

    .line 4351
    invoke-direct {p0, v1}, Lcom/htc/view/VolumePanel;->setStreamToMute(Lcom/htc/view/VolumePanel$StreamControl;)V

    goto :goto_1

    .line 4354
    :cond_6
    iget v3, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMute:I

    if-eq v3, v6, :cond_5

    iget-boolean v3, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->userSetNotificationsMute:Z

    if-nez v3, :cond_5

    .line 4355
    invoke-direct {p0, v1}, Lcom/htc/view/VolumePanel;->setStreamToMute(Lcom/htc/view/VolumePanel$StreamControl;)V

    goto :goto_1

    .line 4361
    :pswitch_1
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->postSetIconSeekbarEnable(Z)V

    .line 4364
    iget-object v3, v1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    if-lez v3, :cond_5

    .line 4365
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v3}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4366
    iget v3, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMuteForHeadset:I

    if-ne v3, v6, :cond_5

    .line 4367
    invoke-direct {p0, v1}, Lcom/htc/view/VolumePanel;->setStreamToMute(Lcom/htc/view/VolumePanel$StreamControl;)V

    goto :goto_1

    .line 4370
    :cond_7
    iget v3, v2, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMute:I

    if-ne v3, v6, :cond_5

    .line 4371
    invoke-direct {p0, v1}, Lcom/htc/view/VolumePanel;->setStreamToMute(Lcom/htc/view/VolumePanel$StreamControl;)V

    goto :goto_1

    .line 4342
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateCustomIcon(IILandroid/view/View;)V
    .locals 4
    .param p1, "nIdex"    # I
    .param p2, "nMaxIndex"    # I
    .param p3, "iconView"    # Landroid/view/View;

    .prologue
    .line 3079
    if-lez p1, :cond_1

    if-eqz p3, :cond_1

    .line 3080
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mCustomizeIconRes:[I

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mCustomizeIconRes:[I

    array-length v3, v3

    mul-int/2addr v2, v3

    div-int/2addr v2, p2

    aget v0, v1, v2

    .line 3081
    .local v0, "iconId":I
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    .line 3082
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sc.icon.setImageResource:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3084
    :cond_0
    invoke-direct {p0, p3, v0}, Lcom/htc/view/VolumePanel;->fnSetButtonIcon(Landroid/view/View;I)V

    .line 3086
    .end local v0    # "iconId":I
    :cond_1
    return-void
.end method

.method private updatePanelMoreButtonDivider()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2341
    iget v0, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2342
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v0, :cond_0

    .line 2343
    const-string v0, "VolumePanel"

    const-string v1, "hide moreButton & divider"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    :cond_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2346
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2352
    :goto_0
    return-void

    .line 2349
    :cond_1
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2350
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePanelRotationPosition()V
    .locals 12

    .prologue
    const/16 v11, 0x11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x3

    .line 2359
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 2360
    .local v3, "window":Landroid/view/Window;
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 2362
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 2364
    .local v0, "current_rotation":I
    sget-boolean v4, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_0

    .line 2365
    const-string v4, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current orientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", request orientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, p0, Lcom/htc/view/VolumePanel;->mMedia_orientation:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    :cond_0
    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_orientation:B

    if-eqz v4, :cond_1

    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_orientation:B

    if-eq v4, v9, :cond_1

    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_orientation:B

    if-eq v4, v10, :cond_1

    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_orientation:B

    if-ne v4, v7, :cond_1b

    :cond_1
    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_layout:B

    if-eq v4, v10, :cond_2

    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_layout:B

    if-eq v4, v7, :cond_2

    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_layout:B

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_layout:B

    if-eq v4, v9, :cond_2

    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_layout:B

    if-nez v4, :cond_1b

    .line 2377
    :cond_2
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2380
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v4, p0, Lcom/htc/view/VolumePanel;->mPanelWidth:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2381
    const/4 v4, -0x2

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2382
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2383
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2386
    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_orientation:B

    if-nez v4, :cond_3

    if-eqz v0, :cond_6

    :cond_3
    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_orientation:B

    if-ne v4, v9, :cond_4

    if-eq v0, v9, :cond_6

    :cond_4
    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_orientation:B

    if-ne v4, v10, :cond_5

    if-eq v0, v10, :cond_6

    :cond_5
    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_orientation:B

    if-ne v4, v7, :cond_9

    if-ne v0, v7, :cond_9

    .line 2391
    :cond_6
    sget-boolean v4, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_7

    .line 2392
    const-string v4, "VolumePanel"

    const-string v5, "[Rotaion/Position] case 1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    :cond_7
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RotateRelativeLayout;->setRotation(I)V

    .line 2395
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    invoke-virtual {v4, v9}, Landroid/widget/RotateRelativeLayout;->setGravity(I)V

    .line 2398
    iget v4, p0, Lcom/htc/view/VolumePanel;->mPanelWidth:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2399
    const/4 v4, -0x2

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2402
    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_layout:B

    packed-switch v4, :pswitch_data_0

    .line 2423
    invoke-virtual {v3, v11}, Landroid/view/Window;->setGravity(I)V

    .line 2545
    :cond_8
    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2561
    :goto_1
    return-void

    .line 2404
    :pswitch_0
    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 2405
    iget v4, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2406
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 2409
    :pswitch_1
    invoke-virtual {v3, v11}, Landroid/view/Window;->setGravity(I)V

    goto :goto_0

    .line 2412
    :pswitch_2
    invoke-virtual {v3, v7}, Landroid/view/Window;->setGravity(I)V

    goto :goto_0

    .line 2415
    :pswitch_3
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    goto :goto_0

    .line 2418
    :pswitch_4
    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 2419
    iget v4, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2420
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 2426
    :cond_9
    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_orientation:B

    if-nez v4, :cond_a

    if-eq v0, v9, :cond_d

    :cond_a
    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_orientation:B

    if-ne v4, v9, :cond_b

    if-eq v0, v10, :cond_d

    :cond_b
    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_orientation:B

    if-ne v4, v10, :cond_c

    if-eq v0, v7, :cond_d

    :cond_c
    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_orientation:B

    if-ne v4, v7, :cond_f

    if-nez v0, :cond_f

    .line 2431
    :cond_d
    sget-boolean v4, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_e

    .line 2432
    const-string v4, "VolumePanel"

    const-string v5, "[Rotaion/Position] case 2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    :cond_e
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    invoke-virtual {v4, v9}, Landroid/widget/RotateRelativeLayout;->setRotation(I)V

    .line 2436
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/RotateRelativeLayout;->setGravity(I)V

    .line 2440
    const/4 v4, -0x2

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2441
    iget v4, p0, Lcom/htc/view/VolumePanel;->mPanelWidth:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2444
    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_layout:B

    packed-switch v4, :pswitch_data_1

    .line 2465
    invoke-virtual {v3, v11}, Landroid/view/Window;->setGravity(I)V

    goto :goto_0

    .line 2446
    :pswitch_5
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 2447
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2448
    iget v4, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 2451
    :pswitch_6
    invoke-virtual {v3, v11}, Landroid/view/Window;->setGravity(I)V

    goto :goto_0

    .line 2454
    :pswitch_7
    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    goto :goto_0

    .line 2457
    :pswitch_8
    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    goto/16 :goto_0

    .line 2460
    :pswitch_9
    invoke-virtual {v3, v7}, Landroid/view/Window;->setGravity(I)V

    .line 2461
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2462
    iget v4, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_0

    .line 2468
    :cond_f
    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_orientation:B

    if-nez v4, :cond_10

    if-eq v0, v10, :cond_13

    :cond_10
    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_orientation:B

    if-ne v4, v9, :cond_11

    if-eq v0, v7, :cond_13

    :cond_11
    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_orientation:B

    if-ne v4, v10, :cond_12

    if-eqz v0, :cond_13

    :cond_12
    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_orientation:B

    if-ne v4, v7, :cond_15

    if-ne v0, v9, :cond_15

    .line 2473
    :cond_13
    sget-boolean v4, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_14

    .line 2474
    const-string v4, "VolumePanel"

    const-string v5, "[Rotaion/Position] case 3"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    :cond_14
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    invoke-virtual {v4, v10}, Landroid/widget/RotateRelativeLayout;->setRotation(I)V

    .line 2477
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    invoke-virtual {v4, v9}, Landroid/widget/RotateRelativeLayout;->setGravity(I)V

    .line 2479
    iget v4, p0, Lcom/htc/view/VolumePanel;->mPanelWidth:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2480
    const/4 v4, -0x2

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2482
    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_layout:B

    packed-switch v4, :pswitch_data_2

    .line 2503
    invoke-virtual {v3, v11}, Landroid/view/Window;->setGravity(I)V

    goto/16 :goto_0

    .line 2484
    :pswitch_a
    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 2485
    iget v4, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2486
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_0

    .line 2489
    :pswitch_b
    invoke-virtual {v3, v11}, Landroid/view/Window;->setGravity(I)V

    goto/16 :goto_0

    .line 2492
    :pswitch_c
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    goto/16 :goto_0

    .line 2495
    :pswitch_d
    invoke-virtual {v3, v7}, Landroid/view/Window;->setGravity(I)V

    goto/16 :goto_0

    .line 2498
    :pswitch_e
    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 2499
    iget v4, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2500
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_0

    .line 2506
    :cond_15
    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_orientation:B

    if-nez v4, :cond_16

    if-eq v0, v7, :cond_19

    :cond_16
    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_orientation:B

    if-ne v4, v9, :cond_17

    if-eqz v0, :cond_19

    :cond_17
    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_orientation:B

    if-ne v4, v10, :cond_18

    if-eq v0, v9, :cond_19

    :cond_18
    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_orientation:B

    if-ne v4, v7, :cond_8

    if-ne v0, v10, :cond_8

    .line 2511
    :cond_19
    sget-boolean v4, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_1a

    .line 2512
    const-string v4, "VolumePanel"

    const-string v5, "[Rotaion/Position] case 4"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    :cond_1a
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    invoke-virtual {v4, v7}, Landroid/widget/RotateRelativeLayout;->setRotation(I)V

    .line 2515
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/RotateRelativeLayout;->setGravity(I)V

    .line 2517
    const/4 v4, -0x2

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2518
    iget v4, p0, Lcom/htc/view/VolumePanel;->mPanelWidth:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2520
    iget-byte v4, p0, Lcom/htc/view/VolumePanel;->mMedia_layout:B

    packed-switch v4, :pswitch_data_3

    .line 2541
    invoke-virtual {v3, v11}, Landroid/view/Window;->setGravity(I)V

    goto/16 :goto_0

    .line 2522
    :pswitch_f
    invoke-virtual {v3, v7}, Landroid/view/Window;->setGravity(I)V

    .line 2523
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2524
    iget v4, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_0

    .line 2527
    :pswitch_10
    invoke-virtual {v3, v11}, Landroid/view/Window;->setGravity(I)V

    goto/16 :goto_0

    .line 2530
    :pswitch_11
    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    goto/16 :goto_0

    .line 2533
    :pswitch_12
    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    goto/16 :goto_0

    .line 2536
    :pswitch_13
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 2537
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2538
    iget v4, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_0

    .line 2547
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1b
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RotateRelativeLayout;->setRotation(I)V

    .line 2548
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    invoke-virtual {v4, v9}, Landroid/widget/RotateRelativeLayout;->setGravity(I)V

    .line 2549
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2550
    .restart local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v3, v11}, Landroid/view/Window;->setGravity(I)V

    .line 2551
    iget v4, p0, Lcom/htc/view/VolumePanel;->mPanelWidth:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2552
    const/4 v4, -0x2

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2553
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2554
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2558
    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_1

    .line 2402
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2444
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 2482
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 2520
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private updateSlider(Lcom/htc/view/VolumePanel$StreamControl;)V
    .locals 10
    .param p1, "sc"    # Lcom/htc/view/VolumePanel$StreamControl;

    .prologue
    .line 2181
    if-nez p1, :cond_1

    .line 2291
    :cond_0
    :goto_0
    return-void

    .line 2183
    :cond_1
    iget v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-eqz v7, :cond_0

    iget v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v8, 0x6

    if-eq v7, v8, :cond_0

    iget v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-gez v7, :cond_2

    iget v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/16 v8, -0x64

    if-eq v7, v8, :cond_2

    iget v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/16 v8, -0xc8

    if-ne v7, v8, :cond_0

    .line 2195
    :cond_2
    iget v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v7}, Lcom/htc/view/VolumePanel;->isMuted(I)Z

    move-result v0

    .line 2196
    .local v0, "isStreamMuted":Z
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v7}, Landroid/media/AudioService;->getRingerMode()I

    move-result v3

    .line 2198
    .local v3, "nRingerMode":I
    iget v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v7}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v4

    .line 2199
    .local v4, "nVol":I
    iget-object v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2200
    iget v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v7}, Lcom/htc/view/VolumePanel;->getLastAudibleStreamVolume(I)I

    move-result v2

    .line 2201
    .local v2, "nLastVol":I
    move v5, v2

    .line 2203
    .local v5, "resultVol":I
    if-nez v0, :cond_3

    if-nez v4, :cond_c

    :cond_3
    const/4 v1, 0x1

    .line 2204
    .local v1, "muted":Z
    :goto_1
    if-nez v1, :cond_6

    iget v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    iget v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_6

    sget-boolean v7, Lcom/htc/view/VolumePanel;->mUseRingVolumeAsNotifyVolume:Z

    if-eqz v7, :cond_6

    :cond_4
    const/4 v7, 0x1

    if-eq v3, v7, :cond_5

    if-nez v3, :cond_6

    .line 2211
    :cond_5
    const-string v7, "VolumePanel"

    const-string v8, "updateSlider volume value and volume state not sync vibrate and silence mode should be mute state"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    const/4 v1, 0x1

    .line 2214
    :cond_6
    if-eqz v1, :cond_7

    .line 2215
    const/4 v5, 0x0

    .line 2219
    :cond_7
    iget-object v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2220
    sget-boolean v7, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_8

    .line 2221
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSlider streamType "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isStreamMuted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " nVol: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " nLastVol: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " resultVol:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " muted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " RingerMode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    :cond_8
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mCustomizeIconRes:[I

    if-nez v7, :cond_e

    .line 2225
    iget-object v8, p1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    if-eqz v1, :cond_d

    iget v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_2
    invoke-direct {p0, v8, v7}, Lcom/htc/view/VolumePanel;->fnSetButtonIcon(Landroid/view/View;I)V

    .line 2232
    :goto_3
    iget v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_9

    sget-boolean v7, Lcom/htc/view/VolumePanel;->mUseRingVolumeAsNotifyVolume:Z

    if-eqz v7, :cond_b

    iget-boolean v7, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    if-eqz v7, :cond_b

    iget v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_b

    .line 2235
    :cond_9
    sget-boolean v7, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_a

    sget-boolean v7, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v7, :cond_a

    .line 2236
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSlider muted = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", RingerMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v9}, Landroid/media/AudioService;->getRingerMode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    :cond_a
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_10

    .line 2240
    iget-object v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    iget v8, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconVibrateRes:I

    invoke-direct {p0, v7, v8}, Lcom/htc/view/VolumePanel;->fnSetButtonIcon(Landroid/view/View;I)V

    .line 2250
    :cond_b
    :goto_4
    iget v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/16 v8, -0xc8

    if-ne v7, v8, :cond_11

    .line 2253
    iget-object v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 2254
    iget-object v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 2269
    :goto_5
    iget v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_0

    .line 2270
    sget-boolean v7, Lcom/htc/view/VolumePanel;->mUseRingVolumeAsNotifyVolume:Z

    if-eqz v7, :cond_17

    .line 2272
    iget-object v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 2273
    iget-object v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2203
    .end local v1    # "muted":Z
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2225
    .restart local v1    # "muted":Z
    :cond_d
    iget v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I

    goto/16 :goto_2

    .line 2227
    :cond_e
    if-nez v1, :cond_f

    .line 2228
    iget-object v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getMax()I

    move-result v7

    iget-object v8, p1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    invoke-direct {p0, v4, v7, v8}, Lcom/htc/view/VolumePanel;->updateCustomIcon(IILandroid/view/View;)V

    goto/16 :goto_3

    .line 2230
    :cond_f
    iget-object v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    iget v8, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    invoke-direct {p0, v7, v8}, Lcom/htc/view/VolumePanel;->fnSetButtonIcon(Landroid/view/View;I)V

    goto/16 :goto_3

    .line 2243
    :cond_10
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v7}, Landroid/media/AudioService;->getRingerMode()I

    move-result v6

    .line 2244
    .local v6, "ringerMode":I
    const/4 v7, 0x3

    if-ne v6, v7, :cond_b

    .line 2245
    iget-object v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    iget v8, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconOutDoorRes:I

    invoke-direct {p0, v7, v8}, Lcom/htc/view/VolumePanel;->fnSetButtonIcon(Landroid/view/View;I)V

    goto :goto_4

    .line 2255
    .end local v6    # "ringerMode":I
    :cond_11
    iget v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v8

    if-eq v7, v8, :cond_12

    if-nez v0, :cond_13

    :cond_12
    sget-object v7, Lcom/htc/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_15

    .line 2257
    :cond_13
    sget-boolean v7, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_14

    sget-boolean v7, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v7, :cond_14

    .line 2258
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isStreamMuted = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "we did not disable seekbar by stream mute state"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    :cond_14
    iget-object v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 2261
    iget-object v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_5

    .line 2263
    :cond_15
    sget-boolean v7, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_16

    sget-boolean v7, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v7, :cond_16

    .line 2264
    const-string v7, "VolumePanel"

    const-string v8, "enable seek control"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    :cond_16
    iget-object v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 2267
    iget-object v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_5

    .line 2275
    :cond_17
    const/4 v7, 0x1

    if-eq v3, v7, :cond_18

    if-nez v3, :cond_1a

    .line 2277
    :cond_18
    sget-boolean v7, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_19

    sget-boolean v7, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v7, :cond_19

    .line 2278
    const-string v7, "VolumePanel"

    const-string v8, "disable STREAM_NOTIFICATION "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    :cond_19
    iget-object v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 2281
    iget-object v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2283
    :cond_1a
    sget-boolean v7, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_1b

    sget-boolean v7, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v7, :cond_1b

    .line 2284
    const-string v7, "VolumePanel"

    const-string v8, "enable STREAM_NOTIFICATION "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    :cond_1b
    iget-object v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 2287
    iget-object v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private volumeChangedByTouch(I)V
    .locals 8
    .param p1, "streamType"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 4438
    if-eqz p1, :cond_0

    const/4 v2, 0x6

    if-ne p1, v2, :cond_1

    .line 4471
    :cond_0
    :goto_0
    return-void

    .line 4448
    :cond_1
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_2

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "volumeChangedByTouch streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4449
    :cond_2
    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 4451
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSimulateMuteControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;

    .line 4452
    .local v1, "smc":Lcom/htc/view/VolumePanel$SimulateMuteControl;
    if-nez v1, :cond_3

    .line 4453
    const-string v2, "VolumePanel"

    const-string v3, "saveBeforeMuteVolume smc is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4457
    :cond_3
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    .line 4458
    .local v0, "headsetPlugged":Z
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_4

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "volumeChangedByTouch headsetPlugged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4460
    :cond_4
    if-eqz v0, :cond_5

    .line 4461
    iput v5, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMuteForHeadset:I

    .line 4462
    iget v2, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->streamType:I

    if-ne v2, v7, :cond_0

    .line 4463
    iput-boolean v6, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->userSetNotificationsMuteForHeadset:Z

    goto :goto_0

    .line 4466
    :cond_5
    iput v5, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->volumeBeforeMute:I

    .line 4467
    iget v2, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->streamType:I

    if-ne v2, v7, :cond_0

    .line 4468
    iput-boolean v6, v1, Lcom/htc/view/VolumePanel$SimulateMuteControl;->userSetNotificationsMute:Z

    goto :goto_0
.end method


# virtual methods
.method fnGetHtcListItemHeight(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4918
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4919
    .local v3, "htcListItemHeight":Ljava/lang/Integer;
    new-array v6, v10, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v9

    .line 4920
    .local v6, "parms":[Ljava/lang/Class;
    new-array v5, v10, [Ljava/lang/Object;

    aput-object p1, v5, v8

    const-string v7, "HtcListItemHeight"

    aput-object v7, v5, v9

    .line 4922
    .local v5, "paramObj":[Ljava/lang/Object;
    :try_start_0
    const-string v7, "com.htc.widget.HtcProperty"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 4923
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 4924
    .local v4, "obj":Ljava/lang/Object;
    const-string v7, "getProperty"

    invoke-virtual {v1, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4929
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "obj":Ljava/lang/Object;
    :goto_0
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fnGetHtcListItemHeight:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4930
    return-object v3

    .line 4926
    :catch_0
    move-exception v2

    .line 4927
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method fnSetMargin(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 4895
    const/4 v1, 0x0

    .line 4897
    .local v1, "mClsHtcListItem":Ljava/lang/Class;
    :try_start_0
    const-string v3, "com.htc.widget.HtcListItem"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4902
    :goto_0
    if-nez v1, :cond_0

    .line 4916
    :goto_1
    return-void

    .line 4898
    :catch_0
    move-exception v0

    .line 4900
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 4905
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :try_start_1
    const-string v3, "mListItemMargin"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 4908
    .local v2, "privateIntField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4910
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 4911
    .end local v2    # "privateIntField":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v0

    .line 4912
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 3628
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 3736
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3631
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/view/VolumePanel;->onVolumeChanged(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3733
    :catch_0
    move-exception v0

    .line 3734
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3636
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/view/VolumePanel;->onMuteChanged(II)V

    goto :goto_0

    .line 3641
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 3646
    :pswitch_4
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/view/VolumePanel;->onStopSounds(Lcom/htc/view/VolumePanel$ISoundPlay;)V

    goto :goto_0

    .line 3651
    :pswitch_5
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/view/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 3656
    :pswitch_6
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->onVibrate()V

    goto :goto_0

    .line 3661
    :pswitch_7
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3662
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3663
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    .line 3671
    :goto_1
    iget v1, p0, Lcom/htc/view/VolumePanel;->mSafeVolumeTimeoutDelay:I

    if-eqz v1, :cond_0

    .line 3672
    sget-object v2, Lcom/htc/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3673
    :try_start_2
    sget-object v1, Lcom/htc/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 3674
    sget-object v1, Lcom/htc/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3676
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    .line 3664
    :cond_2
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mDialogEx:Landroid/app/Dialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mDialogEx:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3665
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mDialogEx:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3666
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    goto :goto_1

    .line 3668
    :cond_3
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetParamers()V

    .line 3669
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    goto :goto_1

    .line 3684
    :pswitch_8
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mDialogEx:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mDialogEx:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3685
    :cond_5
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->updateStates()V

    goto/16 :goto_0

    .line 3691
    :pswitch_9
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/view/VolumePanel;->onRemoteVolumeChanged(II)V

    goto/16 :goto_0

    .line 3696
    :pswitch_a
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->onRemoteVolumeUpdateIfShown()V

    goto/16 :goto_0

    .line 3700
    :pswitch_b
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/view/VolumePanel;->onSliderVisibilityChanged(II)V

    goto/16 :goto_0

    .line 3704
    :pswitch_c
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->updatePanelRotation()V

    goto/16 :goto_0

    .line 3713
    :pswitch_d
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/htc/view/VolumePanel;->saveBeforeMuteVolume(I)V

    goto/16 :goto_0

    .line 3718
    :pswitch_e
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_6

    :goto_2
    invoke-direct {p0, v1}, Lcom/htc/view/VolumePanel;->setIconSeekBarEnable(Z)V

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 3722
    :pswitch_f
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lcom/htc/view/VolumePanel;->onDisplaySafeVolumeWarning(I)V

    goto/16 :goto_0

    .line 3725
    :pswitch_10
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lcom/htc/view/VolumePanel;->onDisplayDisableDndRequest(I)V

    goto/16 :goto_0

    .line 3728
    :pswitch_11
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->onResetParamers()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 3628
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method protected internalPlaySound(IIZ)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "nInsex"    # I
    .param p3, "bCreatePlayer"    # Z

    .prologue
    .line 3115
    monitor-enter p0

    .line 3116
    const/4 v1, 0x0

    .line 3117
    .local v1, "soundPoolHelp":Lcom/htc/view/VolumePanel$ISoundPlay;
    if-eqz p3, :cond_0

    .line 3118
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->getOrCreateSoundPool(I)Lcom/htc/view/VolumePanel$ISoundPlay;

    move-result-object v1

    .line 3121
    :goto_0
    if-nez v1, :cond_1

    .line 3122
    const-string v2, "VolumePanel"

    const-string v3, "soundPoolHelp released abort retry"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3123
    monitor-exit p0

    .line 3127
    :goto_1
    return-void

    .line 3120
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->getGenerator(I)Lcom/htc/view/VolumePanel$ISoundPlay;

    move-result-object v1

    goto :goto_0

    .line 3125
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/view/VolumePanel;->onStopSounds(Lcom/htc/view/VolumePanel$ISoundPlay;)V

    .line 3126
    invoke-virtual {v1, p2}, Lcom/htc/view/VolumePanel$ISoundPlay;->fnplay(I)I

    move-result v0

    .line 3127
    .local v0, "nRet":I
    monitor-exit p0

    goto :goto_1

    .line 3128
    .end local v0    # "nRet":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 4784
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v10, 0x5

    const/4 v9, 0x1

    .line 3932
    iget-object v6, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    if-ne p1, v6, :cond_2

    .line 3933
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->expand()V

    .line 4040
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    .line 4041
    :cond_1
    :goto_1
    return-void

    .line 3934
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/htc/view/VolumePanel$StreamControl;

    if-eqz v6, :cond_0

    .line 3935
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/view/VolumePanel$StreamControl;

    .line 3937
    .local v2, "sc":Lcom/htc/view/VolumePanel$StreamControl;
    sget-boolean v6, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v6, :cond_3

    .line 3938
    const-string v6, "VolumePanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onClick sc.streamType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3941
    :cond_3
    iget v6, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-ne v6, v4, :cond_9

    .line 3943
    invoke-direct {p0, v2, v9}, Lcom/htc/view/VolumePanel;->setStreamToMute(Lcom/htc/view/VolumePanel$StreamControl;I)V

    .line 3944
    iget-boolean v5, p0, Lcom/htc/view/VolumePanel;->mExpand:Z

    if-eqz v5, :cond_4

    .line 3945
    invoke-direct {p0, v2}, Lcom/htc/view/VolumePanel;->updateSlider(Lcom/htc/view/VolumePanel$StreamControl;)V

    goto :goto_0

    .line 3946
    :cond_4
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mCustomizeIconRes:[I

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/htc/view/VolumePanel;->mCustomizeIconSilenceRes:I

    if-gtz v5, :cond_7

    .line 3947
    :cond_5
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v4

    and-int/lit16 v4, v4, 0x380

    if-eqz v4, :cond_6

    .line 3951
    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v4, v4, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    sget-object v5, Lcom/htc/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v5, v5, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    invoke-direct {p0, v2, v4, v5}, Lcom/htc/view/VolumePanel;->setMusicIcon(Lcom/htc/view/VolumePanel$StreamControl;II)V

    goto :goto_0

    .line 3954
    :cond_6
    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v4, v4, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    sget-object v5, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v5, v5, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    invoke-direct {p0, v2, v4, v5}, Lcom/htc/view/VolumePanel;->setMusicIcon(Lcom/htc/view/VolumePanel$StreamControl;II)V

    goto :goto_0

    .line 3958
    :cond_7
    iget v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v4}, Lcom/htc/view/VolumePanel;->isMuted(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3959
    iget v4, p0, Lcom/htc/view/VolumePanel;->mCustomizeIconSilenceRes:I

    invoke-direct {p0, v4}, Lcom/htc/view/VolumePanel;->setSliencIcon(I)V

    goto :goto_0

    .line 3961
    :cond_8
    iget-object v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    iget-object v5, v2, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    iget-object v6, v2, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/view/VolumePanel;->updateCustomIcon(IILandroid/view/View;)V

    goto/16 :goto_0

    .line 3967
    :cond_9
    iget v6, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-eq v6, v5, :cond_a

    iget v6, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-ne v6, v10, :cond_d

    sget-boolean v6, Lcom/htc/view/VolumePanel;->mUseRingVolumeAsNotifyVolume:Z

    if-eqz v6, :cond_d

    .line 3971
    :cond_a
    iget-object v6, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 3972
    .local v1, "ringerMode":I
    const/4 v0, 0x2

    .line 3973
    .local v0, "newRingMode":I
    packed-switch v1, :pswitch_data_0

    .line 3988
    const-string v4, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknow sound profile:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3989
    const/4 v0, 0x2

    .line 3993
    :goto_2
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 3994
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 3995
    if-ne v1, v5, :cond_c

    iget v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v4}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v4

    if-nez v4, :cond_c

    .line 3997
    iget-object v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4, v9}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3998
    iget v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v4, v9, v9}, Lcom/htc/view/VolumePanel;->setStreamVolume(III)V

    goto/16 :goto_0

    .line 3975
    :pswitch_0
    const/4 v0, 0x1

    .line 3976
    goto :goto_2

    .line 3978
    :pswitch_1
    sget-boolean v6, Lcom/htc/view/VolumePanel;->mSupportOutdoorMode:Z

    if-eqz v6, :cond_b

    move v0, v4

    .line 3980
    :goto_3
    goto :goto_2

    :cond_b
    move v0, v5

    .line 3978
    goto :goto_3

    .line 3982
    :pswitch_2
    const/4 v0, 0x2

    .line 3983
    goto :goto_2

    .line 3985
    :pswitch_3
    const/4 v0, 0x0

    .line 3986
    goto :goto_2

    .line 4000
    :cond_c
    if-ne v1, v9, :cond_0

    .line 4002
    invoke-virtual {p0, v11}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 4007
    .end local v0    # "newRingMode":I
    .end local v1    # "ringerMode":I
    :cond_d
    iget v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-eq v4, v10, :cond_e

    iget v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-eq v4, v11, :cond_e

    iget v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-nez v4, :cond_0

    .line 4010
    :cond_e
    iget v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-ne v4, v10, :cond_11

    .line 4011
    sget-boolean v4, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_f

    const-string v4, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick sc.icon.isEnabled() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sc.seekbarView.isEnabled() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4013
    :cond_f
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4014
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mSimulateMuteControls:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/view/VolumePanel$SimulateMuteControl;

    .line 4015
    .local v3, "smc":Lcom/htc/view/VolumePanel$SimulateMuteControl;
    if-nez v3, :cond_10

    .line 4016
    const-string v4, "VolumePanel"

    const-string v5, "saveBeforeMuteVolume smc is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4020
    :cond_10
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 4021
    iput-boolean v9, v3, Lcom/htc/view/VolumePanel$SimulateMuteControl;->userSetNotificationsMuteForHeadset:Z

    .line 4030
    .end local v3    # "smc":Lcom/htc/view/VolumePanel$SimulateMuteControl;
    :cond_11
    :goto_4
    invoke-direct {p0, v2, v9}, Lcom/htc/view/VolumePanel;->setStreamToMute(Lcom/htc/view/VolumePanel$StreamControl;I)V

    .line 4031
    invoke-direct {p0, v2}, Lcom/htc/view/VolumePanel;->updateSlider(Lcom/htc/view/VolumePanel$StreamControl;)V

    goto/16 :goto_0

    .line 4023
    .restart local v3    # "smc":Lcom/htc/view/VolumePanel$SimulateMuteControl;
    :cond_12
    iput-boolean v9, v3, Lcom/htc/view/VolumePanel$SimulateMuteControl;->userSetNotificationsMute:Z

    goto :goto_4

    .line 3973
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onDisplayDisableDndRequest(I)V
    .locals 10
    .param p1, "flags"    # I

    .prologue
    .line 3291
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    .line 3292
    sget-object v9, Lcom/htc/view/VolumePanel;->sDndDisableDialogLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3293
    :try_start_0
    sget-object v0, Lcom/htc/view/VolumePanel;->sDndDisableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 3294
    monitor-exit v9

    .line 3332
    :goto_0
    return-void

    .line 3296
    :cond_0
    new-instance v3, Lcom/htc/view/VolumePanel$12;

    invoke-direct {v3, p0}, Lcom/htc/view/VolumePanel$12;-><init>(Lcom/htc/view/VolumePanel;)V

    .line 3311
    .local v3, "onClickerLiser":Landroid/content/DialogInterface$OnClickListener;
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 3312
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/content/res/HtcConfiguration;->applyHtcFontscale(Landroid/content/Context;)Z

    .line 3313
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/htc/view/VolumePanel;->applyThemeSettings(Landroid/content/Context;)I

    .line 3315
    :cond_1
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    const v2, 0x30701c7

    const v4, 0x20401f2

    const v5, 0x204025e

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/view/VolumePanel;->fnCreateDlg(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;II)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lcom/htc/view/VolumePanel;->sDndDisableDialog:Landroid/app/Dialog;

    .line 3317
    sget-object v0, Lcom/htc/view/VolumePanel;->sDndDisableDialog:Landroid/app/Dialog;

    const v1, 0x30701c6

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 3318
    new-instance v6, Lcom/htc/view/VolumePanel$DndDisableDialogReceiver;

    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/htc/view/VolumePanel;->sDndDisableDialog:Landroid/app/Dialog;

    invoke-direct {v6, v0, v1, p0}, Lcom/htc/view/VolumePanel$DndDisableDialogReceiver;-><init>(Landroid/content/Context;Landroid/app/Dialog;Lcom/htc/view/VolumePanel;)V

    .line 3320
    .local v6, "disableReceiver":Lcom/htc/view/VolumePanel$DndDisableDialogReceiver;
    sget-object v0, Lcom/htc/view/VolumePanel;->sDndDisableDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 3321
    .local v8, "window":Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 3322
    .local v7, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x7e4

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3324
    invoke-virtual {v8, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3325
    sget-object v0, Lcom/htc/view/VolumePanel;->sDndDisableDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3328
    sget-object v0, Lcom/htc/view/VolumePanel;->sDndDisableDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 3329
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3331
    .end local v3    # "onClickerLiser":Landroid/content/DialogInterface$OnClickListener;
    .end local v6    # "disableReceiver":Lcom/htc/view/VolumePanel$DndDisableDialogReceiver;
    .end local v7    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v8    # "window":Landroid/view/Window;
    :cond_2
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->forceTimeout()V

    goto :goto_0

    .line 3329
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onDisplaySafeVolumeWarning(I)V
    .locals 10
    .param p1, "flags"    # I

    .prologue
    .line 3254
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3255
    :cond_0
    sget-object v9, Lcom/htc/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3256
    :try_start_0
    sget-object v0, Lcom/htc/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 3257
    monitor-exit v9

    .line 3288
    :cond_1
    :goto_0
    return-void

    .line 3259
    :cond_2
    new-instance v3, Lcom/htc/view/VolumePanel$11;

    invoke-direct {v3, p0}, Lcom/htc/view/VolumePanel$11;-><init>(Lcom/htc/view/VolumePanel;)V

    .line 3264
    .local v3, "onClickerLiser":Landroid/content/DialogInterface$OnClickListener;
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 3265
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/content/res/HtcConfiguration;->applyHtcFontscale(Landroid/content/Context;)Z

    .line 3266
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/htc/view/VolumePanel;->applyThemeSettings(Landroid/content/Context;)I

    .line 3268
    :cond_3
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    const v2, 0x1040582

    const v4, 0x2040258

    const v5, 0x2040256

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/view/VolumePanel;->fnCreateDlg(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;II)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lcom/htc/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/Dialog;

    .line 3270
    sget-object v0, Lcom/htc/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/Dialog;

    const v1, 0x2040262

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 3271
    new-instance v7, Lcom/htc/view/VolumePanel$WarningDialogReceiver;

    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/htc/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {v7, v0, v1, p0, v2}, Lcom/htc/view/VolumePanel$WarningDialogReceiver;-><init>(Landroid/content/Context;Landroid/app/Dialog;Lcom/htc/view/VolumePanel;Landroid/media/AudioManager;)V

    .line 3274
    .local v7, "warning":Lcom/htc/view/VolumePanel$WarningDialogReceiver;
    sget-object v0, Lcom/htc/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3275
    sget-object v0, Lcom/htc/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 3276
    sget-object v0, Lcom/htc/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 3277
    .local v8, "window":Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 3278
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x7e4

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3280
    invoke-virtual {v8, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3281
    sget-object v0, Lcom/htc/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 3282
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3283
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->updateStates()V

    .line 3285
    .end local v3    # "onClickerLiser":Landroid/content/DialogInterface$OnClickListener;
    .end local v6    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "warning":Lcom/htc/view/VolumePanel$WarningDialogReceiver;
    .end local v8    # "window":Landroid/view/Window;
    :cond_4
    iget v0, p0, Lcom/htc/view/VolumePanel;->mSafeVolumeTimeoutDelay:I

    if-eqz v0, :cond_1

    .line 3286
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    goto :goto_0

    .line 3282
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 4934
    if-eqz p2, :cond_0

    .line 4935
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    .line 4937
    :cond_0
    return-void
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    .line 3536
    monitor-enter p0

    .line 3537
    :try_start_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3538
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 3539
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/view/VolumePanel$SoundPoolHelp;->release()V

    .line 3541
    :cond_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 3537
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3543
    :cond_1
    monitor-exit p0

    .line 3544
    return-void

    .line 3543
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 4799
    sparse-switch p2, :sswitch_data_0

    .line 4806
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 4804
    :sswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/view/VolumePanel;->OnExpandDialogVolumeKeyEvent(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 4799
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMuteChanged(II)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 2807
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMuteChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    :cond_0
    const/4 v0, 0x0

    .line 2810
    .local v0, "sc":Lcom/htc/view/VolumePanel$StreamControl;
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->checkAndCreateSliders()V

    .line 2811
    monitor-enter p0

    .line 2812
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->getStreamControlForStream(I)Lcom/htc/view/VolumePanel$StreamControl;

    move-result-object v0

    .line 2813
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2814
    if-eqz v0, :cond_1

    .line 2815
    iget-object v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    iget v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/htc/view/VolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/htc/view/VolumePanel;->fnSetButtonIcon(Landroid/view/View;I)V

    .line 2818
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/htc/view/VolumePanel;->onVolumeChanged(II)V

    .line 2819
    return-void

    .line 2813
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2815
    :cond_2
    iget v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method protected onPlaySound(II)V
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x3

    .line 3090
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    .line 3091
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPlaySound(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/view/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3095
    invoke-virtual {p0, v4}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 3097
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/view/VolumePanel;->onStopSounds(Lcom/htc/view/VolumePanel$ISoundPlay;)V

    .line 3101
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 3102
    .local v0, "index":I
    if-lez v0, :cond_2

    .line 3106
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/htc/view/VolumePanel;->internalPlaySound(IIZ)V

    .line 3108
    :cond_2
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_3

    .line 3109
    const-string v1, "VolumePanel"

    const-string v2, "--onPlaySound(streamType: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    :cond_3
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x2

    const/4 v4, 0x0

    .line 3791
    sget-boolean v3, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    .line 3793
    const-string v5, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onProgressChanged progress = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " sStreamType = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/view/VolumePanel$StreamControl;

    iget v3, v3, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3794
    const-string v5, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onProgressChanged streamVolume = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/view/VolumePanel$StreamControl;

    iget v3, v3, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3797
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 3798
    .local v2, "tag":Ljava/lang/Object;
    if-eqz p3, :cond_9

    instance-of v3, v2, Lcom/htc/view/VolumePanel$StreamControl;

    if-eqz v3, :cond_9

    move-object v1, v2

    .line 3799
    check-cast v1, Lcom/htc/view/VolumePanel$StreamControl;

    .line 3800
    .local v1, "sc":Lcom/htc/view/VolumePanel$StreamControl;
    if-eqz v1, :cond_3

    iget v3, v1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-eqz v3, :cond_1

    iget v3, v1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v5, 0x6

    if-ne v3, v5, :cond_3

    .line 3807
    :cond_1
    if-nez p2, :cond_6

    .line 3808
    sget-boolean v3, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_2

    .line 3809
    const-string v3, "VolumePanel"

    const-string v5, "onProgressChanged incall progress =  0 =>set to 1"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3810
    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3818
    :cond_3
    :goto_0
    iget v3, v1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-eq v3, v7, :cond_4

    iget v3, v1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_7

    .line 3819
    :cond_4
    iget v3, p0, Lcom/htc/view/VolumePanel;->mDndMode:I

    if-eqz v3, :cond_7

    .line 3820
    sget-boolean v3, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_5

    .line 3821
    const-string v3, "VolumePanel"

    const-string v5, "onProgressChanged DND activing"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3824
    :cond_5
    invoke-virtual {p1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3826
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v7, v0, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 3858
    .end local v1    # "sc":Lcom/htc/view/VolumePanel$StreamControl;
    :goto_1
    return-void

    .line 3813
    .restart local v1    # "sc":Lcom/htc/view/VolumePanel$StreamControl;
    :cond_6
    add-int/lit8 p2, p2, -0x1

    .line 3814
    sget-boolean v3, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_3

    .line 3815
    const-string v3, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onProgressChanged incall index =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3830
    :cond_7
    iget v3, v1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v3

    if-eq v3, p2, :cond_9

    .line 3841
    iget-boolean v3, p0, Lcom/htc/view/VolumePanel;->mExpand:Z

    if-eqz v3, :cond_8

    move v0, v4

    .line 3842
    .local v0, "flags":I
    :cond_8
    iget v3, v1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v3, p2, v0}, Lcom/htc/view/VolumePanel;->setStreamVolume(III)V

    .line 3845
    iget-boolean v3, p0, Lcom/htc/view/VolumePanel;->mExpand:Z

    if-eqz v3, :cond_9

    .line 3847
    invoke-virtual {p0, v7}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 3848
    iget v3, v1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {p0, v7, v3, v4}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3856
    .end local v0    # "flags":I
    .end local v1    # "sc":Lcom/htc/view/VolumePanel$StreamControl;
    :cond_9
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    .line 3857
    const-string v3, "VolumePanel"

    const-string v4, "--onProgressChanged progress  "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onRemoteVolumeChanged(II)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, -0xc8

    .line 3170
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRemoteVolumeChanged(stream:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v1}, Lcom/htc/view/VolumePanel;->getNotificationUseRingVolumeOrThrow(Landroid/media/AudioManager;)Z

    move-result v1

    sput-boolean v1, Lcom/htc/view/VolumePanel;->mUseRingVolumeAsNotifyVolume:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3178
    :goto_0
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->checkAndCreateSliders()V

    .line 3180
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3181
    :cond_1
    monitor-enter p0

    .line 3182
    :try_start_1
    iget v1, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    if-eq v1, v4, :cond_2

    .line 3183
    const/16 v1, -0xc8

    invoke-direct {p0, v1}, Lcom/htc/view/VolumePanel;->reorderSliders(I)V

    .line 3185
    :cond_2
    const/16 v1, -0xc8

    invoke-virtual {p0, v1, p2}, Lcom/htc/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 3186
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3191
    :cond_3
    :goto_1
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/htc/view/VolumePanel;->mRingIsSilent:Z

    if-nez v1, :cond_4

    .line 3192
    invoke-virtual {p0, v6}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 3193
    invoke-virtual {p0, v6, p1, p2}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3196
    :cond_4
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_5

    .line 3197
    invoke-virtual {p0, v6}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 3198
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 3199
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/view/VolumePanel;->onStopSounds(Lcom/htc/view/VolumePanel$ISoundPlay;)V

    .line 3202
    :cond_5
    invoke-virtual {p0, v5}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 3203
    invoke-virtual {p0, v5}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x927c0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3205
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    .line 3206
    return-void

    .line 3173
    :catch_0
    move-exception v0

    .line 3174
    .local v0, "e":Ljava/lang/Exception;
    sput-boolean v5, Lcom/htc/view/VolumePanel;->mUseRingVolumeAsNotifyVolume:Z

    .line 3175
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3186
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 3188
    :cond_6
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_3

    const-string v1, "VolumePanel"

    const-string v2, "not calling onShowVolumeChanged(), no FLAG_SHOW_UI or no UI"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onRemoteVolumeUpdateIfShown()V
    .locals 3

    .prologue
    const/16 v2, -0xc8

    .line 3221
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string v1, "onRemoteVolumeUpdateIfShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    :cond_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 3225
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/htc/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 3227
    :cond_1
    return-void
.end method

.method protected onShowVolumeChanged(II)V
    .locals 16
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 2826
    invoke-direct/range {p0 .. p1}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v4

    .line 2828
    .local v4, "index":I
    move v5, v4

    .line 2829
    .local v5, "indexOrg":I
    const/4 v2, 0x0

    .line 2831
    .local v2, "bStreamMute":Z
    invoke-direct/range {p0 .. p1}, Lcom/htc/view/VolumePanel;->isMuted(I)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x2

    move/from16 v0, p1

    if-eq v0, v13, :cond_1

    const/4 v13, 0x5

    move/from16 v0, p1

    if-eq v0, v13, :cond_0

    const/4 v13, 0x3

    move/from16 v0, p1

    if-ne v0, v13, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    if-nez v13, :cond_2

    .line 2833
    :cond_1
    const/4 v4, 0x0

    .line 2834
    const/4 v2, 0x1

    .line 2840
    :cond_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/view/VolumePanel;->mRingIsSilent:Z

    .line 2842
    sget-boolean v13, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v13, :cond_3

    .line 2843
    const-string v13, "VolumePanel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onShowVolumeChanged(streamType: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", flags: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "), index: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " indexOrg:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " bStreamMute:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    :cond_3
    const/16 v13, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 2851
    invoke-direct/range {p0 .. p1}, Lcom/htc/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v8

    .line 2852
    .local v8, "max":I
    sget-boolean v13, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v13, :cond_4

    .line 2853
    const-string v13, "VolumePanel"

    const-string v14, "++onShowVolumeChanged update by streamType"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    :cond_4
    const/4 v13, 0x2

    move/from16 v0, p1

    if-eq v0, v13, :cond_5

    const/4 v13, 0x3

    move/from16 v0, p1

    if-eq v0, v13, :cond_5

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/view/VolumePanel;->isRotate:Z

    if-eqz v13, :cond_5

    .line 2856
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/VolumePanel;->resetPanelRotation()V

    .line 2859
    :cond_5
    const/4 v11, 0x0

    .line 2860
    .local v11, "sc":Lcom/htc/view/VolumePanel$StreamControl;
    monitor-enter p0

    .line 2861
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v13, :cond_7

    .line 2862
    monitor-exit p0

    .line 3077
    :cond_6
    :goto_0
    return-void

    .line 2863
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/htc/view/VolumePanel;->getStreamControlForStream(I)Lcom/htc/view/VolumePanel$StreamControl;

    move-result-object v11

    .line 2864
    if-nez v11, :cond_8

    .line 2866
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/view/VolumePanel;->getStreamControlForStream(I)Lcom/htc/view/VolumePanel$StreamControl;

    move-result-object v1

    .line 2867
    .local v1, "active":Lcom/htc/view/VolumePanel$StreamControl;
    if-eqz v1, :cond_8

    iget v13, v1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    move/from16 v0, p1

    if-ne v13, v0, :cond_8

    .line 2868
    move-object v11, v1

    .line 2871
    .end local v1    # "active":Lcom/htc/view/VolumePanel$StreamControl;
    :cond_8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2872
    sparse-switch p1, :sswitch_data_0

    .line 2954
    :cond_9
    :goto_1
    sget-boolean v13, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v13, :cond_a

    sget-boolean v13, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v13, :cond_a

    .line 2955
    const-string v13, "VolumePanel"

    const-string v14, "++onShowVolumeChanged update progress"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    :cond_a
    if-eqz v11, :cond_14

    .line 2959
    iget-object v13, v11, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    .line 2960
    .local v3, "curMax":I
    sget-boolean v13, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v13, :cond_b

    sget-boolean v13, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v13, :cond_b

    .line 2961
    const-string v13, "VolumePanel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Seekbar current max:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    :cond_b
    if-eq v3, v8, :cond_d

    .line 2964
    sget-boolean v13, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v13, :cond_c

    sget-boolean v13, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v13, :cond_c

    .line 2965
    const-string v13, "VolumePanel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "set process max :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    :cond_c
    iget-object v13, v11, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v13, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 2969
    :cond_d
    sget-boolean v13, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v13, :cond_e

    .line 2970
    const-string v13, "VolumePanel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "set process index :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    :cond_e
    iget-object v13, v11, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    .line 2974
    .local v9, "previousIndex":I
    iget-object v13, v11, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v13, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2975
    and-int/lit8 v13, p2, 0x20

    if-nez v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v13}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v13

    move/from16 v0, p1

    if-eq v0, v13, :cond_f

    const/16 v13, -0xc8

    move/from16 v0, p1

    if-eq v0, v13, :cond_f

    invoke-direct/range {p0 .. p1}, Lcom/htc/view/VolumePanel;->isMuted(I)Z

    move-result v13

    if-nez v13, :cond_10

    :cond_f
    sget-object v13, Lcom/htc/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/Dialog;

    if-eqz v13, :cond_21

    .line 2980
    :cond_10
    sget-boolean v13, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v13, :cond_11

    sget-boolean v13, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v13, :cond_11

    .line 2981
    const-string v13, "VolumePanel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FLAG_FIXED_VOLUME || isMuted ,isMuted("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "):"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-direct/range {p0 .. p1}, Lcom/htc/view/VolumePanel;->isMuted(I)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    :cond_11
    iget-object v13, v11, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 2990
    :goto_2
    if-eq v9, v4, :cond_12

    if-eqz p1, :cond_12

    const/4 v13, 0x6

    move/from16 v0, p1

    if-eq v0, v13, :cond_12

    .line 2997
    iget v13, v11, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/view/VolumePanel;->volumeChangedByTouch(I)V

    .line 2999
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/view/VolumePanel;->mCustomizeIconRes:[I

    if-eqz v13, :cond_13

    .line 3000
    iget-object v13, v11, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v13}, Lcom/htc/view/VolumePanel;->updateCustomIcon(IILandroid/view/View;)V

    .line 3003
    :cond_13
    const/4 v13, 0x2

    move/from16 v0, p1

    if-eq v0, v13, :cond_14

    const/4 v13, 0x3

    move/from16 v0, p1

    if-eq v0, v13, :cond_14

    if-eqz p1, :cond_14

    const/4 v13, 0x6

    move/from16 v0, p1

    if-eq v0, v13, :cond_14

    .line 3012
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/htc/view/VolumePanel;->updateSlider(Lcom/htc/view/VolumePanel$StreamControl;)V

    .line 3015
    .end local v3    # "curMax":I
    .end local v9    # "previousIndex":I
    :cond_14
    sget-boolean v13, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v13, :cond_15

    .line 3016
    const-string v13, "VolumePanel"

    const-string v14, "--onShowVolumeChanged update progress"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3018
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v13}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    .line 3019
    .local v7, "isShowing":Z
    sget-boolean v13, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v13, :cond_16

    .line 3020
    const-string v13, "VolumePanel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mDialog, isShowing:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ,"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3022
    :cond_16
    if-nez v7, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/view/VolumePanel;->mExpand:Z

    if-nez v13, :cond_1b

    .line 3023
    sget-boolean v13, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v13, :cond_17

    .line 3024
    const-string v13, "VolumePanel"

    const-string v14, "++onShowVolumeChanged dialog show"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    :cond_17
    const/16 v13, -0xc8

    move/from16 v0, p1

    if-ne v0, v13, :cond_23

    const/4 v12, -0x1

    .line 3028
    .local v12, "stream":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v13, v12}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 3031
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/view/VolumePanel;->mShowCombinedVolumes:Z

    if-eqz v13, :cond_18

    .line 3032
    invoke-direct/range {p0 .. p0}, Lcom/htc/view/VolumePanel;->collapse()V

    .line 3035
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v13}, Landroid/app/Dialog;->show()V

    .line 3037
    invoke-direct/range {p0 .. p0}, Lcom/htc/view/VolumePanel;->updatePanelRotationPosition()V

    .line 3039
    const/4 v6, 0x0

    .line 3041
    .local v6, "isLocked":Z
    sget-boolean v13, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v13, :cond_19

    .line 3042
    const-string v13, "VolumePanel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "@@@ mParmNoSetting = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-byte v15, v0, Lcom/htc/view/VolumePanel;->mParmNoSetting:B

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    :cond_19
    if-nez v6, :cond_1a

    move-object/from16 v0, p0

    iget-byte v13, v0, Lcom/htc/view/VolumePanel;->mParmNoSetting:B

    const/4 v14, 0x1

    if-ne v13, v14, :cond_24

    .line 3045
    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 3046
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 3054
    :goto_4
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput-byte v13, v0, Lcom/htc/view/VolumePanel;->mMedia_layout:B

    .line 3055
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput-byte v13, v0, Lcom/htc/view/VolumePanel;->mMedia_orientation:B

    .line 3057
    sget-boolean v13, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v13, :cond_1b

    sget-boolean v13, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v13, :cond_1b

    .line 3058
    const-string v13, "VolumePanel"

    const-string v14, "--onShowVolumeChanged dialog show"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    .end local v6    # "isLocked":Z
    .end local v12    # "stream":I
    :cond_1b
    const/16 v13, -0xc8

    move/from16 v0, p1

    if-eq v0, v13, :cond_1d

    const/4 v13, 0x5

    move/from16 v0, p1

    if-ne v0, v13, :cond_1c

    sget-boolean v13, Lcom/htc/view/VolumePanel;->mUseRingVolumeAsNotifyVolume:Z

    if-eqz v13, :cond_1d

    :cond_1c
    and-int/lit8 v13, p2, 0x10

    if-eqz v13, :cond_1d

    invoke-direct/range {p0 .. p1}, Lcom/htc/view/VolumePanel;->isStreamAffectedByRingerMode(I)Z

    move-result v13

    if-eqz v13, :cond_1d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v13}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1d

    .line 3071
    const/4 v13, 0x0

    sput-boolean v13, Lcom/htc/view/VolumePanel;->mForeceVibrateIfHtcParmSet:Z

    .line 3072
    const/4 v13, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3074
    :cond_1d
    sget-boolean v13, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v13, :cond_6

    .line 3075
    const-string v13, "VolumePanel"

    const-string v14, "--onShowVolumeChanged"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2871
    .end local v7    # "isShowing":Z
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 2875
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/VolumePanel;->updatePanelRotation()V

    .line 2876
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v10

    .line 2878
    .local v10, "ringuri":Landroid/net/Uri;
    if-nez v10, :cond_9

    .line 2879
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_1

    .line 2885
    .end local v10    # "ringuri":Landroid/net/Uri;
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/VolumePanel;->updatePanelRotation()V

    .line 2887
    if-eqz v11, :cond_9

    .line 2889
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/view/VolumePanel;->mCustomizeIconRes:[I

    if-eqz v13, :cond_1e

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/view/VolumePanel;->mCustomizeIconSilenceRes:I

    if-gtz v13, :cond_20

    .line 2890
    :cond_1e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v13

    and-int/lit16 v13, v13, 0x380

    if-eqz v13, :cond_1f

    .line 2894
    sget-object v13, Lcom/htc/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v13, v13, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    sget-object v14, Lcom/htc/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v14, v14, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13, v14}, Lcom/htc/view/VolumePanel;->setMusicIcon(Lcom/htc/view/VolumePanel$StreamControl;II)V

    goto/16 :goto_1

    .line 2897
    :cond_1f
    sget-object v13, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v13, v13, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    sget-object v14, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v14, v14, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13, v14}, Lcom/htc/view/VolumePanel;->setMusicIcon(Lcom/htc/view/VolumePanel$StreamControl;II)V

    goto/16 :goto_1

    .line 2901
    :cond_20
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/view/VolumePanel;->mCustomizeIconSilenceRes:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/view/VolumePanel;->setSliencIcon(I)V

    goto/16 :goto_1

    .line 2912
    :sswitch_2
    add-int/lit8 v4, v4, 0x1

    .line 2913
    add-int/lit8 v8, v8, 0x1

    .line 2914
    goto/16 :goto_1

    .line 2918
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v14, 0x4

    invoke-static {v13, v14}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v10

    .line 2920
    .restart local v10    # "ringuri":Landroid/net/Uri;
    if-nez v10, :cond_9

    .line 2921
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_1

    .line 2927
    .end local v10    # "ringuri":Landroid/net/Uri;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v10

    .line 2929
    .restart local v10    # "ringuri":Landroid/net/Uri;
    if-nez v10, :cond_9

    .line 2930
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_1

    .line 2941
    .end local v10    # "ringuri":Landroid/net/Uri;
    :sswitch_5
    add-int/lit8 v4, v4, 0x1

    .line 2942
    add-int/lit8 v8, v8, 0x1

    .line 2943
    goto/16 :goto_1

    .line 2947
    :sswitch_6
    sget-boolean v13, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v13, :cond_9

    const-string v13, "VolumePanel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "showing remote volume "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " over "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2985
    .restart local v3    # "curMax":I
    .restart local v9    # "previousIndex":I
    :cond_21
    sget-boolean v13, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v13, :cond_22

    sget-boolean v13, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v13, :cond_22

    .line 2986
    const-string v13, "VolumePanel"

    const-string v14, "!FLAG_FIXED_VOLUME && !isMuted"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2988
    :cond_22
    iget-object v13, v11, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto/16 :goto_2

    .end local v3    # "curMax":I
    .end local v9    # "previousIndex":I
    .restart local v7    # "isShowing":Z
    :cond_23
    move/from16 v12, p1

    .line 3026
    goto/16 :goto_3

    .line 3049
    .restart local v6    # "isLocked":Z
    .restart local v12    # "stream":I
    :cond_24
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 3050
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 3051
    invoke-direct/range {p0 .. p0}, Lcom/htc/view/VolumePanel;->updatePanelMoreButtonDivider()V

    goto/16 :goto_4

    .line 2872
    nop

    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_6
        0x0 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
    .end sparse-switch
.end method

.method protected declared-synchronized onSliderVisibilityChanged(II)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "visible"    # I

    .prologue
    const/4 v1, 0x1

    .line 3238
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSliderVisibilityChanged(stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", visi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3239
    :cond_0
    if-ne p2, v1, :cond_2

    .line 3240
    .local v1, "isVisible":Z
    :goto_0
    sget-object v3, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 3241
    sget-object v3, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    aget-object v2, v3, v0

    .line 3242
    .local v2, "streamRes":Lcom/htc/view/VolumePanel$StreamResources;
    iget v3, v2, Lcom/htc/view/VolumePanel$StreamResources;->streamType:I

    if-ne v3, p1, :cond_3

    .line 3243
    iput-boolean v1, v2, Lcom/htc/view/VolumePanel$StreamResources;->show:Z

    .line 3244
    if-nez v1, :cond_1

    iget v3, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    if-ne v3, p1, :cond_1

    .line 3245
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3250
    .end local v2    # "streamRes":Lcom/htc/view/VolumePanel$StreamResources;
    :cond_1
    monitor-exit p0

    return-void

    .line 3239
    .end local v0    # "i":I
    .end local v1    # "isVisible":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 3240
    .restart local v0    # "i":I
    .restart local v1    # "isVisible":Z
    .restart local v2    # "streamRes":Lcom/htc/view/VolumePanel$StreamResources;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 3238
    .end local v0    # "i":I
    .end local v1    # "isVisible":Z
    .end local v2    # "streamRes":Lcom/htc/view/VolumePanel$StreamResources;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 3908
    return-void
.end method

.method protected onStopSounds(Lcom/htc/view/VolumePanel$ISoundPlay;)V
    .locals 5
    .param p1, "nexPlayObject"    # Lcom/htc/view/VolumePanel$ISoundPlay;

    .prologue
    .line 3132
    monitor-enter p0

    .line 3133
    :try_start_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    .local v0, "arr$":[Lcom/htc/view/VolumePanel$SoundPoolHelp;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 3134
    .local v3, "vol":Lcom/htc/view/VolumePanel$SoundPoolHelp;
    if-eqz v3, :cond_0

    if-eq p1, v3, :cond_0

    invoke-virtual {v3}, Lcom/htc/view/VolumePanel$SoundPoolHelp;->fnstop()V

    .line 3133
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3136
    .end local v3    # "vol":Lcom/htc/view/VolumePanel$SoundPoolHelp;
    :cond_1
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mRingtonePlays:[Lcom/htc/view/VolumePanel$HtcRingtonePlay;

    .local v0, "arr$":[Lcom/htc/view/VolumePanel$HtcRingtonePlay;
    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 3137
    .local v3, "vol":Lcom/htc/view/VolumePanel$HtcRingtonePlay;
    if-eqz v3, :cond_2

    if-eq p1, v3, :cond_2

    invoke-virtual {v3}, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->fnstop()V

    .line 3136
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3139
    .end local v3    # "vol":Lcom/htc/view/VolumePanel$HtcRingtonePlay;
    :cond_3
    iget-boolean v4, p0, Lcom/htc/view/VolumePanel;->mExpand:Z

    if-nez v4, :cond_5

    .line 3140
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    .local v0, "arr$":[Lcom/htc/view/VolumePanel$SoundPoolHelp;
    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_7

    aget-object v3, v0, v1

    .line 3141
    .local v3, "vol":Lcom/htc/view/VolumePanel$SoundPoolHelp;
    if-eqz v3, :cond_4

    if-eq p1, v3, :cond_4

    invoke-virtual {v3}, Lcom/htc/view/VolumePanel$SoundPoolHelp;->fnstop()V

    .line 3140
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3144
    .end local v3    # "vol":Lcom/htc/view/VolumePanel$SoundPoolHelp;
    .local v0, "arr$":[Lcom/htc/view/VolumePanel$HtcRingtonePlay;
    :cond_5
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mRingtonePlays:[Lcom/htc/view/VolumePanel$HtcRingtonePlay;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_7

    aget-object v3, v0, v1

    .line 3145
    .local v3, "vol":Lcom/htc/view/VolumePanel$HtcRingtonePlay;
    if-eqz v3, :cond_6

    if-eq p1, v3, :cond_6

    invoke-virtual {v3}, Lcom/htc/view/VolumePanel$HtcRingtonePlay;->fnstop()V

    .line 3144
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3148
    .end local v0    # "arr$":[Lcom/htc/view/VolumePanel$HtcRingtonePlay;
    .end local v3    # "vol":Lcom/htc/view/VolumePanel$HtcRingtonePlay;
    :cond_7
    monitor-exit p0

    .line 3149
    return-void

    .line 3148
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/16 v3, -0xc8

    .line 3911
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 3912
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Lcom/htc/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 3913
    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    .line 3918
    .local v0, "sc":Lcom/htc/view/VolumePanel$StreamControl;
    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-ne v2, v3, :cond_1

    .line 3919
    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3929
    .end local v0    # "sc":Lcom/htc/view/VolumePanel$StreamControl;
    :cond_0
    :goto_0
    return-void

    .line 3922
    .restart local v0    # "sc":Lcom/htc/view/VolumePanel$StreamControl;
    :cond_1
    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-nez v2, :cond_0

    .line 3923
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-nez v2, :cond_0

    .line 3924
    iget-object v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    .line 3156
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 3164
    :cond_0
    :goto_0
    return-void

    .line 3159
    :cond_1
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_2

    .line 3160
    const-string v0, "VolumePanel"

    const-string v1, ">>mVibrator.vibrate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3161
    :cond_2
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 3162
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    .line 3163
    const-string v0, "VolumePanel"

    const-string v1, "<<mVibrator.vibrate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 11
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 2707
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_0

    const-string v8, "VolumePanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onVolumeChanged(streamType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", flags: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v8}, Lcom/htc/view/VolumePanel;->getNotificationUseRingVolumeOrThrow(Landroid/media/AudioManager;)Z

    move-result v8

    sput-boolean v8, Lcom/htc/view/VolumePanel;->mUseRingVolumeAsNotifyVolume:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2715
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->checkMuteState(I)V

    .line 2716
    monitor-enter p0

    .line 2717
    :try_start_1
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_1

    .line 2718
    const-string v8, "VolumePanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mUseRingVolumeAsNotifyVolume: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/htc/view/VolumePanel;->mUseRingVolumeAsNotifyVolume:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mLastUseRingVolumeAsNotifyVolume: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/htc/view/VolumePanel;->mLastUseRingVolumeAsNotifyVolume:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2720
    :cond_1
    sget-boolean v8, Lcom/htc/view/VolumePanel;->mUseRingVolumeAsNotifyVolume:Z

    sget-boolean v9, Lcom/htc/view/VolumePanel;->mLastUseRingVolumeAsNotifyVolume:Z

    if-eq v8, v9, :cond_2

    .line 2721
    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-eqz v8, :cond_2

    const/4 v8, 0x5

    if-ne p1, v8, :cond_2

    iget-boolean v8, p0, Lcom/htc/view/VolumePanel;->mExpand:Z

    if-nez v8, :cond_2

    .line 2722
    sget-boolean v8, Lcom/htc/view/VolumePanel;->mUseRingVolumeAsNotifyVolume:Z

    sput-boolean v8, Lcom/htc/view/VolumePanel;->mLastUseRingVolumeAsNotifyVolume:Z

    .line 2724
    const/4 v8, 0x5

    invoke-direct {p0, v8}, Lcom/htc/view/VolumePanel;->getStreamControlForStream(I)Lcom/htc/view/VolumePanel$StreamControl;

    move-result-object v7

    .line 2726
    .local v7, "sc":Lcom/htc/view/VolumePanel$StreamControl;
    if-eqz v7, :cond_2

    .line 2727
    sget-boolean v8, Lcom/htc/view/VolumePanel;->mUseRingVolumeAsNotifyVolume:Z

    if-nez v8, :cond_4

    .line 2728
    sget-object v5, Lcom/htc/view/VolumePanel$StreamResources;->NotificationStream:Lcom/htc/view/VolumePanel$StreamResources;

    .line 2732
    .local v5, "notificationStream":Lcom/htc/view/VolumePanel$StreamResources;
    :goto_1
    iget v8, v5, Lcom/htc/view/VolumePanel$StreamResources;->descRes:I

    iput v8, v7, Lcom/htc/view/VolumePanel$StreamControl;->desTextRes:I

    .line 2733
    iget v8, v5, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    iput v8, v7, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I

    .line 2734
    iget v8, v5, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    iput v8, v7, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 2735
    iget v8, v5, Lcom/htc/view/VolumePanel$StreamResources;->iconVibrateRes:I

    iput v8, v7, Lcom/htc/view/VolumePanel$StreamControl;->iconVibrateRes:I

    .line 2736
    iget v8, v5, Lcom/htc/view/VolumePanel$StreamResources;->iconOutDoorRes:I

    iput v8, v7, Lcom/htc/view/VolumePanel$StreamControl;->iconOutDoorRes:I

    .line 2737
    iget-object v8, v7, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    iget v9, v7, Lcom/htc/view/VolumePanel$StreamControl;->desTextRes:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 2738
    invoke-direct {p0, v7}, Lcom/htc/view/VolumePanel;->updateSlider(Lcom/htc/view/VolumePanel$StreamControl;)V

    .line 2742
    .end local v5    # "notificationStream":Lcom/htc/view/VolumePanel$StreamResources;
    .end local v7    # "sc":Lcom/htc/view/VolumePanel$StreamControl;
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2743
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->checkAndCreateSliders()V

    .line 2744
    and-int/lit8 v8, p2, 0x1

    if-eqz v8, :cond_9

    .line 2745
    monitor-enter p0

    .line 2746
    :try_start_2
    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v8, :cond_5

    .line 2747
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2803
    :cond_3
    :goto_2
    return-void

    .line 2711
    :catch_0
    move-exception v2

    .line 2712
    .local v2, "e":Ljava/lang/Exception;
    const/4 v8, 0x1

    sput-boolean v8, Lcom/htc/view/VolumePanel;->mUseRingVolumeAsNotifyVolume:Z

    .line 2713
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2730
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v7    # "sc":Lcom/htc/view/VolumePanel$StreamControl;
    :cond_4
    :try_start_3
    sget-object v5, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    .restart local v5    # "notificationStream":Lcom/htc/view/VolumePanel$StreamResources;
    goto :goto_1

    .line 2742
    .end local v5    # "notificationStream":Lcom/htc/view/VolumePanel$StreamResources;
    .end local v7    # "sc":Lcom/htc/view/VolumePanel$StreamControl;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 2749
    :cond_5
    const/4 v1, -0x1

    .line 2750
    .local v1, "activeStreamTypeInternal":I
    :try_start_4
    iget v8, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    const/4 v9, -0x2

    if-eq v8, v9, :cond_d

    .line 2751
    iget v1, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    .line 2760
    :cond_6
    :goto_3
    iget v8, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_7

    if-eq v1, p1, :cond_8

    .line 2762
    :cond_7
    iget-boolean v8, p0, Lcom/htc/view/VolumePanel;->mExpand:Z

    if-nez v8, :cond_8

    .line 2763
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->reorderSliders(I)V

    .line 2765
    :cond_8
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2766
    iget v8, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_e

    .line 2767
    invoke-virtual {p0, p1, p2}, Lcom/htc/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 2773
    .end local v1    # "activeStreamTypeInternal":I
    :cond_9
    :goto_4
    and-int/lit8 v8, p2, 0x4

    if-eqz v8, :cond_b

    iget-boolean v8, p0, Lcom/htc/view/VolumePanel;->mRingIsSilent:Z

    if-nez v8, :cond_b

    .line 2774
    const/4 v6, 0x0

    .line 2775
    .local v6, "playSoundDelay":I
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v3

    .line 2778
    .local v3, "index":I
    sget v8, Lcom/htc/view/VolumePanel;->mLast_stream_type:I

    if-ne v8, p1, :cond_a

    sget v8, Lcom/htc/view/VolumePanel;->mLast_stream_index:I

    if-ne v8, v3, :cond_a

    .line 2780
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v4

    .line 2781
    .local v4, "max":I
    if-ne v3, v4, :cond_a

    .line 2782
    const/16 v6, 0x96

    .line 2784
    .end local v4    # "max":I
    :cond_a
    sput p1, Lcom/htc/view/VolumePanel;->mLast_stream_type:I

    .line 2785
    sput v3, Lcom/htc/view/VolumePanel;->mLast_stream_index:I

    .line 2786
    and-int/lit8 v8, p2, 0x4

    if-eqz v8, :cond_b

    .line 2787
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 2788
    const/4 v8, 0x2

    invoke-virtual {p0, v8, p1, p2}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    int-to-long v9, v6

    invoke-virtual {p0, v8, v9, v10}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2792
    .end local v3    # "index":I
    .end local v6    # "playSoundDelay":I
    :cond_b
    and-int/lit8 v8, p2, 0x8

    if-eqz v8, :cond_c

    .line 2793
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 2794
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 2795
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/htc/view/VolumePanel;->onStopSounds(Lcom/htc/view/VolumePanel$ISoundPlay;)V

    .line 2798
    :cond_c
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 2799
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/32 v9, 0x927c0

    invoke-virtual {p0, v8, v9, v10}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2801
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    .line 2802
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_3

    const-string v8, "VolumePanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--onVolumeChanged(streamType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", flags: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2753
    .restart local v1    # "activeStreamTypeInternal":I
    :cond_d
    :try_start_5
    iget v8, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_6

    .line 2754
    iget v8, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    invoke-direct {p0, v8}, Lcom/htc/view/VolumePanel;->getStreamControlForStream(I)Lcom/htc/view/VolumePanel$StreamControl;

    move-result-object v0

    .line 2755
    .local v0, "active":Lcom/htc/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_6

    .line 2756
    iget v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    goto/16 :goto_3

    .line 2765
    .end local v0    # "active":Lcom/htc/view/VolumePanel$StreamControl;
    .end local v1    # "activeStreamTypeInternal":I
    :catchall_1
    move-exception v8

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v8

    .line 2769
    .restart local v1    # "activeStreamTypeInternal":I
    :cond_e
    const-string v8, "VolumePanel"

    const-string v9, "onVolumeChanged unknown mActiveStreamType"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public postDisplayDisableDndRequest(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    const/16 v2, 0x17

    .line 2686
    sget v0, Lcom/htc/view/VolumePanel;->mSenseVersion:F

    const/high16 v1, 0x40c00000    # 6.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 2687
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    .line 2688
    const-string v0, "VolumePanel"

    const-string v1, "postDisplayDisableDndRequest only support in Sense60 or latter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    :cond_0
    :goto_0
    return-void

    .line 2692
    :cond_1
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_2

    .line 2693
    const-string v0, "VolumePanel"

    const-string v1, "postDisplayDisableDndRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2696
    const/4 v0, 0x0

    invoke-virtual {p0, v2, p1, v0}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    const/16 v1, 0x14

    .line 2681
    invoke-virtual {p0, v1}, Lcom/htc/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2683
    :goto_0
    return-void

    .line 2682
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postHasNewRemotePlaybackInfo()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 2658
    invoke-virtual {p0, v1}, Lcom/htc/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2662
    :goto_0
    return-void

    .line 2661
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postMasterMuteChanged(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 2676
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/htc/view/VolumePanel;->postMuteChanged(II)V

    .line 2677
    return-void
.end method

.method public postMasterVolumeChanged(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 2665
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/htc/view/VolumePanel;->postVolumeChanged(II)V

    .line 2666
    return-void
.end method

.method public postMuteChanged(II)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 2669
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2673
    :goto_0
    return-void

    .line 2671
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 2672
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postRemoteSliderVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 2642
    const/16 v1, 0xa

    const/16 v2, -0xc8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2644
    return-void

    .line 2642
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postRemoteVolumeChanged(II)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/16 v1, 0x8

    .line 2635
    invoke-virtual {p0, v1}, Lcom/htc/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2639
    :goto_0
    return-void

    .line 2637
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 2638
    invoke-virtual {p0, v1, p1, p2}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postVolumeChanged(II)V
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2574
    iget-byte v0, p0, Lcom/htc/view/VolumePanel;->mParmForeceTimeout:B

    if-ne v0, v4, :cond_2

    if-nez p2, :cond_2

    .line 2575
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postVolumeChanged(force Timeout) streamType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    :cond_0
    sget-object v1, Lcom/htc/view/VolumePanel;->mNotResetParmForWattingPostVolumeSynalize:Ljava/lang/Object;

    monitor-enter v1

    .line 2577
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/view/VolumePanel;->m_NotResetParmForWattingPostVolume:Z

    .line 2578
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2579
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->forceTimeout()V

    .line 2632
    :cond_1
    :goto_0
    return-void

    .line 2578
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2583
    :cond_2
    if-nez p2, :cond_4

    .line 2584
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_3

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") --drop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    :cond_3
    sget-object v1, Lcom/htc/view/VolumePanel;->mNotResetParmForWattingPostVolumeSynalize:Ljava/lang/Object;

    monitor-enter v1

    .line 2588
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/htc/view/VolumePanel;->m_NotResetParmForWattingPostVolume:Z

    .line 2589
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2590
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    goto :goto_0

    .line 2589
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 2594
    :cond_4
    invoke-virtual {p0, v3}, Lcom/htc/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2595
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_5

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")  still processing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    :cond_5
    iget v0, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    if-ne p1, v0, :cond_6

    iget v0, p0, Lcom/htc/view/VolumePanel;->mLastFlags:I

    if-ne v0, p2, :cond_6

    .line 2597
    sget-object v1, Lcom/htc/view/VolumePanel;->mNotResetParmForWattingPostVolumeSynalize:Ljava/lang/Object;

    monitor-enter v1

    .line 2598
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/htc/view/VolumePanel;->m_NotResetParmForWattingPostVolume:Z

    .line 2599
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 2603
    :cond_6
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_7

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++postVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    :cond_7
    invoke-virtual {p0, v4}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 2615
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eq v0, v4, :cond_8

    .line 2616
    sput-boolean v4, Lcom/htc/view/VolumePanel;->mForeceVibrateIfHtcParmSet:Z

    .line 2619
    :cond_8
    sget-object v1, Lcom/htc/view/VolumePanel;->mNotResetParmForWattingPostVolumeSynalize:Ljava/lang/Object;

    monitor-enter v1

    .line 2620
    :try_start_5
    iget-byte v0, p0, Lcom/htc/view/VolumePanel;->mParmNoSetting:B

    if-lez v0, :cond_a

    sget-boolean v0, Lcom/htc/view/VolumePanel;->mForeceVibrateIfHtcParmSet:Z

    if-eqz v0, :cond_a

    .line 2621
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_9

    const-string v0, "VolumePanel"

    const-string v2, "postVolumeChanged add  customize vibrate"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    :cond_9
    or-int/lit8 p2, p2, 0x10

    .line 2624
    :cond_a
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2626
    invoke-virtual {p0, v3, p1, p2}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2627
    sget-object v1, Lcom/htc/view/VolumePanel;->mNotResetParmForWattingPostVolumeSynalize:Ljava/lang/Object;

    monitor-enter v1

    .line 2628
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lcom/htc/view/VolumePanel;->m_NotResetParmForWattingPostVolume:Z

    .line 2629
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 2630
    iput p2, p0, Lcom/htc/view/VolumePanel;->mLastFlags:I

    .line 2631
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--postVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2624
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 2629
    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0
.end method

.method protected resetPanelRotation()V
    .locals 5

    .prologue
    .line 3740
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    .line 3741
    const-string v2, "VolumePanel"

    const-string v3, "resetPanelRotation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3743
    :cond_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    if-nez v2, :cond_1

    .line 3764
    :goto_0
    return-void

    .line 3745
    :cond_1
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    monitor-enter v3

    .line 3746
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/htc/view/VolumePanel;->isRotate:Z

    .line 3747
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/view/VolumePanel;->needRotate:Z

    .line 3748
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    if-nez v2, :cond_2

    .line 3749
    monitor-exit v3

    goto :goto_0

    .line 3763
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3750
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    .line 3751
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RotateRelativeLayout;->setRotation(I)V

    .line 3752
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/RotateRelativeLayout;->setGravity(I)V

    .line 3753
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 3754
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3755
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/htc/view/VolumePanel;->mPanelWidth:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3756
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3757
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3762
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->forceTimeout()V

    .line 3763
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public resetProgressBar(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 973
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z

    if-eqz v0, :cond_0

    .line 974
    const-string v0, "VolumePanel"

    const-string v1, "resetProgressBar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_0
    monitor-enter p0

    .line 976
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 977
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->forceTimeout()V

    .line 979
    return-void

    .line 977
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 1247
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->updateStates()V

    .line 1248
    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 4
    .param p1, "parameters"    # Ljava/util/Map;

    .prologue
    const/4 v3, -0x1

    .line 1316
    if-eqz p1, :cond_a

    .line 1317
    sget-object v2, Lcom/htc/view/VolumePanel;->mNotResetParmForWattingPostVolumeSynalize:Ljava/lang/Object;

    monitor-enter v2

    .line 1318
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/htc/view/VolumePanel;->m_NotResetParmForWattingPostVolume:Z

    .line 1319
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1320
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1321
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Byte;>;"
    const-string v1, "volumepanel_key_screen_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1322
    const-string v1, "volumepanel_key_screen_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    iput-byte v1, p0, Lcom/htc/view/VolumePanel;->mMedia_orientation:B

    .line 1324
    :cond_0
    const-string v1, "volumepanel_key_layout"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1325
    const-string v1, "volumepanel_key_layout"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    iput-byte v1, p0, Lcom/htc/view/VolumePanel;->mMedia_layout:B

    .line 1327
    :cond_1
    const-string v1, "volumepanel_no_setting"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1328
    const-string v1, "volumepanel_no_setting"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    iput-byte v1, p0, Lcom/htc/view/VolumePanel;->mParmNoSetting:B

    .line 1330
    :cond_2
    const-string v1, "volumepanel_expand_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1331
    const-string v1, "volumepanel_expand_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    iput-byte v1, p0, Lcom/htc/view/VolumePanel;->mParmToExpand:B

    .line 1333
    :cond_3
    const-string v1, "volumepanel_simulate_ap_expand_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1334
    const-string v1, "volumepanel_simulate_ap_expand_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    iput-byte v1, p0, Lcom/htc/view/VolumePanel;->mParmSimuteAPModeExpand:B

    .line 1335
    :cond_4
    const-string v1, "volumepanel_force_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1336
    const-string v1, "volumepanel_force_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    iput-byte v1, p0, Lcom/htc/view/VolumePanel;->mParmForeceTimeout:B

    .line 1337
    :cond_5
    const-string v1, "volumepanel_force_timeout_sap"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1338
    const-string v1, "volumepanel_force_timeout_sap"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    iput-byte v1, p0, Lcom/htc/view/VolumePanel;->mParmForeceTimeoutSap:B

    .line 1339
    :cond_6
    const-string v1, "volumepanel_alias_title_from"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1345
    const-string v1, "volumepanel_alias_title_from"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    iput-byte v1, p0, Lcom/htc/view/VolumePanel;->mParmAliasTitleFrom:B

    .line 1347
    :cond_7
    const-string v1, "volumepanel_alias_icon_from"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1352
    const-string v1, "volumepanel_alias_icon_from"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    iput-byte v1, p0, Lcom/htc/view/VolumePanel;->mParmAliasIconFrom:B

    .line 1354
    :cond_8
    const-string v1, "volumepanel_no_title"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1361
    monitor-enter p0

    .line 1362
    :try_start_1
    iget-byte v1, p0, Lcom/htc/view/VolumePanel;->mParmNoTitle:B

    if-ne v1, v3, :cond_9

    const-string v1, "volumepanel_no_title"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-lez v1, :cond_9

    .line 1363
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    .line 1364
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 1366
    :cond_9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1367
    const-string v1, "volumepanel_no_title"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    iput-byte v1, p0, Lcom/htc/view/VolumePanel;->mParmNoTitle:B

    .line 1372
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Byte;>;"
    :cond_a
    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1373
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_b

    .line 1374
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set parameter: screen_mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/htc/view/VolumePanel;->mMedia_orientation:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", key_layout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/htc/view/VolumePanel;->mMedia_layout:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", no_setting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/htc/view/VolumePanel;->mParmNoSetting:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mParmToExpand="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/htc/view/VolumePanel;->mParmToExpand:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mParmSimuteAPModeExpand="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/htc/view/VolumePanel;->mParmSimuteAPModeExpand:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mParmForeceTimeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/htc/view/VolumePanel;->mParmForeceTimeout:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mParmForeceTimeoutSap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/htc/view/VolumePanel;->mParmForeceTimeoutSap:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mParmAliasTitleFrom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/htc/view/VolumePanel;->mParmAliasTitleFrom:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mParmAliasIconFrom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/htc/view/VolumePanel;->mParmAliasIconFrom:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mParmNoTitle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/htc/view/VolumePanel;->mParmNoTitle:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :cond_b
    return-void

    .line 1319
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1366
    .restart local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Byte;>;"
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public setVolumePanelOrientation(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    const/4 v3, 0x1

    .line 3508
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    if-nez v0, :cond_1

    .line 3533
    :cond_0
    :goto_0
    return-void

    .line 3510
    :cond_1
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_2

    .line 3511
    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolumePanelOrientation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3513
    :cond_2
    iget v0, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    if-ne v0, p1, :cond_3

    .line 3514
    const-string v0, "VolumePanel"

    const-string v1, "setVolumePanelOrientation --orientation not change --skip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3519
    :cond_3
    if-eqz p1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    if-eq p1, v3, :cond_4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 3524
    :cond_4
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->forceTimeout()V

    .line 3528
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    monitor-enter v1

    .line 3529
    :try_start_0
    iput p1, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    .line 3530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/VolumePanel;->needRotate:Z

    .line 3531
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected updatePanelRotation()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 3564
    iget-boolean v2, p0, Lcom/htc/view/VolumePanel;->needRotate:Z

    if-nez v2, :cond_1

    .line 3623
    :cond_0
    :goto_0
    return-void

    .line 3566
    :cond_1
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    if-eqz v2, :cond_0

    .line 3569
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_2

    .line 3570
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePanelRotation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3574
    :cond_2
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    monitor-enter v3

    .line 3575
    :try_start_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 3576
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3577
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    if-nez v2, :cond_4

    .line 3579
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    iget v4, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    invoke-virtual {v2, v4}, Landroid/widget/RotateRelativeLayout;->setRotation(I)V

    .line 3580
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/RotateRelativeLayout;->setGravity(I)V

    .line 3581
    iget v2, p0, Lcom/htc/view/VolumePanel;->mPanelWidth:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3582
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3617
    :cond_3
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3618
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/view/VolumePanel;->isRotate:Z

    .line 3619
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/view/VolumePanel;->needRotate:Z

    .line 3621
    monitor-exit v3

    goto :goto_0

    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "window":Landroid/view/Window;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3587
    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "window":Landroid/view/Window;
    :cond_4
    :try_start_1
    iget v2, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    if-ne v2, v5, :cond_5

    .line 3589
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/widget/RotateRelativeLayout;->setRotation(I)V

    .line 3590
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/RotateRelativeLayout;->setGravity(I)V

    .line 3591
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3592
    iget v2, p0, Lcom/htc/view/VolumePanel;->mPanelWidth:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 3597
    :cond_5
    iget v2, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_6

    .line 3599
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    iget v4, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    invoke-virtual {v2, v4}, Landroid/widget/RotateRelativeLayout;->setRotation(I)V

    .line 3600
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/RotateRelativeLayout;->setGravity(I)V

    .line 3601
    iget v2, p0, Lcom/htc/view/VolumePanel;->mPanelWidth:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3602
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 3607
    :cond_6
    iget v2, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    if-ne v2, v6, :cond_3

    .line 3609
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/RotateRelativeLayout;->setRotation(I)V

    .line 3610
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/RotateRelativeLayout;->setGravity(I)V

    .line 3611
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3612
    iget v2, p0, Lcom/htc/view/VolumePanel;->mPanelWidth:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public updateSlientSetting(II)V
    .locals 5
    .param p1, "VolumeSetting"    # I
    .param p2, "sStreamType"    # I

    .prologue
    const/4 v4, 0x2

    .line 3864
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSlientSetting VolumeSetting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sStreamType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3867
    :cond_0
    if-eq p2, v4, :cond_3

    const/4 v1, 0x5

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    if-eqz v1, :cond_3

    .line 3904
    :cond_2
    :goto_0
    return-void

    .line 3875
    :cond_3
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 3876
    .local v0, "currentSlientSetting":I
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_4

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSlientSetting currentSlientSetting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3878
    :cond_4
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3887
    :pswitch_0
    if-lez p1, :cond_5

    .line 3889
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 3881
    :pswitch_1
    if-nez p1, :cond_2

    .line 3883
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 3893
    :cond_5
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 3894
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 3898
    :pswitch_2
    if-lez p1, :cond_2

    .line 3900
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 3878
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public updateStates()V
    .locals 5

    .prologue
    .line 2564
    iget-boolean v4, p0, Lcom/htc/view/VolumePanel;->mExpand:Z

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mSliderGroupEx:Landroid/view/ViewGroup;

    .line 2565
    .local v3, "sliderGroup":Landroid/view/ViewGroup;
    :goto_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2566
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 2567
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/view/VolumePanel$StreamControl;

    .line 2568
    .local v2, "sc":Lcom/htc/view/VolumePanel$StreamControl;
    invoke-direct {p0, v2}, Lcom/htc/view/VolumePanel;->updateSlider(Lcom/htc/view/VolumePanel$StreamControl;)V

    .line 2566
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2564
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "sc":Lcom/htc/view/VolumePanel$StreamControl;
    .end local v3    # "sliderGroup":Landroid/view/ViewGroup;
    :cond_0
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    goto :goto_0

    .line 2570
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "sliderGroup":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method
