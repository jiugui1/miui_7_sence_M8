.class Lcom/android/server/ServerThread;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ACC_APP_FRAMEWORK:Ljava/lang/String; = "Android_App_Framework"

.field private static final ACC_FLAG_GESTURE_SERVICE:Ljava/lang/String; = "enable_gesture_service"

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addFingerGestureService(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1487
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.htc.wifidisplay"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    .line 1488
    .local v2, "state":I
    const-string v3, "SystemServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaOutput installed, state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    new-instance v1, Lcom/htc/server/FingerGestureService;

    invoke-direct {v1, p1}, Lcom/htc/server/FingerGestureService;-><init>(Landroid/content/Context;)V

    .line 1490
    .local v1, "mFingerGestureService":Lcom/htc/server/FingerGestureService;
    const-string v3, "FingerGestureService"

    invoke-static {v3, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1495
    .end local v1    # "mFingerGestureService":Lcom/htc/server/FingerGestureService;
    .end local v2    # "state":I
    :goto_0
    return-void

    .line 1491
    :catch_0
    move-exception v0

    .line 1492
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "SystemServer"

    const-string v4, "MediaOutput not installed"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$mSystemServiceManager(Lcom/android/server/ServerThread;)Lcom/android/server/SystemServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ServerThread;

    .prologue
    iget-object v0, p0, Lcom/android/server/ServerThread;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1476
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1477
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1480
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1481
    return-void
.end method


# virtual methods
.method enableGestureService()Z
    .locals 7

    .prologue
    .line 161
    const/4 v3, 0x1

    .line 163
    .local v3, "ret":Z
    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 164
    .local v0, "customizationManager":Lcom/htc/customization/HtcCustomizationManager;
    const-string v4, "Android_App_Framework"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    .line 165
    .local v2, "frameworkReader":Lcom/htc/customization/HtcCustomizationReader;
    const-string v4, "enable_gesture_service"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 169
    .end local v0    # "customizationManager":Lcom/htc/customization/HtcCustomizationManager;
    .end local v2    # "frameworkReader":Lcom/htc/customization/HtcCustomizationReader;
    :goto_0
    return v3

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "SystemServer"

    const-string v5, "Read customization fail!"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getRootPeriod()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1469
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v1

    const-string v2, "Android_Core_Framework"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    .line 1472
    .local v0, "custReader":Lcom/htc/customization/HtcCustomizationReader;
    const-string v1, "device_root_monitor_report_period"

    invoke-interface {v0, v1, v4}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public initAndLoop()V
    .locals 182

    .prologue
    .line 193
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v7, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 196
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 198
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 201
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 202
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 206
    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v156

    .line 208
    .local v156, "shutdownAction":Ljava/lang/String;
    if-eqz v156, :cond_0

    invoke-virtual/range {v156 .. v156}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 209
    const/4 v7, 0x0

    move-object/from16 v0, v156

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_2b

    const/16 v146, 0x1

    .line 212
    .local v146, "reboot":Z
    :goto_0
    invoke-virtual/range {v156 .. v156}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_2c

    .line 213
    const/4 v7, 0x1

    invoke-virtual/range {v156 .. v156}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v156

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v145

    .line 218
    .local v145, "reason":Ljava/lang/String;
    :goto_1
    move/from16 v0, v146

    move-object/from16 v1, v145

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 222
    .end local v145    # "reason":Ljava/lang/String;
    .end local v146    # "reboot":Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v111

    .line 223
    .local v111, "factoryTestStr":Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v111

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v110, 0x0

    .line 225
    .local v110, "factoryTest":I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 227
    .local v33, "headless":Z
    const/16 v118, 0x0

    .line 228
    .local v118, "installer":Lcom/android/server/pm/Installer;
    const/16 v63, 0x0

    .line 229
    .local v63, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v84, 0x0

    .line 230
    .local v84, "contentService":Lcom/android/server/content/ContentService;
    const/16 v122, 0x0

    .line 231
    .local v122, "lights":Lcom/android/server/LightsService;
    const/16 v113, 0x0

    .line 232
    .local v113, "htchardware":Lcom/android/server/HtcHardwareService;
    const/4 v4, 0x0

    .line 233
    .local v4, "power":Lcom/android/server/power/PowerManagerService;
    const/16 v101, 0x0

    .line 234
    .local v101, "display":Lcom/android/server/display/DisplayManagerService;
    const/16 v74, 0x0

    .line 235
    .local v74, "battery":Lcom/android/server/BatteryService;
    const/16 v170, 0x0

    .line 236
    .local v170, "vibrator":Lcom/android/server/VibratorService;
    const/16 v67, 0x0

    .line 237
    .local v67, "alarm":Lcom/android/server/AlarmManagerService;
    const/16 v132, 0x0

    .line 238
    .local v132, "mountService":Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 239
    .local v30, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 240
    .local v29, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v134, 0x0

    .line 241
    .local v134, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v80, 0x0

    .line 242
    .local v80, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v178, 0x0

    .line 243
    .local v178, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v176, 0x0

    .line 244
    .local v176, "wifi":Lcom/android/server/wifi/WifiService;
    const/16 v155, 0x0

    .line 245
    .local v155, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v140, 0x0

    .line 246
    .local v140, "pm":Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 247
    .local v5, "context":Landroid/content/Context;
    const/16 v180, 0x0

    .line 248
    .local v180, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v75, 0x0

    .line 249
    .local v75, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v102, 0x0

    .line 250
    .local v102, "dock":Lcom/android/server/DockObserver;
    const/16 v149, 0x0

    .line 251
    .local v149, "regulatory":Lcom/android/server/RegulatoryObserver;
    const/16 v168, 0x0

    .line 252
    .local v168, "usb":Lcom/android/server/usb/UsbService;
    const/16 v153, 0x0

    .line 253
    .local v153, "serial":Lcom/android/server/SerialService;
    const/16 v164, 0x0

    .line 254
    .local v164, "twilight":Lcom/android/server/TwilightService;
    const/16 v166, 0x0

    .line 255
    .local v166, "uiMode":Lcom/android/server/UiModeManagerService;
    const/16 v147, 0x0

    .line 256
    .local v147, "recognition":Lcom/android/server/RecognitionManagerService;
    const/16 v136, 0x0

    .line 257
    .local v136, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v77, 0x0

    .line 258
    .local v77, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v117, 0x0

    .line 260
    .local v117, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v90, 0x0

    .line 262
    .local v90, "deviceManager":Lcom/android/server/DeviceManager3LMService;
    const/16 v160, 0x0

    .line 263
    .local v160, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v82, 0x0

    .line 266
    .local v82, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v65, 0x0

    .line 270
    .local v65, "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    new-instance v181, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v181

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 271
    .local v181, "wmHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual/range {v181 .. v181}, Landroid/os/HandlerThread;->start()V

    .line 272
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v181 .. v181}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 273
    .local v21, "wmHandler":Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ServerThread;->support3LM()Z

    move-result v73

    .line 294
    .local v73, "bSupport3LM":Z
    const/16 v24, 0x0

    .line 295
    .local v24, "onlyCore":Z
    const/16 v112, 0x0

    .line 300
    .local v112, "firstBoot":Z
    :try_start_0
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v119, Lcom/android/server/pm/Installer;

    invoke-direct/range {v119 .. v119}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .end local v118    # "installer":Lcom/android/server/pm/Installer;
    .local v119, "installer":Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v119 .. v119}, Lcom/android/server/pm/Installer;->ping()Z

    .line 306
    const-string v7, "debug.htccachedlog.disable"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v72

    .line 307
    .local v72, "bDisableCachedLog":Z
    if-nez v72, :cond_1

    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v7

    if-nez v7, :cond_1

    .line 308
    const-string v7, "SystemServer"

    const-string v9, "HTC Cached Log Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v7, "htccachedlog"

    new-instance v9, Lcom/htc/server/HtcCachedLogManagerService;

    invoke-direct {v9}, Lcom/htc/server/HtcCachedLogManagerService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 313
    :cond_1
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v141, Lcom/android/server/power/PowerManagerService;

    invoke-direct/range {v141 .. v141}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6c

    .line 315
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .local v141, "power":Lcom/android/server/power/PowerManagerService;
    :try_start_2
    const-string v7, "power"

    move-object/from16 v0, v141

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 318
    if-eqz v73, :cond_2

    .line 319
    const-string v7, "SystemServer"

    const-string v9, "DeviceManager3LM"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-static {}, Lcom/android/server/DeviceManager3LMService;->getInstance()Lcom/android/server/DeviceManager3LMService;

    move-result-object v90

    .line 321
    const-string v7, "DeviceManager3LM"

    move-object/from16 v0, v90

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 325
    :cond_2
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-static/range {v110 .. v110}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6d

    move-result-object v5

    move-object/from16 v4, v141

    .end local v141    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    move-object/from16 v118, v119

    .line 332
    .end local v72    # "bDisableCachedLog":Z
    .end local v119    # "installer":Lcom/android/server/pm/Installer;
    .restart local v118    # "installer":Lcom/android/server/pm/Installer;
    :goto_3
    const-string v7, "config.disable_storage"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v98

    .line 333
    .local v98, "disableStorage":Z
    const-string v7, "config.disable_media"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v95

    .line 334
    .local v95, "disableMedia":Z
    const-string v7, "config.disable_bluetooth"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v93

    .line 335
    .local v93, "disableBluetooth":Z
    const-string v7, "config.disable_telephony"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v100

    .line 336
    .local v100, "disableTelephony":Z
    const-string v7, "config.disable_location"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v94

    .line 337
    .local v94, "disableLocation":Z
    const-string v7, "config.disable_systemui"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v99

    .line 338
    .local v99, "disableSystemUI":Z
    const-string v7, "config.disable_noncore"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v97

    .line 339
    .local v97, "disableNonCoreServices":Z
    const-string v7, "config.disable_network"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v96

    .line 342
    .local v96, "disableNetwork":Z
    :try_start_3
    new-instance v7, Lcom/android/server/SystemServiceManager;

    invoke-direct {v7, v5}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/ServerThread;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v7, v9}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v11, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    invoke-direct {v11, v5, v0}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_60

    .line 344
    .end local v101    # "display":Lcom/android/server/display/DisplayManagerService;
    .local v11, "display":Lcom/android/server/display/DisplayManagerService;
    :try_start_4
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v11, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 346
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v161, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v161

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_61

    .line 348
    .end local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v161, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_5
    const-string v7, "telephony.registry"

    move-object/from16 v0, v161

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 350
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v7, "scheduling_policy"

    new-instance v9, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v9}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 353
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 355
    invoke-virtual {v11}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_3

    .line 356
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 360
    :cond_3
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v87

    .line 363
    .local v87, "cryptState":Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v87

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 364
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/16 v24, 0x1

    .line 371
    :cond_4
    :goto_4
    if-eqz v110, :cond_2f

    const/4 v7, 0x1

    :goto_5
    move-object/from16 v0, v118

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v140

    .line 375
    :try_start_6
    invoke-interface/range {v140 .. v140}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_46
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    move-result v112

    .line 379
    :goto_6
    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 381
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 384
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 388
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    .line 393
    :try_start_8
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance v64, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v64

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    .line 395
    .end local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v64, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_9
    const-string v7, "account"

    move-object/from16 v0, v64

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6b
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_62

    move-object/from16 v63, v64

    .line 400
    .end local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_7
    :try_start_a
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v7, 0x1

    move/from16 v0, v110

    if-ne v0, v7, :cond_30

    const/4 v7, 0x1

    :goto_8
    invoke-static {v5, v7}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v84

    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/server/MiuiLightsService;

    invoke-direct {v6, v5}, Lcom/android/server/MiuiLightsService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2

    .end local v122    # "lights":Lcom/android/server/LightsService;
    .local v6, "lights":Lcom/android/server/LightsService;
    :try_start_b
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_63

    .line 412
    .end local v74    # "battery":Lcom/android/server/BatteryService;
    .local v8, "battery":Lcom/android/server/BatteryService;
    :try_start_c
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 414
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    new-instance v171, Lcom/android/server/VibratorService;

    move-object/from16 v0, v171

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_64

    .line 416
    .end local v170    # "vibrator":Lcom/android/server/VibratorService;
    .local v171, "vibrator":Lcom/android/server/VibratorService;
    :try_start_d
    const-string v7, "vibrator"

    move-object/from16 v0, v171

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 419
    const-string v7, "SystemServer"

    const-string v9, "Hardware Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    new-instance v114, Lcom/android/server/HtcHardwareService;

    move-object/from16 v0, v114

    invoke-direct {v0, v5}, Lcom/android/server/HtcHardwareService;-><init>(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_65

    .line 421
    .end local v113    # "htchardware":Lcom/android/server/HtcHardwareService;
    .local v114, "htchardware":Lcom/android/server/HtcHardwareService;
    :try_start_e
    const-string v7, "htchardware"

    move-object/from16 v0, v114

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 423
    const-string v7, "SystemServer"

    const-string v9, "Consumer IR Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v83, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v83

    invoke-direct {v0, v5}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_66

    .line 425
    .end local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v83, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_f
    const-string v7, "consumer_ir"

    move-object/from16 v0, v83

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 429
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v10

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/display/DisplayManagerService;)V

    .line 433
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v16, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_67

    .line 435
    .end local v67    # "alarm":Lcom/android/server/AlarmManagerService;
    .local v16, "alarm":Lcom/android/server/AlarmManagerService;
    :try_start_10
    const-string v7, "alarm"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 437
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v17

    move-object v13, v5

    move-object v14, v8

    move-object v15, v4

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 440
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    const-string v9, "WindowManager thread"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v9}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;Ljava/lang/String;)V

    .line 442
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v20, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_68

    .line 445
    .end local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v20, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_11
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v7, 0x1

    move/from16 v0, v110

    if-eq v0, v7, :cond_31

    const/16 v22, 0x1

    :goto_9
    if-nez v112, :cond_32

    const/16 v23, 0x1

    :goto_a
    move-object/from16 v17, v5

    move-object/from16 v18, v4

    move-object/from16 v19, v11

    invoke-static/range {v17 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v180

    .line 449
    const-string v7, "window"

    move-object/from16 v0, v180

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 450
    const-string v7, "input"

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 452
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v180

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 454
    invoke-virtual/range {v180 .. v180}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 455
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/input/InputManagerService;->start()V

    .line 457
    move-object/from16 v0, v180

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 458
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 461
    const-string v7, "SystemServer"

    const-string v9, "Htc ActiveEngine Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v66, Lcom/android/server/HtcActiveEngineManager;

    move-object/from16 v0, v66

    invoke-direct {v0, v5}, Lcom/android/server/HtcActiveEngineManager;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_69

    .line 468
    .end local v65    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .local v66, "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    :try_start_12
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 469
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_3

    :goto_b
    move-object/from16 v65, v66

    .end local v66    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .restart local v65    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    move-object/from16 v82, v83

    .end local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v160, v161

    .end local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v170, v171

    .end local v171    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v170    # "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v113, v114

    .line 487
    .end local v87    # "cryptState":Ljava/lang/String;
    .end local v114    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v113    # "htchardware":Lcom/android/server/HtcHardwareService;
    :goto_c
    const/16 v91, 0x0

    .line 488
    .local v91, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    const/16 v157, 0x0

    .line 489
    .local v157, "statusBar":Lcom/android/server/StatusBarManagerService;
    const/16 v115, 0x0

    .line 490
    .local v115, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v68, 0x0

    .line 491
    .local v68, "appWidget":Lcom/android/server/AppWidgetService;
    const/16 v138, 0x0

    .line 492
    .local v138, "notification":Lcom/android/server/NotificationManagerService;
    const/16 v173, 0x0

    .line 493
    .local v173, "wallpaper":Lcom/android/server/WallpaperManagerService;
    const/16 v123, 0x0

    .line 494
    .local v123, "location":Lcom/android/server/LocationManagerService;
    const/16 v85, 0x0

    .line 495
    .local v85, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v162, 0x0

    .line 496
    .local v162, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v125, 0x0

    .line 497
    .local v125, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v104, 0x0

    .line 498
    .local v104, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    const/16 v70, 0x0

    .line 499
    .local v70, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v142, 0x0

    .line 500
    .local v142, "printManager":Lcom/android/server/print/PrintManagerService;
    const/16 v129, 0x0

    .line 502
    .local v129, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/16 v107, 0x0

    .line 505
    .local v107, "facebook":Lcom/android/server/facebook/FacebookSystemDashService;
    const/4 v7, 0x1

    move/from16 v0, v110

    if-eq v0, v7, :cond_5

    .line 509
    :try_start_13
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    new-instance v116, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v116

    move-object/from16 v1, v180

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_4

    .line 511
    .end local v115    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v116, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_14
    const-string v7, "input_method"

    move-object/from16 v0, v116

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_5f

    move-object/from16 v115, v116

    .line 517
    .end local v116    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v115    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_d
    :try_start_15
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_5

    .line 527
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ServerThread;->enableGestureService()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 529
    :try_start_16
    const-string v7, "SystemServer"

    const-string v9, "HTC Gesture Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const-string v7, "gesture"

    new-instance v9, Lcom/htc/server/gesture/GestureService;

    invoke-direct {v9, v5}, Lcom/htc/server/gesture/GestureService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_6

    .line 540
    :cond_5
    :goto_f
    :try_start_17
    invoke-virtual/range {v180 .. v180}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_7

    .line 546
    :goto_10
    :try_start_18
    invoke-interface/range {v140 .. v140}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_8

    .line 552
    :goto_11
    :try_start_19
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040416

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_5e

    .line 559
    :goto_12
    const/4 v7, 0x1

    move/from16 v0, v110

    if-eq v0, v7, :cond_3e

    .line 560
    if-nez v98, :cond_6

    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 567
    :try_start_1a
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    new-instance v133, Lcom/android/server/MountService;

    move-object/from16 v0, v133

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_9

    .line 569
    .end local v132    # "mountService":Lcom/android/server/MountService;
    .local v133, "mountService":Lcom/android/server/MountService;
    :try_start_1b
    const-string v7, "mount"

    move-object/from16 v0, v133

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_5d

    move-object/from16 v132, v133

    .line 575
    .end local v133    # "mountService":Lcom/android/server/MountService;
    .restart local v132    # "mountService":Lcom/android/server/MountService;
    :cond_6
    :goto_13
    if-nez v97, :cond_7

    .line 577
    :try_start_1c
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    new-instance v126, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v126

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_a

    .line 579
    .end local v125    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v126, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_1d
    const-string v7, "lock_settings"

    move-object/from16 v0, v126

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_5c

    move-object/from16 v125, v126

    .line 585
    .end local v126    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v125    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_14
    :try_start_1e
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    new-instance v92, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v92

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_b

    .line 587
    .end local v91    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .local v92, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :try_start_1f
    const-string v7, "device_policy"

    move-object/from16 v0, v92

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_5b

    move-object/from16 v91, v92

    .line 593
    .end local v92    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v91    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :cond_7
    :goto_15
    if-nez v99, :cond_8

    .line 595
    :try_start_20
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    new-instance v158, Lcom/android/server/DashNotificationManagerService;

    move-object/from16 v0, v158

    move-object/from16 v1, v180

    invoke-direct {v0, v5, v1}, Lcom/android/server/DashNotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_c

    .line 598
    .end local v157    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .local v158, "statusBar":Lcom/android/server/StatusBarManagerService;
    :try_start_21
    const-string v7, "statusbar"

    move-object/from16 v0, v158

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_5a

    move-object/from16 v157, v158

    .line 604
    .end local v158    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v157    # "statusBar":Lcom/android/server/StatusBarManagerService;
    :cond_8
    :goto_16
    if-nez v97, :cond_9

    .line 606
    :try_start_22
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_d

    .line 614
    :cond_9
    :goto_17
    if-nez v96, :cond_a

    .line 616
    :try_start_23
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 618
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_e

    .line 624
    :cond_a
    :goto_18
    if-nez v97, :cond_b

    .line 626
    :try_start_24
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    new-instance v163, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v163

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_f

    .line 628
    .end local v162    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v163, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_25
    const-string v7, "textservices"

    move-object/from16 v0, v163

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_59

    move-object/from16 v162, v163

    .line 634
    .end local v163    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v162    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_b
    :goto_19
    if-nez v96, :cond_3d

    .line 636
    :try_start_26
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    new-instance v135, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v135

    move-object/from16 v1, v30

    move-object/from16 v2, v16

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_10

    .line 638
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v135, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_27
    const-string v7, "netstats"

    move-object/from16 v0, v135

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_58

    move-object/from16 v29, v135

    .line 644
    .end local v135    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_1a
    :try_start_28
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_11

    .line 648
    .end local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_29
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_57

    .line 654
    :goto_1b
    :try_start_2a
    const-string v7, "SystemServer"

    const-string v9, "Regulatory Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    new-instance v150, Lcom/android/server/RegulatoryObserver;

    move-object/from16 v0, v150

    invoke-direct {v0, v5}, Lcom/android/server/RegulatoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_12

    .end local v149    # "regulatory":Lcom/android/server/RegulatoryObserver;
    .local v150, "regulatory":Lcom/android/server/RegulatoryObserver;
    move-object/from16 v149, v150

    .line 662
    .end local v150    # "regulatory":Lcom/android/server/RegulatoryObserver;
    .restart local v149    # "regulatory":Lcom/android/server/RegulatoryObserver;
    :goto_1c
    :try_start_2b
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    new-instance v179, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v179

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_13

    .line 664
    .end local v178    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .local v179, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_2c
    const-string v7, "wifip2p"

    move-object/from16 v0, v179

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_56

    move-object/from16 v178, v179

    .line 670
    .end local v179    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v178    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1d
    :try_start_2d
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    new-instance v177, Lcom/android/server/wifi/WifiService;

    move-object/from16 v0, v177

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_14

    .line 672
    .end local v176    # "wifi":Lcom/android/server/wifi/WifiService;
    .local v177, "wifi":Lcom/android/server/wifi/WifiService;
    :try_start_2e
    const-string v7, "wifi"

    move-object/from16 v0, v177

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_55

    move-object/from16 v176, v177

    .line 678
    .end local v177    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v176    # "wifi":Lcom/android/server/wifi/WifiService;
    :goto_1e
    :try_start_2f
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    new-instance v81, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v81

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_15

    .line 681
    .end local v80    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v81, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_30
    const-string v7, "connectivity"

    move-object/from16 v0, v81

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 682
    move-object/from16 v0, v29

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 683
    move-object/from16 v0, v25

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 685
    invoke-virtual/range {v178 .. v178}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V

    .line 686
    invoke-virtual/range {v176 .. v176}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_54

    move-object/from16 v80, v81

    .line 692
    .end local v81    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v80    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_1f
    :try_start_31
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v155

    .line 694
    const-string v7, "servicediscovery"

    move-object/from16 v0, v155

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_16

    .line 701
    :goto_20
    if-nez v97, :cond_c

    .line 703
    :try_start_32
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_17

    .line 716
    :cond_c
    :goto_21
    if-eqz v132, :cond_d

    if-nez v24, :cond_d

    .line 718
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v87

    .line 719
    .restart local v87    # "cryptState":Ljava/lang/String;
    if-eqz v87, :cond_37

    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v87

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 721
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - do not wait for MountService ready"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    .end local v87    # "cryptState":Ljava/lang/String;
    :cond_d
    :goto_22
    if-eqz v63, :cond_e

    .line 730
    :try_start_33
    invoke-virtual/range {v63 .. v63}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_18

    .line 736
    :cond_e
    :goto_23
    if-eqz v84, :cond_f

    .line 737
    :try_start_34
    invoke-virtual/range {v84 .. v84}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_19

    .line 743
    :cond_f
    :goto_24
    :try_start_35
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    new-instance v139, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v139

    move-object/from16 v1, v157

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1a

    .line 745
    .end local v138    # "notification":Lcom/android/server/NotificationManagerService;
    .local v139, "notification":Lcom/android/server/NotificationManagerService;
    :try_start_36
    const-string v7, "notification"

    move-object/from16 v0, v139

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 746
    move-object/from16 v0, v25

    move-object/from16 v1, v139

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_53

    move-object/from16 v138, v139

    .line 754
    .end local v139    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v138    # "notification":Lcom/android/server/NotificationManagerService;
    :goto_25
    :try_start_37
    const-string v7, "SystemServer"

    const-string v9, "Legacy Display Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const-string v7, "display-legacy"

    new-instance v9, Lcom/android/server/DisplayService;

    invoke-direct {v9, v5}, Lcom/android/server/DisplayService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1b

    .line 761
    :goto_26
    :try_start_38
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1c

    .line 768
    :goto_27
    if-nez v94, :cond_10

    .line 770
    :try_start_39
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    new-instance v124, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v124

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1d

    .line 772
    .end local v123    # "location":Lcom/android/server/LocationManagerService;
    .local v124, "location":Lcom/android/server/LocationManagerService;
    :try_start_3a
    const-string v7, "location"

    move-object/from16 v0, v124

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_52

    move-object/from16 v123, v124

    .line 778
    .end local v124    # "location":Lcom/android/server/LocationManagerService;
    .restart local v123    # "location":Lcom/android/server/LocationManagerService;
    :goto_28
    :try_start_3b
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    new-instance v86, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v86

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_1e

    .line 780
    .end local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v86, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_3c
    const-string v7, "country_detector"

    move-object/from16 v0, v86

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_51

    move-object/from16 v85, v86

    .line 786
    .end local v86    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_10
    :goto_29
    if-nez v97, :cond_11

    .line 788
    :try_start_3d
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const-string v7, "search"

    new-instance v9, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_1f

    .line 797
    :cond_11
    :goto_2a
    :try_start_3e
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_20

    .line 805
    :goto_2b
    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v152

    .line 807
    .local v152, "sense_version":Ljava/lang/Float;
    :try_start_3f
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v88

    .line 808
    .local v88, "custManager":Lcom/htc/customization/HtcCustomizationManager;
    const-string v7, "System"

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, v88

    invoke-virtual {v0, v7, v9, v10}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v89

    .line 809
    .local v89, "custReader":Lcom/htc/customization/HtcCustomizationReader;
    const-string v7, "sense_version"

    const-string v9, "6.0"

    move-object/from16 v0, v89

    invoke-interface {v0, v7, v9}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_21

    move-result-object v152

    .line 815
    .end local v88    # "custManager":Lcom/htc/customization/HtcCustomizationManager;
    .end local v89    # "custReader":Lcom/htc/customization/HtcCustomizationReader;
    :goto_2c
    :try_start_40
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HTC Checkin Service : version = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v152

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-virtual/range {v152 .. v152}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v9, v7

    const-wide/high16 v12, 0x4018000000000000L    # 6.0

    cmpl-double v7, v9, v12

    if-ltz v7, :cond_38

    .line 818
    const-string v7, "SystemServer"

    const-string v9, "HTC Checkin Service : starting com.htc.checkinprovider"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v9, "com.htc.checkinprovider"

    const-string v10, "com.htc.checkinprovider.htcCheckinService"

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v120

    .line 828
    .local v120, "intent":Landroid/content/Intent;
    :goto_2d
    move-object/from16 v0, v120

    invoke-virtual {v5, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_22

    .line 834
    .end local v120    # "intent":Landroid/content/Intent;
    :goto_2e
    if-nez v97, :cond_12

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111002f

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 837
    :try_start_41
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    if-nez v33, :cond_12

    .line 839
    new-instance v174, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v174

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_23

    .line 840
    .end local v173    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .local v174, "wallpaper":Lcom/android/server/WallpaperManagerService;
    :try_start_42
    const-string v7, "wallpaper"

    move-object/from16 v0, v174

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_50

    move-object/from16 v173, v174

    .line 847
    .end local v174    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v173    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_12
    :goto_2f
    if-nez v95, :cond_13

    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 849
    :try_start_43
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_24

    .line 856
    :cond_13
    :goto_30
    if-nez v97, :cond_14

    .line 858
    :try_start_44
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    new-instance v103, Lcom/android/server/DockObserver;

    move-object/from16 v0, v103

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_25

    .end local v102    # "dock":Lcom/android/server/DockObserver;
    .local v103, "dock":Lcom/android/server/DockObserver;
    move-object/from16 v102, v103

    .line 866
    .end local v103    # "dock":Lcom/android/server/DockObserver;
    .restart local v102    # "dock":Lcom/android/server/DockObserver;
    :cond_14
    :goto_31
    if-nez v95, :cond_15

    .line 868
    :try_start_45
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v20

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_26

    .line 877
    :cond_15
    :goto_32
    if-nez v97, :cond_16

    .line 879
    :try_start_46
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    new-instance v169, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v169

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_27

    .line 882
    .end local v168    # "usb":Lcom/android/server/usb/UsbService;
    .local v169, "usb":Lcom/android/server/usb/UsbService;
    :try_start_47
    const-string v7, "usb"

    move-object/from16 v0, v169

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_4f

    move-object/from16 v168, v169

    .line 888
    .end local v169    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v168    # "usb":Lcom/android/server/usb/UsbService;
    :goto_33
    :try_start_48
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    new-instance v154, Lcom/android/server/SerialService;

    move-object/from16 v0, v154

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_28

    .line 891
    .end local v153    # "serial":Lcom/android/server/SerialService;
    .local v154, "serial":Lcom/android/server/SerialService;
    :try_start_49
    const-string v7, "serial"

    move-object/from16 v0, v154

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_4e

    move-object/from16 v153, v154

    .line 898
    .end local v154    # "serial":Lcom/android/server/SerialService;
    .restart local v153    # "serial":Lcom/android/server/SerialService;
    :cond_16
    :goto_34
    :try_start_4a
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    new-instance v165, Lcom/android/server/TwilightService;

    move-object/from16 v0, v165

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_29

    .end local v164    # "twilight":Lcom/android/server/TwilightService;
    .local v165, "twilight":Lcom/android/server/TwilightService;
    move-object/from16 v164, v165

    .line 905
    .end local v165    # "twilight":Lcom/android/server/TwilightService;
    .restart local v164    # "twilight":Lcom/android/server/TwilightService;
    :goto_35
    :try_start_4b
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    new-instance v167, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v167

    move-object/from16 v1, v164

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2a

    .end local v166    # "uiMode":Lcom/android/server/UiModeManagerService;
    .local v167, "uiMode":Lcom/android/server/UiModeManagerService;
    move-object/from16 v166, v167

    .line 912
    .end local v167    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v166    # "uiMode":Lcom/android/server/UiModeManagerService;
    :goto_36
    if-nez v97, :cond_17

    .line 914
    :try_start_4c
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2b

    .line 922
    :goto_37
    :try_start_4d
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    new-instance v69, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v69

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2c

    .line 924
    .end local v68    # "appWidget":Lcom/android/server/AppWidgetService;
    .local v69, "appWidget":Lcom/android/server/AppWidgetService;
    :try_start_4e
    const-string v7, "appwidget"

    move-object/from16 v0, v69

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_4d

    move-object/from16 v68, v69

    .line 930
    .end local v69    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v68    # "appWidget":Lcom/android/server/AppWidgetService;
    :goto_38
    :try_start_4f
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    new-instance v148, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v148

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_2d

    .end local v147    # "recognition":Lcom/android/server/RecognitionManagerService;
    .local v148, "recognition":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v147, v148

    .line 938
    .end local v148    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v147    # "recognition":Lcom/android/server/RecognitionManagerService;
    :cond_17
    :goto_39
    :try_start_50
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_2e

    .line 949
    :goto_3a
    :try_start_51
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_2f

    .line 956
    :goto_3b
    if-nez v96, :cond_18

    .line 958
    :try_start_52
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    new-instance v137, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v137

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_30

    .end local v136    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v137, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v136, v137

    .line 965
    .end local v137    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v136    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_18
    :goto_3c
    if-nez v95, :cond_19

    .line 967
    :try_start_53
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    new-instance v78, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v78

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_31

    .line 969
    .end local v77    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v78, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_54
    const-string v7, "commontime_management"

    move-object/from16 v0, v78

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_4c

    move-object/from16 v77, v78

    .line 976
    .end local v78    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v77    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_19
    :goto_3d
    if-eqz v73, :cond_1a

    .line 978
    move-object/from16 v0, v90

    invoke-virtual {v0, v5}, Lcom/android/server/DeviceManager3LMService;->init(Landroid/content/Context;)V

    .line 981
    const-string v7, "ro.3LM.extended"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_1a

    .line 982
    const-string v7, "SystemServer"

    const-string v9, "3LM OEM Extended Api Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    const-string v7, "OemExtendedApi3LM"

    new-instance v9, Lcom/android/server/OemExtendedApi3LMService;

    const/4 v10, 0x0

    invoke-direct {v9, v5, v10}, Lcom/android/server/OemExtendedApi3LMService;-><init>(Landroid/content/Context;Landroid/os/IDeviceManagerRestrictable3LM;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 990
    :cond_1a
    invoke-static {}, Lcom/htc/utils/ulog/Util;->supportUserPolicy()Z

    move-result v7

    if-nez v7, :cond_1b

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileForceDisableUlog()Z

    move-result v7

    if-nez v7, :cond_39

    .line 993
    :cond_1b
    :try_start_55
    const-string v7, "SystemServer"

    const-string v9, "User Behavior Logging Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const-string v7, "userbehavior"

    new-instance v9, Lcom/htc/server/ulog/UserBehaviorLoggingService;

    invoke-direct {v9, v5}, Lcom/htc/server/ulog/UserBehaviorLoggingService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_32

    .line 1003
    :goto_3e
    sget-boolean v7, Lcom/htc/server/HtcAppUsageStatsService;->VZW_APPWIFIOFFLOAD:Z

    if-eqz v7, :cond_1c

    .line 1004
    const-string v7, "HtcAppUsageStatsService"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    if-eqz v7, :cond_1c

    .line 1005
    const-string v7, "HtcAppUsageStatsService"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    check-cast v7, Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v7}, Lcom/htc/server/HtcAppUsageStatsService;->systemReady()V

    .line 1015
    :cond_1c
    :try_start_56
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v127

    .line 1016
    .local v127, "mHtcCustomizationManager":Lcom/htc/customization/HtcCustomizationManager;
    const-string v7, "Android_MLHD"

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, v127

    invoke-virtual {v0, v7, v9, v10}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v144

    .line 1017
    .local v144, "reader":Lcom/htc/customization/HtcCustomizationReader;
    const-string v7, "supportMLHD"

    const/4 v9, 0x1

    move-object/from16 v0, v144

    invoke-interface {v0, v7, v9}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v159

    .line 1018
    .local v159, "supportMLHD":Z
    const-string v7, "ro.bootmode"

    const-string v9, "unknown"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "factory"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v121

    .line 1020
    .local v121, "isBootMFG":Z
    if-nez v121, :cond_1d

    .line 1022
    if-eqz v159, :cond_3b

    .line 1023
    const-string v7, "ro.sys.medialink"

    const-string v9, "1"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v128

    .line 1025
    .local v128, "mMediaLinkEnabled":Ljava/lang/String;
    const-string v7, "1"

    move-object/from16 v0, v128

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 1026
    const-string v7, "SystemServer"

    const-string v9, "WirelessDisplay Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    new-instance v175, Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v0, v175

    invoke-direct {v0, v5}, Lcom/htc/server/WirelessDisplayService;-><init>(Landroid/content/Context;)V

    .line 1028
    .local v175, "wfd":Lcom/htc/server/WirelessDisplayService;
    const-string v7, "wireless_display"

    move-object/from16 v0, v175

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1029
    move-object/from16 v0, v175

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setWFDServer(Lcom/android/server/display/DisplayManagerService$DisplayStatusFuncs;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_33

    .line 1043
    .end local v121    # "isBootMFG":Z
    .end local v127    # "mHtcCustomizationManager":Lcom/htc/customization/HtcCustomizationManager;
    .end local v128    # "mMediaLinkEnabled":Ljava/lang/String;
    .end local v144    # "reader":Lcom/htc/customization/HtcCustomizationReader;
    .end local v159    # "supportMLHD":Z
    .end local v175    # "wfd":Lcom/htc/server/WirelessDisplayService;
    :cond_1d
    :goto_3f
    if-nez v96, :cond_1e

    .line 1045
    :try_start_57
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_34

    .line 1052
    :cond_1e
    :goto_40
    if-nez v97, :cond_1f

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110048

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 1055
    :try_start_58
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    new-instance v105, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v105

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_35

    .line 1058
    .end local v104    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .local v105, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :try_start_59
    const-string v7, "dreams"

    move-object/from16 v0, v105

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_4b

    move-object/from16 v104, v105

    .line 1064
    .end local v105    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v104    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :cond_1f
    :goto_41
    if-nez v97, :cond_20

    .line 1066
    :try_start_5a
    const-string v7, "SystemServer"

    const-string v9, "Assets Atlas Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    new-instance v71, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v71

    invoke-direct {v0, v5}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_36

    .line 1068
    .end local v70    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v71, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_5b
    const-string v7, "assetatlas"

    move-object/from16 v0, v71

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_4a

    move-object/from16 v70, v71

    .line 1075
    .end local v71    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v70    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_20
    :goto_42
    :try_start_5c
    const-string v7, "SystemServer"

    const-string v9, "IdleMaintenanceService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    new-instance v7, Lcom/android/server/IdleMaintenanceService;

    invoke-direct {v7, v5, v8}, Lcom/android/server/IdleMaintenanceService;-><init>(Landroid/content/Context;Lcom/android/server/BatteryService;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_37

    .line 1082
    :goto_43
    :try_start_5d
    const-string v7, "SystemServer"

    const-string v9, "Print Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    new-instance v143, Lcom/android/server/print/PrintManagerService;

    move-object/from16 v0, v143

    invoke-direct {v0, v5}, Lcom/android/server/print/PrintManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_38

    .line 1084
    .end local v142    # "printManager":Lcom/android/server/print/PrintManagerService;
    .local v143, "printManager":Lcom/android/server/print/PrintManagerService;
    :try_start_5e
    const-string v7, "print"

    move-object/from16 v0, v143

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_49

    move-object/from16 v142, v143

    .line 1089
    .end local v143    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v142    # "printManager":Lcom/android/server/print/PrintManagerService;
    :goto_44
    if-nez v97, :cond_21

    .line 1091
    :try_start_5f
    const-string v7, "SystemServer"

    const-string v9, "Media Router Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    new-instance v130, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v130

    invoke-direct {v0, v5}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_39

    .line 1093
    .end local v129    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v130, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_60
    const-string v7, "media_router"

    move-object/from16 v0, v130

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_48

    move-object/from16 v129, v130

    .line 1100
    .end local v130    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v129    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :cond_21
    :goto_45
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110057

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 1103
    :try_start_61
    const-string v7, "SystemServer"

    const-string v9, "FacebookSystemDashService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    new-instance v108, Lcom/android/server/facebook/FacebookSystemDashService;

    move-object/from16 v0, v108

    invoke-direct {v0, v5}, Lcom/android/server/facebook/FacebookSystemDashService;-><init>(Landroid/content/Context;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_3a

    .line 1105
    .end local v107    # "facebook":Lcom/android/server/facebook/FacebookSystemDashService;
    .local v108, "facebook":Lcom/android/server/facebook/FacebookSystemDashService;
    :try_start_62
    const-string v7, "facebook"

    move-object/from16 v0, v108

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_47

    move-object/from16 v107, v108

    .line 1113
    .end local v108    # "facebook":Lcom/android/server/facebook/FacebookSystemDashService;
    .end local v152    # "sense_version":Ljava/lang/Float;
    .restart local v107    # "facebook":Lcom/android/server/facebook/FacebookSystemDashService;
    :cond_22
    :goto_46
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ServerThread;->supportSprintExtensionApi()Z

    move-result v7

    if-eqz v7, :cond_23

    .line 1115
    :try_start_63
    const-string v7, "SystemServer"

    const-string v9, "Sprint LTE Connection Service for Extension API"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    const-string v7, "lte"

    new-instance v9, Lcom/sprint/net/lte/ConnectionService;

    invoke-direct {v9, v5}, Lcom/sprint/net/lte/ConnectionService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_3b

    .line 1123
    :goto_47
    :try_start_64
    const-string v7, "SystemServer"

    const-string v9, "Sprint CDMA Connection Service for Extension API"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    const-string v7, "cdma"

    new-instance v9, Lcom/sprint/net/cdma/ConnectionService;

    invoke-direct {v9, v5}, Lcom/sprint/net/cdma/ConnectionService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_3c

    .line 1134
    :cond_23
    :goto_48
    invoke-virtual/range {v180 .. v180}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    .line 1135
    .local v47, "safeMode":Z
    if-eqz v47, :cond_3c

    .line 1136
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1138
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 1140
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1149
    :goto_49
    :try_start_65
    invoke-virtual/range {v170 .. v170}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_3d

    .line 1154
    :goto_4a
    if-eqz v125, :cond_24

    .line 1156
    :try_start_66
    invoke-virtual/range {v125 .. v125}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_3e

    .line 1162
    :cond_24
    :goto_4b
    if-eqz v91, :cond_25

    .line 1164
    :try_start_67
    invoke-virtual/range {v91 .. v91}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_3f

    .line 1170
    :cond_25
    :goto_4c
    if-eqz v138, :cond_26

    .line 1172
    :try_start_68
    invoke-virtual/range {v138 .. v138}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_40

    .line 1179
    :cond_26
    :goto_4d
    :try_start_69
    invoke-virtual/range {v180 .. v180}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_69} :catch_41

    .line 1184
    :goto_4e
    if-eqz v47, :cond_27

    .line 1185
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1191
    :cond_27
    invoke-virtual/range {v180 .. v180}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v79

    .line 1192
    .local v79, "config":Landroid/content/res/Configuration;
    new-instance v131, Landroid/util/DisplayMetrics;

    invoke-direct/range {v131 .. v131}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1193
    .local v131, "metrics":Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v172

    check-cast v172, Landroid/view/WindowManager;

    .line 1194
    .local v172, "w":Landroid/view/WindowManager;
    invoke-interface/range {v172 .. v172}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v131

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1195
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v79

    move-object/from16 v1, v131

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1214
    :try_start_6a
    move-object/from16 v0, v164

    move-object/from16 v1, v104

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6a} :catch_42

    .line 1220
    :goto_4f
    :try_start_6b
    invoke-interface/range {v140 .. v140}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_43

    .line 1226
    :goto_50
    :try_start_6c
    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_44

    .line 1232
    :goto_51
    move-object/from16 v34, v5

    .line 1233
    .local v34, "contextF":Landroid/content/Context;
    move-object/from16 v35, v132

    .line 1234
    .local v35, "mountServiceF":Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .line 1235
    .local v36, "batteryF":Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .line 1236
    .local v37, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .line 1237
    .local v38, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .line 1238
    .local v39, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v80

    .line 1239
    .local v40, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v102

    .line 1240
    .local v41, "dockF":Lcom/android/server/DockObserver;
    move-object/from16 v42, v168

    .line 1241
    .local v42, "usbF":Lcom/android/server/usb/UsbService;
    move-object/from16 v43, v164

    .line 1242
    .local v43, "twilightF":Lcom/android/server/TwilightService;
    move-object/from16 v44, v166

    .line 1243
    .local v44, "uiModeF":Lcom/android/server/UiModeManagerService;
    move-object/from16 v46, v68

    .line 1244
    .local v46, "appWidgetF":Lcom/android/server/AppWidgetService;
    move-object/from16 v48, v173

    .line 1245
    .local v48, "wallpaperF":Lcom/android/server/WallpaperManagerService;
    move-object/from16 v49, v115

    .line 1246
    .local v49, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v45, v147

    .line 1247
    .local v45, "recognitionF":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v51, v123

    .line 1248
    .local v51, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v52, v85

    .line 1249
    .local v52, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v53, v136

    .line 1250
    .local v53, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v54, v77

    .line 1251
    .local v54, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v55, v162

    .line 1252
    .local v55, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v50, v157

    .line 1253
    .local v50, "statusBarF":Lcom/android/server/StatusBarManagerService;
    move-object/from16 v56, v104

    .line 1254
    .local v56, "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v57, v70

    .line 1255
    .local v57, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v58, v20

    .line 1256
    .local v58, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v59, v160

    .line 1257
    .local v59, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v60, v142

    .line 1258
    .local v60, "printManagerF":Lcom/android/server/print/PrintManagerService;
    move-object/from16 v61, v129

    .line 1260
    .local v61, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v109, v107

    .line 1263
    .local v109, "facebookF":Lcom/android/server/facebook/FacebookSystemDashService;
    move-object/from16 v62, v90

    .line 1271
    .local v62, "deviceManagerF":Lcom/android/server/DeviceManager3LMService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$2;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v62}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/print/PrintManagerService;Lcom/android/server/media/MediaRouterService;Lcom/android/server/DeviceManager3LMService;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1440
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_28

    .line 1441
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    :cond_28
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_29

    .line 1446
    const/4 v7, 0x1

    invoke-static {v7}, Landroid/os/Binder;->logExecTransact(Z)V

    .line 1452
    :cond_29
    :try_start_6d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ServerThread;->getRootPeriod()I

    move-result v151

    .line 1455
    .local v151, "root_period":I
    if-lez v151, :cond_2a

    .line 1456
    const-string v7, "rootmonitor"

    new-instance v9, Lcom/android/server/HtcDeviceRootMonitor;

    move/from16 v0, v151

    invoke-direct {v9, v0}, Lcom/android/server/HtcDeviceRootMonitor;-><init>(I)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6d} :catch_45

    .line 1464
    .end local v151    # "root_period":I
    :cond_2a
    :goto_52
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1465
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    return-void

    .line 209
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v21    # "wmHandler":Landroid/os/Handler;
    .end local v24    # "onlyCore":Z
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v33    # "headless":Z
    .end local v34    # "contextF":Landroid/content/Context;
    .end local v35    # "mountServiceF":Lcom/android/server/MountService;
    .end local v36    # "batteryF":Lcom/android/server/BatteryService;
    .end local v37    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v38    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v39    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v41    # "dockF":Lcom/android/server/DockObserver;
    .end local v42    # "usbF":Lcom/android/server/usb/UsbService;
    .end local v43    # "twilightF":Lcom/android/server/TwilightService;
    .end local v44    # "uiModeF":Lcom/android/server/UiModeManagerService;
    .end local v45    # "recognitionF":Lcom/android/server/RecognitionManagerService;
    .end local v46    # "appWidgetF":Lcom/android/server/AppWidgetService;
    .end local v47    # "safeMode":Z
    .end local v48    # "wallpaperF":Lcom/android/server/WallpaperManagerService;
    .end local v49    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v50    # "statusBarF":Lcom/android/server/StatusBarManagerService;
    .end local v51    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v52    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v53    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v54    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v55    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v56    # "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    .end local v57    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v58    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v59    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v60    # "printManagerF":Lcom/android/server/print/PrintManagerService;
    .end local v61    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v62    # "deviceManagerF":Lcom/android/server/DeviceManager3LMService;
    .end local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v65    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .end local v68    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v70    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v73    # "bSupport3LM":Z
    .end local v75    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v77    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .end local v79    # "config":Landroid/content/res/Configuration;
    .end local v80    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v84    # "contentService":Lcom/android/server/content/ContentService;
    .end local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v90    # "deviceManager":Lcom/android/server/DeviceManager3LMService;
    .end local v91    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v93    # "disableBluetooth":Z
    .end local v94    # "disableLocation":Z
    .end local v95    # "disableMedia":Z
    .end local v96    # "disableNetwork":Z
    .end local v97    # "disableNonCoreServices":Z
    .end local v98    # "disableStorage":Z
    .end local v99    # "disableSystemUI":Z
    .end local v100    # "disableTelephony":Z
    .end local v102    # "dock":Lcom/android/server/DockObserver;
    .end local v104    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v107    # "facebook":Lcom/android/server/facebook/FacebookSystemDashService;
    .end local v109    # "facebookF":Lcom/android/server/facebook/FacebookSystemDashService;
    .end local v110    # "factoryTest":I
    .end local v111    # "factoryTestStr":Ljava/lang/String;
    .end local v112    # "firstBoot":Z
    .end local v113    # "htchardware":Lcom/android/server/HtcHardwareService;
    .end local v115    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v118    # "installer":Lcom/android/server/pm/Installer;
    .end local v123    # "location":Lcom/android/server/LocationManagerService;
    .end local v125    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v129    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v131    # "metrics":Landroid/util/DisplayMetrics;
    .end local v132    # "mountService":Lcom/android/server/MountService;
    .end local v136    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .end local v138    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v140    # "pm":Landroid/content/pm/IPackageManager;
    .end local v142    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v147    # "recognition":Lcom/android/server/RecognitionManagerService;
    .end local v149    # "regulatory":Lcom/android/server/RegulatoryObserver;
    .end local v153    # "serial":Lcom/android/server/SerialService;
    .end local v155    # "serviceDiscovery":Lcom/android/server/NsdService;
    .end local v157    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v162    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v164    # "twilight":Lcom/android/server/TwilightService;
    .end local v166    # "uiMode":Lcom/android/server/UiModeManagerService;
    .end local v168    # "usb":Lcom/android/server/usb/UsbService;
    .end local v170    # "vibrator":Lcom/android/server/VibratorService;
    .end local v172    # "w":Landroid/view/WindowManager;
    .end local v173    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .end local v176    # "wifi":Lcom/android/server/wifi/WifiService;
    .end local v178    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .end local v180    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v181    # "wmHandlerThread":Landroid/os/HandlerThread;
    :cond_2b
    const/16 v146, 0x0

    goto/16 :goto_0

    .line 215
    .restart local v146    # "reboot":Z
    :cond_2c
    const/16 v145, 0x0

    .restart local v145    # "reason":Ljava/lang/String;
    goto/16 :goto_1

    .line 223
    .end local v145    # "reason":Ljava/lang/String;
    .end local v146    # "reboot":Z
    .restart local v111    # "factoryTestStr":Ljava/lang/String;
    :cond_2d
    invoke-static/range {v111 .. v111}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v110

    goto/16 :goto_2

    .line 327
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v21    # "wmHandler":Landroid/os/Handler;
    .restart local v24    # "onlyCore":Z
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v33    # "headless":Z
    .restart local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v65    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .restart local v67    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v73    # "bSupport3LM":Z
    .restart local v74    # "battery":Lcom/android/server/BatteryService;
    .restart local v75    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v77    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v80    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v84    # "contentService":Lcom/android/server/content/ContentService;
    .restart local v90    # "deviceManager":Lcom/android/server/DeviceManager3LMService;
    .restart local v101    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v102    # "dock":Lcom/android/server/DockObserver;
    .restart local v110    # "factoryTest":I
    .restart local v112    # "firstBoot":Z
    .restart local v113    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v118    # "installer":Lcom/android/server/pm/Installer;
    .restart local v122    # "lights":Lcom/android/server/LightsService;
    .restart local v132    # "mountService":Lcom/android/server/MountService;
    .restart local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v136    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v140    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v147    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v149    # "regulatory":Lcom/android/server/RegulatoryObserver;
    .restart local v153    # "serial":Lcom/android/server/SerialService;
    .restart local v155    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v164    # "twilight":Lcom/android/server/TwilightService;
    .restart local v166    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v168    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v170    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v176    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v178    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v180    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v181    # "wmHandlerThread":Landroid/os/HandlerThread;
    :catch_0
    move-exception v106

    .line 328
    .local v106, "e":Ljava/lang/RuntimeException;
    :goto_53
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v7, "System"

    const-string v9, "************ Failure starting bootstrap service"

    move-object/from16 v0, v106

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 366
    .end local v101    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v106    # "e":Ljava/lang/RuntimeException;
    .end local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v87    # "cryptState":Ljava/lang/String;
    .restart local v93    # "disableBluetooth":Z
    .restart local v94    # "disableLocation":Z
    .restart local v95    # "disableMedia":Z
    .restart local v96    # "disableNetwork":Z
    .restart local v97    # "disableNonCoreServices":Z
    .restart local v98    # "disableStorage":Z
    .restart local v99    # "disableSystemUI":Z
    .restart local v100    # "disableTelephony":Z
    .restart local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_2e
    :try_start_6e
    const-string v7, "1"

    move-object/from16 v0, v87

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 367
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/16 v24, 0x1

    goto/16 :goto_4

    .line 371
    :cond_2f
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 396
    :catch_1
    move-exception v106

    .line 397
    .local v106, "e":Ljava/lang/Throwable;
    :goto_54
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v106

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catch Ljava/lang/RuntimeException; {:try_start_6e .. :try_end_6e} :catch_2

    goto/16 :goto_7

    .line 482
    .end local v87    # "cryptState":Ljava/lang/String;
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v106

    move-object/from16 v160, v161

    .end local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v117

    .end local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v67

    .end local v67    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v74

    .end local v74    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v122

    .line 483
    .end local v122    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .local v106, "e":Ljava/lang/RuntimeException;
    :goto_55
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v106

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 401
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v106    # "e":Ljava/lang/RuntimeException;
    .end local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v67    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v74    # "battery":Lcom/android/server/BatteryService;
    .restart local v87    # "cryptState":Ljava/lang/String;
    .restart local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v122    # "lights":Lcom/android/server/LightsService;
    .restart local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_30
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 446
    .end local v67    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v74    # "battery":Lcom/android/server/BatteryService;
    .end local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v113    # "htchardware":Lcom/android/server/HtcHardwareService;
    .end local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v122    # "lights":Lcom/android/server/LightsService;
    .end local v170    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v114    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v171    # "vibrator":Lcom/android/server/VibratorService;
    :cond_31
    const/16 v22, 0x0

    goto/16 :goto_9

    :cond_32
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 470
    .end local v65    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .restart local v66    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    :cond_33
    const/4 v7, 0x1

    move/from16 v0, v110

    if-ne v0, v7, :cond_34

    .line 471
    :try_start_6f
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 482
    :catch_3
    move-exception v106

    move-object/from16 v65, v66

    .end local v66    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .restart local v65    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    move-object/from16 v82, v83

    .end local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v160, v161

    .end local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v170, v171

    .end local v171    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v170    # "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v113, v114

    .end local v114    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v113    # "htchardware":Lcom/android/server/HtcHardwareService;
    goto :goto_55

    .line 472
    .end local v65    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .end local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v113    # "htchardware":Lcom/android/server/HtcHardwareService;
    .end local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v170    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v66    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .restart local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v114    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v171    # "vibrator":Lcom/android/server/VibratorService;
    :cond_34
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_35

    .line 474
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 475
    :cond_35
    if-eqz v93, :cond_36

    .line 476
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Service disabled by config"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 478
    :cond_36
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance v76, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v76

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6f
    .catch Ljava/lang/RuntimeException; {:try_start_6f .. :try_end_6f} :catch_3

    .line 480
    .end local v75    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v76, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_70
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v76

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_70
    .catch Ljava/lang/RuntimeException; {:try_start_70 .. :try_end_70} :catch_6a

    move-object/from16 v75, v76

    .end local v76    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v75    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_b

    .line 512
    .end local v66    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .end local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v87    # "cryptState":Ljava/lang/String;
    .end local v114    # "htchardware":Lcom/android/server/HtcHardwareService;
    .end local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v171    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v65    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .restart local v68    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v70    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v91    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v104    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v107    # "facebook":Lcom/android/server/facebook/FacebookSystemDashService;
    .restart local v113    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v115    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v123    # "location":Lcom/android/server/LocationManagerService;
    .restart local v125    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v129    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v138    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v142    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v157    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v162    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v170    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v173    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_4
    move-exception v106

    .line 513
    .local v106, "e":Ljava/lang/Throwable;
    :goto_56
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 520
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v106

    .line 521
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 532
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v106

    .line 533
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "starting HTC Gesture Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 541
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v106

    .line 542
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 547
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v106

    .line 548
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 570
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v106

    .line 571
    .restart local v106    # "e":Ljava/lang/Throwable;
    :goto_57
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 580
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v106

    .line 581
    .restart local v106    # "e":Ljava/lang/Throwable;
    :goto_58
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 588
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v106

    .line 589
    .restart local v106    # "e":Ljava/lang/Throwable;
    :goto_59
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 599
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v106

    .line 600
    .restart local v106    # "e":Ljava/lang/Throwable;
    :goto_5a
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 609
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v106

    .line 610
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 619
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v106

    .line 620
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 629
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v106

    .line 630
    .restart local v106    # "e":Ljava/lang/Throwable;
    :goto_5b
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 639
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v106

    .line 640
    .restart local v106    # "e":Ljava/lang/Throwable;
    :goto_5c
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 649
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v106

    move-object/from16 v25, v134

    .line 650
    .end local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v106    # "e":Ljava/lang/Throwable;
    :goto_5d
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 657
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v106

    .line 658
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "starting RegulatoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 665
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v106

    .line 666
    .restart local v106    # "e":Ljava/lang/Throwable;
    :goto_5e
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 673
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v106

    .line 674
    .restart local v106    # "e":Ljava/lang/Throwable;
    :goto_5f
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 687
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v106

    .line 688
    .restart local v106    # "e":Ljava/lang/Throwable;
    :goto_60
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 696
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v106

    .line 697
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 706
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v106

    .line 707
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 723
    .end local v106    # "e":Ljava/lang/Throwable;
    .restart local v87    # "cryptState":Ljava/lang/String;
    :cond_37
    invoke-virtual/range {v132 .. v132}, Lcom/android/server/MountService;->waitForAsecScan()V

    goto/16 :goto_22

    .line 731
    .end local v87    # "cryptState":Ljava/lang/String;
    :catch_18
    move-exception v106

    .line 732
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 738
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v106

    .line 739
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 747
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v106

    .line 748
    .restart local v106    # "e":Ljava/lang/Throwable;
    :goto_61
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 756
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v106

    .line 757
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting (legacy) Display Service "

    move-object/from16 v0, v106

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26

    .line 764
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v106

    .line 765
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 773
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v106

    .line 774
    .restart local v106    # "e":Ljava/lang/Throwable;
    :goto_62
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 781
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v106

    .line 782
    .restart local v106    # "e":Ljava/lang/Throwable;
    :goto_63
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 791
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v106

    .line 792
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 800
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v106

    .line 801
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 810
    .end local v106    # "e":Ljava/lang/Throwable;
    .restart local v152    # "sense_version":Ljava/lang/Float;
    :catch_21
    move-exception v106

    .line 811
    .local v106, "e":Ljava/lang/Exception;
    const-string v7, "SystemServer"

    const-string v9, "Read customization fail!"

    move-object/from16 v0, v106

    invoke-static {v7, v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2c

    .line 823
    .end local v106    # "e":Ljava/lang/Exception;
    :cond_38
    :try_start_71
    const-string v7, "SystemServer"

    const-string v9, "HTC Checkin Service : starting com.android.providers.htcCheckin"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v9, "com.android.providers.htcCheckin"

    const-string v10, "com.android.providers.htcCheckin.htcCheckinService"

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_71} :catch_22

    move-result-object v120

    .restart local v120    # "intent":Landroid/content/Intent;
    goto/16 :goto_2d

    .line 829
    .end local v120    # "intent":Landroid/content/Intent;
    :catch_22
    move-exception v106

    .line 830
    .local v106, "e":Ljava/lang/Throwable;
    const-string v7, "starting HTC Checkin Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 842
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v106

    .line 843
    .restart local v106    # "e":Ljava/lang/Throwable;
    :goto_64
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 851
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v106

    .line 852
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 861
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v106

    .line 862
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 872
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v106

    .line 873
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 883
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v106

    .line 884
    .restart local v106    # "e":Ljava/lang/Throwable;
    :goto_65
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 892
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v106

    .line 893
    .restart local v106    # "e":Ljava/lang/Throwable;
    :goto_66
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v106

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34

    .line 900
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v106

    .line 901
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 908
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v106

    .line 909
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 917
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v106

    .line 918
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v106

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_37

    .line 925
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v106

    .line 926
    .restart local v106    # "e":Ljava/lang/Throwable;
    :goto_67
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 932
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v106

    .line 933
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 940
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v106

    .line 941
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 952
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v106

    .line 953
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 960
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v106

    .line 961
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 970
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_31
    move-exception v106

    .line 971
    .restart local v106    # "e":Ljava/lang/Throwable;
    :goto_68
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 995
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_32
    move-exception v106

    .line 996
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting UserBehaviorLoggingService"

    move-object/from16 v0, v106

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3e

    .line 999
    .end local v106    # "e":Ljava/lang/Throwable;
    :cond_39
    const-string v7, "SystemServer"

    const-string v9, "Disable User Behavior Logging Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3e

    .line 1031
    .restart local v121    # "isBootMFG":Z
    .restart local v127    # "mHtcCustomizationManager":Lcom/htc/customization/HtcCustomizationManager;
    .restart local v128    # "mMediaLinkEnabled":Ljava/lang/String;
    .restart local v144    # "reader":Lcom/htc/customization/HtcCustomizationReader;
    .restart local v159    # "supportMLHD":Z
    :cond_3a
    :try_start_72
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/ServerThread;->addFingerGestureService(Landroid/content/Context;)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_72} :catch_33

    goto/16 :goto_3f

    .line 1037
    .end local v121    # "isBootMFG":Z
    .end local v127    # "mHtcCustomizationManager":Lcom/htc/customization/HtcCustomizationManager;
    .end local v128    # "mMediaLinkEnabled":Ljava/lang/String;
    .end local v144    # "reader":Lcom/htc/customization/HtcCustomizationReader;
    .end local v159    # "supportMLHD":Z
    :catch_33
    move-exception v106

    .line 1038
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting WirelessDisplay Service "

    move-object/from16 v0, v106

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3f

    .line 1034
    .end local v106    # "e":Ljava/lang/Throwable;
    .restart local v121    # "isBootMFG":Z
    .restart local v127    # "mHtcCustomizationManager":Lcom/htc/customization/HtcCustomizationManager;
    .restart local v144    # "reader":Lcom/htc/customization/HtcCustomizationReader;
    .restart local v159    # "supportMLHD":Z
    :cond_3b
    :try_start_73
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/ServerThread;->addFingerGestureService(Landroid/content/Context;)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_73} :catch_33

    goto/16 :goto_3f

    .line 1047
    .end local v121    # "isBootMFG":Z
    .end local v127    # "mHtcCustomizationManager":Lcom/htc/customization/HtcCustomizationManager;
    .end local v144    # "reader":Lcom/htc/customization/HtcCustomizationReader;
    .end local v159    # "supportMLHD":Z
    :catch_34
    move-exception v106

    .line 1048
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 1059
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_35
    move-exception v106

    .line 1060
    .restart local v106    # "e":Ljava/lang/Throwable;
    :goto_69
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 1069
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_36
    move-exception v106

    .line 1070
    .restart local v106    # "e":Ljava/lang/Throwable;
    :goto_6a
    const-string v7, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 1077
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_37
    move-exception v106

    .line 1078
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "starting IdleMaintenanceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 1085
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_38
    move-exception v106

    .line 1086
    .restart local v106    # "e":Ljava/lang/Throwable;
    :goto_6b
    const-string v7, "starting Print Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 1094
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_39
    move-exception v106

    .line 1095
    .restart local v106    # "e":Ljava/lang/Throwable;
    :goto_6c
    const-string v7, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 1106
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_3a
    move-exception v106

    .line 1107
    .restart local v106    # "e":Ljava/lang/Throwable;
    :goto_6d
    const-string v7, "starting FacebookSystemDashService"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 1118
    .end local v106    # "e":Ljava/lang/Throwable;
    .end local v152    # "sense_version":Ljava/lang/Float;
    :catch_3b
    move-exception v106

    .line 1119
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Sprint LTE Connection Service for Extension API"

    move-object/from16 v0, v106

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_47

    .line 1125
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_3c
    move-exception v106

    .line 1126
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Sprint CDMA Connection Service for Extension API"

    move-object/from16 v0, v106

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_48

    .line 1143
    .end local v106    # "e":Ljava/lang/Throwable;
    .restart local v47    # "safeMode":Z
    :cond_3c
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_49

    .line 1150
    :catch_3d
    move-exception v106

    .line 1151
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a

    .line 1157
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_3e
    move-exception v106

    .line 1158
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    .line 1165
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_3f
    move-exception v106

    .line 1166
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4c

    .line 1173
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_40
    move-exception v106

    .line 1174
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d

    .line 1180
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_41
    move-exception v106

    .line 1181
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4e

    .line 1215
    .end local v106    # "e":Ljava/lang/Throwable;
    .restart local v79    # "config":Landroid/content/res/Configuration;
    .restart local v131    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v172    # "w":Landroid/view/WindowManager;
    :catch_42
    move-exception v106

    .line 1216
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f

    .line 1221
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_43
    move-exception v106

    .line 1222
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_50

    .line 1227
    .end local v106    # "e":Ljava/lang/Throwable;
    :catch_44
    move-exception v106

    .line 1228
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_51

    .line 1459
    .end local v106    # "e":Ljava/lang/Throwable;
    .restart local v34    # "contextF":Landroid/content/Context;
    .restart local v35    # "mountServiceF":Lcom/android/server/MountService;
    .restart local v36    # "batteryF":Lcom/android/server/BatteryService;
    .restart local v37    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .restart local v38    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .restart local v39    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v40    # "connectivityF":Lcom/android/server/ConnectivityService;
    .restart local v41    # "dockF":Lcom/android/server/DockObserver;
    .restart local v42    # "usbF":Lcom/android/server/usb/UsbService;
    .restart local v43    # "twilightF":Lcom/android/server/TwilightService;
    .restart local v44    # "uiModeF":Lcom/android/server/UiModeManagerService;
    .restart local v45    # "recognitionF":Lcom/android/server/RecognitionManagerService;
    .restart local v46    # "appWidgetF":Lcom/android/server/AppWidgetService;
    .restart local v48    # "wallpaperF":Lcom/android/server/WallpaperManagerService;
    .restart local v49    # "immF":Lcom/android/server/InputMethodManagerService;
    .restart local v50    # "statusBarF":Lcom/android/server/StatusBarManagerService;
    .restart local v51    # "locationF":Lcom/android/server/LocationManagerService;
    .restart local v52    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .restart local v53    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v54    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .restart local v55    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .restart local v56    # "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    .restart local v57    # "atlasF":Lcom/android/server/AssetAtlasService;
    .restart local v58    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .restart local v59    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .restart local v60    # "printManagerF":Lcom/android/server/print/PrintManagerService;
    .restart local v61    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .restart local v62    # "deviceManagerF":Lcom/android/server/DeviceManager3LMService;
    .restart local v109    # "facebookF":Lcom/android/server/facebook/FacebookSystemDashService;
    :catch_45
    move-exception v106

    .line 1460
    .restart local v106    # "e":Ljava/lang/Throwable;
    const-string v7, "starting HtcDeviceRootMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_52

    .line 376
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v34    # "contextF":Landroid/content/Context;
    .end local v35    # "mountServiceF":Lcom/android/server/MountService;
    .end local v36    # "batteryF":Lcom/android/server/BatteryService;
    .end local v37    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v38    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v39    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v41    # "dockF":Lcom/android/server/DockObserver;
    .end local v42    # "usbF":Lcom/android/server/usb/UsbService;
    .end local v43    # "twilightF":Lcom/android/server/TwilightService;
    .end local v44    # "uiModeF":Lcom/android/server/UiModeManagerService;
    .end local v45    # "recognitionF":Lcom/android/server/RecognitionManagerService;
    .end local v46    # "appWidgetF":Lcom/android/server/AppWidgetService;
    .end local v47    # "safeMode":Z
    .end local v48    # "wallpaperF":Lcom/android/server/WallpaperManagerService;
    .end local v49    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v50    # "statusBarF":Lcom/android/server/StatusBarManagerService;
    .end local v51    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v52    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v53    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v54    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v55    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v56    # "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    .end local v57    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v58    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v59    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v60    # "printManagerF":Lcom/android/server/print/PrintManagerService;
    .end local v61    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v62    # "deviceManagerF":Lcom/android/server/DeviceManager3LMService;
    .end local v68    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v70    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v79    # "config":Landroid/content/res/Configuration;
    .end local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v91    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v104    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v106    # "e":Ljava/lang/Throwable;
    .end local v107    # "facebook":Lcom/android/server/facebook/FacebookSystemDashService;
    .end local v109    # "facebookF":Lcom/android/server/facebook/FacebookSystemDashService;
    .end local v115    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v123    # "location":Lcom/android/server/LocationManagerService;
    .end local v125    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v129    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v131    # "metrics":Landroid/util/DisplayMetrics;
    .end local v138    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v142    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v157    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v162    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v172    # "w":Landroid/view/WindowManager;
    .end local v173    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v67    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v74    # "battery":Lcom/android/server/BatteryService;
    .restart local v87    # "cryptState":Ljava/lang/String;
    .restart local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v122    # "lights":Lcom/android/server/LightsService;
    .restart local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_46
    move-exception v7

    goto/16 :goto_6

    .line 1106
    .end local v67    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v74    # "battery":Lcom/android/server/BatteryService;
    .end local v87    # "cryptState":Ljava/lang/String;
    .end local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v122    # "lights":Lcom/android/server/LightsService;
    .end local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v68    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v70    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v91    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v104    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v108    # "facebook":Lcom/android/server/facebook/FacebookSystemDashService;
    .restart local v115    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v123    # "location":Lcom/android/server/LocationManagerService;
    .restart local v125    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v129    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v138    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v142    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v152    # "sense_version":Ljava/lang/Float;
    .restart local v157    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v162    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v173    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_47
    move-exception v106

    move-object/from16 v107, v108

    .end local v108    # "facebook":Lcom/android/server/facebook/FacebookSystemDashService;
    .restart local v107    # "facebook":Lcom/android/server/facebook/FacebookSystemDashService;
    goto/16 :goto_6d

    .line 1094
    .end local v129    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v130    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_48
    move-exception v106

    move-object/from16 v129, v130

    .end local v130    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v129    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_6c

    .line 1085
    .end local v142    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v143    # "printManager":Lcom/android/server/print/PrintManagerService;
    :catch_49
    move-exception v106

    move-object/from16 v142, v143

    .end local v143    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v142    # "printManager":Lcom/android/server/print/PrintManagerService;
    goto/16 :goto_6b

    .line 1069
    .end local v70    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v71    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_4a
    move-exception v106

    move-object/from16 v70, v71

    .end local v71    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v70    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_6a

    .line 1059
    .end local v104    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v105    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :catch_4b
    move-exception v106

    move-object/from16 v104, v105

    .end local v105    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v104    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_69

    .line 970
    .end local v77    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v78    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_4c
    move-exception v106

    move-object/from16 v77, v78

    .end local v78    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v77    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_68

    .line 925
    .end local v68    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v69    # "appWidget":Lcom/android/server/AppWidgetService;
    :catch_4d
    move-exception v106

    move-object/from16 v68, v69

    .end local v69    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v68    # "appWidget":Lcom/android/server/AppWidgetService;
    goto/16 :goto_67

    .line 892
    .end local v153    # "serial":Lcom/android/server/SerialService;
    .restart local v154    # "serial":Lcom/android/server/SerialService;
    :catch_4e
    move-exception v106

    move-object/from16 v153, v154

    .end local v154    # "serial":Lcom/android/server/SerialService;
    .restart local v153    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_66

    .line 883
    .end local v168    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v169    # "usb":Lcom/android/server/usb/UsbService;
    :catch_4f
    move-exception v106

    move-object/from16 v168, v169

    .end local v169    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v168    # "usb":Lcom/android/server/usb/UsbService;
    goto/16 :goto_65

    .line 842
    .end local v173    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v174    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_50
    move-exception v106

    move-object/from16 v173, v174

    .end local v174    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v173    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_64

    .line 781
    .end local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v152    # "sense_version":Ljava/lang/Float;
    .restart local v86    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_51
    move-exception v106

    move-object/from16 v85, v86

    .end local v86    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_63

    .line 773
    .end local v123    # "location":Lcom/android/server/LocationManagerService;
    .restart local v124    # "location":Lcom/android/server/LocationManagerService;
    :catch_52
    move-exception v106

    move-object/from16 v123, v124

    .end local v124    # "location":Lcom/android/server/LocationManagerService;
    .restart local v123    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_62

    .line 747
    .end local v138    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v139    # "notification":Lcom/android/server/NotificationManagerService;
    :catch_53
    move-exception v106

    move-object/from16 v138, v139

    .end local v139    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v138    # "notification":Lcom/android/server/NotificationManagerService;
    goto/16 :goto_61

    .line 687
    .end local v80    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v81    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_54
    move-exception v106

    move-object/from16 v80, v81

    .end local v81    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v80    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_60

    .line 673
    .end local v176    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v177    # "wifi":Lcom/android/server/wifi/WifiService;
    :catch_55
    move-exception v106

    move-object/from16 v176, v177

    .end local v177    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v176    # "wifi":Lcom/android/server/wifi/WifiService;
    goto/16 :goto_5f

    .line 665
    .end local v178    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v179    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :catch_56
    move-exception v106

    move-object/from16 v178, v179

    .end local v179    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v178    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_5e

    .line 649
    :catch_57
    move-exception v106

    goto/16 :goto_5d

    .line 639
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v135    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_58
    move-exception v106

    move-object/from16 v29, v135

    .end local v135    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_5c

    .line 629
    .end local v162    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v163    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_59
    move-exception v106

    move-object/from16 v162, v163

    .end local v163    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v162    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_5b

    .line 599
    .end local v157    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v158    # "statusBar":Lcom/android/server/StatusBarManagerService;
    :catch_5a
    move-exception v106

    move-object/from16 v157, v158

    .end local v158    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v157    # "statusBar":Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_5a

    .line 588
    .end local v91    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v92    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :catch_5b
    move-exception v106

    move-object/from16 v91, v92

    .end local v92    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v91    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_59

    .line 580
    .end local v125    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v126    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_5c
    move-exception v106

    move-object/from16 v125, v126

    .end local v126    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v125    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_58

    .line 570
    .end local v132    # "mountService":Lcom/android/server/MountService;
    .restart local v133    # "mountService":Lcom/android/server/MountService;
    :catch_5d
    move-exception v106

    move-object/from16 v132, v133

    .end local v133    # "mountService":Lcom/android/server/MountService;
    .restart local v132    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_57

    .line 556
    :catch_5e
    move-exception v7

    goto/16 :goto_12

    .line 512
    .end local v115    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v116    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_5f
    move-exception v106

    move-object/from16 v115, v116

    .end local v116    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v115    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_56

    .line 482
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v68    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v70    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v91    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v104    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v107    # "facebook":Lcom/android/server/facebook/FacebookSystemDashService;
    .end local v115    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v123    # "location":Lcom/android/server/LocationManagerService;
    .end local v125    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v129    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v138    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v142    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v157    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v162    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v173    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v67    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v74    # "battery":Lcom/android/server/BatteryService;
    .restart local v101    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v122    # "lights":Lcom/android/server/LightsService;
    :catch_60
    move-exception v106

    move-object/from16 v20, v117

    .end local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v67

    .end local v67    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v74

    .end local v74    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v11, v101

    .end local v101    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v122

    .end local v122    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_55

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v67    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v74    # "battery":Lcom/android/server/BatteryService;
    .restart local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v122    # "lights":Lcom/android/server/LightsService;
    :catch_61
    move-exception v106

    move-object/from16 v20, v117

    .end local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v67

    .end local v67    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v74

    .end local v74    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v122

    .end local v122    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_55

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v67    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v74    # "battery":Lcom/android/server/BatteryService;
    .restart local v87    # "cryptState":Ljava/lang/String;
    .restart local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v122    # "lights":Lcom/android/server/LightsService;
    .restart local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_62
    move-exception v106

    move-object/from16 v160, v161

    .end local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v117

    .end local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v67

    .end local v67    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v74

    .end local v74    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v122

    .end local v122    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    move-object/from16 v63, v64

    .end local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_55

    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v67    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v74    # "battery":Lcom/android/server/BatteryService;
    .restart local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_63
    move-exception v106

    move-object/from16 v160, v161

    .end local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v117

    .end local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v67

    .end local v67    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v74

    .end local v74    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    goto/16 :goto_55

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v67    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_64
    move-exception v106

    move-object/from16 v160, v161

    .end local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v117

    .end local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v67

    .end local v67    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    goto/16 :goto_55

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v170    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v67    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v171    # "vibrator":Lcom/android/server/VibratorService;
    :catch_65
    move-exception v106

    move-object/from16 v160, v161

    .end local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v117

    .end local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v67

    .end local v67    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v170, v171

    .end local v171    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v170    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_55

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v113    # "htchardware":Lcom/android/server/HtcHardwareService;
    .end local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v170    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v67    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v114    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v171    # "vibrator":Lcom/android/server/VibratorService;
    :catch_66
    move-exception v106

    move-object/from16 v160, v161

    .end local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v117

    .end local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v67

    .end local v67    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v170, v171

    .end local v171    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v170    # "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v113, v114

    .end local v114    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v113    # "htchardware":Lcom/android/server/HtcHardwareService;
    goto/16 :goto_55

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v113    # "htchardware":Lcom/android/server/HtcHardwareService;
    .end local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v170    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v67    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v114    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v171    # "vibrator":Lcom/android/server/VibratorService;
    :catch_67
    move-exception v106

    move-object/from16 v82, v83

    .end local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v160, v161

    .end local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v117

    .end local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v67

    .end local v67    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v170, v171

    .end local v171    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v170    # "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v113, v114

    .end local v114    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v113    # "htchardware":Lcom/android/server/HtcHardwareService;
    goto/16 :goto_55

    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v113    # "htchardware":Lcom/android/server/HtcHardwareService;
    .end local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v170    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v114    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v171    # "vibrator":Lcom/android/server/VibratorService;
    :catch_68
    move-exception v106

    move-object/from16 v82, v83

    .end local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v160, v161

    .end local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v117

    .end local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v170, v171

    .end local v171    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v170    # "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v113, v114

    .end local v114    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v113    # "htchardware":Lcom/android/server/HtcHardwareService;
    goto/16 :goto_55

    .end local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v113    # "htchardware":Lcom/android/server/HtcHardwareService;
    .end local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v170    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v114    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v171    # "vibrator":Lcom/android/server/VibratorService;
    :catch_69
    move-exception v106

    move-object/from16 v82, v83

    .end local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v160, v161

    .end local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v170, v171

    .end local v171    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v170    # "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v113, v114

    .end local v114    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v113    # "htchardware":Lcom/android/server/HtcHardwareService;
    goto/16 :goto_55

    .end local v65    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .end local v75    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v113    # "htchardware":Lcom/android/server/HtcHardwareService;
    .end local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v170    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v66    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .restart local v76    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v114    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v171    # "vibrator":Lcom/android/server/VibratorService;
    :catch_6a
    move-exception v106

    move-object/from16 v65, v66

    .end local v66    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .restart local v65    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    move-object/from16 v82, v83

    .end local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v160, v161

    .end local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v75, v76

    .end local v76    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v75    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v170, v171

    .end local v171    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v170    # "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v113, v114

    .end local v114    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v113    # "htchardware":Lcom/android/server/HtcHardwareService;
    goto/16 :goto_55

    .line 396
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v67    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v74    # "battery":Lcom/android/server/BatteryService;
    .restart local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v122    # "lights":Lcom/android/server/LightsService;
    .restart local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_6b
    move-exception v106

    move-object/from16 v63, v64

    .end local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_54

    .line 327
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v87    # "cryptState":Ljava/lang/String;
    .end local v93    # "disableBluetooth":Z
    .end local v94    # "disableLocation":Z
    .end local v95    # "disableMedia":Z
    .end local v96    # "disableNetwork":Z
    .end local v97    # "disableNonCoreServices":Z
    .end local v98    # "disableStorage":Z
    .end local v99    # "disableSystemUI":Z
    .end local v100    # "disableTelephony":Z
    .end local v118    # "installer":Lcom/android/server/pm/Installer;
    .end local v161    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v119    # "installer":Lcom/android/server/pm/Installer;
    .restart local v160    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_6c
    move-exception v106

    move-object/from16 v118, v119

    .end local v119    # "installer":Lcom/android/server/pm/Installer;
    .restart local v118    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_53

    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v118    # "installer":Lcom/android/server/pm/Installer;
    .restart local v72    # "bDisableCachedLog":Z
    .restart local v119    # "installer":Lcom/android/server/pm/Installer;
    .restart local v141    # "power":Lcom/android/server/power/PowerManagerService;
    :catch_6d
    move-exception v106

    move-object/from16 v4, v141

    .end local v141    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    move-object/from16 v118, v119

    .end local v119    # "installer":Lcom/android/server/pm/Installer;
    .restart local v118    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_53

    .end local v67    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v72    # "bDisableCachedLog":Z
    .end local v74    # "battery":Lcom/android/server/BatteryService;
    .end local v101    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v122    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v68    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v70    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v91    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v93    # "disableBluetooth":Z
    .restart local v94    # "disableLocation":Z
    .restart local v95    # "disableMedia":Z
    .restart local v96    # "disableNetwork":Z
    .restart local v97    # "disableNonCoreServices":Z
    .restart local v98    # "disableStorage":Z
    .restart local v99    # "disableSystemUI":Z
    .restart local v100    # "disableTelephony":Z
    .restart local v104    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v107    # "facebook":Lcom/android/server/facebook/FacebookSystemDashService;
    .restart local v115    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v123    # "location":Lcom/android/server/LocationManagerService;
    .restart local v125    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v129    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v138    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v142    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v157    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v162    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v173    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_3d
    move-object/from16 v25, v134

    .end local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_20

    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_3e
    move-object/from16 v25, v134

    .end local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_46
.end method

.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 143
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    return-void
.end method

.method support3LM()Z
    .locals 7

    .prologue
    .line 149
    const/4 v3, 0x0

    .line 151
    .local v3, "ret":Z
    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 152
    .local v0, "custManager":Lcom/htc/customization/HtcCustomizationManager;
    const-string v4, "System"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 153
    .local v1, "custReader":Lcom/htc/customization/HtcCustomizationReader;
    const-string v4, "support_3lm"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 157
    .end local v0    # "custManager":Lcom/htc/customization/HtcCustomizationManager;
    .end local v1    # "custReader":Lcom/htc/customization/HtcCustomizationReader;
    :goto_0
    return v3

    .line 154
    :catch_0
    move-exception v2

    .line 155
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "SystemServer"

    const-string v5, "Read customization fail!"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method supportSprintExtensionApi()Z
    .locals 7

    .prologue
    .line 175
    const/4 v3, 0x0

    .line 177
    .local v3, "ret":Z
    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 178
    .local v0, "custManager":Lcom/htc/customization/HtcCustomizationManager;
    const-string v4, "Android_Kernel"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 180
    .local v1, "custReader":Lcom/htc/customization/HtcCustomizationReader;
    const-string v4, "support_extension_api"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 181
    const-string v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "support_extension_api = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v0    # "custManager":Lcom/htc/customization/HtcCustomizationManager;
    .end local v1    # "custReader":Lcom/htc/customization/HtcCustomizationReader;
    :goto_0
    return v3

    .line 182
    :catch_0
    move-exception v2

    .line 183
    .local v2, "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot read customization value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method