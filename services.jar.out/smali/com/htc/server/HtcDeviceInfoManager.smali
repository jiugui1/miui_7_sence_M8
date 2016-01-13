.class public Lcom/htc/server/HtcDeviceInfoManager;
.super Landroid/app/IHtcDeviceInfoManager$Stub;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;,
        Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;,
        Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;,
        Lcom/htc/server/HtcDeviceInfoManager$MyAlarmListener;,
        Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final PERMISSION_APP_DEFAULT:Ljava/lang/String; = "com.htc.permission.APP_DEFAULT"

.field private static final PERMISSION_CUSTOMIZATION_CHANGE:Ljava/lang/String; = "htc.permission.CUSTOMIZATION_CHANGE"

.field private static final PERMISSION_DEVICEINFO_INTERNAL_USAGE:Ljava/lang/String; = "com.htc.permission.DEVICEINFO_INTERNAL_USAGE"

.field private static final PERMISSION_DEVICEINFO_SECURITY_USAGE:Ljava/lang/String; = "com.htc.permission.DEVICEINFO_SECURITY_USAGE"

.field private static final PERMISSION_FEEDBACK_PROTECT:Ljava/lang/String; = "com.htc.permission.FEEDBACK_PROTECT"

.field private static final PERMISSION_UBLS_PROTECTED_USAGE:Ljava/lang/String; = "com.htc.permission.UBLS_PROTECTED_USAGE"

.field private static final TAG:Ljava/lang/String; = "HtcDeviceInfoManager"

.field private static sInstance:Lcom/htc/server/HtcDeviceInfoManager;

.field private static sSense:D


# instance fields
.field private mActivityLaunch:Lcom/htc/server/deviceinfo/ActivityLaunchRecord;

.field private final mContext:Landroid/content/Context;

.field private mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mSettingsLaunch:Lcom/htc/server/deviceinfo/SettingsLaunchRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/server/HtcDeviceInfoManager;->DEBUG:Z

    .line 1290
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/server/HtcDeviceInfoManager;->sInstance:Lcom/htc/server/HtcDeviceInfoManager;

    .line 1295
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    sput-wide v0, Lcom/htc/server/HtcDeviceInfoManager;->sSense:D

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1298
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/deviceinfo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/server/HtcDeviceInfoManager;-><init>(Ljava/io/File;Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    .line 1299
    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1301
    invoke-direct {p0}, Landroid/app/IHtcDeviceInfoManager$Stub;-><init>()V

    .line 1291
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    .line 1303
    iput-object p2, p0, Lcom/htc/server/HtcDeviceInfoManager;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1304
    iput-object p3, p0, Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;

    .line 1306
    sget-object v4, Lcom/htc/server/HtcDeviceInfoManager;->sInstance:Lcom/htc/server/HtcDeviceInfoManager;

    if-nez v4, :cond_0

    .line 1307
    sput-object p0, Lcom/htc/server/HtcDeviceInfoManager;->sInstance:Lcom/htc/server/HtcDeviceInfoManager;

    .line 1310
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v1

    .line 1311
    .local v1, "manager":Lcom/htc/customization/HtcCustomizationManager;
    if-eqz v1, :cond_1

    .line 1312
    const-string v4, "system"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    .line 1313
    .local v2, "reader":Lcom/htc/customization/HtcCustomizationReader;
    if-eqz v2, :cond_1

    .line 1314
    const-string v4, "sense_version"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1315
    .local v3, "strSense":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    sput-wide v4, Lcom/htc/server/HtcDeviceInfoManager;->sSense:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1321
    .end local v1    # "manager":Lcom/htc/customization/HtcCustomizationManager;
    .end local v2    # "reader":Lcom/htc/customization/HtcCustomizationReader;
    .end local v3    # "strSense":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-direct {p0, p3}, Lcom/htc/server/HtcDeviceInfoManager;->createScheduler(Landroid/content/Context;)V

    .line 1324
    invoke-direct {p0}, Lcom/htc/server/HtcDeviceInfoManager;->initAppUsageStats()V

    .line 1326
    return-void

    .line 1318
    :catch_0
    move-exception v0

    .line 1319
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "HtcDeviceInfoManager"

    const-string v5, "fail to parse sense version, keep default value (5.0)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/htc/server/HtcDeviceInfoManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()D
    .locals 2

    .prologue
    .line 64
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager;->sSense:D

    return-wide v0
.end method

.method private createScheduler(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-nez v0, :cond_0

    .line 1276
    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1277
    new-instance v0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;

    invoke-direct {v0, p1}, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    .line 1278
    const-string v0, "HtcDeviceInfoManager"

    const-string v1, "Factory create HtcAdditionalInfoScheduler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    :cond_0
    :goto_0
    return-void

    .line 1283
    :cond_1
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager;->sSense:D

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 1284
    new-instance v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;

    invoke-direct {v0, p1}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    .line 1285
    const-string v0, "HtcDeviceInfoManager"

    const-string v1, "Factory create HtcCommonInfoScheduler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/htc/server/HtcDeviceInfoManager;
    .locals 1

    .prologue
    .line 1329
    sget-object v0, Lcom/htc/server/HtcDeviceInfoManager;->sInstance:Lcom/htc/server/HtcDeviceInfoManager;

    return-object v0
.end method

.method private initAppUsageStats()V
    .locals 3

    .prologue
    .line 1451
    :try_start_0
    new-instance v1, Lcom/htc/server/deviceinfo/ActivityLaunchRecord;

    invoke-direct {v1}, Lcom/htc/server/deviceinfo/ActivityLaunchRecord;-><init>()V

    iput-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mActivityLaunch:Lcom/htc/server/deviceinfo/ActivityLaunchRecord;

    .line 1452
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v1, :cond_0

    .line 1453
    new-instance v1, Lcom/htc/server/deviceinfo/SettingsLaunchRecord;

    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v2}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/server/deviceinfo/SettingsLaunchRecord;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mSettingsLaunch:Lcom/htc/server/deviceinfo/SettingsLaunchRecord;
    :try_end_0
    .catch Lcom/htc/server/deviceinfo/HDIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1458
    :cond_0
    :goto_0
    return-void

    .line 1455
    :catch_0
    move-exception v0

    .line 1456
    .local v0, "e":Lcom/htc/server/deviceinfo/HDIException;
    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "initAppUsageStats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method addANR(Ljava/lang/String;)V
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1431
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0, p1}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->addANR(Ljava/lang/String;)V

    .line 1432
    :cond_0
    return-void
.end method

.method addCrash(Ljava/lang/String;)V
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0, p1}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->addCrash(Ljava/lang/String;)V

    .line 1427
    :cond_0
    return-void
.end method

.method addSysCrash()V
    .locals 1

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->addSysCrash()V

    .line 1437
    :cond_0
    return-void
.end method

.method appDied(I)V
    .locals 1
    .param p1, "pid"    # I

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1373
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0, p1}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->appDied(I)V

    .line 1374
    :cond_0
    return-void
.end method

.method flush()V
    .locals 1

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1401
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->flush()V

    .line 1402
    :cond_0
    return-void
.end method

.method public getAppAliveTime(Ljava/lang/String;)J
    .locals 2
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 1359
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDebuggingInfo()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 1510
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;

    const-string v3, "com.htc.permission.UBLS_PROTECTED_USAGE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1511
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "com.htc.permission.UBLS_PROTECTED_USAGE"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1513
    :cond_0
    const/4 v0, 0x0

    .line 1514
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1515
    const/4 v1, 0x0

    .line 1516
    .local v1, "location":Landroid/location/Location;
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v2, :cond_1

    .line 1517
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v2}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    .line 1518
    :cond_1
    if-eqz v1, :cond_2

    .line 1519
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1520
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v2, "location"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1523
    .end local v1    # "location":Landroid/location/Location;
    :cond_2
    return-object v0
.end method

.method public getDeviceAliveTime()J
    .locals 2

    .prologue
    .line 1350
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDeviceInfo()Landroid/app/HtcDeviceInfo;
    .locals 1

    .prologue
    .line 1342
    const/4 v0, 0x0

    return-object v0
.end method

.method killAllProcess()V
    .locals 1

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->killAllProcess()V

    .line 1422
    :cond_0
    return-void
.end method

.method killProcess(Ljava/lang/String;)V
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0, p1}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->killProcess(Ljava/lang/String;)V

    .line 1417
    :cond_0
    return-void
.end method

.method public noteAppDied(I)V
    .locals 1
    .param p1, "pid"    # I

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mActivityLaunch:Lcom/htc/server/deviceinfo/ActivityLaunchRecord;

    if-eqz v0, :cond_0

    .line 1488
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mActivityLaunch:Lcom/htc/server/deviceinfo/ActivityLaunchRecord;

    invoke-virtual {v0, p1}, Lcom/htc/server/deviceinfo/ActivityLaunchRecord;->noteAppDied(I)V

    .line 1489
    :cond_0
    return-void
.end method

.method public notePackageAdded(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/htc/server/deviceinfo/PackageRecord;->notePackageAdded(Ljava/lang/String;Landroid/content/Context;)V

    .line 1468
    return-void
.end method

.method public notePackageRemoved(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 1471
    invoke-static {p1, p2}, Lcom/htc/server/deviceinfo/PackageRecord;->notePackageRemoved(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    return-void
.end method

.method public noteResumeFragment(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "fragmentClass"    # Landroid/os/Bundle;

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;

    const-string v1, "com.htc.permission.DEVICEINFO_SECURITY_USAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1479
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "noteResumeFragment() needs permission com.htc.permission.DEVICEINFO_SECURITY_USAGE"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1481
    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mSettingsLaunch:Lcom/htc/server/deviceinfo/SettingsLaunchRecord;

    if-eqz v0, :cond_1

    .line 1482
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mSettingsLaunch:Lcom/htc/server/deviceinfo/SettingsLaunchRecord;

    invoke-virtual {v0, p1}, Lcom/htc/server/deviceinfo/SettingsLaunchRecord;->noteResumeFragment(Landroid/os/Bundle;)V

    .line 1483
    :cond_1
    return-void
.end method

.method public onHandleActivityPaused(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/server/am/HtcWrapActivityRecord;

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mActivityLaunch:Lcom/htc/server/deviceinfo/ActivityLaunchRecord;

    if-eqz v0, :cond_0

    .line 1502
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mActivityLaunch:Lcom/htc/server/deviceinfo/ActivityLaunchRecord;

    invoke-virtual {v0, p1}, Lcom/htc/server/deviceinfo/ActivityLaunchRecord;->onHandleActivityPaused(Lcom/android/server/am/HtcWrapActivityRecord;)V

    .line 1503
    :cond_0
    return-void
.end method

.method public onHandleActivityResumed(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/server/am/HtcWrapActivityRecord;

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mActivityLaunch:Lcom/htc/server/deviceinfo/ActivityLaunchRecord;

    if-eqz v0, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mActivityLaunch:Lcom/htc/server/deviceinfo/ActivityLaunchRecord;

    invoke-virtual {v0, p1}, Lcom/htc/server/deviceinfo/ActivityLaunchRecord;->onHandleActivityResumed(Lcom/android/server/am/HtcWrapActivityRecord;)V

    .line 1498
    :cond_0
    return-void
.end method

.method public publish()V
    .locals 2

    .prologue
    .line 1461
    const-string v0, "htcdeviceinfo"

    invoke-virtual {p0}, Lcom/htc/server/HtcDeviceInfoManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1462
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 1463
    const-string v0, "HtcDeviceInfoManager"

    const-string v1, "Add service:  htcdeviceinfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :cond_0
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->reset()V

    .line 1392
    :cond_0
    return-void
.end method

.method setNewTopApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "topProcessName"    # Ljava/lang/String;

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1406
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0, p1}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->setNewTopApp(Ljava/lang/String;)V

    .line 1407
    :cond_0
    return-void
.end method

.method setup(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0, p1}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->setup(Landroid/content/Context;)V

    .line 1335
    :cond_0
    return-void
.end method

.method shutdown()V
    .locals 1

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->shutdown()V

    .line 1442
    :cond_0
    return-void
.end method

.method startProcess(Ljava/lang/String;II)V
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "group"    # I

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1411
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->startProcess(Ljava/lang/String;II)V

    .line 1412
    :cond_0
    return-void
.end method

.method stop()V
    .locals 1

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1386
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->stop()V

    .line 1387
    :cond_0
    return-void
.end method

.method public synchronizedFlush()V
    .locals 1

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->synchronizedFlush()V

    .line 1382
    :cond_0
    return-void
.end method

.method update(Ljava/lang/String;)V
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0, p1}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->update(Ljava/lang/String;)V

    .line 1397
    :cond_0
    return-void
.end method

.method public userActivity(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mInfoScheduler:Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;

    invoke-interface {v0, p1, p2}, Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;->userActivity(J)V

    .line 1369
    :cond_0
    return-void
.end method
