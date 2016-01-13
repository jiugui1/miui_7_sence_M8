.class public Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;
.super Ljava/lang/Object;
.source "HtcDeviceStorageExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcDeviceStorageExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneStorageMonitor"
.end annotation


# instance fields
.field private final DEBUG_ON:Z

.field private DIR_PATH:Ljava/lang/String;

.field private final STATE_STORAGE_LOW:I

.field private final STATE_STORAGE_OK:I

.field private final TAG:Ljava/lang/String;

.field private final TYPE_EXTERNAL:I

.field private final TYPE_PHONE:I

.field private mContext:Landroid/content/Context;

.field private mFileStats:Landroid/os/StatFs;

.field private mFreeSpace:J

.field private mIsCheckEnabled:Z

.field private mIsInitialized:Z

.field private mSpaceThreshold:J

.field private mState:I

.field private mStorageLowIntent:Landroid/content/Intent;

.field private mStorageOkIntent:Landroid/content/Intent;

.field private mTotalSpace:J

.field private mTresholdPercent:J

.field private mType:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->DEBUG_ON:Z

    const-string v0, "HtcDeviceStorageExtension-PhoneStorage"

    iput-object v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->TAG:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->TYPE_EXTERNAL:I

    iput v3, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->TYPE_PHONE:I

    iput-boolean v2, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mIsInitialized:Z

    iput-boolean v2, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mIsCheckEnabled:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mSpaceThreshold:J

    iput v2, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->STATE_STORAGE_OK:I

    iput v3, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->STATE_STORAGE_LOW:I

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->init(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->prepareIntents()V

    iget-boolean v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->DEBUG_ON:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/HtcDeviceStorageExtension;->dumpDeviceStorageInfo()V

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->dump()V

    goto :goto_0
.end method

.method private checkSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mIsInitialized:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "ro.low_phone_storage"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .local v0, "percentage":I
    iget-boolean v1, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->DEBUG_ON:Z

    if-eqz v1, :cond_2

    const-string v1, "HtcDeviceStorageExtension-PhoneStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ro.low_phone_storage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v1, 0x64

    if-lt v1, v0, :cond_3

    if-lt v0, v5, :cond_3

    iput-boolean v5, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mIsCheckEnabled:Z

    int-to-long v1, v0

    iput-wide v1, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mTresholdPercent:J

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    iput-boolean v4, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mIsCheckEnabled:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mTresholdPercent:J

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcDeviceStorageExtension-PhoneStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value of ro.low_phone_storage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private disablePhoneStorageCheck()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mTotalSpace:J

    iput-wide v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mFreeSpace:J

    iput-wide v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mSpaceThreshold:J

    iput-boolean v2, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mIsInitialized:Z

    iput-boolean v2, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mIsCheckEnabled:Z

    return-void
.end method

.method private dump()V
    .locals 4

    .prologue
    const-string v0, "HtcDeviceStorageExtension-PhoneStorage"

    const-string v1, "Dumping..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HtcDeviceStorageExtension-PhoneStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mIsInitialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mIsInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsCheckEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mIsCheckEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HtcDeviceStorageExtension-PhoneStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    DIR_PATH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->DIR_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSpaceThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mSpaceThreshold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTotalSpace="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mTotalSpace:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFreeSpace="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mFreeSpace:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mState:I

    iput-boolean v2, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mIsInitialized:Z

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->hasPhoneStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mType:I

    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->DIR_PATH:Ljava/lang/String;

    new-instance v1, Landroid/os/StatFs;

    iget-object v2, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->DIR_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mFileStats:Landroid/os/StatFs;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mType:I

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->DIR_PATH:Ljava/lang/String;

    new-instance v1, Landroid/os/StatFs;

    iget-object v2, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->DIR_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mFileStats:Landroid/os/StatFs;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->disablePhoneStorageCheck()V

    const-string v1, "HtcDeviceStorageExtension-PhoneStorage"

    const-string v2, "Initial fail:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->disablePhoneStorageCheck()V

    const-string v1, "HtcDeviceStorageExtension-PhoneStorage"

    const-string v2, "There is no Phone Storage."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private isStorageReady()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "ret":Z
    iget v1, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mType:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifyState()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mStorageOkIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mStorageOkIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private prepareIntents()V
    .locals 3

    .prologue
    const/high16 v2, 0x4000000

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.DEVICE_PHONE_STORAGE_LOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mStorageLowIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.DEVICE_PHONE_STORAGE_OK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mStorageOkIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mStorageOkIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method

.method private restatPhoneStorageDir()V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mIsCheckEnabled:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->isStorageReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mFileStats:Landroid/os/StatFs;

    iget-object v1, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->DIR_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mFileStats:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mFileStats:Landroid/os/StatFs;

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mTotalSpace:J

    iget-object v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mFileStats:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mFileStats:Landroid/os/StatFs;

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mFreeSpace:J

    iget-wide v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mTotalSpace:J

    iget-wide v2, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mTresholdPercent:J

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mSpaceThreshold:J

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const-string v0, "HtcDeviceStorageExtension-PhoneStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone Storage is not ready:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public checkPhoneStorageStats()V
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->checkSettings()V

    iget-boolean v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcDeviceStorageExtension-PhoneStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPhoneStorageStats: mIsCheckEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mIsCheckEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mIsCheckEnabled:Z

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->restatPhoneStorageDir()V

    invoke-direct {p0}, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->dump()V

    iget v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-wide v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mFreeSpace:J

    iget-wide v2, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mSpaceThreshold:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mState:I

    const-string v0, "HtcDeviceStorageExtension-PhoneStorage"

    const-string v1, "PhoneStorageState: Okay->Low"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->notifyState()V

    goto :goto_0

    :pswitch_1
    iget-wide v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mFreeSpace:J

    iget-wide v2, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mSpaceThreshold:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->mState:I

    const-string v0, "HtcDeviceStorageExtension-PhoneStorage"

    const-string v1, "PhoneStorageState: Low->Okay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/HtcDeviceStorageExtension$PhoneStorageMonitor;->notifyState()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
