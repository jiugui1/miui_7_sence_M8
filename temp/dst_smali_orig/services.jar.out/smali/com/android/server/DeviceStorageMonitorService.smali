.class public Lcom/android/server/DeviceStorageMonitorService;
.super Landroid/os/Binder;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceStorageMonitorService$BootCompletedReceiver;,
        Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;,
        Lcom/android/server/DeviceStorageMonitorService$omadmSettingsObserver;,
        Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;
    }
.end annotation


# static fields
.field private static final CACHE_PATH:Ljava/io/File;

.field private static final DATA_PATH:Ljava/io/File;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_CHECK_INTERVAL:J = 0xea60L

.field private static final DEFAULT_CRITICAL_THRESHOLD_MAX_BYTES:I = 0x1400000

.field private static final DEFAULT_CRITICAL_THRESHOLD_MAX_BYTES_FOR_FUSE:I = 0x7800000

.field private static final DEFAULT_CRITICAL_THRESHOLD_PERCENTAGE:I = 0x5

.field private static final DEFAULT_DISK_FREE_CHANGE_REPORTING_THRESHOLD:J = 0x200000L

.field private static final DEFAULT_FREE_STORAGE_LOG_INTERVAL_IN_MINUTES:I = 0x2d0

.field private static final DEVICE_MEMORY_WHAT:I = 0x1

.field private static final DUMP_LOWER_BOUND:J

.field private static final DUMP_THRESHOLD:J

.field private static final FILE_LIST_1:Ljava/lang/String; = "/data/misc/filelist.1.txt"

.field private static final FILE_LIST_2:Ljava/lang/String; = "/data/misc/filelist.2.txt"

.field private static final HTC_CUST_DEVICE_TYPE_PHONE:I = 0x1

.field private static final HTC_CUST_DEVICE_TYPE_TABLET:I = 0x2

.field private static final HTC_CUST_KEY_DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field private static final HTC_CUST_KEY_HAS_LMW:Ljava/lang/String; = "storage_has_lmw"

.field private static final HTC_CUST_NAME_CORE_FRAMEWORK:Ljava/lang/String; = "Android_Core_Framework"

.field private static final HTC_CUST_NAME_SYSTEM:Ljava/lang/String; = "System"

.field private static final LOWSTORAGE_TAG:Ljava/lang/String; = "LowStorage"

.field private static final LOW_MEMORY_NOTIFICATION_ID:I = 0x1

.field private static final MONITOR_INTERVAL:I = 0x1

.field private static final NO_MORE_SMS_NOTIFICATION_ID:I = 0x2

.field public static final SERVICE:Ljava/lang/String; = "devicestoragemonitor"

.field private static final SETTING_KEY_OMADM_THRESHOLD:Ljava/lang/String; = "omadm.fumo.storage.cap"

.field private static final SMS_AVAILABLE_THRESHOLD:J = 0x80000L

.field private static final SYSTEM_PATH:Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "DeviceStorageMonitorService"

.field private static final _FALSE:I = 0x0

.field private static final _TRUE:I = 0x1

.field private static final localLOGV:Z

.field private static mCustManager:Lcom/htc/customization/HtcCustomizationManager;

.field private static mCustReader:Lcom/htc/customization/HtcCustomizationReader;

.field private static mSmsStorageBootCheck:I


# instance fields
.field private final mCacheFileDeletedObserver:Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;

.field private mCacheFileStats:Landroid/os/StatFs;

.field private mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

.field private mClearSucceeded:Z

.field private mClearingCache:Z

.field private mContext:Landroid/content/Context;

.field private mCriticalMemFlag:Z

.field private mDataFileStats:Landroid/os/StatFs;

.field private mFreeMem:J

.field private mFreeMemAfterLastCacheClear:J

.field mHandler:Landroid/os/Handler;

.field private mLastReportedFreeMem:J

.field private mLastReportedFreeMemTime:J

.field private mLowMemFlag:Z

.field private mLowOmaDmMemFlag:Z

.field private mLowOmaDmMemThreshold:J

.field private mMemCacheStartTrimThreshold:J

.field private mMemCacheTrimToThreshold:J

.field private mMemCriticalThreshold:J

.field private mMemFullFlag:Z

.field private mMemFullThreshold:J

.field private mMemLowThreshold:J

.field private mMemNotifyTipsThreshold:J

.field private mNewLowOmaDmMemThreshold:J

.field private mNoSmsMemFlag:Z

.field private mOmaDmStorageOKIntent:Landroid/content/Intent;

.field private mPhoneStorageMonitor:Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSmsStorageLowIntent:Landroid/content/Intent;

.field private mSmsStorageOkIntent:Landroid/content/Intent;

.field private mStorageEnterCriticalIntent:Landroid/content/Intent;

.field private mStorageFullIntent:Landroid/content/Intent;

.field private mStorageLeaveCriticalIntent:Landroid/content/Intent;

.field private mStorageLowIntent:Landroid/content/Intent;

.field private mStorageNotFullIntent:Landroid/content/Intent;

.field private mStorageOkIntent:Landroid/content/Intent;

.field private mSystemFileStats:Landroid/os/StatFs;

.field private mThreadStartTime:J

.field private mTotalMemory:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/DeviceStorageMonitorService;->SYSTEM_PATH:Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/DeviceStorageMonitorService;->CACHE_PATH:Ljava/io/File;

    const/4 v0, 0x3

    sput v0, Lcom/android/server/DeviceStorageMonitorService;->mSmsStorageBootCheck:I

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getLowStorageThreshold()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/DeviceStorageMonitorService;->DUMP_THRESHOLD:J

    sget-wide v0, Lcom/android/server/DeviceStorageMonitorService;->DUMP_THRESHOLD:J

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/DeviceStorageMonitorService;->DUMP_LOWER_BOUND:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v7, 0x0

    const/high16 v6, 0x4000000

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-boolean v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mCriticalMemFlag:Z

    iput-boolean v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    iput-boolean v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    iput-boolean v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mNoSmsMemFlag:Z

    iput-boolean v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOmaDmMemFlag:Z

    iput-wide v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOmaDmMemThreshold:J

    iput-wide v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mNewLowOmaDmMemThreshold:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    iput-boolean v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    new-instance v2, Lcom/android/server/DeviceStorageMonitorService$1;

    invoke-direct {v2, p0}, Lcom/android/server/DeviceStorageMonitorService$1;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    iput-wide v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    new-instance v2, Landroid/os/StatFs;

    sget-object v3, Lcom/android/server/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    new-instance v2, Landroid/os/StatFs;

    sget-object v3, Lcom/android/server/DeviceStorageMonitorService;->SYSTEM_PATH:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    new-instance v2, Landroid/os/StatFs;

    sget-object v3, Lcom/android/server/DeviceStorageMonitorService;->CACHE_PATH:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->prepareStorageCriticalIntent()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v1

    .local v1, "sm":Landroid/os/storage/StorageManager;
    sget-object v2, Lcom/android/server/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    sget-object v2, Lcom/android/server/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullThreshold:J

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.SMS_STORAGE_LOW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mSmsStorageLowIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.SMS_STORAGE_OK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mSmsStorageOkIntent:Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/DeviceStorageMonitorService$BootCompletedReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/DeviceStorageMonitorService$BootCompletedReceiver;-><init>(Lcom/android/server/DeviceStorageMonitorService;Lcom/android/server/DeviceStorageMonitorService$1;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->getCriticalMemThreshold()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCriticalThreshold:J

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1e

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemNotifyTipsThreshold:J

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullThreshold:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x4

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    iget-wide v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    iput-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    new-instance v2, Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-direct {v2}, Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;-><init>()V

    iput-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-virtual {v2}, Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;->startWatching()V

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->InitialForOmaDm()V

    new-instance v2, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;

    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mPhoneStorageMonitor:Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;

    return-void
.end method

.method private InitialForOmaDm()V
    .locals 5

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.OMA_DM_STORAGE_OK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mOmaDmStorageOKIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "omadm.fumo.storage.cap"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mNewLowOmaDmMemThreshold:J

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "omadm.fumo.storage.cap"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/DeviceStorageMonitorService$omadmSettingsObserver;

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/DeviceStorageMonitorService$omadmSettingsObserver;-><init>(Lcom/android/server/DeviceStorageMonitorService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DeviceStorageMonitorService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/DeviceStorageMonitorService;->checkMemory(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/DeviceStorageMonitorService;ZJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/DeviceStorageMonitorService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;

    .prologue
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mNewLowOmaDmMemThreshold:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/server/DeviceStorageMonitorService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mNewLowOmaDmMemThreshold:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/server/DeviceStorageMonitorService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;

    .prologue
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/DeviceStorageMonitorService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceStorageMonitorService;

    .prologue
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private final cancelCriticalNotification()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageEnterCriticalIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    const-string v0, "DeviceStorageMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending leave critical memory Intent, freeMemory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMemCriticalThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCriticalThreshold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLeaveCriticalIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private final cancelFullNotification()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private final cancelNotification()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .local v0, "mNotificationMgr":Landroid/app/NotificationManager;
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->hasLowMemoryWizardApp()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private final cancelSmsStorageNotification()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .local v0, "mNotificationMgr":Landroid/app/NotificationManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mSmsStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mSmsStorageOkIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private final checkAvailableOmaDmMemory()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x400

    const/4 v0, 0x0

    .local v0, "bThresholdChange":Z
    iget-wide v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    .local v3, "remainMem":J
    iget-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mNewLowOmaDmMemThreshold:J

    mul-long/2addr v5, v7

    mul-long v1, v5, v7

    .local v1, "nThreshold":J
    iget-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOmaDmMemThreshold:J

    cmp-long v5, v5, v1

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOmaDmMemThreshold:J

    const-string v5, "DeviceStorageMonitorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OMA DM Low Memory threshold = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOmaDmMemThreshold:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gtz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mOmaDmStorageOKIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOmaDmMemThreshold:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOmaDmMemFlag:Z

    if-eqz v5, :cond_3

    if-eqz v0, :cond_1

    :cond_3
    const-string v5, "DeviceStorageMonitorService"

    const-string v6, "Running out of memory for OMA DM."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOmaDmMemFlag:Z

    iget-object v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mOmaDmStorageOKIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    iget-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOmaDmMemFlag:Z

    if-nez v5, :cond_5

    if-eqz v0, :cond_1

    :cond_5
    const-string v5, "DeviceStorageMonitorService"

    const-string v6, "OMA DM Memory available. send Intents.ACTION_OMA_DM_STORAGE_OK"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mOmaDmStorageOKIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowOmaDmMemFlag:Z

    goto :goto_0
.end method

.method private final checkAvailableSmsMemory(Z)V
    .locals 4
    .param p1, "checkCache"    # Z

    .prologue
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    const-wide/32 v2, 0x80000

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mNoSmsMemFlag:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/server/DeviceStorageMonitorService;->mSmsStorageBootCheck:I

    if-lez v0, :cond_2

    :cond_0
    const-string v0, "DeviceStorageMonitorService"

    const-string v1, "Running out of memory for SMS. Sending notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/server/DeviceStorageMonitorService;->mSmsStorageBootCheck:I

    if-lez v0, :cond_1

    sget v0, Lcom/android/server/DeviceStorageMonitorService;->mSmsStorageBootCheck:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/server/DeviceStorageMonitorService;->mSmsStorageBootCheck:I

    :cond_1
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->sendSmsStorageNotification()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mNoSmsMemFlag:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mNoSmsMemFlag:Z

    if-nez v0, :cond_4

    sget v0, Lcom/android/server/DeviceStorageMonitorService;->mSmsStorageBootCheck:I

    if-lez v0, :cond_2

    :cond_4
    sget v0, Lcom/android/server/DeviceStorageMonitorService;->mSmsStorageBootCheck:I

    if-lez v0, :cond_5

    sget v0, Lcom/android/server/DeviceStorageMonitorService;->mSmsStorageBootCheck:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/server/DeviceStorageMonitorService;->mSmsStorageBootCheck:I

    :cond_5
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->cancelSmsStorageNotification()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mNoSmsMemFlag:Z

    goto :goto_0
.end method

.method private final checkEnterCriticalMemory()V
    .locals 4

    .prologue
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCriticalThreshold:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mCriticalMemFlag:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->sendCriticalNotification()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mCriticalMemFlag:Z

    :cond_0
    return-void
.end method

.method private final checkLeaveCriticalMemory()V
    .locals 4

    .prologue
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCriticalThreshold:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mCriticalMemFlag:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->cancelCriticalNotification()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mCriticalMemFlag:Z

    :cond_0
    return-void
.end method

.method private final checkMemory(Z)V
    .locals 10
    .param p1, "checkCache"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->forceDumpFileList()V

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mPhoneStorageMonitor:Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;

    invoke-virtual {v2}, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->checkPhoneStorageStats()V

    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    sub-long v0, v2, v4

    .local v0, "diffTime":J
    const-wide/32 v2, 0x927c0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Thread that clears cache file seems to run for ever"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "diffTime":J
    :cond_0
    :goto_0
    const-wide/32 v2, 0xea60

    invoke-direct {p0, v9, v2, v3}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->restatDataDir()V

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_2

    const-string v2, "DeviceStorageMonitorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "freeMemory="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMemLowThreshold="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->checkLeaveCriticalMemory()V

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->checkToNotifyTipsApp()V

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_6

    if-eqz p1, :cond_5

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    iget-wide v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    iput-boolean v8, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->clearCache()V

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->checkEnterCriticalMemory()V

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullThreshold:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_7

    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->sendFullNotification()V

    iput-boolean v9, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    :cond_4
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/DeviceStorageMonitorService;->checkAvailableSmsMemory(Z)V

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->checkAvailableOmaDmMemory()V

    goto/16 :goto_0

    :cond_5
    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iput-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-nez v2, :cond_3

    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Running low on memory. Sending notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->sendNotification()V

    iput-boolean v9, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    goto :goto_1

    :cond_6
    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iput-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-eqz v2, :cond_3

    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Memory available. Cancelling notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->cancelNotification()V

    iput-boolean v8, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    goto :goto_1

    :cond_7
    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->cancelFullNotification()V

    iput-boolean v8, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    goto :goto_2
.end method

.method private final checkToNotifyTipsApp()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemNotifyTipsThreshold:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "IS_NOTIFIED_HTCTIPS_MAXIMIZE_STORAGE"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v0, v2

    .local v0, "isNotifiedBefore":Z
    :cond_0
    const-string v3, "com.htc.showme"

    invoke-direct {p0, v3}, Lcom/android/server/DeviceStorageMonitorService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    .local v1, "isShowmeInstalled":Z
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->sendNotifyToTipsApp()V

    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "IS_NOTIFIED_HTCTIPS_MAXIMIZE_STORAGE"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .end local v0    # "isNotifiedBefore":Z
    .end local v1    # "isShowmeInstalled":Z
    :cond_1
    return-void
.end method

.method private final clearCache()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    :try_start_0
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get handle for PackageManger Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    iput-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    goto :goto_0
.end method

.method private final dumpFileList(Ljava/lang/String;)V
    .locals 12
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "LowStorage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Start dumping file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .local v2, "buffer":Ljava/lang/StringBuffer;
    const-string v8, "/system/bin/df"

    invoke-direct {p0, v8}, Lcom/android/server/DeviceStorageMonitorService;->executeCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "/system/bin/ls -a -l -R /data"

    invoke-direct {p0, v8}, Lcom/android/server/DeviceStorageMonitorService;->executeCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "\nDump end"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .local v7, "writer":Ljava/io/BufferedWriter;
    invoke-virtual {v7, v2}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    const-string v8, "LowStorage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dump file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " done. duration: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "begin":J
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v4

    .local v4, "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .local v6, "stacktrace":Ljava/io/Writer;
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .local v5, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {v4, v5}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v8, "LowStorage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dumpFileListToLogFile()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckLowStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    sget-wide v2, Lcom/android/server/DeviceStorageMonitorService;->DUMP_THRESHOLD:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    sget-wide v2, Lcom/android/server/DeviceStorageMonitorService;->DUMP_LOWER_BOUND:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    sget-wide v2, Lcom/android/server/DeviceStorageMonitorService;->DUMP_THRESHOLD:J

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    const-string v0, "LowStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device in Low Storage status.(free size <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/android/server/DeviceStorageMonitorService;->DUMP_THRESHOLD:J

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/data/misc/filelist.2.txt"

    invoke-direct {p0, v0}, Lcom/android/server/DeviceStorageMonitorService;->dumpFileList(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "LowStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device in Low Storage status.(free size <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/android/server/DeviceStorageMonitorService;->DUMP_THRESHOLD:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/data/misc/filelist.1.txt"

    invoke-direct {p0, v0}, Lcom/android/server/DeviceStorageMonitorService;->dumpFileList(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final executeCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .local v3, "output":Ljava/lang/StringBuffer;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .local v5, "process":Ljava/lang/Process;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v7, "reader":Ljava/io/BufferedReader;
    const/16 v9, 0x1000

    new-array v0, v9, [C

    .local v0, "buffer":[C
    :goto_0
    invoke-virtual {v7, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v6

    .local v6, "read":I
    if-lez v6, :cond_0

    const/4 v9, 0x0

    invoke-virtual {v3, v0, v9, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v0    # "buffer":[C
    .end local v5    # "process":Ljava/lang/Process;
    .end local v6    # "read":I
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .local v2, "ioe":Ljava/io/IOException;
    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    .local v8, "stacktrace":Ljava/io/Writer;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .local v4, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {v2, v4}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v9, "LowStorage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v4    # "printWriter":Ljava/io/PrintWriter;
    .end local v8    # "stacktrace":Ljava/io/Writer;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .restart local v0    # "buffer":[C
    .restart local v5    # "process":Ljava/lang/Process;
    .restart local v6    # "read":I
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .end local v0    # "buffer":[C
    .end local v5    # "process":Ljava/lang/Process;
    .end local v6    # "read":I
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .local v1, "inte":Ljava/lang/InterruptedException;
    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    .restart local v8    # "stacktrace":Ljava/io/Writer;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .restart local v4    # "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {v1, v4}, Ljava/lang/InterruptedException;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v9, "LowStorage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "InterruptedException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private forceDumpFileList()V
    .locals 2

    .prologue
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckLowStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "debug.dumpfile.force"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "LowStorage"

    const-string v1, "Force dumpfile: FILE_LIST_2:/data/misc/filelist.2.txt"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/data/misc/filelist.2.txt"

    invoke-direct {p0, v0}, Lcom/android/server/DeviceStorageMonitorService;->dumpFileList(Ljava/lang/String;)V

    const-string v0, "LowStorage"

    const-string v1, "Force dumpfile: FILE_LIST_1:/data/misc/filelist.1.txt"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/data/misc/filelist.1.txt"

    invoke-direct {p0, v0}, Lcom/android/server/DeviceStorageMonitorService;->dumpFileList(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getCriticalMemThreshold()J
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x7800000

    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x1400000

    goto :goto_0
.end method

.method private static getCustomizationReader(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/android/server/DeviceStorageMonitorService;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/DeviceStorageMonitorService;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/DeviceStorageMonitorService;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    invoke-virtual {v0, p0, v2, v1}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/DeviceStorageMonitorService;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/server/DeviceStorageMonitorService;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    invoke-virtual {v0, p0, v2, v1}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    goto :goto_0
.end method

.method private final hasLowMemoryWizardApp()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const-string v1, "Android_Core_Framework"

    invoke-static {v1}, Lcom/android/server/DeviceStorageMonitorService;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    sput-object v1, Lcom/android/server/DeviceStorageMonitorService;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    sget-object v1, Lcom/android/server/DeviceStorageMonitorService;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/DeviceStorageMonitorService;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "storage_has_lmw"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Package %s is not installed"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private postCheckMemoryMsg(ZJ)V
    .locals 5
    .param p1, "clearCache"    # Z
    .param p2, "delay"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private prepareStorageCriticalIntent()V
    .locals 3

    .prologue
    const/high16 v2, 0x4000000

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.DEVICE_STORAGE_CRITICAL_ENTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageEnterCriticalIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageEnterCriticalIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.DEVICE_STORAGE_CRITICAL_LEAVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLeaveCriticalIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLeaveCriticalIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method

.method private final restatDataDir()V
    .locals 20

    .prologue
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    sget-object v16, Lcom/android/server/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v15

    int-to-long v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockSize()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    mul-long v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    const-string v15, "debug.freemem"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "debugFreeMem":Ljava/lang/String;
    const-string v15, ""

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v16, "sys_free_storage_log_interval"

    const-wide/16 v17, 0x2d0

    invoke-static/range {v15 .. v18}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v15

    const-wide/16 v17, 0x3c

    mul-long v15, v15, v17

    const-wide/16 v17, 0x3e8

    mul-long v7, v15, v17

    .local v7, "freeMemLogInterval":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .local v2, "currTime":J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    sub-long v15, v2, v15

    cmp-long v15, v15, v7

    if-ltz v15, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    const-wide/16 v11, -0x1

    .local v11, "mFreeSystem":J
    const-wide/16 v9, -0x1

    .local v9, "mFreeCache":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    sget-object v16, Lcom/android/server/DeviceStorageMonitorService;->SYSTEM_PATH:Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v15

    int-to-long v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    mul-long v11, v15, v17

    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    sget-object v16, Lcom/android/server/DeviceStorageMonitorService;->CACHE_PATH:Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v15

    int-to-long v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    mul-long v9, v15, v17

    :goto_2
    const/16 v15, 0xaba

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .end local v9    # "mFreeCache":J
    .end local v11    # "mFreeSystem":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v16, "disk_free_change_reporting_threshold"

    const-wide/32 v17, 0x200000

    invoke-static/range {v15 .. v18}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v13

    .local v13, "threshold":J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    move-wide/from16 v17, v0

    sub-long v5, v15, v17

    .local v5, "delta":J
    cmp-long v15, v5, v13

    if-gtz v15, :cond_3

    neg-long v15, v13

    cmp-long v15, v5, v15

    if-gez v15, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    const/16 v15, 0xab8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v16, v0

    invoke-static/range {v15 .. v17}, Landroid/util/EventLog;->writeEvent(IJ)I

    :cond_4
    return-void

    .end local v5    # "delta":J
    .end local v13    # "threshold":J
    .restart local v9    # "mFreeCache":J
    .restart local v11    # "mFreeSystem":J
    :catch_0
    move-exception v15

    goto :goto_2

    :catch_1
    move-exception v15

    goto/16 :goto_1

    .end local v2    # "currTime":J
    .end local v4    # "debugFreeMem":Ljava/lang/String;
    .end local v7    # "freeMemLogInterval":J
    .end local v9    # "mFreeCache":J
    .end local v11    # "mFreeSystem":J
    :catch_2
    move-exception v15

    goto/16 :goto_0
.end method

.method private final sendCriticalNotification()V
    .locals 4

    .prologue
    const-string v0, "DeviceStorageMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending enter critical memory Intent, freeMemory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMemCriticalThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCriticalThreshold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageEnterCriticalIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private final sendFullNotification()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private final sendNotification()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/16 v0, 0xab9

    iget-wide v11, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-static {v0, v11, v12}, Landroid/util/EventLog;->writeEvent(IJ)I

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.settings.INTERNAL_STORAGE_SETTINGS"

    :goto_0
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "lowMemIntent":Landroid/content/Intent;
    const-string v0, "memory"

    iget-wide v11, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v2, v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .local v8, "mNotificationMgr":Landroid/app/NotificationManager;
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v3, 0x10403f2

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .local v10, "title":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v3, 0x10403f3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .local v6, "details":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .local v7, "intent":Landroid/app/PendingIntent;
    new-instance v9, Landroid/app/Notification;

    invoke-direct {v9}, Landroid/app/Notification;-><init>()V

    .local v9, "notification":Landroid/app/Notification;
    const v0, 0x1080585

    iput v0, v9, Landroid/app/Notification;->icon:I

    iput-object v10, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const-wide/16 v0, 0x0

    iput-wide v0, v9, Landroid/app/Notification;->when:J

    iget v0, v9, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v9, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v0, v10, v6, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->hasLowMemoryWizardApp()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v0, v9, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .end local v2    # "lowMemIntent":Landroid/content/Intent;
    .end local v6    # "details":Ljava/lang/CharSequence;
    .end local v7    # "intent":Landroid/app/PendingIntent;
    .end local v8    # "mNotificationMgr":Landroid/app/NotificationManager;
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_1
    const-string v0, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    goto :goto_0

    .restart local v2    # "lowMemIntent":Landroid/content/Intent;
    .restart local v6    # "details":Ljava/lang/CharSequence;
    .restart local v7    # "intent":Landroid/app/PendingIntent;
    .restart local v8    # "mNotificationMgr":Landroid/app/NotificationManager;
    .restart local v9    # "notification":Landroid/app/Notification;
    .restart local v10    # "title":Ljava/lang/CharSequence;
    :cond_2
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceStorageMonitorService"

    const-string v1, "Not to issue Low Memory Notification, due to LMW app will do it"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendNotifyToTipsApp()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.htc.learnmore.LOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "callingApp"

    const-string v2, "DeviceStorageMonitorService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "actionCoverage"

    const-string v2, "topic_tag-settings-maximize_storage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "actionToDo"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    const-string v1, "DeviceStorageMonitorService"

    const-string v2, "checkToNotifyTipsApp and send intent"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final sendSmsStorageNotification()V
    .locals 17

    .prologue
    new-instance v5, Landroid/content/Intent;

    const-string v13, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v5, "lowMemIntent":Landroid/content/Intent;
    const-string v13, "memory"

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v5, v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/high16 v13, 0x10000000

    invoke-virtual {v5, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v14, "notification"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .local v6, "mNotificationMgr":Landroid/app/NotificationManager;
    const/4 v8, 0x0

    .local v8, "rc":Landroid/content/res/Resources;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v14, "com.htc"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_0
    const v13, 0x2040196

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .local v12, "title":Ljava/lang/CharSequence;
    const-wide/32 v10, 0x80000

    .local v10, "storageLimit":J
    const-wide/16 v13, 0x400

    div-long/2addr v10, v13

    const-string v13, "%dKB"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .local v9, "sStorageLimit":Ljava/lang/String;
    const v13, 0x2040197

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v9, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "details":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v5, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .local v4, "intent":Landroid/app/PendingIntent;
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    .local v7, "notification":Landroid/app/Notification;
    const v3, 0x1080585

    .local v3, "icon":I
    iput v3, v7, Landroid/app/Notification;->icon:I

    iput-object v12, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const-wide/16 v13, 0x0

    iput-wide v13, v7, Landroid/app/Notification;->when:J

    iget v13, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v13, v13, 0x2

    iput v13, v7, Landroid/app/Notification;->flags:I

    const-string v13, "System"

    invoke-static {v13}, Lcom/android/server/DeviceStorageMonitorService;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v13

    sput-object v13, Lcom/android/server/DeviceStorageMonitorService;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    sget-object v13, Lcom/android/server/DeviceStorageMonitorService;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v13, :cond_0

    sget-object v13, Lcom/android/server/DeviceStorageMonitorService;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v14, "device_type"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v13, v12, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    :goto_1
    const/4 v13, 0x2

    invoke-virtual {v6, v13, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DeviceStorageMonitorService;->mSmsStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void

    .end local v1    # "details":Ljava/lang/CharSequence;
    .end local v3    # "icon":I
    .end local v4    # "intent":Landroid/app/PendingIntent;
    .end local v7    # "notification":Landroid/app/Notification;
    .end local v9    # "sStorageLimit":Ljava/lang/String;
    .end local v10    # "storageLimit":J
    .end local v12    # "title":Ljava/lang/CharSequence;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "details":Ljava/lang/CharSequence;
    .restart local v3    # "icon":I
    .restart local v4    # "intent":Landroid/app/PendingIntent;
    .restart local v7    # "notification":Landroid/app/Notification;
    .restart local v9    # "sStorageLimit":Ljava/lang/String;
    .restart local v10    # "storageLimit":J
    .restart local v12    # "title":Ljava/lang/CharSequence;
    :cond_0
    new-instance v13, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const v15, 0x10900a3

    invoke-direct {v13, v14, v15}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v13, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v13, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v14, 0x1020006

    invoke-virtual {v13, v14, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v13, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v14, 0x1020016

    invoke-virtual {v13, v14, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v13, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v14, 0x1020046

    invoke-virtual {v13, v14, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iput-object v4, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump devicestoragemonitor from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Current DeviceStorageMonitor state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mFreeMem="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTotalMemory="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mFreeMemAfterLastCacheClear="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mLastReportedFreeMem="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mLastReportedFreeMemTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  mLowMemFlag="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMemFullFlag="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mClearSucceeded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mClearingCache="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mMemLowThreshold="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mMemFullThreshold="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullThreshold:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mMemCacheStartTrimThreshold="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mMemCacheTrimToThreshold="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getMemoryLowThreshold()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    return-wide v0
.end method

.method public isMemoryLow()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    return v0
.end method

.method public updateMemory()V
    .locals 4

    .prologue
    invoke-static {}, Lcom/android/server/DeviceStorageMonitorService;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    goto :goto_0
.end method
