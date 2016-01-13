.class Lcom/htc/server/WfdStateMachine;
.super Lcom/htc/server/StateMachine;
.source "WfdStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/WfdStateMachine$WifiServiceHandler;,
        Lcom/htc/server/WfdStateMachine$LinkResetState;,
        Lcom/htc/server/WfdStateMachine$DiscoverWivuState;,
        Lcom/htc/server/WfdStateMachine$LinkDiscoverState;,
        Lcom/htc/server/WfdStateMachine$LinkOnState;,
        Lcom/htc/server/WfdStateMachine$ControlWpsState;,
        Lcom/htc/server/WfdStateMachine$ControlApState;,
        Lcom/htc/server/WfdStateMachine$ControlWifiState;,
        Lcom/htc/server/WfdStateMachine$ScanDongleState;,
        Lcom/htc/server/WfdStateMachine$LinkInitState;,
        Lcom/htc/server/WfdStateMachine$DefaultState;
    }
.end annotation


# static fields
.field private static final APH_RSSI_THRESHOLD:I = -0x4b

.field private static final AP_INTERFACE_NAME:Ljava/lang/String; = "wlan1"

.field private static final AUTO_TESTING_INTERVAL:I = 0x249f0

.field private static final CMD_ATTEMPT_TO_SETTING:I = 0x2e

.field private static final CMD_BACK_TO_SCAN:I = 0x2c

.field private static final CMD_CONNECT_TO_NON_LOCK_DONGLE:I = 0x44

.field private static final CMD_DISABLE_AP:I = 0x9

.field private static final CMD_DISABLE_WIFI:I = 0x5

.field private static final CMD_DISPLAY_SETTINGS:I = 0x2f

.field private static final CMD_DISPLAY_TUTORIAL:I = 0x31

.field private static final CMD_ENABLE_AP:I = 0x7

.field private static final CMD_ENABLE_WIFI:I = 0x3

.field private static final CMD_FINISH_IN_BACKGROUND:I = 0x38

.field private static final CMD_FINISH_SERVICE:I = 0x32

.field private static final CMD_HANDLE_BACK_KEY:I = 0x28

.field private static final CMD_L2PE_TIMEOUT:I = 0x2b

.field private static final CMD_NOTIFY_DISABLE_AP_SUCCESS:I = 0xa

.field private static final CMD_NOTIFY_DISABLE_WIFI_SUCCESS:I = 0x6

.field private static final CMD_NOTIFY_DONGLE_CONNECTED_TO_APM:I = 0x3c

.field private static final CMD_NOTIFY_DONGLE_RESET_COMPLETE:I = 0x3f

.field private static final CMD_NOTIFY_DONGLE_UNLOCK_FAIL:I = 0x42

.field private static final CMD_NOTIFY_DONGLE_UNLOCK_SUCCESS:I = 0x41

.field private static final CMD_NOTIFY_DONGLE_UNLOCK_TIMEOUT:I = 0x43

.field private static final CMD_NOTIFY_DONGLE_WPS_TRIGGERED:I = 0x3a

.field private static final CMD_NOTIFY_ENABLE_AP_SUCCESS:I = 0x8

.field private static final CMD_NOTIFY_ENABLE_WIFI_SUCCESS:I = 0x4

.field private static final CMD_NOTIFY_L2PE_FAIL:I = 0x24

.field private static final CMD_NOTIFY_L2PE_SUCCESS:I = 0x23

.field private static final CMD_NOTIFY_MIRROR_DISPLAY_READY:I = 0x22

.field private static final CMD_NOTIFY_MIRROR_DISPLAY_START:I = 0x20

.field private static final CMD_NOTIFY_MIRROR_DISPLAY_STOP:I = 0x21

.field private static final CMD_NOTIFY_NETWORK_CHANGE:I = 0x1f

.field private static final CMD_NOTIFY_SCAN_DONGLE_COMPLETE:I = 0x25

.field private static final CMD_NOTIFY_SCAN_DONGLE_NONE:I = 0x26

.field private static final CMD_NOTIFY_WIVU_FAIL:I = 0x30

.field private static final CMD_NOTIFY_WIVU_LIST_CHANGED:I = 0x2d

.field private static final CMD_NOTIFY_WPS_FAILURE:I = 0xf

.field private static final CMD_NOTIFY_WPS_START:I = 0x10

.field private static final CMD_NOTIFY_WPS_SUCCESS:I = 0xe

.field private static final CMD_QUIT_CMD:I = -0x1

.field private static final CMD_READ_DONGLE_CONFIG:I = 0x1b

.field private static final CMD_REQUEST_RESET_DONGLE_ON_DEMAND:I = 0x3e

.field private static final CMD_REQUEST_SCAN:I = 0x18

.field private static final CMD_REQUEST_SCAN_QUIET:I = 0x19

.field private static final CMD_REQUEST_SOFT_RESET_DONGLE:I = 0x3d

.field private static final CMD_REQUEST_SWITCH_TO_APM:I = 0x36

.field private static final CMD_REQUEST_UNLOCK_ON_DEMAND:I = 0x40

.field private static final CMD_RESET_STATE_MACHINE:I = 0x64

.field private static final CMD_RETRY_CONFIGURE_WITH_DONGLE_RESET:I = 0x47

.field private static final CMD_RETRY_WPS_ON_DEMAND:I = 0x11

.field private static final CMD_START_CONFIGURE:I = 0x1

.field private static final CMD_START_CONFIGURE_DFS:I = 0x33

.field private static final CMD_START_DISCOVERY:I = 0x2

.field private static final CMD_START_DISCOVERY_DFS:I = 0x34

.field private static final CMD_START_DISCOVERY_RESUME:I = 0x37

.field private static final CMD_START_RECONFIGURE:I = 0x27

.field private static final CMD_START_UNLOCK_DFS:I = 0x45

.field private static final CMD_START_WIVU_DISCOVERY:I = 0x1c

.field private static final CMD_START_WPS:I = 0xb

.field private static final CMD_STOP_SCANNING_DONGLE:I = 0x46

.field private static final CMD_STOP_WIVU_DISCOVERY:I = 0x1d

.field private static final CMD_STOP_WPS:I = 0xc

.field private static final CMD_UPDATE_WIVU_PROGRESS:I = 0x35

.field private static final CMD_WAIT_MIRROR_STOP:I = 0x39

.field private static final CMD_WIVU_DISCOVERY_FOR_CONNECTION_REQUEST:I = 0x3b

.field private static final CMD_WIVU_DISCOVERY_TIMEOUT:I = 0x1e

.field private static final CMD_WPS_TIMEOUT:I = 0xd

.field private static final DBG:Z = true

.field private static final L2PE_TIMEOUT:I = 0x4e20

.field private static final NOISE_RSSI_THRESHOLD:I = -0x58

.field private static final NOTIFY_CONFIGURING_PROGRESS_CHANGE:I = 0x2

.field private static final NOTIFY_MIRROR_DISPLAY_STATE_CHANGE:I = 0x1

.field private static final NOTIFY_STATE_CHANGE:I = 0x0

.field private static final PATTERN_UNLOCK_TIMEOUT:I = 0x7530

.field private static final STA_INTERFACE_NAME:Ljava/lang/String; = "wlan0"

.field private static final TAG:Ljava/lang/String; = "WfdStateMachine"

.field private static final WIVU_DISCOVERY_TIMEOUT_LONG:I = 0x15f90

.field private static final WIVU_DISCOVERY_TIMEOUT_QUICK:I = 0x4e20

.field private static final WIVU_DISCOVERY_TIMEOUT_SHORT:I = 0x9c40

.field private static final WPS_TIMEOUT:I = 0x7530


# instance fields
.field mAutoTestContinouslyErrorCount:I

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/htc/wfdservice/IWfdServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field mCommonProfileApKey:Ljava/lang/String;

.field mCommonProfileApSsid:Ljava/lang/String;

.field mConfigProgress:I

.field mConnManager:Landroid/net/ConnectivityManager;

.field mConnectableAphBeforeSsid:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mControlApState:Lcom/htc/server/State;

.field mControlWifiState:Lcom/htc/server/State;

.field mControlWpsState:Lcom/htc/server/State;

.field mCurrentDongle:Lcom/htc/service/DongleInfo;

.field mCurrentPage:I

.field mDefaultState:Lcom/htc/server/State;

.field mDfsSsid:Ljava/lang/String;

.field mDiscoverWivuState:Lcom/htc/server/State;

.field mEntryMode:I

.field mFixedModeProperty:Ljava/lang/String;

.field mHtcCustomizationManager:Lcom/htc/customization/HtcCustomizationManager;

.field mIfDfsAvailable:Ljava/lang/String;

.field mIsAphConnectable:Z

.field mIsAphConnectableBefore:Z

.field mIsAutoTestConfiguring:Z

.field mIsCancelConfiguring:Z

.field mIsChangingProfile:Z

.field mIsConfiguring:Z

.field mIsConnectionRequest:Z

.field mIsDeferConfigure:Z

.field mIsDeferDiscovery:Z

.field mIsDfsChannel:Z

.field mIsDiscovering:Z

.field mIsFixedCT1:Z

.field mIsHardReset:Z

.field mIsMultipleWpsDongles:Z

.field mIsOldCaviumDongle:Z

.field mIsP2pSet:Z

.field mIsQuickScanning:Z

.field mIsReConfiguring:Z

.field mIsRequestScanning:Z

.field mIsResetting:Z

.field mIsResettingDongle:Z

.field mIsScanComplete:Z

.field mIsScanning:Z

.field mIsShowScanning:Z

.field mIsSwitchingAph:Z

.field mIsSwitchingDongles:Z

.field mIsUnlockDongle:Z

.field mIsUnlockSucceed:Z

.field mIsWivuTimeout:Z

.field mIsWpsStart:Z

.field mLinkDiscoverState:Lcom/htc/server/State;

.field mLinkInitState:Lcom/htc/server/State;

.field mLinkOnState:Lcom/htc/server/State;

.field mLinkResetState:Lcom/htc/server/State;

.field mNeedSwitchingAph:Z

.field mNetworkInfo:Landroid/net/NetworkInfo;

.field mNetworkType:I

.field private final mNotificationHandler:Landroid/os/Handler;

.field mNotificationManager:Landroid/app/NotificationManager;

.field mNotificationState:I

.field mPreviousPage:I

.field mResetBit:Ljava/util/BitSet;

.field mResetDongleCount:I

.field mScanDongleState:Lcom/htc/server/State;

.field mSenseVersion:Ljava/lang/String;

.field private final mSoftapInterface:Ljava/lang/String;

.field private final mStaInterface:Ljava/lang/String;

.field private mStaticAPKey:[Ljava/lang/String;

.field private mTargetAutoTestDongleSSID:Ljava/lang/String;

.field mUnlockDongle:Lcom/htc/service/DongleInfo;

.field mUnlockPattern:[B

.field mUnlockTransactionID:I

.field mWDManager:Lcom/htc/service/WirelessDisplayManager;

.field mWifiApState:I

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiState:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0x38

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "WfdStateMachine"

    invoke-direct {p0, v2}, Lcom/htc/server/StateMachine;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/htc/server/WfdStateMachine$DefaultState;

    invoke-direct {v2, p0}, Lcom/htc/server/WfdStateMachine$DefaultState;-><init>(Lcom/htc/server/WfdStateMachine;)V

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mDefaultState:Lcom/htc/server/State;

    new-instance v2, Lcom/htc/server/WfdStateMachine$LinkInitState;

    invoke-direct {v2, p0}, Lcom/htc/server/WfdStateMachine$LinkInitState;-><init>(Lcom/htc/server/WfdStateMachine;)V

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    new-instance v2, Lcom/htc/server/WfdStateMachine$ScanDongleState;

    invoke-direct {v2, p0}, Lcom/htc/server/WfdStateMachine$ScanDongleState;-><init>(Lcom/htc/server/WfdStateMachine;)V

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mScanDongleState:Lcom/htc/server/State;

    new-instance v2, Lcom/htc/server/WfdStateMachine$ControlWifiState;

    invoke-direct {v2, p0}, Lcom/htc/server/WfdStateMachine$ControlWifiState;-><init>(Lcom/htc/server/WfdStateMachine;)V

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mControlWifiState:Lcom/htc/server/State;

    new-instance v2, Lcom/htc/server/WfdStateMachine$ControlApState;

    invoke-direct {v2, p0}, Lcom/htc/server/WfdStateMachine$ControlApState;-><init>(Lcom/htc/server/WfdStateMachine;)V

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mControlApState:Lcom/htc/server/State;

    new-instance v2, Lcom/htc/server/WfdStateMachine$ControlWpsState;

    invoke-direct {v2, p0}, Lcom/htc/server/WfdStateMachine$ControlWpsState;-><init>(Lcom/htc/server/WfdStateMachine;)V

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mControlWpsState:Lcom/htc/server/State;

    new-instance v2, Lcom/htc/server/WfdStateMachine$LinkOnState;

    invoke-direct {v2, p0}, Lcom/htc/server/WfdStateMachine$LinkOnState;-><init>(Lcom/htc/server/WfdStateMachine;)V

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mLinkOnState:Lcom/htc/server/State;

    new-instance v2, Lcom/htc/server/WfdStateMachine$LinkDiscoverState;

    invoke-direct {v2, p0}, Lcom/htc/server/WfdStateMachine$LinkDiscoverState;-><init>(Lcom/htc/server/WfdStateMachine;)V

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mLinkDiscoverState:Lcom/htc/server/State;

    new-instance v2, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;

    invoke-direct {v2, p0}, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;-><init>(Lcom/htc/server/WfdStateMachine;)V

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mDiscoverWivuState:Lcom/htc/server/State;

    new-instance v2, Lcom/htc/server/WfdStateMachine$LinkResetState;

    invoke-direct {v2, p0}, Lcom/htc/server/WfdStateMachine$LinkResetState;-><init>(Lcom/htc/server/WfdStateMachine;)V

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mLinkResetState:Lcom/htc/server/State;

    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/server/WfdStateMachine;->mNetworkType:I

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsScanning:Z

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsAphConnectable:Z

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsResetting:Z

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsMultipleWpsDongles:Z

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsQuickScanning:Z

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsWpsStart:Z

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsShowScanning:Z

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsDeferConfigure:Z

    iput-boolean v6, p0, Lcom/htc/server/WfdStateMachine;->mIsScanComplete:Z

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsDfsChannel:Z

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsWivuTimeout:Z

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsDeferDiscovery:Z

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsSwitchingDongles:Z

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mNeedSwitchingAph:Z

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsP2pSet:Z

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsSwitchingAph:Z

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsResettingDongle:Z

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsCancelConfiguring:Z

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsUnlockDongle:Z

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsRequestScanning:Z

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsAphConnectableBefore:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mConnectableAphBeforeSsid:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsConnectionRequest:Z

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsChangingProfile:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mFixedModeProperty:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsFixedCT1:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mIfDfsAvailable:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mCommonProfileApSsid:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mCommonProfileApKey:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mDfsSsid:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsHardReset:Z

    iput v5, p0, Lcom/htc/server/WfdStateMachine;->mAutoTestContinouslyErrorCount:I

    const-string v2, ""

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mSenseVersion:Ljava/lang/String;

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mCallbacks:Landroid/os/RemoteCallbackList;

    const/16 v2, 0x64

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "3dg6789kht"

    aput-object v3, v2, v5

    const-string v3, "8uikn3yhe1"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "Adj8ikwld9"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "ndk39qi3pL"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "skl20O9ue3"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "12kl8dh36s"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "mkaj30P9h3"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "8376yhj2md"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "LK0987opK3"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "K18hn3789j"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "nahdc0wuh4"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "0pnabhe6t3"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "KKLan378k7"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "10pLmk37dh"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "Isk918jey6"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "low9hb1z6t"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "0okmeng67s"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "k16278902h"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "sneif0i1b6"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "lp1mn3gd98"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "01b467eyhh"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "0pakdmne88"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "lkiqud781h"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "10pkyh35yu"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "01plskmcxz"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "638djkmeos"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "0pl3omnc36"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "qazplmwer7"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "n8u260zq1s"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "ncmwldkif0"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "ml01ij2f6t"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "nzbxv36g6t"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "1q2w3e4rkh"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "0oplmn5r3f"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "0ikegy47i9"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "kand2567w4"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "ghjs2678uv"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "0plame67qw"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "09wuklapmn"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "3456sghjk6"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "0oksw6yh88"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "slo01673rf"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "mwuet87619"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "p01jw7yeh1"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "njs6782456"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "sko2ieuje7"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "1bnehags56"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "0po2wsy76r"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "km1qu73egb"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "78nm3edf5r"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "12hj6t5sfe"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "nj0o17yhd4"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "09k2he75te"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "nm2jasq5g7"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "jwnc9oe8u3"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "gh1q3t7b7y"

    aput-object v4, v2, v3

    const-string v3, "plw18hb3e6"

    aput-object v3, v2, v7

    const/16 v3, 0x39

    const-string v4, "2swuhc76t3"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "0akeln3ue7"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "1uj3u8u3u3"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "nae7773ye8"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "anmk3o9u4h"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "akm3hfu39r"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "mnhjy6rfde"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "lpokg54edd"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "ujuyhgtr4e"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "jmnbvcer5t"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "lmw1qasd4r"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "lmnbhgt6y6"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "okoi89iu87"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "0o01lmnbvc"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "njhy65tr45"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "kmjnhgtre4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "7u7y6thy66"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "ikjhuy667y"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "kmnbegdtr6"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "mwnej198u3"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "0p01ikjeg7"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "9iue76yht5"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "162yhgtrf5"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "0olkmjh267"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "9ij36y8i1e"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "ju87ygt56t"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "kjnmbght56"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "sjhu7ygfr4"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "8ijhyw6t54"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "jhnbvfr45r"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "8ujheyt6g5"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "0olkmnb1g6"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "hnbegt67y6"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "nbhgtrfde4"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "plmnbc4re3"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "zcvbr54e3e"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "9okjhy6765"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "jnbgfre45r"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "ikju6y5tr4"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "7yhgt555t6"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "i9io0plkj7"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "1234tgfr4e"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "jk56yt3r4e"

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mStaticAPKey:[Ljava/lang/String;

    new-instance v2, Lcom/htc/server/WfdStateMachine$1;

    invoke-direct {v2, p0}, Lcom/htc/server/WfdStateMachine$1;-><init>(Lcom/htc/server/WfdStateMachine;)V

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mNotificationHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/htc/service/DongleInfo;

    invoke-direct {v2}, Lcom/htc/service/DongleInfo;-><init>()V

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mConnManager:Landroid/net/ConnectivityManager;

    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/htc/server/WfdStateMachine$WifiServiceHandler;

    invoke-direct {v4, p0}, Lcom/htc/server/WfdStateMachine$WifiServiceHandler;-><init>(Lcom/htc/server/WfdStateMachine;)V

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->asyncConnect(Landroid/net/wifi/WifiManager;Landroid/content/Context;Landroid/os/Handler;)V

    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mNotificationManager:Landroid/app/NotificationManager;

    iput v5, p0, Lcom/htc/server/WfdStateMachine;->mNotificationState:I

    iput v5, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const-string v2, "wireless_display"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/service/WirelessDisplayManager;

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mHtcCustomizationManager:Lcom/htc/customization/HtcCustomizationManager;

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mHtcCustomizationManager:Lcom/htc/customization/HtcCustomizationManager;

    const-string v3, "System"

    invoke-virtual {v2, v3, v6, v5}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .local v1, "reader":Lcom/htc/customization/HtcCustomizationReader;
    const-string v2, "sense_version"

    const-string v3, "4.5"

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "mSenseVersion":Ljava/lang/String;
    const-string v2, "wifi.interface"

    const-string v3, "wlan0"

    invoke-static {v2, v3}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;

    const-string v2, "wifi.softapconcurrent.interface"

    const-string v3, "wlan1"

    invoke-static {v2, v3}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mSoftapInterface:Ljava/lang/String;

    const-string v2, "WfdStateMachine"

    const-string v3, ">>>> 20120816_P2P_FW_001<<<<< "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "WfdStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Station interface = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Softap Interface = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine;->mSoftapInterface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    iput-object v2, p0, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mDefaultState:Lcom/htc/server/State;

    invoke-virtual {p0, v2}, Lcom/htc/server/WfdStateMachine;->addState(Lcom/htc/server/State;)V

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine;->mDefaultState:Lcom/htc/server/State;

    invoke-virtual {p0, v2, v3}, Lcom/htc/server/WfdStateMachine;->addState(Lcom/htc/server/State;Lcom/htc/server/State;)V

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mScanDongleState:Lcom/htc/server/State;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {p0, v2, v3}, Lcom/htc/server/WfdStateMachine;->addState(Lcom/htc/server/State;Lcom/htc/server/State;)V

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mControlWifiState:Lcom/htc/server/State;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {p0, v2, v3}, Lcom/htc/server/WfdStateMachine;->addState(Lcom/htc/server/State;Lcom/htc/server/State;)V

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mControlApState:Lcom/htc/server/State;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {p0, v2, v3}, Lcom/htc/server/WfdStateMachine;->addState(Lcom/htc/server/State;Lcom/htc/server/State;)V

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mControlWpsState:Lcom/htc/server/State;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {p0, v2, v3}, Lcom/htc/server/WfdStateMachine;->addState(Lcom/htc/server/State;Lcom/htc/server/State;)V

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mLinkOnState:Lcom/htc/server/State;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine;->mDefaultState:Lcom/htc/server/State;

    invoke-virtual {p0, v2, v3}, Lcom/htc/server/WfdStateMachine;->addState(Lcom/htc/server/State;Lcom/htc/server/State;)V

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mLinkDiscoverState:Lcom/htc/server/State;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine;->mDefaultState:Lcom/htc/server/State;

    invoke-virtual {p0, v2, v3}, Lcom/htc/server/WfdStateMachine;->addState(Lcom/htc/server/State;Lcom/htc/server/State;)V

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mDiscoverWivuState:Lcom/htc/server/State;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine;->mLinkDiscoverState:Lcom/htc/server/State;

    invoke-virtual {p0, v2, v3}, Lcom/htc/server/WfdStateMachine;->addState(Lcom/htc/server/State;Lcom/htc/server/State;)V

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mLinkResetState:Lcom/htc/server/State;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine;->mDefaultState:Lcom/htc/server/State;

    invoke-virtual {p0, v2, v3}, Lcom/htc/server/WfdStateMachine;->addState(Lcom/htc/server/State;Lcom/htc/server/State;)V

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {p0, v2}, Lcom/htc/server/WfdStateMachine;->setInitialState(Lcom/htc/server/State;)V

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine;->start()V

    const-string v2, "WfdStateMachine"

    const-string v3, "Adding and initialize state machine finished."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0, v7}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    return-void

    :cond_0
    const-string v2, "WfdStateMachine"

    const-string v3, "Cannot get WirelessDisplaySerivce instance, do not start WfdStateMachine."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/WfdStateMachine;

    .prologue
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/server/WfdStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/WfdStateMachine;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/server/WfdStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/WfdStateMachine;

    .prologue
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->checkIfDfsAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/WfdStateMachine;

    .prologue
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->saveLimitedApInfo()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/WfdStateMachine;

    .prologue
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->requestCT2OnDemand()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/WfdStateMachine;

    .prologue
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->preloadDlnaService()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/WfdStateMachine;

    .prologue
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mSoftapInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/WfdStateMachine;

    .prologue
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->finish()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/WfdStateMachine;

    .prologue
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->requestResetOnDemand()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/WfdStateMachine;

    .prologue
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->requestUnlockOnDemand()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/WfdStateMachine;

    .prologue
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->forceDisableAp()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/WfdStateMachine;

    .prologue
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->setL2peApInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/WfdStateMachine;

    .prologue
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->requestWpsOnDemand()V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/server/WfdStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/WfdStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/server/WfdStateMachine;->getNoWpsApSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/server/WfdStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/WfdStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/server/WfdStateMachine;->getNoWpsApKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/server/WfdStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/WfdStateMachine;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/server/WfdStateMachine;->sendConfiguringProgress(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/server/WfdStateMachine;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/WfdStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/htc/server/WfdStateMachine;->reportErrorCode(IZ)V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/WfdStateMachine;

    .prologue
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->forceUpdateDongles()V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/server/WfdStateMachine;Lcom/htc/service/DongleInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/WfdStateMachine;
    .param p1, "x1"    # Lcom/htc/service/DongleInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/server/WfdStateMachine;->updatePairedDongle(Lcom/htc/service/DongleInfo;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/WfdStateMachine;

    .prologue
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->notifyDfsReconnect()V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/server/WfdStateMachine;ZLcom/htc/service/DongleInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/WfdStateMachine;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/htc/service/DongleInfo;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/htc/server/WfdStateMachine;->showConnectingDialog(ZLcom/htc/service/DongleInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/server/WfdStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/WfdStateMachine;

    .prologue
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->isCommonProfileAPEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/server/WfdStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/WfdStateMachine;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/server/WfdStateMachine;->notifyConcurrentEnabled(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/server/WfdStateMachine;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/WfdStateMachine;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/server/WfdStateMachine;->isAphConnectable(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/htc/server/WfdStateMachine;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/WfdStateMachine;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/server/WfdStateMachine;->isDglConnToSameAphOrUncfg(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/server/WfdStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/WfdStateMachine;

    .prologue
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->isAphSignalPoor()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/server/WfdStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/WfdStateMachine;

    .prologue
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->isNoisyEnv()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/htc/server/WfdStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/WfdStateMachine;

    .prologue
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->isConnectToDfsChannels()Z

    move-result v0

    return v0
.end method

.method private checkIfDfsAvailable()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, "result":Z
    const-string v1, "WfdStateMachine"

    const-string v2, "[WFD]===>checkIfDfsAvailable()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "persist.sys.wfd.dfsavailable"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/WfdStateMachine;->mIfDfsAvailable:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mIfDfsAvailable:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "WfdStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WFD]===> persist.sys.wfd.dfsavailable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearLimitedApInfo()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->getCurrentNetwork()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "network":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getLimited(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->setLimited(Landroid/net/wifi/WifiConfiguration;I)V

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    const-string v2, "WfdStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WFD]===>Clear limited AP info, ssid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "network":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    return-void
.end method

.method private finish()V
    .locals 2

    .prologue
    const-string v0, "WfdStateMachine"

    const-string v1, "finish()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    return-void
.end method

.method private forceDisableAp()V
    .locals 2

    .prologue
    const-string v0, "WfdStateMachine"

    const-string v1, "forceDisableAp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/htc/server/WfdStateMachine$3;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdStateMachine$3;-><init>(Lcom/htc/server/WfdStateMachine;)V

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine$3;->start()V

    return-void
.end method

.method private forceUpdateDongles()V
    .locals 2

    .prologue
    const-string v0, "WfdStateMachine"

    const-string v1, "forceUpdateDongles()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/htc/server/WfdStateMachine$2;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdStateMachine$2;-><init>(Lcom/htc/server/WfdStateMachine;)V

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine$2;->start()V

    return-void
.end method

.method private freqToChannel(I)I
    .locals 2
    .param p1, "freq"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "outchannel":I
    const/16 v1, 0x96c

    if-lt p1, v1, :cond_0

    const/16 v1, 0x9a8

    if-gt p1, v1, :cond_0

    add-int/lit16 v1, p1, -0x967

    div-int/lit8 v0, v1, 0x5

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x1432

    if-lt p1, v1, :cond_1

    const/16 v1, 0x16c1

    if-gt p1, v1, :cond_1

    add-int/lit16 v1, p1, -0x1388

    div-int/lit8 v0, v1, 0x5

    goto :goto_0

    :cond_1
    const/16 v1, 0x9b4

    if-ne p1, v1, :cond_2

    const/16 v0, 0xe

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentNetwork()Landroid/net/wifi/WifiConfiguration;
    .locals 9

    .prologue
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .local v5, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const/4 v1, 0x0

    .local v1, "currentNetwork":Landroid/net/wifi/WifiConfiguration;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    .local v3, "netid":I
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .local v4, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v6, v3, :cond_0

    move-object v1, v0

    const-string v6, "WfdStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WFD]===>Current network, ssid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", network ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", limited = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getLimited(Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "netid":I
    .end local v4    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_1
    return-object v1
.end method

.method private getCurrentWifiSsid()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v0, ""

    .local v0, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getNoWpsApKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x11

    const/16 v5, 0x10

    const-string v3, "WfdStateMachine"

    const-string v4, "[WFD]===>getNoWpsApSsid()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .local v0, "SoftapKey":Ljava/lang/String;
    const-string v1, ""

    .local v1, "WiFiMacAddr":Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine;->mCommonProfileApKey:Ljava/lang/String;

    const-string v4, ""

    if-ne v3, v4, :cond_2

    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->readWiFiMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    if-eq v1, v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_0

    const/16 v3, 0xc

    const/16 v4, 0xe

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0xf

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    add-int/2addr v3, v4

    rem-int/lit8 v2, v3, 0x64

    .local v2, "keyIndex":I
    const-string v3, "WfdStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WFD]===>keyIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine;->mStaticAPKey:[Ljava/lang/String;

    aget-object v3, v3, v2

    iput-object v3, p0, Lcom/htc/server/WfdStateMachine;->mCommonProfileApKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCommonProfileApKey:Ljava/lang/String;

    .end local v2    # "keyIndex":I
    :cond_0
    :goto_0
    const-string v3, "WfdStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WFD]===>===>getNoWpsApKey: = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    move-object v0, p1

    const-string v3, "WfdStateMachine"

    const-string v4, "[WFD]===>getNoWpsApKey: WiFiMacAddr is empty! SoftapKey: user profile!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCommonProfileApKey:Ljava/lang/String;

    goto :goto_0
.end method

.method private getNoWpsApSsid(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x11

    const-string v3, "WfdStateMachine"

    const-string v4, "[WFD]===>getNoWpsApSsid()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MLHD_APM_"

    .local v2, "mStaticAPSSID":Ljava/lang/String;
    const-string v0, ""

    .local v0, "SoftapSsid":Ljava/lang/String;
    const-string v1, ""

    .local v1, "WiFiMacAddr":Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine;->mCommonProfileApSsid:Ljava/lang/String;

    const-string v4, ""

    if-ne v3, v4, :cond_2

    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->readWiFiMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    if-eq v1, v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xc

    const/16 v5, 0xe

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xf

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/server/WfdStateMachine;->mCommonProfileApSsid:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCommonProfileApSsid:Ljava/lang/String;

    :cond_0
    :goto_0
    const-string v3, "WfdStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WFD]===>===>getNoWpsApSsid: = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    move-object v0, p1

    const-string v3, "WfdStateMachine"

    const-string v4, "[WFD]===>getNoWpsApSsid: WiFiMacAddr is empty! SoftapSsid: user profile!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCommonProfileApSsid:Ljava/lang/String;

    goto :goto_0
.end method

.method private isAllowToGoBack(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/16 v0, 0x38

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAphConnectable(Z)Z
    .locals 6
    .param p1, "checkLimited"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->getCurrentNetwork()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "current":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getLimited(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    if-eq v2, v4, :cond_1

    :cond_0
    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsAphConnectable:Z

    const-string v2, "WfdStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AP_H is connectable, SSID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n    , bssid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "current":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    const-string v2, "WfdStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WFD]===>isAphConnectable() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsAphConnectable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/htc/server/WfdStateMachine;->mIsAphConnectable:Z

    return v2

    .restart local v0    # "current":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const-string v2, "WfdStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AP_H is not connectable, SSID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsAphConnectable:Z

    goto :goto_0

    .end local v0    # "current":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    sget-boolean v2, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/htc/server/WfdStateMachine;->mIsAphConnectableBefore:Z

    if-eqz v2, :cond_3

    const-string v2, "WfdStateMachine"

    const-string v3, "Concurrent isn\'t support, assume AP_H is connectable."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsAphConnectable:Z

    goto :goto_0

    :cond_3
    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsAphConnectable:Z

    goto :goto_0
.end method

.method private isAphSignalPoor()Z
    .locals 7

    .prologue
    const/16 v5, -0x4b

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const/4 v1, -0x1

    .local v1, "handsetRssi":I
    const/4 v0, -0x1

    .local v0, "dongleRssi":I
    const/4 v2, 0x0

    .local v2, "isPoor":Z
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    :cond_0
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget v4, v4, Lcom/htc/service/DongleInfo;->rssi:I

    neg-int v0, v4

    :cond_1
    if-lt v1, v5, :cond_2

    if-ge v0, v5, :cond_3

    :cond_2
    const/4 v2, 0x1

    :goto_0
    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WFD]===>isAphSignalPoor() isPoor = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", handset = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dongle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isCommonProfileAPEnabled()Z
    .locals 5

    .prologue
    const-string v2, "WfdStateMachine"

    const-string v3, "[WFD]===>isCommonProfileAPEnabled()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, "ret":Z
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWirelessDisplayCommonApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .local v1, "wifiApConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v2, "WfdStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WFD]===>isCommonProfileAPEnabled()...ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isConnectToDfsChannels()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .local v5, "result":Z
    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .local v6, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p0, v6}, Lcom/htc/server/WfdStateMachine;->getAphFrequency(Landroid/net/wifi/WifiInfo;)I

    move-result v2

    .local v2, "freq":I
    const-string v7, "WfdStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Check if station in DFS channel = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/htc/server/WfdUtils;->DFS_CHANNELS:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v1, v0, v3

    .local v1, "channel":I
    if-ne v2, v1, :cond_1

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/server/WfdStateMachine;->mDfsSsid:Ljava/lang/String;

    const/4 v5, 0x1

    .end local v0    # "arr$":[I
    .end local v1    # "channel":I
    .end local v2    # "freq":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return v5

    .restart local v0    # "arr$":[I
    .restart local v1    # "channel":I
    .restart local v2    # "freq":I
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private isDglConnToSameAphOrUncfg(Z)Z
    .locals 9
    .param p1, "checkAph"    # Z

    .prologue
    const/4 v4, 0x0

    .local v4, "result":Z
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v6}, Lcom/htc/service/WirelessDisplayManager;->getInterface()Ljava/lang/String;

    move-result-object v3

    .local v3, "iface":Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, "currentIsSta":Z
    if-eqz v3, :cond_0

    const-string v6, "WfdStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current wivu interface is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v6, :cond_3

    const-string v6, "WfdStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Check dongle aph = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    invoke-virtual {v8}, Lcom/htc/service/DongleInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v6, v6, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v6, v6, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    const-string v7, "00:00:00:00:00:00"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget v6, v6, Lcom/htc/service/DongleInfo;->status:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    iget-boolean v6, p0, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    if-eqz v6, :cond_5

    :cond_2
    const/4 v4, 0x1

    const-string v6, "WfdStateMachine"

    const-string v7, "Dongle is unconfigured, do not check aph"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    const-string v6, "WfdStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WFD]===>isDongleConnectToSameAph() result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-boolean v6, v6, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v1, v6, Lcom/htc/service/DongleInfo;->currentAph:Ljava/lang/String;

    .local v1, "dongleAph":Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .local v5, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .local v2, "handsetAph":Ljava/lang/String;
    const-string v6, "WfdStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WFD]===>handset aph = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", dongle aph = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p1, :cond_3

    invoke-direct {p0, v1}, Lcom/htc/server/WfdStateMachine;->isDongleAphAvailable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    .end local v1    # "dongleAph":Ljava/lang/String;
    .end local v2    # "handsetAph":Ljava/lang/String;
    .end local v5    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_6
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-boolean v6, v6, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-eqz v6, :cond_3

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    goto :goto_1
.end method

.method private isDongleAlive()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .local v4, "result":Z
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    .local v0, "dongle":Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v5}, Lcom/htc/service/WirelessDisplayManager;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v1

    .local v1, "donglelist":Ljava/util/List;, "Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/service/DongleInfo;

    .local v3, "info":Lcom/htc/service/DongleInfo;
    iget-object v5, v3, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    iget-object v6, v0, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    if-ne v5, v6, :cond_0

    const/4 v4, 0x0

    iput-object v3, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    goto :goto_0

    .end local v1    # "donglelist":Ljava/util/List;, "Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Lcom/htc/service/DongleInfo;
    :cond_1
    return v4
.end method

.method private isDongleAphAvailable(Ljava/lang/String;)Z
    .locals 14
    .param p1, "aphMac"    # Ljava/lang/String;

    .prologue
    const-string v11, "WfdStateMachine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[WFD]===>isDongleAphAvailable() "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "00:00:00:00:00:00"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    :try_start_0
    iget-object v11, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    .local v6, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v11, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v9

    .local v9, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const-string v1, ""

    .local v1, "currentSsid":Ljava/lang/String;
    const/4 v7, 0x1

    .local v7, "noMoreNetwork":Z
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .local v5, "netId":I
    const-string v11, "WfdStateMachine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[WFD]===>Configured network, ssid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", network ID = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", limited = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getLimited(Landroid/net/wifi/WifiConfiguration;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->getCurrentWifiSsid()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const/4 v7, 0x0

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    .local v8, "result":Landroid/net/wifi/ScanResult;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .local v10, "ssid":Ljava/lang/String;
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getLimited(Landroid/net/wifi/WifiConfiguration;)I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2

    const-string v11, "WfdStateMachine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[WFD]===>Enable network, ssid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", bssid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/htc/server/WfdStateMachine;->connectNetwork(I)V

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/server/WfdStateMachine;->mNeedSwitchingAph:Z

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/server/WfdStateMachine;->mIsSwitchingAph:Z

    const/4 v11, 0x1

    goto/16 :goto_0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "netId":I
    .end local v8    # "result":Landroid/net/wifi/ScanResult;
    .end local v10    # "ssid":Ljava/lang/String;
    :cond_3
    if-nez v7, :cond_4

    iget-boolean v11, p0, Lcom/htc/server/WfdStateMachine;->mNeedSwitchingAph:Z

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "WfdStateMachine"

    const-string v12, "[WFD]===>Trigger scanning...Defer discovery..."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/server/WfdStateMachine;->mNeedSwitchingAph:Z

    const/16 v11, 0x37

    const-wide/16 v12, 0x2710

    invoke-virtual {p0, v11, v12, v13}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_4
    iget-boolean v11, p0, Lcom/htc/server/WfdStateMachine;->mNeedSwitchingAph:Z

    if-eqz v11, :cond_5

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/server/WfdStateMachine;->mNeedSwitchingAph:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "currentSsid":Ljava/lang/String;
    .end local v6    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v7    # "noMoreNetwork":Z
    .end local v9    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_5
    :goto_1
    const/4 v11, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private isNoisyEnv()Z
    .locals 13

    .prologue
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    .local v2, "dongle":Lcom/htc/service/DongleInfo;
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    .local v9, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const/4 v4, 0x0

    .local v4, "handsetRssi":I
    const/4 v1, 0x0

    .local v1, "curfreq":I
    const-string v0, ""

    .local v0, "curSsid":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "isNoise":Z
    const-string v10, "WfdStateMachine"

    const-string v11, "[WFD]===>isNoisyEnv()"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v9}, Lcom/htc/server/WfdStateMachine;->getAphFrequency(Landroid/net/wifi/WifiInfo;)I

    move-result v1

    const-string v10, "WfdStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[WFD]===> ( noise) main, ssid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", frequency = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", signal level = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v8

    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :try_start_0
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .local v7, "result":Landroid/net/wifi/ScanResult;
    iget-object v10, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v11, v11, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    iget v10, v7, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-direct {p0, v10}, Lcom/htc/server/WfdStateMachine;->freqToChannel(I)I

    move-result v10

    invoke-direct {p0, v1}, Lcom/htc/server/WfdStateMachine;->freqToChannel(I)I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/4 v11, 0x1

    if-gt v10, v11, :cond_0

    iget v10, v7, Landroid/net/wifi/ScanResult;->level:I

    const/16 v11, -0x58

    if-le v10, v11, :cond_0

    const-string v10, "WfdStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[WFD]===> ( noise) Result, ssid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", frequency = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", ch= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-direct {p0, v12}, Lcom/htc/server/WfdStateMachine;->freqToChannel(I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", signal level = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "result":Landroid/net/wifi/ScanResult;
    .end local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_1
    :goto_0
    iget-boolean v10, p0, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-eqz v10, :cond_2

    const/4 v6, 0x0

    :goto_1
    const-string v10, "WfdStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[WFD]===>isNoisyEnv()...isNoise = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .restart local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :catch_0
    move-exception v3

    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_2
    const/4 v6, 0x1

    goto :goto_1
.end method

.method private notifyConcurrentEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const-string v1, "WfdStateMachine"

    const-string v2, "notifyConcurrentEnabled()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.wifidisplay.NOTIFY_CONCURRENT_MODE_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    const-string v1, "ENABLED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v1, "ENABLED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method private notifyDfsReconnect()V
    .locals 3

    .prologue
    const-string v1, "WfdStateMachine"

    const-string v2, "notifyDfsReconnect()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.wifidisplay.NOTIFY_RECONNECT_DFS_WIFI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private preloadDlnaService()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/htc/server/WfdStateMachine$8;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdStateMachine$8;-><init>(Lcom/htc/server/WfdStateMachine;)V

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine$8;->start()V

    :cond_0
    return-void
.end method

.method private readConfigFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const-string v7, "WfdStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[WFD]===>readConfigFile(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .local v6, "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "in":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .local v3, "line":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "in":Ljava/io/FileInputStream;
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    const-string v7, "WfdStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_2
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    :cond_3
    :goto_4
    if-eqz v5, :cond_4

    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    :cond_4
    :goto_5
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_6
    :try_start_8
    const-string v7, "WfdStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v1, :cond_5

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_5
    :goto_7
    if-eqz v4, :cond_1

    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_3

    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v7

    goto :goto_3

    :catchall_0
    move-exception v7

    :goto_8
    if-eqz v1, :cond_6

    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    :cond_6
    :goto_9
    if-eqz v4, :cond_7

    :try_start_c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    :cond_7
    :goto_a
    throw v7

    :catch_3
    move-exception v8

    goto :goto_9

    :catch_4
    move-exception v8

    goto :goto_a

    .local v0, "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v7

    goto :goto_2

    .local v0, "e":Ljava/io/IOException;
    :catch_6
    move-exception v7

    goto :goto_7

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v7

    goto :goto_4

    :catch_8
    move-exception v7

    goto :goto_5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_8

    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_8

    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_a
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_6

    :catch_b
    move-exception v0

    goto/16 :goto_1

    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_c
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private readWiFiMacAddr()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v3, "WfdStateMachine"

    const-string v4, "[WFD]===>readWiFiMacAddr()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sys/class/net/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/address"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "WiFiMacAddr_FilePath":Ljava/lang/String;
    const-string v0, ""

    .local v0, "WiFiMacAddr":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v1}, Lcom/htc/server/WfdStateMachine;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private reportErrorCode(IZ)V
    .locals 8
    .param p1, "error"    # I
    .param p2, "updateUI"    # Z

    .prologue
    const/16 v7, 0x27

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "WfdStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WFD]===>reportErrorCode() error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mSenseVersion:Ljava/lang/String;

    const-string v2, "4.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mSenseVersion:Ljava/lang/String;

    const-string v2, "4.5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mSenseVersion:Ljava/lang/String;

    const-string v2, "5.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.INTENT_NOTIFY_DONGLE_CONNECTION_FAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "notify_connection_fail":Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v0    # "notify_connection_fail":Landroid/content/Intent;
    :cond_1
    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsShowScanning:Z

    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsDeferConfigure:Z

    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsDeferDiscovery:Z

    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mNeedSwitchingAph:Z

    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsSwitchingDongles:Z

    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsUnlockDongle:Z

    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    const-string v1, "WfdStateMachine"

    const-string v2, "Enable scan....@reportError"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1, v4}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiDisplayUnscan(Landroid/net/wifi/WifiManager;Z)Z

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v1, v4}, Lcom/htc/service/WirelessDisplayManager;->setWifiNetworkLimit(Z)V

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v1, v5}, Lcom/htc/service/WirelessDisplayManager;->setCQEEnabled(Z)V

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    if-eq p1, v6, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->forceUpdateDongles()V

    :cond_3
    if-nez p2, :cond_4

    :goto_0
    return-void

    :cond_4
    iget-boolean v1, p0, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    if-nez v1, :cond_8

    iget v1, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v1, :cond_5

    const/16 v1, 0x26

    invoke-direct {p0, v1}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-ne v1, v5, :cond_6

    invoke-direct {p0, v7}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-ne v1, v6, :cond_7

    invoke-direct {p0, v7}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    invoke-direct {p0, v4, v1}, Lcom/htc/server/WfdStateMachine;->showConnectingDialog(ZLcom/htc/service/DongleInfo;)V

    goto :goto_0

    :cond_7
    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto :goto_0

    :cond_8
    iget v1, p0, Lcom/htc/server/WfdStateMachine;->mAutoTestContinouslyErrorCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/server/WfdStateMachine;->mAutoTestContinouslyErrorCount:I

    const-string v1, "WfdStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WFD]===>reportErrorCode() mAutoTestContinouslyErrorCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/server/WfdStateMachine;->mAutoTestContinouslyErrorCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/htc/server/WfdStateMachine;->mAutoTestContinouslyErrorCount:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_9

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine;->retryConfigure()V

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsHardReset:Z

    const-string v1, "WfdStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mAutoTestContinouslyErrorCount >= 10, mIsHardReset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsHardReset:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/htc/server/WfdStateMachine;->mAutoTestContinouslyErrorCount:I

    :cond_9
    const/16 v1, 0x36

    invoke-direct {p0, v1}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto :goto_0
.end method

.method private requestCT2OnDemand()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v0, v0, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/htc/server/WfdStateMachine$5;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdStateMachine$5;-><init>(Lcom/htc/server/WfdStateMachine;)V

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine$5;->start()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "WfdStateMachine"

    const-string v1, "[WFD]===>requestCT2OnDemand() mCurrentDongle is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestResetOnDemand()V
    .locals 2

    .prologue
    const-string v0, "WfdStateMachine"

    const-string v1, "[WFD]===>requestResetOnDemand()+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v0, v0, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/htc/server/WfdStateMachine$6;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdStateMachine$6;-><init>(Lcom/htc/server/WfdStateMachine;)V

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine$6;->start()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "WfdStateMachine"

    const-string v1, "[WFD]===>requestResetOnDemand() mCurrentDongle is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestUnlockOnDemand()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mUnlockDongle:Lcom/htc/service/DongleInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mUnlockDongle:Lcom/htc/service/DongleInfo;

    iget-object v0, v0, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/htc/server/WfdStateMachine$7;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdStateMachine$7;-><init>(Lcom/htc/server/WfdStateMachine;)V

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine$7;->start()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "WfdStateMachine"

    const-string v1, "[WFD]===>requestUnlockOnDemand() mUnlockDongle is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestWpsOnDemand()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v0, v0, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/htc/server/WfdStateMachine$4;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdStateMachine$4;-><init>(Lcom/htc/server/WfdStateMachine;)V

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine$4;->start()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "WfdStateMachine"

    const-string v1, "[WFD]===>requestWpsOnDemand() mCurrentDongle is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetConfigurationFile()V
    .locals 2

    .prologue
    const-string v0, "WfdStateMachine"

    const-string v1, "resetConfigurationFile()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    const-string v1, "/data/misc/wifidisplay.conf"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method private saveLimitedApInfo()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->getCurrentNetwork()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "network":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getLimited(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-static {v0, v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->setLimited(Landroid/net/wifi/WifiConfiguration;I)V

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    const-string v2, "WfdStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WFD]===>Save limited AP info, ssid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "network":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    return-void
.end method

.method private sendConfigureStateChanged(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    const-string v1, "WfdStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WFD]===>sendConfigStateChanged() status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.wifidisplay.CONFIGURE_STATE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "config_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private sendConfiguringProgress(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    const-string v1, "WfdStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendConfiguringProgress() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/htc/server/WfdStateMachine;->mConfigProgress:I

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mNotificationHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mNotificationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendNotificationState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/4 v5, 0x0

    const-string v2, "WfdStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendNotificationState() state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/htc/server/WfdStateMachine;->isAllowToGoBack(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    iput v2, p0, Lcom/htc/server/WfdStateMachine;->mPreviousPage:I

    iput p1, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const-string v2, "WfdStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update pages: current = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", previous = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/server/WfdStateMachine;->mPreviousPage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v2, p0, Lcom/htc/server/WfdStateMachine;->mNotificationState:I

    if-ne p1, v2, :cond_1

    const/16 v2, 0xa

    if-ne p1, v2, :cond_5

    :cond_1
    const/16 v2, 0x2e

    if-eq p1, v2, :cond_2

    const/16 v2, 0x31

    if-eq p1, v2, :cond_2

    const/16 v2, 0x32

    if-eq p1, v2, :cond_2

    const/16 v2, 0x34

    if-eq p1, v2, :cond_2

    const/16 v2, 0x35

    if-eq p1, v2, :cond_2

    const/16 v2, 0x2a

    if-eq p1, v2, :cond_2

    const/16 v2, 0x2b

    if-eq p1, v2, :cond_2

    const/16 v2, 0x27

    if-eq p1, v2, :cond_2

    const/16 v2, 0x28

    if-ne p1, v2, :cond_3

    :cond_2
    iput v5, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    :cond_3
    iput p1, p0, Lcom/htc/server/WfdStateMachine;->mNotificationState:I

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mNotificationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mNotificationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget v2, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    const/4 v1, -0x1

    .local v1, "status":I
    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/server/WfdStateMachine;->sendConfigureStateChanged(I)V

    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "status":I
    :cond_4
    :goto_1
    return-void

    .restart local v0    # "msg":Landroid/os/Message;
    .restart local v1    # "status":I
    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const/4 v1, 0x5

    goto :goto_0

    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "status":I
    :cond_5
    const-string v2, "WfdStateMachine"

    const-string v3, "Dropped the unchanged notification state."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_4
        0x20 -> :sswitch_2
        0x27 -> :sswitch_3
        0x2e -> :sswitch_0
        0x31 -> :sswitch_1
        0x37 -> :sswitch_2
    .end sparse-switch
.end method

.method private setL2peApInfo()V
    .locals 6

    .prologue
    const-string v1, ""

    .local v1, "currentSsid":Ljava/lang/String;
    const-string v0, ""

    .local v0, "apmSsid":Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hotspot_ssid"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/htc/server/WfdStateMachine;->isAphConnectable(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/htc/server/WfdStateMachine;->isDglConnToSameAphOrUncfg(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsWivuTimeout:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    :cond_0
    sget-boolean v3, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsAphConnectableBefore:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine;->mConnectableAphBeforeSsid:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mConnectableAphBeforeSsid:Ljava/lang/String;

    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_1
    :goto_0
    const-string v3, "WfdStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WFD]===>setL2peInfo() ssid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v3, v1}, Lcom/htc/service/WirelessDisplayManager;->setL2peApInfo(Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0
.end method

.method private showConnectingDialog(ZLcom/htc/service/DongleInfo;)V
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "info"    # Lcom/htc/service/DongleInfo;

    .prologue
    const-string v1, "WfdStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WFD]===>showConnectingDialog() visible = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.WIRELESS_DISPLAY_CONNECTING_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "device"

    iget-object v2, p2, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v1, "visible"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "ary"    # [B

    .prologue
    const-string v0, "0123456789ABCDEF"

    .local v0, "hex":Ljava/lang/String;
    const-string v2, ""

    .local v2, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private updatePairedDongle(Lcom/htc/service/DongleInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/htc/service/DongleInfo;

    .prologue
    const-string v1, "WfdStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WFD]===>updatePairedDongle(), Dongle staBssid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.NOTIFY_UPDATE_DONGLE_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "dongleStaBssid"

    iget-object v2, p1, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private writeDongleConfig()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v2, v2, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v0, v2, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    .local v0, "config":Ljava/lang/String;
    const-string v2, "WfdStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeDongleConfig() config = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.wifidisplay.CONFIG_FILE_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "dongle_mac"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v0    # "config":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :cond_0
    const-string v2, "WfdStateMachine"

    const-string v3, "[WFD]===>writeDongleConfig() mCurrentDongle is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method addCallback(Lcom/htc/wfdservice/IWfdServiceCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/htc/wfdservice/IWfdServiceCallback;

    .prologue
    const-string v0, "WfdStateMachine"

    const-string v1, "addCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method attemptToConfigure(Lcom/htc/service/DongleInfo;)V
    .locals 14
    .param p1, "info"    # Lcom/htc/service/DongleInfo;

    .prologue
    const/16 v6, 0x2e

    const/16 v5, 0x2d

    const/4 v13, 0x3

    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string v7, "WfdStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[WFD]===>attemptToConfigure()...mode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/server/WfdUtils;->modeNames:[Ljava/lang/String;

    iget v10, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v7, "WfdStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[WFD]===>Dongle status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/service/DongleInfo;->getStateName:[Ljava/lang/String;

    iget v10, p1, Lcom/htc/service/DongleInfo;->status:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isDiscoveredByWivu = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p1, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isConnectable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p1, Lcom/htc/service/DongleInfo;->isConnectable:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n[WFD]===>, apm = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", aph = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/htc/service/DongleInfo;->currentAph:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n[WFD]===>, bssid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", lockType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/htc/service/DongleInfo;->lockType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v7, p1, Lcom/htc/service/DongleInfo;->isConnectable:Z

    if-eqz v7, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.htc.intent.action.WIRELESS_DISPLAY_SHOW_DONGLE_CONNECTED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "dongleConnectedIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v1    # "dongleConnectedIntent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const/4 v7, 0x5

    invoke-direct {p0, v7, v12}, Lcom/htc/server/WfdStateMachine;->reportErrorCode(IZ)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v7, 0x38

    invoke-virtual {p0, v7}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v7}, Lcom/htc/service/WirelessDisplayManager;->extendTurnOffHotspotTimer()V

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v7, v11}, Lcom/htc/service/WirelessDisplayManager;->setWifiNetworkLimit(Z)V

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v7, v12}, Lcom/htc/service/WirelessDisplayManager;->setCQEEnabled(Z)V

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine;->checkIfFixedMode()V

    invoke-virtual {p0, p1}, Lcom/htc/server/WfdStateMachine;->isCaviumDongle(Lcom/htc/service/DongleInfo;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    const-string v7, "WfdStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[WFD]===>attemptToConfigure()...mIsOldCaviumDongle = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WfdStateMachine"

    const-string v8, "Disable scan....@attemptToConfigure"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v7, v11}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiDisplayUnscan(Landroid/net/wifi/WifiManager;Z)Z

    if-nez p1, :cond_2

    const/4 v5, 0x5

    invoke-direct {p0, v5, v12}, Lcom/htc/server/WfdStateMachine;->reportErrorCode(IZ)V

    goto :goto_1

    :cond_2
    iget v7, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-eq v7, v13, :cond_3

    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v3

    .local v3, "uLogData":Lcom/htc/utils/ulog/ReusableULogData;
    const-string v7, "com.htc.wirelessDisplayService"

    invoke-virtual {v3, v7}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v7

    const-string v8, "WHDMI_WirelessDisplayService"

    invoke-interface {v7, v8}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v7

    const-string v8, "method"

    const-string v9, "Notifcation_Setting"

    invoke-interface {v7, v8, v9}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    invoke-static {v3}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    invoke-virtual {v3}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .end local v3    # "uLogData":Lcom/htc/utils/ulog/ReusableULogData;
    :cond_3
    iget v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const/16 v8, 0x38

    if-ne v7, v8, :cond_4

    iget v7, p0, Lcom/htc/server/WfdStateMachine;->mNotificationState:I

    const/16 v8, 0x26

    if-ne v7, v8, :cond_4

    const-string v5, "WfdStateMachine"

    const-string v6, "PBC failed case, retry to configure."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/htc/server/WfdStateMachine;->attemptToReConfigure(Lcom/htc/service/DongleInfo;)V

    goto/16 :goto_1

    :cond_4
    const-string v7, "sys.wfd.targetdongle"

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/server/WfdStateMachine;->mTargetAutoTestDongleSSID:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mTargetAutoTestDongleSSID:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mTargetAutoTestDongleSSID:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/htc/server/WfdStateMachine;->selectedTargetTestDongle(Ljava/lang/String;)Lcom/htc/service/DongleInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iput-boolean v11, p0, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    :cond_5
    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-nez v7, :cond_6

    iput-object p1, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iput-boolean v12, p0, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    :goto_2
    iput-boolean v12, p0, Lcom/htc/server/WfdStateMachine;->mIsScanning:Z

    iget-boolean v7, p1, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-eqz v7, :cond_d

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine;->isMirrorModeEnable()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v7}, Lcom/htc/service/WirelessDisplayManager;->getCurrentDongle()Lcom/htc/service/DongleInfo;

    move-result-object v0

    .local v0, "currentDongle":Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_8

    iget-object v7, v0, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    iget-object v8, p1, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget v7, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v7, :cond_7

    :goto_3
    invoke-direct {p0, v5}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    iput-boolean v11, p0, Lcom/htc/server/WfdStateMachine;->mIsSwitchingDongles:Z

    const/16 v5, 0x39

    invoke-virtual {p0, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v5, v12}, Lcom/htc/service/WirelessDisplayManager;->mirrorModeStartStop(Z)Z

    const-string v5, "WfdStateMachine"

    const-string v6, "Select a new dongle while mirroring, stop mirror mode first."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v0    # "currentDongle":Lcom/htc/service/DongleInfo;
    :cond_6
    iget-object p1, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    goto :goto_2

    .restart local v0    # "currentDongle":Lcom/htc/service/DongleInfo;
    :cond_7
    move v5, v6

    goto :goto_3

    :cond_8
    iget v5, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v5, :cond_9

    const/16 v5, 0x1f

    :goto_4
    invoke-direct {p0, v5}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto/16 :goto_1

    :cond_9
    const/16 v5, 0x20

    goto :goto_4

    .end local v0    # "currentDongle":Lcom/htc/service/DongleInfo;
    :cond_a
    iget v7, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-ne v7, v13, :cond_b

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    invoke-direct {p0, v11, v7}, Lcom/htc/server/WfdStateMachine;->showConnectingDialog(ZLcom/htc/service/DongleInfo;)V

    :cond_b
    iget v7, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v7, :cond_c

    :goto_5
    invoke-direct {p0, v5}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    :cond_c
    move v5, v6

    goto :goto_5

    :cond_d
    iget v7, p1, Lcom/htc/service/DongleInfo;->status:I

    if-eq v7, v11, :cond_e

    iget v7, p1, Lcom/htc/service/DongleInfo;->status:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_19

    :cond_e
    iget-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsMultipleWpsDongles:Z

    if-eqz v5, :cond_f

    const-string v5, "WfdStateMachine"

    const-string v6, "Multiple WPS dongles detected."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    if-nez v5, :cond_10

    iget v5, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v5, :cond_11

    const/16 v5, 0x30

    invoke-direct {p0, v5}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    :cond_10
    :goto_6
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->isConnectToDfsChannels()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->checkIfDfsAvailable()Z

    move-result v5

    if-nez v5, :cond_14

    const/16 v5, 0x33

    invoke-virtual {p0, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    :goto_7
    const-string v5, "WfdStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check if need to defer configure = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsDeferConfigure:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->clearLimitedApInfo()V

    goto/16 :goto_1

    :cond_11
    iget v5, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-eq v5, v11, :cond_12

    iget v5, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-ne v5, v13, :cond_13

    :cond_12
    const/16 v5, 0x31

    invoke-direct {p0, v5}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto :goto_6

    :cond_13
    const/16 v5, 0x32

    invoke-direct {p0, v5}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto :goto_6

    :cond_14
    iget-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsScanComplete:Z

    if-nez v5, :cond_15

    iput-boolean v11, p0, Lcom/htc/server/WfdStateMachine;->mIsDeferConfigure:Z

    goto :goto_7

    :cond_15
    const/16 v5, 0x19

    invoke-virtual {p0, v5}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->requestWpsOnDemand()V

    sget-boolean v5, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v5, :cond_16

    invoke-virtual {p0, v11}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_7

    :cond_16
    invoke-direct {p0, v11}, Lcom/htc/server/WfdStateMachine;->isAphConnectable(Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsAphConnectableBefore:Z

    iget-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsAphConnectableBefore:Z

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .local v4, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_17

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_17

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/server/WfdStateMachine;->mConnectableAphBeforeSsid:Ljava/lang/String;

    .end local v4    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_17
    iget v5, p1, Lcom/htc/service/DongleInfo;->status:I

    if-ne v5, v11, :cond_18

    invoke-virtual {p0, v11}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_7

    :cond_18
    const/16 v5, 0x11

    const-wide/16 v6, 0xbb8

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_7

    :cond_19
    iget v7, p1, Lcom/htc/service/DongleInfo;->status:I

    if-eq v7, v13, :cond_1a

    iget v7, p1, Lcom/htc/service/DongleInfo;->status:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_23

    iget-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-nez v7, :cond_23

    :cond_1a
    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine;->isMirrorModeEnable()Z

    move-result v7

    if-eqz v7, :cond_1e

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v7}, Lcom/htc/service/WirelessDisplayManager;->getCurrentDongle()Lcom/htc/service/DongleInfo;

    move-result-object v0

    .restart local v0    # "currentDongle":Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_1c

    iget-object v7, v0, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    iget-object v8, p1, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    iget v7, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v7, :cond_1b

    :goto_8
    invoke-direct {p0, v5}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    iput-boolean v11, p0, Lcom/htc/server/WfdStateMachine;->mIsSwitchingDongles:Z

    const/16 v5, 0x39

    invoke-virtual {p0, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v5, v12}, Lcom/htc/service/WirelessDisplayManager;->mirrorModeStartStop(Z)Z

    const-string v5, "WfdStateMachine"

    const-string v6, "Select a new paired dongle while mirroring, stop mirror mode first."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1b
    move v5, v6

    goto :goto_8

    :cond_1c
    iget v5, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v5, :cond_1d

    const/16 v5, 0x1f

    :goto_9
    invoke-direct {p0, v5}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto/16 :goto_1

    :cond_1d
    const/16 v5, 0x20

    goto :goto_9

    .end local v0    # "currentDongle":Lcom/htc/service/DongleInfo;
    :cond_1e
    sget-boolean v7, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v7, :cond_1f

    iget-boolean v7, p1, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-nez v7, :cond_1f

    invoke-virtual {p0, p1}, Lcom/htc/server/WfdStateMachine;->attemptToReConfigure(Lcom/htc/service/DongleInfo;)V

    goto/16 :goto_1

    :cond_1f
    iget v7, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-ne v7, v13, :cond_20

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    invoke-direct {p0, v11, v7}, Lcom/htc/server/WfdStateMachine;->showConnectingDialog(ZLcom/htc/service/DongleInfo;)V

    :cond_20
    iget v7, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v7, :cond_21

    :goto_a
    invoke-direct {p0, v5}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    iget-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsScanComplete:Z

    if-nez v5, :cond_22

    iput-boolean v11, p0, Lcom/htc/server/WfdStateMachine;->mIsDeferDiscovery:Z

    goto/16 :goto_1

    :cond_21
    move v5, v6

    goto :goto_a

    :cond_22
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    :cond_23
    iget-boolean v5, p1, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/server/WfdStateMachine;->attemptToReConfigure(Lcom/htc/service/DongleInfo;)V

    goto/16 :goto_1
.end method

.method attemptToReConfigure(Lcom/htc/service/DongleInfo;)V
    .locals 10
    .param p1, "info"    # Lcom/htc/service/DongleInfo;

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v1, 0x0

    const/4 v3, 0x1

    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WFD]===>attemptToReConfigure()...mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/server/WfdUtils;->modeNames:[Ljava/lang/String;

    iget v7, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x38

    invoke-virtual {p0, v4}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    invoke-virtual {p0, p1}, Lcom/htc/server/WfdStateMachine;->isCaviumDongle(Lcom/htc/service/DongleInfo;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WFD]===>attemptToReConfigure()...mIsOldCaviumDongle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "WfdStateMachine"

    const-string v5, "Disable scan....@attemptToReConfigure"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v4, v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiDisplayUnscan(Landroid/net/wifi/WifiManager;Z)Z

    if-nez p1, :cond_1

    invoke-direct {p0, v9, v1}, Lcom/htc/server/WfdStateMachine;->reportErrorCode(IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WFD]===>Reconfigure Dongle status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/service/DongleInfo;->getStateName:[Ljava/lang/String;

    iget v7, p1, Lcom/htc/service/DongleInfo;->status:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isDiscoveredByWivu = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p1, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n[WFD]===>, apm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", aph = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/htc/service/DongleInfo;->currentAph:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n[WFD]===>, bssid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-nez v4, :cond_2

    const-string v3, "WfdStateMachine"

    const-string v4, "[WFD]===> Check Dongle version. Not start with \'1\' or Not start with \'M\'"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine;->retryConfigure()V

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v9, v1}, Lcom/htc/server/WfdStateMachine;->reportErrorCode(IZ)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->clearLimitedApInfo()V

    iput-object p1, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget v4, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_3

    move v1, v3

    .local v1, "isEnterFromList":Z
    :cond_3
    iget v4, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v4, :cond_4

    const/16 v4, 0x29

    invoke-direct {p0, v4}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    :goto_2
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->requestWpsOnDemand()V

    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    sget-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v4, :cond_8

    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->isConnectToDfsChannels()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->checkIfDfsAvailable()Z

    move-result v4

    if-nez v4, :cond_7

    const/16 v3, 0x33

    invoke-virtual {p0, v3}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :cond_4
    iget v4, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-eq v4, v3, :cond_5

    iget v4, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-ne v4, v8, :cond_6

    :cond_5
    const/16 v4, 0x2a

    invoke-direct {p0, v4}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto :goto_2

    :cond_6
    const/16 v4, 0x2b

    invoke-direct {p0, v4}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v3}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v4}, Lcom/htc/service/WirelessDisplayManager;->stopWivuDiscovery()V

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p0, v8}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    :cond_9
    :goto_3
    iget v4, p1, Lcom/htc/service/DongleInfo;->status:I

    if-ne v4, v3, :cond_b

    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0, v3}, Lcom/htc/server/WfdStateMachine;->isAphConnectable(Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsAphConnectableBefore:Z

    iget-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsAphConnectableBefore:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/server/WfdStateMachine;->mConnectableAphBeforeSsid:Ljava/lang/String;

    goto :goto_3

    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_b
    const/16 v3, 0x11

    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0
.end method

.method attemptToRequestDongleToAPM(Lcom/htc/service/DongleInfo;)V
    .locals 8
    .param p1, "info"    # Lcom/htc/service/DongleInfo;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v1, "WfdStateMachine"

    const-string v2, "[WFD]===>attemptToRequestDongleToAPM()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/htc/server/WfdStateMachine;->isCaviumDongle(Lcom/htc/service/DongleInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    const-string v1, "WfdStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WFD]===>attemptToRequestDongleToAPM()...mIsOldCaviumDongle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    invoke-direct {p0, v7, v5}, Lcom/htc/server/WfdStateMachine;->reportErrorCode(IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v1, "WfdStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WFD]===>Dongle status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/service/DongleInfo;->getStateName:[Ljava/lang/String;

    iget v4, p1, Lcom/htc/service/DongleInfo;->status:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isDiscoveredByWivu = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n[WFD]===>, apm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", aph = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/service/DongleInfo;->currentAph:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n[WFD]===>, bssid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-object p1, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsScanning:Z

    iget-boolean v1, p1, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-eqz v1, :cond_2

    const-string v1, "WfdStateMachine"

    const-string v2, "info.isDiscoveredByWivu is true. Dongle should have IP address."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v7, v5}, Lcom/htc/server/WfdStateMachine;->reportErrorCode(IZ)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget v1, p1, Lcom/htc/service/DongleInfo;->status:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine;->isMirrorModeEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "WfdStateMachine"

    const-string v2, "isMirrorModeEnable() is true."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iput-boolean v6, p0, Lcom/htc/server/WfdStateMachine;->mIsConnectionRequest:Z

    iget-boolean v1, p0, Lcom/htc/server/WfdStateMachine;->mIsScanComplete:Z

    if-nez v1, :cond_4

    iput-boolean v6, p0, Lcom/htc/server/WfdStateMachine;->mIsDeferDiscovery:Z

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :cond_5
    iget-boolean v1, p1, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/server/WfdStateMachine;->attemptToReConfigure(Lcom/htc/service/DongleInfo;)V

    goto/16 :goto_0
.end method

.method attemptToUnlock(Lcom/htc/service/DongleInfo;[B)V
    .locals 4
    .param p1, "info"    # Lcom/htc/service/DongleInfo;
    .param p2, "pattern"    # [B

    .prologue
    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x5

    invoke-direct {p0, v0, v1}, Lcom/htc/server/WfdStateMachine;->reportErrorCode(IZ)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v0, :cond_1

    const/16 v0, 0x2d

    :goto_1
    invoke-direct {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    iput-boolean v1, p0, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x40c3878000000000L    # 9999.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/htc/server/WfdStateMachine;->mUnlockTransactionID:I

    iput-object p2, p0, Lcom/htc/server/WfdStateMachine;->mUnlockPattern:[B

    iput-object p1, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iput-object p1, p0, Lcom/htc/server/WfdStateMachine;->mUnlockDongle:Lcom/htc/service/DongleInfo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/server/WfdStateMachine;->mIsUnlockDongle:Z

    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WFD]===attemptToUnlock() donlge = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\npattern = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/htc/server/WfdStateMachine;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", transactID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/server/WfdStateMachine;->mUnlockTransactionID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    const/16 v0, 0x43

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x2e

    goto :goto_1
.end method

.method cancel()V
    .locals 3

    .prologue
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel() current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", previous = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/server/WfdStateMachine;->mPreviousPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine;->isMirrorModeEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->finish()V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method cancelConnectingDialog()V
    .locals 2

    .prologue
    const-string v0, "WfdStateMachine"

    const-string v1, "Cancel connecting dialog."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    return-void
.end method

.method checkIfFixedMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "WfdStateMachine"

    const-string v1, "[WFD]===>checkIfFixedMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "persist.sys.wfd.targetmode"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mFixedModeProperty:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mFixedModeProperty:Ljava/lang/String;

    const-string v1, "ap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mFixedModeProperty:Ljava/lang/String;

    const-string v1, "AP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsFixedCT1:Z

    iput-boolean v2, p0, Lcom/htc/server/WfdStateMachine;->mIsP2pSet:Z

    :goto_0
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WFD]===> persist.sys.wfd.targetmode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mFixedModeProperty:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n        mIsFixedCT1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/server/WfdStateMachine;->mIsFixedCT1:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n        mIsP2pSet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/server/WfdStateMachine;->mIsP2pSet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mFixedModeProperty:Ljava/lang/String;

    const-string v1, "p2p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mFixedModeProperty:Ljava/lang/String;

    const-string v1, "P2P"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iput-boolean v2, p0, Lcom/htc/server/WfdStateMachine;->mIsFixedCT1:Z

    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsP2pSet:Z

    goto :goto_0

    :cond_3
    iput-boolean v2, p0, Lcom/htc/server/WfdStateMachine;->mIsFixedCT1:Z

    iput-boolean v2, p0, Lcom/htc/server/WfdStateMachine;->mIsP2pSet:Z

    goto :goto_0
.end method

.method connectNetwork(I)V
    .locals 7
    .param p1, "netId"    # I

    .prologue
    :try_start_0
    const-class v2, Landroid/net/wifi/WifiManager;

    const-string v3, "connectNetwork"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "mthd":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "WfdStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectNetwork id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .end local v1    # "mthd":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method finishService()V
    .locals 3

    .prologue
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishService() notification = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/server/WfdStateMachine;->mNotificationState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/htc/server/WfdStateMachine;->mNotificationState:I

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/server/WfdStateMachine;->mNotificationState:I

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine;->isMirrorModeEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine;->resetStateMachine()V

    goto :goto_0
.end method

.method getAphFrequency(Landroid/net/wifi/WifiInfo;)I
    .locals 7
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;

    .prologue
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .local v3, "output":Ljava/lang/Integer;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getFrequency"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .local v2, "mthd":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAphFrequency = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .end local v2    # "mthd":Ljava/lang/reflect/Method;
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    return v4

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method getNotificationState()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/htc/server/WfdStateMachine;->mNotificationState:I

    return v0
.end method

.method isCaviumDongle(Lcom/htc/service/DongleInfo;)Z
    .locals 3
    .param p1, "info"    # Lcom/htc/service/DongleInfo;

    .prologue
    const-string v0, "WfdStateMachine"

    const-string v1, "[WFD]===>isCaviumDongle()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "WfdStateMachine"

    const-string v1, "[WFD]===> Check Dongle version. Start with \'1\' or Start with \'M\'"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info.version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMirrorModeEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v1}, Lcom/htc/service/WirelessDisplayManager;->getMirrorModeState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v1}, Lcom/htc/service/WirelessDisplayManager;->getMirrorModeState()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method notifyApClientChanged()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getClientInfo(Landroid/net/wifi/WifiManager;)Ljava/lang/String;

    move-result-object v0

    .local v0, "ipInfo":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "NO_DATA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "WfdStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyApClientChanged()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method notifyDongleScanResultsAvailable()V
    .locals 11

    .prologue
    const-string v7, "WfdStateMachine"

    const-string v8, "notifyDongleScanResultsAvailable()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .local v6, "size":I
    const/4 v0, 0x0

    .local v0, "count":I
    iget-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mNeedSwitchingAph:Z

    if-eqz v7, :cond_0

    const-string v7, "WfdStateMachine"

    const-string v8, "[WFD]===>Defer discovery is done."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    :cond_0
    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v7}, Lcom/htc/service/WirelessDisplayManager;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v1

    .local v1, "donglelist":Ljava/util/List;, "Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, "WfdStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dongle length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/service/DongleInfo;

    .local v4, "info":Lcom/htc/service/DongleInfo;
    :try_start_0
    const-string v7, "WfdStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found dongle: bssid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", staBssid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/service/DongleInfo;->getStateName:[Ljava/lang/String;

    iget v10, v4, Lcom/htc/service/DongleInfo;->status:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n            , version = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", wivu = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v4, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n            , apm = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", aph = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/htc/service/DongleInfo;->currentAph:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n            , lockType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/htc/service/DongleInfo;->lockType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", lockStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/htc/service/DongleInfo;->lockStatus:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v7, v4, Lcom/htc/service/DongleInfo;->status:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v7, v7, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    if-eqz v7, :cond_4

    sget-boolean v7, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v7, v7, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    iget-object v8, v4, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine;->isMirrorModeEnable()Z

    move-result v7

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    if-eqz v7, :cond_3

    iget v7, v4, Lcom/htc/service/DongleInfo;->status:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    iget v7, v4, Lcom/htc/service/DongleInfo;->status:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    const/16 v7, 0x3a

    const-wide/16 v8, 0x1770

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_3
    iget v7, v4, Lcom/htc/service/DongleInfo;->status:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    const/16 v7, 0x3a

    const-wide/16 v8, 0x1770

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    :cond_4
    iget-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsResettingDongle:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v7, v7, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    iget-object v8, v4, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "WfdStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dongle status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/service/DongleInfo;->getStateName:[Ljava/lang/String;

    iget v10, v4, Lcom/htc/service/DongleInfo;->status:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", bssid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v4, Lcom/htc/service/DongleInfo;->status:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_5

    iget v7, v4, Lcom/htc/service/DongleInfo;->status:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    :cond_5
    iput-object v4, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    if-nez v7, :cond_6

    const/16 v7, 0x3f

    invoke-virtual {p0, v7}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :cond_6
    const-string v7, "WfdStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mIsAutoTestConfiguring = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n mIsHardReset ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/htc/server/WfdStateMachine;->mIsHardReset:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n mResetDongleCount ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/server/WfdStateMachine;->mResetDongleCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsHardReset:Z

    if-eqz v7, :cond_7

    iget v7, p0, Lcom/htc/server/WfdStateMachine;->mResetDongleCount:I

    if-gtz v7, :cond_1

    const/16 v7, 0x19

    invoke-virtual {p0, v7}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    const/16 v7, 0x3f

    const-wide/16 v8, 0x4e20

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    const/16 v7, 0x47

    const-wide/32 v8, 0x29810

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    :cond_7
    const/16 v7, 0x3f

    invoke-virtual {p0, v7}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :cond_8
    iget-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsResettingDongle:Z

    if-eqz v7, :cond_9

    iget-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    if-eqz v7, :cond_9

    iget-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsHardReset:Z

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v7, v7, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    iget-object v8, v4, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "WfdStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dongle status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/service/DongleInfo;->getStateName:[Ljava/lang/String;

    iget v10, v4, Lcom/htc/service/DongleInfo;->status:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", bssid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v4, Lcom/htc/service/DongleInfo;->status:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    const-string v7, "WfdStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIsAutoTestConfiguring = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mResetDongleCount ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/server/WfdStateMachine;->mResetDongleCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x5

    iput v7, p0, Lcom/htc/server/WfdStateMachine;->mResetDongleCount:I

    const/16 v7, 0x3d

    invoke-virtual {p0, v7}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :cond_9
    iget-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsUnlockDongle:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mUnlockDongle:Lcom/htc/service/DongleInfo;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mUnlockDongle:Lcom/htc/service/DongleInfo;

    iget-object v7, v7, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    iget-object v8, v4, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v4, Lcom/htc/service/DongleInfo;->lockStatus:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .local v5, "rspId":I
    const-string v7, "WfdStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unlock dongle status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/htc/service/DongleInfo;->lockStatus:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", transaction ID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", target = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/server/WfdStateMachine;->mUnlockTransactionID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Lcom/htc/server/WfdStateMachine;->mUnlockTransactionID:I

    if-ne v5, v7, :cond_1

    iget-object v7, v4, Lcom/htc/service/DongleInfo;->lockStatus:Ljava/lang/String;

    const-string v8, "Y"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/16 v7, 0x41

    :goto_2
    invoke-virtual {p0, v7}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :cond_a
    const/16 v7, 0x42

    goto :goto_2

    .end local v4    # "info":Lcom/htc/service/DongleInfo;
    .end local v5    # "rspId":I
    :cond_b
    const/4 v7, 0x1

    if-le v0, v7, :cond_f

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsMultipleWpsDongles:Z

    iget-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsDeferConfigure:Z

    if-nez v7, :cond_c

    iget-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsDeferDiscovery:Z

    if-eqz v7, :cond_d

    :cond_c
    const/16 v7, 0x25

    invoke-virtual {p0, v7}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    :cond_d
    iget-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsScanning:Z

    if-eqz v7, :cond_e

    iget v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const/16 v8, 0x38

    if-eq v7, v8, :cond_e

    iget v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const/16 v8, 0x3a

    if-eq v7, v8, :cond_e

    iget v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const/16 v8, 0x3c

    if-ne v7, v8, :cond_10

    :cond_e
    :goto_4
    return-void

    :cond_f
    const/4 v7, 0x0

    goto :goto_3

    :cond_10
    const-string v7, "WfdStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyDongleScanResultsAvailable() count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v6, :cond_13

    iget v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_12

    const/16 v7, 0xa

    invoke-direct {p0, v7}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    const-string v7, "WfdStateMachine"

    const-string v8, "Notify refreshing the dongle list(Wifi)."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_5
    const/16 v7, 0x25

    invoke-virtual {p0, v7}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_4

    :cond_12
    const/16 v7, 0xb

    invoke-direct {p0, v7}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto :goto_5

    :cond_13
    iget-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsQuickScanning:Z

    if-nez v7, :cond_11

    const/16 v7, 0x26

    invoke-virtual {p0, v7}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    const/16 v7, 0x8

    invoke-direct {p0, v7}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto :goto_5
.end method

.method notifyL2PEChangeEvent(Z)V
    .locals 1
    .param p1, "succeed"    # Z

    .prologue
    if-eqz p1, :cond_0

    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method notifyMirrorDisplayStateChanged(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const-string v1, "WfdStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WFD]===>Notify mirror display state is changed, state ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mNotificationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mNotificationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    if-ne p1, v4, :cond_3

    iget-boolean v1, p0, Lcom/htc/server/WfdStateMachine;->mIsResetting:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_3
    if-ne p1, v5, :cond_4

    iget v1, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-ne v1, v5, :cond_4

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    goto :goto_0
.end method

.method notifyNetworkInfoChanged(Landroid/net/NetworkInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/htc/server/WfdStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/htc/server/WfdStateMachine;->mNetworkType:I

    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WFD]===>Active network ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1f

    invoke-virtual {p0, v0, p1}, Lcom/htc/server/WfdStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method notifyWifiApStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    iput p1, p0, Lcom/htc/server/WfdStateMachine;->mWifiApState:I

    iget v0, p0, Lcom/htc/server/WfdStateMachine;->mWifiApState:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/htc/server/WfdStateMachine;->mWifiApState:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method notifyWifiStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    iput p1, p0, Lcom/htc/server/WfdStateMachine;->mWifiState:I

    iget v0, p0, Lcom/htc/server/WfdStateMachine;->mWifiState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/htc/server/WfdStateMachine;->mWifiState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method notifyWivuListChanged()V
    .locals 9

    .prologue
    const-string v5, "WfdStateMachine"

    const-string v6, "notifyWivuListChanged()"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const/16 v6, 0xb

    if-ne v5, v6, :cond_0

    const/16 v5, 0xa

    invoke-direct {p0, v5}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    const-string v5, "WfdStateMachine"

    const-string v6, "Notify refreshing the dongle list(Wivu)."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, 0x0

    .local v4, "size":I
    iget-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsConnectionRequest:Z

    if-eqz v5, :cond_2

    const-string v5, "WfdStateMachine"

    const-string v6, "[WFD]===>mIsConnectionRequest is true."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v5}, Lcom/htc/service/WirelessDisplayManager;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v0

    .local v0, "donglelist":Ljava/util/List;, "Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "WfdStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dongle length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/service/DongleInfo;

    .local v3, "info":Lcom/htc/service/DongleInfo;
    const-string v5, "WfdStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found dongle: bssid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , staBssid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/service/DongleInfo;->getStateName:[Ljava/lang/String;

    iget v8, v3, Lcom/htc/service/DongleInfo;->status:I

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\t\t\t , version = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", wivu = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v3, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\t\t\t , apm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", aph = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/htc/service/DongleInfo;->currentAph:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v5, v5, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-boolean v5, v3, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v5, v5, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    iget-object v6, v3, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x3c

    invoke-virtual {p0, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Lcom/htc/service/DongleInfo;
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "donglelist":Ljava/util/List;, "Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method notifyWpsEvent(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method removeCallback(Lcom/htc/wfdservice/IWfdServiceCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/htc/wfdservice/IWfdServiceCallback;

    .prologue
    const-string v0, "WfdStateMachine"

    const-string v1, "removeCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method resetStateMachine()V
    .locals 2

    .prologue
    const-string v0, "WfdStateMachine"

    const-string v1, "Reset state machine."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/htc/server/WfdStateMachine;->mIsResetting:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/server/WfdStateMachine;->mIsResetting:Z

    :cond_0
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    return-void
.end method

.method retryConfigure()V
    .locals 2

    .prologue
    const-string v0, "WfdStateMachine"

    const-string v1, "[WFD]===>retryConfigure()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WfdStateMachine"

    const-string v1, "Disable scan....@retryConfigure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiDisplayUnscan(Landroid/net/wifi/WifiManager;Z)Z

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    return-void
.end method

.method selectedTargetTestDongle(Ljava/lang/String;)Lcom/htc/service/DongleInfo;
    .locals 8
    .param p1, "mTargetAutoTestDongleSSID"    # Ljava/lang/String;

    .prologue
    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WFD]===>selectedTargetTestDongle...mTargetAutoTestDongleSSID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .local v3, "size":I
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v4}, Lcom/htc/service/WirelessDisplayManager;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v0

    .local v0, "donglelist":Ljava/util/List;, "Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dongle length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/service/DongleInfo;

    .local v2, "info":Lcom/htc/service/DongleInfo;
    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found dongle: bssid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", staBssid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/service/DongleInfo;->getStateName:[Ljava/lang/String;

    iget v7, v2, Lcom/htc/service/DongleInfo;->status:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n            , version = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wivu = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v2, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n            , apm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", aph = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/service/DongleInfo;->currentAph:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v2, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Matched dongle: Ssid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/service/DongleInfo;->getStateName:[Ljava/lang/String;

    iget v7, v2, Lcom/htc/service/DongleInfo;->status:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\t\t\t , version = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wivu = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v2, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\t\t\t , apm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", aph = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/service/DongleInfo;->currentAph:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "info":Lcom/htc/service/DongleInfo;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method setMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMode() mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/server/WfdUtils;->modeNames:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine;->getCurrentState()Lcom/htc/server/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/server/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    return-void
.end method

.method setWhdmiForeground(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    const/16 v3, 0x38

    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WFD]===>setWhdmiForeground() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", configuring = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", discovering = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0, v3}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x493e0

    invoke-virtual {p0, v3, v0, v1}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    if-eqz v0, :cond_2

    const-wide/32 v0, 0x249f0

    invoke-virtual {p0, v3, v0, v1}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v3, v0, v1}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0
.end method

.method startScanDongles(Z)V
    .locals 10
    .param p1, "singleChannelScan"    # Z

    .prologue
    const/16 v9, 0x19

    const/4 v8, 0x1

    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startScanDongles() current = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v4}, Lcom/htc/service/WirelessDisplayManager;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v0

    .local v0, "donglelist":Ljava/util/List;, "Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/service/DongleInfo;

    .local v3, "info":Lcom/htc/service/DongleInfo;
    sget-object v4, Lcom/htc/service/DongleInfo;->getStateName:[Ljava/lang/String;

    iget v5, v3, Lcom/htc/service/DongleInfo;->status:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WFD]===>Dongle status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/service/DongleInfo;->getStateName:[Ljava/lang/String;

    iget v7, v3, Lcom/htc/service/DongleInfo;->status:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WFD_DBG]===> info.bssid ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WFD_DBG]===> info.isDiscoveredByWivu ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v3, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WFD_DBG]===> info.isConnectable ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v3, Lcom/htc/service/DongleInfo;->isConnectable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "WfdStateMachine"

    const-string v5, "[WFD_DBG]===> --- "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Lcom/htc/service/DongleInfo;
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "donglelist":Ljava/util/List;, "Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    iput-boolean v8, p0, Lcom/htc/server/WfdStateMachine;->mIsRequestScanning:Z

    const/16 v4, 0xb

    iput v4, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update mCurrentPage = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsScanning:Z

    if-nez v4, :cond_2

    iput-boolean v8, p0, Lcom/htc/server/WfdStateMachine;->mIsScanning:Z

    :cond_2
    iget-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsCancelConfiguring:Z

    if-eqz v4, :cond_3

    :goto_1
    return-void

    :cond_3
    if-eqz p1, :cond_4

    const/16 v4, 0x18

    invoke-virtual {p0, v4}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v9}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    invoke-virtual {p0, v9}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    iput-boolean v8, p0, Lcom/htc/server/WfdStateMachine;->mIsShowScanning:Z

    const/4 v4, 0x7

    invoke-direct {p0, v4}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto :goto_1
.end method

.method stopScanDongles()V
    .locals 3

    .prologue
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopScanDongles() current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/server/WfdStateMachine;->mIsRequestScanning:Z

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    const/16 v0, 0x46

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    return-void
.end method

.method switchOnOffMirrorMode(Z)V
    .locals 9
    .param p1, "autoEnable"    # Z

    .prologue
    const/16 v8, 0xb

    const-string v5, "WfdStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "switchOnOffMirrorMode() auto = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x38

    invoke-virtual {p0, v5}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    if-eqz p1, :cond_5

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v5}, Lcom/htc/service/WirelessDisplayManager;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v0

    .local v0, "donglelist":Ljava/util/List;, "Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    const/4 v2, 0x0

    .local v2, "found":Z
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v5}, Lcom/htc/service/WirelessDisplayManager;->getCurrentDongle()Lcom/htc/service/DongleInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    const-string v5, "WfdStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[WFD]===>switchOnOffMirrorMode() dongle ssid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v7, v7, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x2e

    invoke-direct {p0, v5}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .end local v0    # "donglelist":Ljava/util/List;, "Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    .end local v2    # "found":Z
    :goto_1
    return-void

    .restart local v0    # "donglelist":Ljava/util/List;, "Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    .restart local v2    # "found":Z
    :cond_1
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/service/DongleInfo;

    .local v4, "info":Lcom/htc/service/DongleInfo;
    iget v5, v4, Lcom/htc/service/DongleInfo;->status:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    iget-boolean v5, v4, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-eqz v5, :cond_2

    :cond_3
    const-string v5, "WfdStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found ready to use dongle: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "info":Lcom/htc/service/DongleInfo;
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_4
    invoke-direct {p0, v8}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto :goto_1

    .end local v0    # "donglelist":Ljava/util/List;, "Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    .end local v2    # "found":Z
    :cond_5
    invoke-direct {p0, v8}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto :goto_1
.end method

.method wpsTimeout()V
    .locals 2

    .prologue
    const-string v0, "WfdStateMachine"

    const-string v1, "wpsTimeout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    return-void
.end method
