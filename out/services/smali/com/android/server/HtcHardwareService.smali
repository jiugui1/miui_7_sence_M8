.class public Lcom/android/server/HtcHardwareService;
.super Landroid/os/IHtcHardwareService$Stub;
.source "HtcHardwareService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/HtcHardwareService$3;,
        Lcom/android/server/HtcHardwareService$VendorArray;,
        Lcom/android/server/HtcHardwareService$SDTrayState;,
        Lcom/android/server/HtcHardwareService$VendorName;
    }
.end annotation


# static fields
.field private static final DEBUG_DUMP_UEVENT:Z = false

.field private static final DEBUG_ON:Z

.field private static final HTC_CUSTOMIZATION_KEY_SUPPORT_SD_TRAY:Ljava/lang/String; = "support_sd_tray_state"

.field private static final HTC_CUSTOMIZATION_NAME_FRAMEWORK:Ljava/lang/String; = "Android_Core_Framework"

.field private static final LOCKED:I = 0x4

.field private static final NORMAL:I = 0x0

.field private static final PRESSED:I = 0x1

.field private static final RELEASED:I = 0x2

.field private static final SD_TRAY_STATE_INSERTED:Ljava/lang/String; = "1"

.field private static final SD_TRAY_STATE_PROC_FILE:Ljava/lang/String; = "/proc/sd_tray_state"

.field private static final TAG:Ljava/lang/String; = "HtcHardwareService"

.field private static final UEVENT_KEY_SWITCH_STATE:Ljava/lang/String; = "SWITCH_STATE"

.field private static final USED:I = 0x3

.field private static final WATER_DAMAGE_APP:Ljava/lang/String; = "com.android.settings.HtcWaterDamageWarningDialog"

.field private static final WATER_DAMAGE_PKG:Ljava/lang/String; = "com.android.settings"

.field private static mHeadsetType:Ljava/lang/String;

.field public static mVendorArray:[Lcom/android/server/HtcHardwareService$VendorArray;


# instance fields
.field iBd:Landroid/os/IBinder;

.field private mBootCompleted:Z

.field private mBootCompletedLock:Ljava/lang/Object;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field mCurKeyFnActive:Z

.field mHasHWKB:I

.field mHasLED:Z

.field mIsUpdateByInner:Z

.field private final mSDCardTrayObserver:Landroid/os/UEventObserver;

.field mServiceUsbnet:Lcom/htc/net/usbnet/IUsbnetController;

.field private mSystemCapState:I

.field private mSystemFnState:I

.field private m_FnKeyActive:Z

.field nwService:Landroid/os/INetworkManagementService;

.field oldCaps:I

.field oldFn:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/HtcHardwareService;->DEBUG_ON:Z

    .line 648
    const-string v0, "error_state"

    sput-object v0, Lcom/android/server/HtcHardwareService;->mHeadsetType:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 309
    invoke-direct {p0}, Landroid/os/IHtcHardwareService$Stub;-><init>()V

    .line 79
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/HtcHardwareService;->mServiceUsbnet:Lcom/htc/net/usbnet/IUsbnetController;

    .line 143
    new-instance v6, Lcom/android/server/HtcHardwareService$1;

    invoke-direct {v6, p0}, Lcom/android/server/HtcHardwareService$1;-><init>(Lcom/android/server/HtcHardwareService;)V

    iput-object v6, p0, Lcom/android/server/HtcHardwareService;->mSDCardTrayObserver:Landroid/os/UEventObserver;

    .line 174
    new-instance v6, Lcom/android/server/HtcHardwareService$2;

    invoke-direct {v6, p0}, Lcom/android/server/HtcHardwareService$2;-><init>(Lcom/android/server/HtcHardwareService;)V

    iput-object v6, p0, Lcom/android/server/HtcHardwareService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 251
    iput-boolean v8, p0, Lcom/android/server/HtcHardwareService;->mBootCompleted:Z

    .line 253
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/server/HtcHardwareService;->mBootCompletedLock:Ljava/lang/Object;

    .line 372
    iput v8, p0, Lcom/android/server/HtcHardwareService;->mSystemFnState:I

    .line 373
    iput v8, p0, Lcom/android/server/HtcHardwareService;->mSystemCapState:I

    .line 418
    iput-boolean v8, p0, Lcom/android/server/HtcHardwareService;->m_FnKeyActive:Z

    .line 424
    iput-boolean v8, p0, Lcom/android/server/HtcHardwareService;->mCurKeyFnActive:Z

    .line 425
    iput-boolean v8, p0, Lcom/android/server/HtcHardwareService;->mIsUpdateByInner:Z

    .line 504
    iput v8, p0, Lcom/android/server/HtcHardwareService;->oldFn:I

    iput v8, p0, Lcom/android/server/HtcHardwareService;->oldCaps:I

    .line 560
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/HtcHardwareService;->mHasHWKB:I

    .line 561
    iput-boolean v8, p0, Lcom/android/server/HtcHardwareService;->mHasLED:Z

    .line 310
    iput-object p1, p0, Lcom/android/server/HtcHardwareService;->mContext:Landroid/content/Context;

    .line 312
    const-string v6, "network_management"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/HtcHardwareService;->iBd:Landroid/os/IBinder;

    .line 313
    iget-object v6, p0, Lcom/android/server/HtcHardwareService;->iBd:Landroid/os/IBinder;

    if-eqz v6, :cond_0

    .line 314
    iget-object v6, p0, Lcom/android/server/HtcHardwareService;->iBd:Landroid/os/IBinder;

    invoke-static {v6}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/HtcHardwareService;->nwService:Landroid/os/INetworkManagementService;

    .line 317
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v6, "/sys/class/leds/caps/brightness"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    .local v0, "fileCAP":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v6, "/sys/class/leds/func/brightness"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 319
    .local v1, "fileFN":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    iput-boolean v9, p0, Lcom/android/server/HtcHardwareService;->mHasLED:Z

    .line 324
    :cond_3
    sget-object v5, Lcom/android/server/HtcHardwareService$VendorName;->VENDOR_MAXIMUM:Lcom/android/server/HtcHardwareService$VendorName;

    .line 325
    .local v5, "vn":Lcom/android/server/HtcHardwareService$VendorName;
    invoke-virtual {v5}, Lcom/android/server/HtcHardwareService$VendorName;->ordinal()I

    move-result v4

    .line 327
    .local v4, "intVal":I
    new-array v6, v4, [Lcom/android/server/HtcHardwareService$VendorArray;

    sput-object v6, Lcom/android/server/HtcHardwareService;->mVendorArray:[Lcom/android/server/HtcHardwareService$VendorArray;

    .line 328
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 329
    sget-object v6, Lcom/android/server/HtcHardwareService;->mVendorArray:[Lcom/android/server/HtcHardwareService$VendorArray;

    new-instance v7, Lcom/android/server/HtcHardwareService$VendorArray;

    invoke-direct {v7, p0}, Lcom/android/server/HtcHardwareService$VendorArray;-><init>(Lcom/android/server/HtcHardwareService;)V

    aput-object v7, v6, v3

    .line 328
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 332
    :cond_4
    sget-object v6, Lcom/android/server/HtcHardwareService;->mVendorArray:[Lcom/android/server/HtcHardwareService$VendorArray;

    aget-object v6, v6, v8

    sget-object v7, Lcom/android/server/HtcHardwareService$VendorName;->VENDOR_SPRINT:Lcom/android/server/HtcHardwareService$VendorName;

    iput-object v7, v6, Lcom/android/server/HtcHardwareService$VendorArray;->vName:Lcom/android/server/HtcHardwareService$VendorName;

    .line 333
    sget-object v6, Lcom/android/server/HtcHardwareService;->mVendorArray:[Lcom/android/server/HtcHardwareService$VendorArray;

    aget-object v6, v6, v8

    iput-boolean v8, v6, Lcom/android/server/HtcHardwareService$VendorArray;->disabled:Z

    .line 334
    sget-object v6, Lcom/android/server/HtcHardwareService;->mVendorArray:[Lcom/android/server/HtcHardwareService$VendorArray;

    aget-object v6, v6, v9

    sget-object v7, Lcom/android/server/HtcHardwareService$VendorName;->VENDOR_TSMC:Lcom/android/server/HtcHardwareService$VendorName;

    iput-object v7, v6, Lcom/android/server/HtcHardwareService$VendorArray;->vName:Lcom/android/server/HtcHardwareService$VendorName;

    .line 335
    sget-object v6, Lcom/android/server/HtcHardwareService;->mVendorArray:[Lcom/android/server/HtcHardwareService$VendorArray;

    aget-object v6, v6, v9

    iput-boolean v8, v6, Lcom/android/server/HtcHardwareService$VendorArray;->disabled:Z

    .line 339
    invoke-static {}, Lcom/android/server/HtcHardwareService;->isSDTrayMonitorSupported()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 340
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 341
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v6, "com.htc.intent.action.HTC_BOOT_COMPLETED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 342
    const-string v6, "com.htc.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    const-string v6, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    iget-object v6, p0, Lcom/android/server/HtcHardwareService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/HtcHardwareService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 348
    iget-object v6, p0, Lcom/android/server/HtcHardwareService;->mSDCardTrayObserver:Landroid/os/UEventObserver;

    const-string v7, "SUBSYSTEM=mmc"

    invoke-virtual {v6, v7}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 352
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HtcHardwareService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/HtcHardwareService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/HtcHardwareService;->mBootCompletedLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/server/HtcHardwareService;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/HtcHardwareService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/HtcHardwareService;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/server/HtcHardwareService;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/HtcHardwareService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/HtcHardwareService;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/server/HtcHardwareService;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/HtcHardwareService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/HtcHardwareService;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/HtcHardwareService;->sendSDCardTrayState(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/HtcHardwareService;)Lcom/android/server/HtcHardwareService$SDTrayState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/HtcHardwareService;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/HtcHardwareService;->readCurrentSDTrayState()Lcom/android/server/HtcHardwareService$SDTrayState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/HtcHardwareService;Lcom/android/server/HtcHardwareService$SDTrayState;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/HtcHardwareService;
    .param p1, "x1"    # Lcom/android/server/HtcHardwareService$SDTrayState;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/HtcHardwareService;->dumpSDTrayState(Lcom/android/server/HtcHardwareService$SDTrayState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private broadcastFNCAPSStatus(II)V
    .locals 18
    .param p1, "systemFNState"    # I
    .param p2, "systemCapState"    # I

    .prologue
    .line 509
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/HtcHardwareService;->oldFn:I

    move/from16 v0, p1

    if-ne v3, v0, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/HtcHardwareService;->oldCaps:I

    move/from16 v0, p2

    if-eq v3, v0, :cond_1

    .line 510
    :cond_0
    const/16 v16, 0x0

    .local v16, "fn":I
    const/4 v15, 0x0

    .line 511
    .local v15, "caps":I
    packed-switch p1, :pswitch_data_0

    .line 524
    const/16 v16, 0x0

    .line 527
    :goto_0
    packed-switch p2, :pswitch_data_1

    .line 540
    const/4 v15, 0x0

    .line 544
    :goto_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 545
    .local v2, "am":Landroid/app/IActivityManager;
    if-eqz v2, :cond_1

    .line 546
    new-instance v4, Landroid/content/Intent;

    const-string v3, "com.htc.content.Intent.ACTION_HW_META_UPDATE"

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 547
    .local v4, "msg":Landroid/content/Intent;
    const-string v3, "meta_status_fn"

    move/from16 v0, v16

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 548
    const-string v3, "meta_status_caps"

    invoke-virtual {v4, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 550
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    const-string v10, "com.htc.permission.APP_PLATFORM"

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v14

    invoke-interface/range {v2 .. v14}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    .end local v2    # "am":Landroid/app/IActivityManager;
    .end local v4    # "msg":Landroid/content/Intent;
    .end local v15    # "caps":I
    .end local v16    # "fn":I
    :cond_1
    :goto_2
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/HtcHardwareService;->oldFn:I

    .line 557
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/HtcHardwareService;->oldCaps:I

    .line 558
    return-void

    .line 513
    .restart local v15    # "caps":I
    .restart local v16    # "fn":I
    :pswitch_0
    const/16 v16, 0x0

    .line 514
    goto :goto_0

    .line 516
    :pswitch_1
    const/16 v16, 0x2

    .line 517
    goto :goto_0

    .line 521
    :pswitch_2
    const/16 v16, 0x1

    .line 522
    goto :goto_0

    .line 529
    :pswitch_3
    const/4 v15, 0x0

    .line 530
    goto :goto_1

    .line 532
    :pswitch_4
    const/4 v15, 0x2

    .line 533
    goto :goto_1

    .line 537
    :pswitch_5
    const/4 v15, 0x1

    .line 538
    goto :goto_1

    .line 551
    .restart local v2    # "am":Landroid/app/IActivityManager;
    .restart local v4    # "msg":Landroid/content/Intent;
    :catch_0
    move-exception v17

    .line 552
    .local v17, "sEx":Landroid/os/RemoteException;
    const-string v3, "HtcHardwareService"

    const-string v5, "[broadcastFNCAPSStatus]:"

    move-object/from16 v0, v17

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 527
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private detectHeadsetType()V
    .locals 6

    .prologue
    .line 651
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/htc_accessory/headset/state"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 652
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 654
    :cond_0
    const-string v4, "HtcHardwareService"

    const-string v5, "Headset type is not existed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const-string v4, "error_state"

    sput-object v4, Lcom/android/server/HtcHardwareService;->mHeadsetType:Ljava/lang/String;

    .line 698
    :goto_0
    return-void

    .line 659
    :cond_1
    const/4 v2, 0x0

    .line 662
    .local v2, "input":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .end local v2    # "input":Ljava/io/BufferedReader;
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    .restart local v2    # "input":Ljava/io/BufferedReader;
    if-nez v2, :cond_2

    .line 673
    const-string v4, "HtcHardwareService"

    const-string v5, "BufferedReader input = null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const-string v4, "error_state"

    sput-object v4, Lcom/android/server/HtcHardwareService;->mHeadsetType:Ljava/lang/String;

    goto :goto_0

    .line 664
    .end local v2    # "input":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 666
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v4, "HtcHardwareService"

    const-string v5, "detectHeadsetType() FileNotFoundException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const-string v4, "error_state"

    sput-object v4, Lcom/android/server/HtcHardwareService;->mHeadsetType:Ljava/lang/String;

    goto :goto_0

    .line 678
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    :cond_2
    const/4 v3, 0x0

    .line 681
    .local v3, "line":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 682
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 691
    if-nez v3, :cond_3

    .line 693
    const-string v4, "error_state"

    sput-object v4, Lcom/android/server/HtcHardwareService;->mHeadsetType:Ljava/lang/String;

    goto :goto_0

    .line 684
    :catch_1
    move-exception v0

    .line 686
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "HtcHardwareService"

    const-string v5, "detectHeadsetType() IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const-string v4, "error_state"

    sput-object v4, Lcom/android/server/HtcHardwareService;->mHeadsetType:Ljava/lang/String;

    goto :goto_0

    .line 697
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    sput-object v3, Lcom/android/server/HtcHardwareService;->mHeadsetType:Ljava/lang/String;

    goto :goto_0
.end method

.method private dumpSDTrayState(Lcom/android/server/HtcHardwareService$SDTrayState;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Lcom/android/server/HtcHardwareService$SDTrayState;

    .prologue
    .line 107
    sget-object v0, Lcom/android/server/HtcHardwareService$3;->$SwitchMap$com$android$server$HtcHardwareService$SDTrayState:[I

    invoke-virtual {p1}, Lcom/android/server/HtcHardwareService$SDTrayState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 113
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 109
    :pswitch_0
    const-string v0, "EJECTED"

    goto :goto_0

    .line 111
    :pswitch_1
    const-string v0, "INSERTED"

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getCustomizationReader(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 232
    .local v0, "cm":Lcom/htc/customization/HtcCustomizationManager;
    if-eqz v0, :cond_0

    .line 233
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 235
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static native getHtcSecureRuleVerifyCode_native()[B
.end method

.method private static native getHtcSecureRule_native()Z
.end method

.method private static native isCameraKeepOff_native()Z
.end method

.method private static isSDTrayMonitorSupported()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 239
    const-string v2, "Android_Core_Framework"

    invoke-static {v2}, Lcom/android/server/HtcHardwareService;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    .line 240
    .local v0, "cr":Lcom/htc/customization/HtcCustomizationReader;
    if-eqz v0, :cond_0

    .line 241
    const-string v2, "support_sd_tray_state"

    invoke-interface {v0, v2, v1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 242
    :cond_0
    return v1
.end method

.method private press(I)I
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 376
    if-ne p1, v1, :cond_1

    .line 385
    .end local p1    # "state":I
    :cond_0
    :goto_0
    return p1

    .line 378
    .restart local p1    # "state":I
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    move p1, v0

    .line 379
    goto :goto_0

    .line 380
    :cond_2
    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    .line 382
    if-ne p1, v0, :cond_3

    .line 383
    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    move p1, v1

    .line 385
    goto :goto_0
.end method

.method private readCurrentSDTrayState()Lcom/android/server/HtcHardwareService$SDTrayState;
    .locals 8

    .prologue
    .line 119
    sget-object v3, Lcom/android/server/HtcHardwareService$SDTrayState;->SD_TRAY_STATE_UNKNOWN:Lcom/android/server/HtcHardwareService$SDTrayState;

    .line 121
    .local v3, "result":Lcom/android/server/HtcHardwareService$SDTrayState;
    sget-boolean v5, Lcom/android/server/HtcHardwareService;->DEBUG_ON:Z

    if-eqz v5, :cond_0

    const-string v5, "HtcHardwareService"

    const-string v6, "Reading proc file to retrieve SD tray state..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v5, "/proc/sd_tray_state"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v2, "procFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 125
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 126
    .local v4, "stateReader":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->read()I

    move-result v5

    int-to-char v0, v5

    .line 127
    .local v0, "currentState":C
    const-string v5, "1"

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v3, Lcom/android/server/HtcHardwareService$SDTrayState;->SD_TRAY_STATE_INSERTED:Lcom/android/server/HtcHardwareService$SDTrayState;

    .line 129
    :goto_0
    sget-boolean v5, Lcom/android/server/HtcHardwareService;->DEBUG_ON:Z

    if-eqz v5, :cond_1

    .line 130
    const-string v5, "HtcHardwareService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v3}, Lcom/android/server/HtcHardwareService;->dumpSDTrayState(Lcom/android/server/HtcHardwareService$SDTrayState;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 139
    .end local v0    # "currentState":C
    .end local v4    # "stateReader":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    return-object v3

    .line 127
    .restart local v0    # "currentState":C
    .restart local v4    # "stateReader":Ljava/io/BufferedReader;
    :cond_3
    sget-object v3, Lcom/android/server/HtcHardwareService$SDTrayState;->SD_TRAY_STATE_EJECTED:Lcom/android/server/HtcHardwareService$SDTrayState;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 133
    .end local v0    # "currentState":C
    .end local v4    # "stateReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v5, "HtcHardwareService"

    const-string v6, "Cannot find proc file!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 135
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 136
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "HtcHardwareService"

    const-string v6, "proc file I/O error..."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private release(I)I
    .locals 1
    .param p1, "current"    # I

    .prologue
    .line 389
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 390
    const/4 p1, 0x0

    .line 394
    .end local p1    # "current":I
    :cond_0
    :goto_0
    return p1

    .line 391
    .restart local p1    # "current":I
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 392
    const/4 p1, 0x2

    goto :goto_0
.end method

.method private sendSDCardTrayState(Z)V
    .locals 7
    .param p1, "state"    # Z

    .prologue
    .line 201
    sget-boolean v4, Lcom/android/server/HtcHardwareService;->DEBUG_ON:Z

    if-eqz v4, :cond_0

    .line 202
    const-string v5, "HtcHardwareService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcast SD tray "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_2

    const-string v4, "INSERTED"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.intent.action.SD_CARD_TRAY_STATE_CHANGE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 207
    const-string v4, "com.htc.intent.extra.SD_CARD_TRAY_STATE"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    iget-object v4, p0, Lcom/android/server/HtcHardwareService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "com.htc.permission.APP_PLATFORM"

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 212
    if-nez p1, :cond_1

    .line 216
    :try_start_0
    iget-object v4, p0, Lcom/android/server/HtcHardwareService;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 218
    .local v3, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 220
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v1    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :try_start_1
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.HtcWaterDamageWarningDialog"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const/high16 v4, 0x34000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 225
    iget-object v4, p0, Lcom/android/server/HtcHardwareService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 228
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "pm":Landroid/os/PowerManager;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 202
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v4, "EJECTED"

    goto :goto_0

    .line 226
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "pm":Landroid/os/PowerManager;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_2
.end method

.method private static native setCameraMode_native(I)I
.end method

.method private static native setCapsLedState_native(Z)V
.end method

.method private static native setDualLedState_native(IIII)V
.end method

.method private static native setEncodedCodeByEncryptedCode_native([B)Z
.end method

.method private static native setFlashlightBrightness_native(I)V
.end method

.method private static native setFnLedState_native(Z)V
.end method

.method private static native setFrontFlashlightBrightness_native(I)V
.end method

.method private static native setHeadsetFMType_native(Ljava/lang/String;)V
.end method

.method private static native setHeadsetTTYType_native(Ljava/lang/String;)V
.end method

.method private static native setHtcEncryptedCode_native([B)Z
.end method

.method private static native setHtcSecureRule_native(Z)V
.end method

.method private static native setJogBallMode_native(I)V
.end method


# virtual methods
.method public UsbMiscControl_IPT(I)I
    .locals 5
    .param p1, "iMode"    # I

    .prologue
    .line 577
    const-string v2, "HtcHardwareService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[USBNET] MiscControl_IPT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v2, p0, Lcom/android/server/HtcHardwareService;->mServiceUsbnet:Lcom/htc/net/usbnet/IUsbnetController;

    if-nez v2, :cond_0

    .line 580
    const-string v2, "usbnet"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/net/usbnet/IUsbnetController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/net/usbnet/IUsbnetController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/HtcHardwareService;->mServiceUsbnet:Lcom/htc/net/usbnet/IUsbnetController;

    .line 581
    iget-object v2, p0, Lcom/android/server/HtcHardwareService;->mServiceUsbnet:Lcom/htc/net/usbnet/IUsbnetController;

    if-nez v2, :cond_0

    .line 583
    const-string v2, "HtcHardwareService"

    const-string v3, "[USBNET] mServiceUsbnet == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v1, 0x0

    .line 595
    :goto_0
    return v1

    .line 587
    :cond_0
    const/4 v1, -0x1

    .line 590
    .local v1, "iRetVal":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/HtcHardwareService;->mServiceUsbnet:Lcom/htc/net/usbnet/IUsbnetController;

    invoke-interface {v2, p1}, Lcom/htc/net/usbnet/IUsbnetController;->UsbMiscControl_IPT(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCameraDisabled(Lcom/android/server/HtcHardwareService$VendorName;)Z
    .locals 2
    .param p1, "vendor"    # Lcom/android/server/HtcHardwareService$VendorName;

    .prologue
    .line 280
    const-string v0, "persist.sys.vendor.cam.disable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const-string v0, "HtcHardwareService"

    const-string v1, "getCameraDisabled: true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v0, 0x1

    .line 285
    :goto_0
    return v0

    .line 284
    :cond_0
    const-string v0, "HtcHardwareService"

    const-string v1, "getCameraDisabled: false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCameraDisabledForSprint()Z
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/server/HtcHardwareService;->mContext:Landroid/content/Context;

    const-string v1, "com.sprint.internal.permission.DEVICEMANAGEMENT"

    const-string v2, "Need Sprint device management permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    sget-object v0, Lcom/android/server/HtcHardwareService$VendorName;->VENDOR_SPRINT:Lcom/android/server/HtcHardwareService$VendorName;

    invoke-virtual {p0, v0}, Lcom/android/server/HtcHardwareService;->getCameraDisabled(Lcom/android/server/HtcHardwareService$VendorName;)Z

    move-result v0

    return v0
.end method

.method public getCameraDisabledForTSMC()Z
    .locals 1

    .prologue
    .line 304
    sget-object v0, Lcom/android/server/HtcHardwareService$VendorName;->VENDOR_TSMC:Lcom/android/server/HtcHardwareService$VendorName;

    invoke-virtual {p0, v0}, Lcom/android/server/HtcHardwareService;->getCameraDisabled(Lcom/android/server/HtcHardwareService$VendorName;)Z

    move-result v0

    return v0
.end method

.method public getCapsLedState()I
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mSystemCapState:I

    return v0
.end method

.method public getFlashlightBrightness()I
    .locals 7

    .prologue
    .line 600
    const/4 v2, 0x0

    .line 601
    .local v2, "reader1":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 603
    .local v0, "brightness":I
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/class/leds/flashlight/brightness"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x4

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    .end local v2    # "reader1":Ljava/io/BufferedReader;
    .local v3, "reader1":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 605
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 606
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    move-object v2, v3

    .line 610
    .end local v3    # "reader1":Ljava/io/BufferedReader;
    .end local v4    # "s":Ljava/lang/String;
    .restart local v2    # "reader1":Ljava/io/BufferedReader;
    :goto_0
    return v0

    .line 607
    :catch_0
    move-exception v1

    .line 608
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    const-string v5, "HtcHardwareService"

    const-string v6, "file open fail: /sys/class/leds/flashlight/brightness"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 607
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "reader1":Ljava/io/BufferedReader;
    .restart local v3    # "reader1":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "reader1":Ljava/io/BufferedReader;
    .restart local v2    # "reader1":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public getFnLedState()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mSystemFnState:I

    return v0
.end method

.method public getFrontFlashlightBrightness()I
    .locals 7

    .prologue
    .line 614
    const/4 v2, 0x0

    .line 615
    .local v2, "reader1":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 617
    .local v0, "brightness":I
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/class/leds/flashlight_front/brightness"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x4

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    .end local v2    # "reader1":Ljava/io/BufferedReader;
    .local v3, "reader1":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 619
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 620
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    move-object v2, v3

    .line 624
    .end local v3    # "reader1":Ljava/io/BufferedReader;
    .end local v4    # "s":Ljava/lang/String;
    .restart local v2    # "reader1":Ljava/io/BufferedReader;
    :goto_0
    return v0

    .line 621
    :catch_0
    move-exception v1

    .line 622
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    const-string v5, "HtcHardwareService"

    const-string v6, "file open fail: /sys/class/leds/flashlight_friont/brightness"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 621
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "reader1":Ljava/io/BufferedReader;
    .restart local v3    # "reader1":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "reader1":Ljava/io/BufferedReader;
    .restart local v2    # "reader1":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public getHeadsetType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 701
    invoke-direct {p0}, Lcom/android/server/HtcHardwareService;->detectHeadsetType()V

    .line 702
    const-string v0, "HtcHardwareService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHeadsetType() type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/HtcHardwareService;->mHeadsetType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    sget-object v0, Lcom/android/server/HtcHardwareService;->mHeadsetType:Ljava/lang/String;

    return-object v0
.end method

.method public getHtcSecureRule()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 732
    iget-object v3, p0, Lcom/android/server/HtcHardwareService;->mContext:Landroid/content/Context;

    const-string v4, "com.htc.framework.permission.ACCESS_HTC_MDM_API"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 733
    const/4 v2, 0x0

    .line 734
    .local v2, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 735
    .local v0, "ident":J
    invoke-static {}, Lcom/android/server/HtcHardwareService;->getHtcSecureRule_native()Z

    move-result v2

    .line 736
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 737
    return v2

    .line 739
    .end local v0    # "ident":J
    .end local v2    # "result":Z
    :cond_0
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Application is not signed with proper permission!"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getHtcSecureRuleVerifyCode()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 748
    iget-object v3, p0, Lcom/android/server/HtcHardwareService;->mContext:Landroid/content/Context;

    const-string v4, "com.htc.framework.permission.ACCESS_HTC_MDM_API"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 749
    const/4 v2, 0x0

    .line 750
    .local v2, "result":[B
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 751
    .local v0, "ident":J
    invoke-static {}, Lcom/android/server/HtcHardwareService;->getHtcSecureRuleVerifyCode_native()[B

    move-result-object v2

    .line 752
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 753
    return-object v2

    .line 755
    .end local v0    # "ident":J
    .end local v2    # "result":[B
    :cond_0
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Application is not signed with proper permission!"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public hasHWKB()I
    .locals 3

    .prologue
    .line 563
    iget v1, p0, Lcom/android/server/HtcHardwareService;->mHasHWKB:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 564
    iget-object v1, p0, Lcom/android/server/HtcHardwareService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 565
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v1, :cond_1

    .line 566
    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 567
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/HtcHardwareService;->mHasHWKB:I

    .line 571
    .end local v0    # "conf":Landroid/content/res/Configuration;
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/server/HtcHardwareService;->mHasHWKB:I

    return v1

    .line 568
    .restart local v0    # "conf":Landroid/content/res/Configuration;
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/HtcHardwareService;->mHasHWKB:I

    goto :goto_0
.end method

.method public isCameraKeepOff()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 796
    iget-object v3, p0, Lcom/android/server/HtcHardwareService;->mContext:Landroid/content/Context;

    const-string v4, "com.htc.framework.permission.ACCESS_HTC_MDM_API"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 797
    const/4 v2, 0x0

    .line 798
    .local v2, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 799
    .local v0, "ident":J
    invoke-static {}, Lcom/android/server/HtcHardwareService;->isCameraKeepOff_native()Z

    move-result v2

    .line 800
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 801
    return v2

    .line 803
    .end local v0    # "ident":J
    .end local v2    # "result":Z
    :cond_0
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Application is not signed with proper permission!"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public isFnKeyActive()Z
    .locals 2

    .prologue
    .line 451
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mHasHWKB:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 452
    iget-boolean v0, p0, Lcom/android/server/HtcHardwareService;->mCurKeyFnActive:Z

    .line 454
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeFnState(IIZIZ)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "metaKeys"    # I
    .param p3, "down"    # Z
    .param p4, "repeatCount"    # I
    .param p5, "keyguardOn"    # Z

    .prologue
    const/16 v0, 0x39

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 467
    if-eqz p3, :cond_9

    .line 469
    if-eq p1, v0, :cond_0

    const/16 v0, 0x3a

    if-ne p1, v0, :cond_3

    .line 470
    :cond_0
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mSystemFnState:I

    invoke-direct {p0, v0}, Lcom/android/server/HtcHardwareService;->press(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/HtcHardwareService;->mSystemFnState:I

    .line 495
    :cond_1
    :goto_0
    if-nez p4, :cond_2

    .line 496
    iput-boolean v1, p0, Lcom/android/server/HtcHardwareService;->mIsUpdateByInner:Z

    .line 497
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mSystemFnState:I

    if-eqz v0, :cond_d

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/HtcHardwareService;->setFnLedState(Z)V

    .line 498
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mSystemCapState:I

    if-eqz v0, :cond_e

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/server/HtcHardwareService;->setCapsLedState(Z)V

    .line 499
    iput-boolean v2, p0, Lcom/android/server/HtcHardwareService;->mIsUpdateByInner:Z

    .line 501
    :cond_2
    return-void

    .line 471
    :cond_3
    const/16 v0, 0x3b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_5

    .line 472
    :cond_4
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mSystemCapState:I

    invoke-direct {p0, v0}, Lcom/android/server/HtcHardwareService;->press(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/HtcHardwareService;->mSystemCapState:I

    goto :goto_0

    .line 474
    :cond_5
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mSystemFnState:I

    if-ne v0, v1, :cond_7

    .line 475
    iput v4, p0, Lcom/android/server/HtcHardwareService;->mSystemFnState:I

    .line 479
    :cond_6
    :goto_3
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mSystemCapState:I

    if-ne v0, v1, :cond_8

    .line 480
    iput v4, p0, Lcom/android/server/HtcHardwareService;->mSystemCapState:I

    goto :goto_0

    .line 476
    :cond_7
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mSystemFnState:I

    if-ne v0, v3, :cond_6

    .line 477
    iput v2, p0, Lcom/android/server/HtcHardwareService;->mSystemFnState:I

    goto :goto_3

    .line 481
    :cond_8
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mSystemCapState:I

    if-ne v0, v3, :cond_1

    .line 482
    iput v2, p0, Lcom/android/server/HtcHardwareService;->mSystemCapState:I

    goto :goto_0

    .line 488
    :cond_9
    if-eq p1, v0, :cond_a

    const/16 v0, 0x3a

    if-ne p1, v0, :cond_b

    .line 489
    :cond_a
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mSystemFnState:I

    invoke-direct {p0, v0}, Lcom/android/server/HtcHardwareService;->release(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/HtcHardwareService;->mSystemFnState:I

    goto :goto_0

    .line 490
    :cond_b
    const/16 v0, 0x3b

    if-eq p1, v0, :cond_c

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_1

    .line 491
    :cond_c
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mSystemCapState:I

    invoke-direct {p0, v0}, Lcom/android/server/HtcHardwareService;->release(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/HtcHardwareService;->mSystemCapState:I

    goto :goto_0

    :cond_d
    move v0, v2

    .line 497
    goto :goto_1

    :cond_e
    move v1, v2

    .line 498
    goto :goto_2
.end method

.method public setCameraDisabled(Lcom/android/server/HtcHardwareService$VendorName;Z)V
    .locals 8
    .param p1, "vendor"    # Lcom/android/server/HtcHardwareService$VendorName;
    .param p2, "disabled"    # Z

    .prologue
    .line 258
    move-object v4, p1

    .line 259
    .local v4, "vn":Lcom/android/server/HtcHardwareService$VendorName;
    invoke-virtual {v4}, Lcom/android/server/HtcHardwareService$VendorName;->ordinal()I

    move-result v2

    .line 260
    .local v2, "intVal":I
    const/4 v0, 0x0

    .line 262
    .local v0, "bDisabled":Z
    sget-object v5, Lcom/android/server/HtcHardwareService;->mVendorArray:[Lcom/android/server/HtcHardwareService$VendorArray;

    aget-object v5, v5, v2

    iput-boolean p2, v5, Lcom/android/server/HtcHardwareService$VendorArray;->disabled:Z

    .line 263
    const-string v5, "HtcHardwareService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCameraDisabled: vendor="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",disabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sget-object v4, Lcom/android/server/HtcHardwareService$VendorName;->VENDOR_MAXIMUM:Lcom/android/server/HtcHardwareService$VendorName;

    .line 266
    invoke-virtual {v4}, Lcom/android/server/HtcHardwareService$VendorName;->ordinal()I

    move-result v2

    .line 267
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 268
    sget-object v5, Lcom/android/server/HtcHardwareService;->mVendorArray:[Lcom/android/server/HtcHardwareService$VendorArray;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/android/server/HtcHardwareService$VendorArray;->disabled:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 269
    const/4 v0, 0x1

    .line 274
    :cond_0
    if-eqz v0, :cond_2

    const-string v3, "1"

    .line 275
    .local v3, "value":Ljava/lang/String;
    :goto_1
    const-string v5, "HtcHardwareService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCameraDisabled value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v5, "persist.sys.vendor.cam.disable"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void

    .line 267
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    :cond_2
    const-string v3, "0"

    goto :goto_1
.end method

.method public setCameraDisabledForSprint(Z)V
    .locals 3
    .param p1, "disabled"    # Z

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/server/HtcHardwareService;->mContext:Landroid/content/Context;

    const-string v1, "com.sprint.internal.permission.DEVICEMANAGEMENT"

    const-string v2, "Need Sprint device management permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sget-object v0, Lcom/android/server/HtcHardwareService$VendorName;->VENDOR_SPRINT:Lcom/android/server/HtcHardwareService$VendorName;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/HtcHardwareService;->setCameraDisabled(Lcom/android/server/HtcHardwareService$VendorName;Z)V

    .line 292
    return-void
.end method

.method public setCameraDisabledForTSMC(Z)V
    .locals 1
    .param p1, "disabled"    # Z

    .prologue
    .line 295
    sget-object v0, Lcom/android/server/HtcHardwareService$VendorName;->VENDOR_TSMC:Lcom/android/server/HtcHardwareService$VendorName;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/HtcHardwareService;->setCameraDisabled(Lcom/android/server/HtcHardwareService$VendorName;Z)V

    .line 296
    return-void
.end method

.method public setCameraMode(I)I
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 709
    invoke-static {p1}, Lcom/android/server/HtcHardwareService;->setCameraMode_native(I)I

    move-result v0

    return v0
.end method

.method public setCapsLedState(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 409
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mHasHWKB:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 410
    iget-boolean v0, p0, Lcom/android/server/HtcHardwareService;->mHasLED:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/HtcHardwareService;->setCapsLedState_native(Z)V

    .line 411
    :cond_0
    if-nez p1, :cond_1

    .line 412
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/HtcHardwareService;->mSystemCapState:I

    .line 414
    :cond_1
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mSystemFnState:I

    iget v1, p0, Lcom/android/server/HtcHardwareService;->mSystemCapState:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/HtcHardwareService;->broadcastFNCAPSStatus(II)V

    .line 416
    :cond_2
    return-void
.end method

.method public setDualLedState(IIII)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "offMin"    # I
    .param p4, "offSec"    # I

    .prologue
    .line 399
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/HtcHardwareService;->setDualLedState_native(IIII)V

    .line 400
    return-void
.end method

.method public setEncodedCodeByEncryptedCode([B)Z
    .locals 5
    .param p1, "strHtc_Encoded_Code_By_Encrypted_Code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 780
    iget-object v3, p0, Lcom/android/server/HtcHardwareService;->mContext:Landroid/content/Context;

    const-string v4, "com.htc.framework.permission.ACCESS_HTC_MDM_API"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 781
    const/4 v2, 0x0

    .line 782
    .local v2, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 783
    .local v0, "ident":J
    invoke-static {p1}, Lcom/android/server/HtcHardwareService;->setEncodedCodeByEncryptedCode_native([B)Z

    move-result v2

    .line 784
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 785
    return v2

    .line 787
    .end local v0    # "ident":J
    .end local v2    # "result":Z
    :cond_0
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Application is not signed with proper permission!"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setFlashlightBrightness(I)V
    .locals 0
    .param p1, "brightness"    # I

    .prologue
    .line 630
    invoke-static {p1}, Lcom/android/server/HtcHardwareService;->setFlashlightBrightness_native(I)V

    .line 631
    return-void
.end method

.method public setFnLedState(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 429
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mHasHWKB:I

    if-ne v0, v2, :cond_2

    .line 430
    iget-boolean v0, p0, Lcom/android/server/HtcHardwareService;->mHasLED:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/HtcHardwareService;->setFnLedState_native(Z)V

    .line 431
    :cond_0
    if-nez p1, :cond_1

    .line 432
    iput v3, p0, Lcom/android/server/HtcHardwareService;->mSystemFnState:I

    .line 434
    :cond_1
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mSystemFnState:I

    iget v1, p0, Lcom/android/server/HtcHardwareService;->mSystemCapState:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/HtcHardwareService;->broadcastFNCAPSStatus(II)V

    .line 436
    iget-boolean v0, p0, Lcom/android/server/HtcHardwareService;->mIsUpdateByInner:Z

    if-eqz v0, :cond_5

    .line 437
    if-eqz p1, :cond_3

    iput-boolean v2, p0, Lcom/android/server/HtcHardwareService;->mCurKeyFnActive:Z

    .line 446
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/HtcHardwareService;->m_FnKeyActive:Z

    .line 448
    :cond_2
    return-void

    .line 440
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/HtcHardwareService;->m_FnKeyActive:Z

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/android/server/HtcHardwareService;->mCurKeyFnActive:Z

    goto :goto_0

    .line 441
    :cond_4
    iput-boolean v3, p0, Lcom/android/server/HtcHardwareService;->mCurKeyFnActive:Z

    goto :goto_0

    .line 444
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/HtcHardwareService;->mCurKeyFnActive:Z

    goto :goto_0
.end method

.method public setFrontFlashlightBrightness(I)V
    .locals 0
    .param p1, "brightness"    # I

    .prologue
    .line 635
    invoke-static {p1}, Lcom/android/server/HtcHardwareService;->setFrontFlashlightBrightness_native(I)V

    .line 636
    return-void
.end method

.method public setHeadsetFMType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 640
    invoke-static {p1}, Lcom/android/server/HtcHardwareService;->setHeadsetFMType_native(Ljava/lang/String;)V

    .line 641
    return-void
.end method

.method public setHeadsetTTYType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 645
    invoke-static {p1}, Lcom/android/server/HtcHardwareService;->setHeadsetTTYType_native(Ljava/lang/String;)V

    .line 646
    return-void
.end method

.method public setHtcEncryptedCode([B)Z
    .locals 5
    .param p1, "strHtc_Encrypted_Code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 764
    iget-object v3, p0, Lcom/android/server/HtcHardwareService;->mContext:Landroid/content/Context;

    const-string v4, "com.htc.framework.permission.ACCESS_HTC_MDM_API"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 765
    const/4 v2, 0x0

    .line 766
    .local v2, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 767
    .local v0, "ident":J
    invoke-static {p1}, Lcom/android/server/HtcHardwareService;->setHtcEncryptedCode_native([B)Z

    move-result v2

    .line 768
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 769
    return v2

    .line 771
    .end local v0    # "ident":J
    .end local v2    # "result":Z
    :cond_0
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Application is not signed with proper permission!"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setHtcSecureRule(Z)V
    .locals 4
    .param p1, "bHTC_MFG_Secure_Rule_Enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 718
    iget-object v2, p0, Lcom/android/server/HtcHardwareService;->mContext:Landroid/content/Context;

    const-string v3, "com.htc.framework.permission.ACCESS_HTC_MDM_API"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 719
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 720
    .local v0, "ident":J
    invoke-static {p1}, Lcom/android/server/HtcHardwareService;->setHtcSecureRule_native(Z)V

    .line 721
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 726
    return-void

    .line 723
    .end local v0    # "ident":J
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Application is not signed with proper permission!"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setJogBallMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 404
    invoke-static {p1}, Lcom/android/server/HtcHardwareService;->setJogBallMode_native(I)V

    .line 405
    return-void
.end method
